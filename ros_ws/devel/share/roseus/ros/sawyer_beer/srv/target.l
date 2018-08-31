;; Auto-generated. Do not edit!


(when (boundp 'sawyer_beer::target)
  (if (not (find-package "SAWYER_BEER"))
    (make-package "SAWYER_BEER"))
  (shadow 'target (find-package "SAWYER_BEER")))
(unless (find-package "SAWYER_BEER::TARGET")
  (make-package "SAWYER_BEER::TARGET"))
(unless (find-package "SAWYER_BEER::TARGETREQUEST")
  (make-package "SAWYER_BEER::TARGETREQUEST"))
(unless (find-package "SAWYER_BEER::TARGETRESPONSE")
  (make-package "SAWYER_BEER::TARGETRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass sawyer_beer::targetRequest
  :super ros::object
  :slots (_data ))

(defmethod sawyer_beer::targetRequest
  (:init
   (&key
    ((:data __data) nil)
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; bool _data
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _data
       (if _data (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _data
     (setq _data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass sawyer_beer::targetResponse
  :super ros::object
  :slots (_pose ))

(defmethod sawyer_beer::targetResponse
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass sawyer_beer::target
  :super ros::object
  :slots ())

(setf (get sawyer_beer::target :md5sum-) "66e12f7d13e74171b48748f4e38919a7")
(setf (get sawyer_beer::target :datatype-) "sawyer_beer/target")
(setf (get sawyer_beer::target :request) sawyer_beer::targetRequest)
(setf (get sawyer_beer::target :response) sawyer_beer::targetResponse)

(defmethod sawyer_beer::targetRequest
  (:response () (instance sawyer_beer::targetResponse :init)))

(setf (get sawyer_beer::targetRequest :md5sum-) "66e12f7d13e74171b48748f4e38919a7")
(setf (get sawyer_beer::targetRequest :datatype-) "sawyer_beer/targetRequest")
(setf (get sawyer_beer::targetRequest :definition-)
      "bool data
---
geometry_msgs/Pose pose


================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get sawyer_beer::targetResponse :md5sum-) "66e12f7d13e74171b48748f4e38919a7")
(setf (get sawyer_beer::targetResponse :datatype-) "sawyer_beer/targetResponse")
(setf (get sawyer_beer::targetResponse :definition-)
      "bool data
---
geometry_msgs/Pose pose


================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :sawyer_beer/target "66e12f7d13e74171b48748f4e38919a7")


