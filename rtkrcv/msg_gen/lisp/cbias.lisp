; Auto-generated. Do not edit!


(cl:in-package rtkrcv-msg)


;//! \htmlinclude cbias.msg.html

(cl:defclass <cbias> (roslisp-msg-protocol:ros-message)
  ((p1_p2
    :reader p1_p2
    :initarg :p1_p2
    :type cl:float
    :initform 0.0)
   (p1_c1
    :reader p1_c1
    :initarg :p1_c1
    :type cl:float
    :initform 0.0)
   (p2_c2
    :reader p2_c2
    :initarg :p2_c2
    :type cl:float
    :initform 0.0))
)

(cl:defclass cbias (<cbias>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cbias>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cbias)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtkrcv-msg:<cbias> is deprecated: use rtkrcv-msg:cbias instead.")))

(cl:ensure-generic-function 'p1_p2-val :lambda-list '(m))
(cl:defmethod p1_p2-val ((m <cbias>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:p1_p2-val is deprecated.  Use rtkrcv-msg:p1_p2 instead.")
  (p1_p2 m))

(cl:ensure-generic-function 'p1_c1-val :lambda-list '(m))
(cl:defmethod p1_c1-val ((m <cbias>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:p1_c1-val is deprecated.  Use rtkrcv-msg:p1_c1 instead.")
  (p1_c1 m))

(cl:ensure-generic-function 'p2_c2-val :lambda-list '(m))
(cl:defmethod p2_c2-val ((m <cbias>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:p2_c2-val is deprecated.  Use rtkrcv-msg:p2_c2 instead.")
  (p2_c2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cbias>) ostream)
  "Serializes a message object of type '<cbias>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'p1_p2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'p1_c1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'p2_c2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cbias>) istream)
  "Deserializes a message object of type '<cbias>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'p1_p2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'p1_c1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'p2_c2) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cbias>)))
  "Returns string type for a message object of type '<cbias>"
  "rtkrcv/cbias")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cbias)))
  "Returns string type for a message object of type 'cbias"
  "rtkrcv/cbias")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cbias>)))
  "Returns md5sum for a message object of type '<cbias>"
  "821a1a42ff1f270ad9a3e3a38516de2d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cbias)))
  "Returns md5sum for a message object of type 'cbias"
  "821a1a42ff1f270ad9a3e3a38516de2d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cbias>)))
  "Returns full string definition for message of type '<cbias>"
  (cl:format cl:nil "# code bias (0:p1-p2,1:p1-c1,2:p2-c2) (m)~%~%float64 p1_p2~%float64 p1_c1~%float64 p2_c2~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cbias)))
  "Returns full string definition for message of type 'cbias"
  (cl:format cl:nil "# code bias (0:p1-p2,1:p1-c1,2:p2-c2) (m)~%~%float64 p1_p2~%float64 p1_c1~%float64 p2_c2~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cbias>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cbias>))
  "Converts a ROS message object to a list"
  (cl:list 'cbias
    (cl:cons ':p1_p2 (p1_p2 msg))
    (cl:cons ':p1_c1 (p1_c1 msg))
    (cl:cons ':p2_c2 (p2_c2 msg))
))
