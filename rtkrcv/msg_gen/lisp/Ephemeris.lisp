; Auto-generated. Do not edit!


(cl:in-package rtkrcv-msg)


;//! \htmlinclude Ephemeris.msg.html

(cl:defclass <Ephemeris> (roslisp-msg-protocol:ros-message)
  ((sat
    :reader sat
    :initarg :sat
    :type cl:integer
    :initform 0))
)

(cl:defclass Ephemeris (<Ephemeris>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ephemeris>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ephemeris)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtkrcv-msg:<Ephemeris> is deprecated: use rtkrcv-msg:Ephemeris instead.")))

(cl:ensure-generic-function 'sat-val :lambda-list '(m))
(cl:defmethod sat-val ((m <Ephemeris>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:sat-val is deprecated.  Use rtkrcv-msg:sat instead.")
  (sat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ephemeris>) ostream)
  "Serializes a message object of type '<Ephemeris>"
  (cl:let* ((signed (cl:slot-value msg 'sat)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ephemeris>) istream)
  "Deserializes a message object of type '<Ephemeris>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sat) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ephemeris>)))
  "Returns string type for a message object of type '<Ephemeris>"
  "rtkrcv/Ephemeris")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ephemeris)))
  "Returns string type for a message object of type 'Ephemeris"
  "rtkrcv/Ephemeris")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ephemeris>)))
  "Returns md5sum for a message object of type '<Ephemeris>"
  "62f89a1b367ce484104ddb6031cf3a54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ephemeris)))
  "Returns md5sum for a message object of type 'Ephemeris"
  "62f89a1b367ce484104ddb6031cf3a54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ephemeris>)))
  "Returns full string definition for message of type '<Ephemeris>"
  (cl:format cl:nil "# GPS/QZS/GAL broadcast ephemeris type~%~%int32 sat             # satellite number~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ephemeris)))
  "Returns full string definition for message of type 'Ephemeris"
  (cl:format cl:nil "# GPS/QZS/GAL broadcast ephemeris type~%~%int32 sat             # satellite number~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ephemeris>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ephemeris>))
  "Converts a ROS message object to a list"
  (cl:list 'Ephemeris
    (cl:cons ':sat (sat msg))
))
