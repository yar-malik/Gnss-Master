; Auto-generated. Do not edit!


(cl:in-package rtkrcv-msg)


;//! \htmlinclude sbsigp_t.msg.html

(cl:defclass <sbsigp_t> (roslisp-msg-protocol:ros-message)
  ((t0
    :reader t0
    :initarg :t0
    :type cl:real
    :initform 0)
   (lat
    :reader lat
    :initarg :lat
    :type cl:fixnum
    :initform 0)
   (lon
    :reader lon
    :initarg :lon
    :type cl:fixnum
    :initform 0)
   (give
    :reader give
    :initarg :give
    :type cl:fixnum
    :initform 0)
   (delay
    :reader delay
    :initarg :delay
    :type cl:float
    :initform 0.0))
)

(cl:defclass sbsigp_t (<sbsigp_t>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sbsigp_t>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sbsigp_t)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtkrcv-msg:<sbsigp_t> is deprecated: use rtkrcv-msg:sbsigp_t instead.")))

(cl:ensure-generic-function 't0-val :lambda-list '(m))
(cl:defmethod t0-val ((m <sbsigp_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:t0-val is deprecated.  Use rtkrcv-msg:t0 instead.")
  (t0 m))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <sbsigp_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:lat-val is deprecated.  Use rtkrcv-msg:lat instead.")
  (lat m))

(cl:ensure-generic-function 'lon-val :lambda-list '(m))
(cl:defmethod lon-val ((m <sbsigp_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:lon-val is deprecated.  Use rtkrcv-msg:lon instead.")
  (lon m))

(cl:ensure-generic-function 'give-val :lambda-list '(m))
(cl:defmethod give-val ((m <sbsigp_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:give-val is deprecated.  Use rtkrcv-msg:give instead.")
  (give m))

(cl:ensure-generic-function 'delay-val :lambda-list '(m))
(cl:defmethod delay-val ((m <sbsigp_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:delay-val is deprecated.  Use rtkrcv-msg:delay instead.")
  (delay m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sbsigp_t>) ostream)
  "Serializes a message object of type '<sbsigp_t>"
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
  (cl:let* ((signed (cl:slot-value msg 'lat)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lon)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'give)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'delay))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sbsigp_t>) istream)
  "Deserializes a message object of type '<sbsigp_t>"
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
      (cl:setf (cl:slot-value msg 'lat) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lon) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'give) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'delay) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sbsigp_t>)))
  "Returns string type for a message object of type '<sbsigp_t>"
  "rtkrcv/sbsigp_t")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sbsigp_t)))
  "Returns string type for a message object of type 'sbsigp_t"
  "rtkrcv/sbsigp_t")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sbsigp_t>)))
  "Returns md5sum for a message object of type '<sbsigp_t>"
  "f4e8be9b5bc2e0f8af3ad2e777a018eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sbsigp_t)))
  "Returns md5sum for a message object of type 'sbsigp_t"
  "f4e8be9b5bc2e0f8af3ad2e777a018eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sbsigp_t>)))
  "Returns full string definition for message of type '<sbsigp_t>"
  (cl:format cl:nil "# SBAS ionospheric correction type~%~%time t0               # correction time~%int16 lat             # latitude (deg)~%int16 lon             # longitude (deg)~%int16 give            # GIVI+1~%float32 delay         # vertical delay estimate (m)~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sbsigp_t)))
  "Returns full string definition for message of type 'sbsigp_t"
  (cl:format cl:nil "# SBAS ionospheric correction type~%~%time t0               # correction time~%int16 lat             # latitude (deg)~%int16 lon             # longitude (deg)~%int16 give            # GIVI+1~%float32 delay         # vertical delay estimate (m)~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sbsigp_t>))
  (cl:+ 0
     8
     2
     2
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sbsigp_t>))
  "Converts a ROS message object to a list"
  (cl:list 'sbsigp_t
    (cl:cons ':t0 (t0 msg))
    (cl:cons ':lat (lat msg))
    (cl:cons ':lon (lon msg))
    (cl:cons ':give (give msg))
    (cl:cons ':delay (delay msg))
))
