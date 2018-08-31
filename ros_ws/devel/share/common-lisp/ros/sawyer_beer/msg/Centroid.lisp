; Auto-generated. Do not edit!


(cl:in-package sawyer_beer-msg)


;//! \htmlinclude Centroid.msg.html

(cl:defclass <Centroid> (roslisp-msg-protocol:ros-message)
  ((x_center
    :reader x_center
    :initarg :x_center
    :type cl:integer
    :initform 0)
   (y_center
    :reader y_center
    :initarg :y_center
    :type cl:integer
    :initform 0)
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0))
)

(cl:defclass Centroid (<Centroid>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Centroid>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Centroid)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sawyer_beer-msg:<Centroid> is deprecated: use sawyer_beer-msg:Centroid instead.")))

(cl:ensure-generic-function 'x_center-val :lambda-list '(m))
(cl:defmethod x_center-val ((m <Centroid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sawyer_beer-msg:x_center-val is deprecated.  Use sawyer_beer-msg:x_center instead.")
  (x_center m))

(cl:ensure-generic-function 'y_center-val :lambda-list '(m))
(cl:defmethod y_center-val ((m <Centroid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sawyer_beer-msg:y_center-val is deprecated.  Use sawyer_beer-msg:y_center instead.")
  (y_center m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <Centroid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sawyer_beer-msg:width-val is deprecated.  Use sawyer_beer-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <Centroid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sawyer_beer-msg:height-val is deprecated.  Use sawyer_beer-msg:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Centroid>) ostream)
  "Serializes a message object of type '<Centroid>"
  (cl:let* ((signed (cl:slot-value msg 'x_center)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y_center)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Centroid>) istream)
  "Deserializes a message object of type '<Centroid>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x_center) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y_center) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Centroid>)))
  "Returns string type for a message object of type '<Centroid>"
  "sawyer_beer/Centroid")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Centroid)))
  "Returns string type for a message object of type 'Centroid"
  "sawyer_beer/Centroid")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Centroid>)))
  "Returns md5sum for a message object of type '<Centroid>"
  "58d67e1619b82cd9993c819da03f5871")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Centroid)))
  "Returns md5sum for a message object of type 'Centroid"
  "58d67e1619b82cd9993c819da03f5871")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Centroid>)))
  "Returns full string definition for message of type '<Centroid>"
  (cl:format cl:nil "~%int32 x_center~%int32 y_center~%int32 width~%int32 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Centroid)))
  "Returns full string definition for message of type 'Centroid"
  (cl:format cl:nil "~%int32 x_center~%int32 y_center~%int32 width~%int32 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Centroid>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Centroid>))
  "Converts a ROS message object to a list"
  (cl:list 'Centroid
    (cl:cons ':x_center (x_center msg))
    (cl:cons ':y_center (y_center msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
))
