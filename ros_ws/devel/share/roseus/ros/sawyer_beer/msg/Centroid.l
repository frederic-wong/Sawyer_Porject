;; Auto-generated. Do not edit!


(when (boundp 'sawyer_beer::Centroid)
  (if (not (find-package "SAWYER_BEER"))
    (make-package "SAWYER_BEER"))
  (shadow 'Centroid (find-package "SAWYER_BEER")))
(unless (find-package "SAWYER_BEER::CENTROID")
  (make-package "SAWYER_BEER::CENTROID"))

(in-package "ROS")
;;//! \htmlinclude Centroid.msg.html


(defclass sawyer_beer::Centroid
  :super ros::object
  :slots (_x_center _y_center _width _height ))

(defmethod sawyer_beer::Centroid
  (:init
   (&key
    ((:x_center __x_center) 0)
    ((:y_center __y_center) 0)
    ((:width __width) 0)
    ((:height __height) 0)
    )
   (send-super :init)
   (setq _x_center (round __x_center))
   (setq _y_center (round __y_center))
   (setq _width (round __width))
   (setq _height (round __height))
   self)
  (:x_center
   (&optional __x_center)
   (if __x_center (setq _x_center __x_center)) _x_center)
  (:y_center
   (&optional __y_center)
   (if __y_center (setq _y_center __y_center)) _y_center)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; int32 _x_center
    4
    ;; int32 _y_center
    4
    ;; int32 _width
    4
    ;; int32 _height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x_center
       (write-long _x_center s)
     ;; int32 _y_center
       (write-long _y_center s)
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x_center
     (setq _x_center (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y_center
     (setq _y_center (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sawyer_beer::Centroid :md5sum-) "58d67e1619b82cd9993c819da03f5871")
(setf (get sawyer_beer::Centroid :datatype-) "sawyer_beer/Centroid")
(setf (get sawyer_beer::Centroid :definition-)
      "
int32 x_center
int32 y_center
int32 width
int32 height

")



(provide :sawyer_beer/Centroid "58d67e1619b82cd9993c819da03f5871")


