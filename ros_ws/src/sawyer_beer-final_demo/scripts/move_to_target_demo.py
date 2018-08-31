# why pick this code as demo code?
# This is the first project I contributed as main constructor, developer, debugger and tester.

#!/usr/bin/env python

import sys
import copy
import rospy
import random
import moveit_commander
import moveit_msgs.msg

from sawyer_beer.srv import target, targetResponse, targetRequest
from geometry_msgs.msg import PoseStamped, Pose, Point, Quaternion
from std_msgs.msg import Header, String
from intera_core_msgs.srv import SolvePositionIK, SolvePositionIKRequest
from moveit_msgs.srv import GetStateValidity, GetStateValidityRequest, GetStateValidityResponse

from sensor_msgs.msg import JointState

import intera_dataflow
from intera_io import IODeviceInterface
from intera_core_msgs.msg import IONodeConfiguration

from collision_objs import collisionObjects

DEFAULT_IK_SERVICE = "ExternalTools/right/PositionKinematicsNode/IKService"
DEFAULT_CHECK_SERVICE = "check_state_validity"
DEFAULT_GET_TARGET = "/ar_pose_marker"
DEFAULT_VISION_SERVICE = "/get_target"

class beerGrabber():

    def __init__(self):
        # let's create MoveIt! objects:
        self.scene = moveit_commander.PlanningSceneInterface()
        self.robot = moveit_commander.RobotCommander()
        self.group = moveit_commander.MoveGroupCommander("right_arm")

        self.right_arm = ['right_j0', 'right_j1', 'right_j2', 'right_j3',
                     'right_j4', 'right_j5', 'right_j6']
        rospy.loginfo("Initializing beerGrabber")

        # ik service
        self.ik_service_name = DEFAULT_IK_SERVICE
        self.ik_serv = rospy.ServiceProxy(self.ik_service_name, SolvePositionIK)
        self.ik_serv.wait_for_service()
        rospy.loginfo("Successful connection to '" + self.ik_service_name + "'.")

        # vision service
        self.vision_service_name = DEFAULT_VISION_SERVICE
        self.vision_serv = rospy.ServiceProxy(self.vision_service_name, target)
        self.vision_serv.wait_for_service()
        rospy.loginfo("Successful connection to '" + self.ik_service_name + "'.")

        # check state service
        self.check_service_name = DEFAULT_CHECK_SERVICE
        self.check_serv = rospy.ServiceProxy(self.check_service_name, GetStateValidity)
        self.check_serv.wait_for_service()
        rospy.loginfo("Successful connection to '" + self.check_service_name + "'.")

        # initiate gripper
        side="right"
        grip_name = '_'.join([side, 'gripper'])
        self.gripper_io = IODeviceInterface("end_effector", grip_name)

        # add target position - might be useful when add bottle in the scene
        self.target = PoseStamped()
        self.dict = collisionObjects()

    def getTargetEEF(self):
        """
        Get the target position in Cartesian Space from vision node

        @return type: returns Pose() msg
        """
        req = targetRequest()
        req.data = 0
        resp = self.vision_serv.call(req)

        return resp.pose

    def convertToJointStates(self, target):
        """
        Using IK solver to convert the target position to Joint Space from Cartesian Space

        @param target: Pose() msg to be converted
        @return type: returns a list of joint values
        """
        ikreq = SolvePositionIKRequest()

        p = PoseStamped()
        p.header = Header(stamp=rospy.Time.now(), frame_id='base')
        p.pose = target
        print "========= target 0 ========="
        print target
        # add target position - might be useful when add bottle in the scene
        self.target = p
        # Add desired pose for inverse kinematics
        ikreq.pose_stamp.append(p)
        # Request inverse kinematics from base to "right_hand" link
        ikreq.tip_names.append('right_hand')

        # The joint seed is where the IK position solver starts its optimization
        ikreq.seed_mode = ikreq.SEED_USER
        seed = JointState()
        seed.name = self.right_arm
        # use random numbers to get different solutions
        # TODO: how to define the limitation
        j1 = random.randint(50,340)/100.0
        j2 = random.randint(40,300)/100.0
        j3 = random.randint(-180,140)/100.0
        j4 = random.randint(-150,10)/100.0
        j5 = random.randint(-180,10)/100.0
        j6 = random.randint(-200,10)/100.0
        j7 = random.randint(-100,200)/100.0
        # j1 range 0.5 to 3.4
        seed.position = [j1, j2, j3, j4, j5, j6, j7]
        # seed.position = [j1, 0.4, -1.7, 1.4, -1.1, -1.6, -0.4]
        ikreq.seed_angles.append(seed)

        # get the response from IK solver Service
        resp = self.ik_serv.call(ikreq)
        print "========= resp 0 ========="
        print resp

        # reassgin a random value to joint seed if fail to get the valid solution
        while resp.result_type[0] <= 0:
            print "error type: "
            print resp.result_type[0]
            j1 = random.randint(50,340)/100.0
            seed.position = [j1, 0.4, -1.7, 1.4, -1.1, -1.6, -0.4]
            ikreq.seed_angles.append(seed)
            resp = self.ik_serv.call(ikreq)

        # message print out
        rospy.loginfo("SUCCESS - Valid Joint Solution Found")

        # rospy.logdebug("Response message: " + str(resp))

        target_js = [resp.joints[0].position[0],
                        resp.joints[0].position[1],
                        resp.joints[0].position[2],
                        resp.joints[0].position[3],
                        resp.joints[0].position[4],
                        resp.joints[0].position[5],
                        resp.joints[0].position[6]]

        # rospy.logdebug("Target value: " + str(target_js))

        return target_js

    def addCollisionObjects(self,name=[""],p=PoseStamped(),p_size=size):
        # TODO: add color
        rospy.sleep(5)

        for n in name:
            # clear world
            self.scene.remove_world_object(name)
            # read pose() and size data
            if name in self.dict.obj_pose_dict:
                p = self.dict.obj_pose_dict[name]
            if name in self.dict.obj_size_dict:
                p_size = self.dict.obj_size_dict[name]
            # set header.frame_id
            p.header.frame_id = self.robot.get_planning_frame()
            # add to scene
            self.scene.add_box(name, p, p_size)

            rospy.loginfo("Add: " + str(name) + " !")

        return

    def checkCollisions(self,target):
        """
        Given a target position in JointState and check whether there is collision

        @param target: a list of joints value to be checked
        @return type: returns True when it is valid
        """
        req = GetStateValidityRequest()
        req.robot_state.joint_state.name = self.group.get_active_joints()
        req.robot_state.joint_state.position = target
        resp = self.check_serv(req)
        print "Is target valid?", resp.valid
        return resp.valid

    def generateValidTargetJointState(self,pose):
        """Generate a valid target position in Joint Space and returns a list"""
        target = self.convertToJointStates(pose)
        while not self.checkCollisions(target):
            target = self.convertToJointStates(pose)
        return target

    def testPlan(self,target):
        print "test PLan:"
        # set target
        self.group.set_joint_value_target(target)
        # generate plan
        plan = self.group.plan()

        # execute plan
        self.group.go()
        print "Done!"

    def gripAct(self):
        ## Gripper
        self.gripper_io.set_signal_value("position_m", 0.041)
        rospy.sleep(2)
        # side="right"
        # grip_name = '_'.join([side, 'gripper'])
        # gripper_io = IODeviceInterface("end_effector", grip_name)

        if self.gripper_io.get_signal_value("is_calibrated") != True:
            self.gripper_io.set_signal_value("calibrate", True)

        ## grabbing bottle
        self.gripper_io.set_signal_value("speed_mps", 1)


        self.gripper_io.set_signal_value("position_m", 0.01)
        light_size = self.gripper_io.get_signal_value("position_response_m")
        print "realeasing size is: ", light_size

        rospy.sleep(1)
        ## if object is detected
        if self.gripper_io.get_signal_value("is_gripping") != True:
            print "Not stable!"
            light_force = self.gripper_io.get_signal_value("force_response_n")
            print "risky force is: ", light_force

            self.gripper_io.set_signal_value("position_m", 0.00)

        # get true force and obejct size responses
        force = self.gripper_io.get_signal_value("force_response_n")
        obj_size = self.gripper_io.get_signal_value("position_response_m")
        print "force is: ", force
        print "object size is: ", obj_size

    def gripRelease(self):
        touch_size = self.gripper_io.get_signal_value("position_response_m")
        if self.gripper_io.get_signal_value("is_gripping"):
            print touch_size
            print "Releasing bottle!"
            self.gripper_io.set_signal_value("position_m", 0.017)

if __name__=='__main__':
    moveit_commander.roscpp_initialize(sys.argv)

    rospy.init_node('move_to_target',anonymous=True)

    try:

        bg = beerGrabber()

        # add collision Objects
        obj_name = ["table","fridge_back","fridge_top","fridge_left","fridge_right","fridge_bottom"]
        bg.addCollisionObjects(obj_name)

        # get target in Cartesian - Camera
        pose_target = bg.getTargetEEF()
        print "pose_target_from_camera: "
        print pose_target
        # reset orientation
        pose_target.orientation.x=0.0
        pose_target.orientation.y=-1.0
        pose_target.orientation.z=0.0
        pose_target.orientation.w = -1.0

        # get target in JointState
        target_js = bg.generateValidTargetJointState(pose_target)

        bottle = PoseStamped()
        bg.addCollisionObjects(“bottle1”,bottle)

        bg.testPlan(target_js)


    except rospy.ROSInterruptException:
        pass
