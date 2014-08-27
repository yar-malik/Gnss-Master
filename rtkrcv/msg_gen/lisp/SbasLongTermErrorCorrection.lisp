; Auto-generated. Do not edit!


(cl:in-package rtkrcv-msg)


;//! \htmlinclude SbasLongTermErrorCorrection.msg.html

(cl:defclass <SbasLongTermErrorCorrection> (roslisp-msg-protocol:ros-message)
  ((t0
    :reader t0
    :initarg :t0
    :type cl:real
    :initform 0)
   (iode
    :reader iode
    :initarg :iode
    :type cl:integer
    :initform 0)
   (dpos
    :reader dpos
    :initarg :dpos
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (dvel
    :reader dvel
    :initarg :dvel
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (daf0
    :reader daf0
    :initarg :daf0
    :type cl:float
    :initform 0.0)
   (daf1s
    :reader daf1s
    :initarg :daf1s
    :type cl:float
    :initform 0.0))
)

(cl:defclass SbasLongTermErrorCorrection (<SbasLongTermErrorCorrection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SbasLongTermErrorCorrection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SbasLongTermErrorCorrection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtkrcv-msg:<SbasLongTermErrorCorrection> is deprecated: use rtkrcv-msg:SbasLongTermErrorCorrection instead.")))

(cl:ensure-generic-function 't0-val :lambda-list '(m))
(cl:defmethod t0-val ((m <SbasLongTermErrorCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:t0-val is deprecated.  Use rtkrcv-msg:t0 instead.")
  (t0 m))

(cl:ensure-generic-function 'iode-val :lambda-list '(m))
(cl:defmethod iode-val ((m <SbasLongTermErrorCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:iode-val is deprecated.  Use rtkrcv-msg:iode instead.")
  (iode m))

(cl:ensure-generic-function 'dpos-val :lambda-list '(m))
(cl:defmethod dpos-val ((m <SbasLongTermErrorCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:dpos-val is deprecated.  Use rtkrcv-msg:dpos instead.")
  (dpos m))

(cl:ensure-generic-function 'dvel-val :lambda-list '(m))
(cl:defmethod dvel-val ((m <SbasLongTermErrorCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:dvel-val is deprecated.  Use rtkrcv-msg:dvel instead.")
  (dvel m))

(cl:ensure-generic-function 'daf0-val :lambda-list '(m))
(cl:defmethod daf0-val ((m <SbasLongTermErrorCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:daf0-val is deprecated.  Use rtkrcv-msg:daf0 instead.")
  (daf0 m))

(cl:ensure-generic-function 'daf1s-val :lambda-list '(m))
(cl:defmethod daf1s-val ((m <SbasLongTermErrorCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:daf1s-val is deprecated.  Use rtkrcv-msg:daf1s instead.")
  (daf1s m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SbasLongTermErrorCorrection>) ostream)
  "Serializes a message object of type '<SbasLongTermErrorCorrection>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 't0)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 't0) (cl:floor (cl:slot-value msg 't0)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let* ((signed (cl:slot-value msg 'iode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dpos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dvel) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'daf0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'daf1s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SbasLongTermErrorCorrection>) istream)
  "Deserializes a message object of type '<SbasLongTermErrorCorrection>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 't0) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dpos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dvel) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'daf0) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'daf1s) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SbasLongTermErrorCorrection>)))
  "Returns string type for a message object of type '<SbasLongTermErrorCorrection>"
  "rtkrcv/SbasLongTermErrorCorrection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SbasLongTermErrorCorrection)))
  "Returns string type for a message object of type 'SbasLongTermErrorCorrection"
  "rtkrcv/SbasLongTermErrorCorrection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SbasLongTermErrorCorrection>)))
  "Returns md5sum for a message object of type '<SbasLongTermErrorCorrection>"
  "4dadc3603f7423f2f0cd8571125e7ad7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SbasLongTermErrorCorrection)))
  "Returns md5sum for a message object of type 'SbasLongTermErrorCorrection"
  "4dadc3603f7423f2f0cd8571125e7ad7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SbasLongTermErrorCorrection>)))
  "Returns full string definition for message of type '<SbasLongTermErrorCorrection>"
  (cl:format cl:nil "# SBAS long term satellite error correction type~%~%time t0                        # correction time~%int32 iode                     # IODE (issue of date ephemeris)~%geometry_msgs/Vector3 dpos     # delta position (m) (ecef)~%geometry_msgs/Vector3 dvel     # delta velocity (m/s) (ecef)~%float64 daf0                   # delta clock-offset(s,s/s)~%float64 daf1s                  # delta drift (s,s/s)~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SbasLongTermErrorCorrection)))
  "Returns full string definition for message of type 'SbasLongTermErrorCorrection"
  (cl:format cl:nil "# SBAS long term satellite error correction type~%~%time t0                        # correction time~%int32 iode                     # IODE (issue of date ephemeris)~%geometry_msgs/Vector3 dpos     # delta position (m) (ecef)~%geometry_msgs/Vector3 dvel     # delta velocity (m/s) (ecef)~%float64 daf0                   # delta clock-offset(s,s/s)~%float64 daf1s                  # delta drift (s,s/s)~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SbasLongTermErrorCorrection>))
  (cl:+ 0
     8
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dpos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dvel))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SbasLongTermErrorCorrection>))
  "Converts a ROS message object to a list"
  (cl:list 'SbasLongTermErrorCorrection
    (cl:cons ':t0 (t0 msg))
    (cl:cons ':iode (iode msg))
    (cl:cons ':dpos (dpos msg))
    (cl:cons ':dvel (dvel msg))
    (cl:cons ':daf0 (daf0 msg))
    (cl:cons ':daf1s (daf1s msg))
))
