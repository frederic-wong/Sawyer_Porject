#!/usr/bin/env python

import sys
import os

# Import ros tools needed to operate robot
import rospy
import intera_interface
from std_msgs.msg import Bool

# Path for different files used for testing
#sys.path.append('/home/parallels/ros_ws/src/intera_sdk/intera_examples/scripts')

from vision import *
from move import *

from neutral_position import neutral_position
from intera_interface import (
    get_current_gripper_interface)

# Initialise node 
rospy.init_node('robot_main')

# Initialise sleep time
rate = rospy.Rate(10)

command = []


gripper = get_current_gripper_interface()
gripper.calibrate()


def callback(data):
	if data.data == True:
		global start
		start = True


# Read command text file and add it to the command list
with open("command.txt","r") as inputfile:
	for line in inputfile:
		command.append(line.split(" "))
	    
try:

	# Define the position coordinates that will be used
	target_1 = [ 0.481411121842, 0.520207404335, 0.0229609522373]
	target_2 = [ 0.488816426572, 0.221152456584, 0.0219645763764]
	pick_location = [0.660254242183, -0.141582855917, -0.0605712484198]
	
	# Display information on the terminal with the time
	rospy.loginfo("Robot Initialising")

	# Get the robot in neutral position
	neutral_position()

	rospy.loginfo("Initialising Camera")
	# Specify which robot camera will be used
	camera = 'right_hand_camera'
	cameras = intera_interface.Cameras()

	rospy.loginfo("Starting up Camera")
	use_canny_edge = True
	rate.sleep()

	# Read the command list to check word used 
	for n in range (len(command)):
		if command [n][0] == "HUMAN":

			# Start in neutral position
			neutral_position()
			start = False
			
			# Start up the camera
			cameras.start_streaming(camera)
			rospy.loginfo("Running Camera")
			while start != True:
				# Callback the image function
				cameras.set_callback(camera, show_image_callback, callback_args=(use_canny_edge, camera))
				rate.sleep()

				# Suscribe to the value returned from the callback
				rospy.Subscriber("human_check", Bool,callback)

			rospy.loginfo("Square Detected")

			# Stop camera streaming
			cameras.stop_streaming(camera)


		elif command [n][0] == "ROBOT":
		    
		    if command [n][1] == "PLACE":
		        rospy.loginfo ("PLACE")
			if command [n][5] == '1':
   				x1 = target_1[0]
    				y1 = target_1[1]
    				z1 = target_1[2]
			elif command [n][5] == '2':
  				x1 = target_2[0]
    				y1 = target_2[1]
    				z1 = target_2[2] 				
			# Call Inverse Kinematic function to move robot
    			ik_service(x1,y1,z1)
			gripper.open()

	
		    elif command[n][1] == "PICK":
		        rospy.loginfo ("HOVER")
    			x1 = pick_location[0]	
    			y1 = pick_location[1]	
    			z1 = pick_location[2] + 0.1
    			ik_service(x1,y1,z1)
        
			rospy.loginfo ("PICK")
    			z1 = pick_location[2]	
    			ik_service(x1,y1,z1)

			gripper.close()

		    else:
		        rospy.loginfo ("Error in command file")
		        exit()
		# Move robot to neutral position when command file ends
		elif command [n][0] == "END":
	 	    neutral_position()	
		
		else:
		    rospy.loginfo ("Error in command file")
		    exit()
except ValueError:
	rospy.loginfo ("Error in command file")

		



