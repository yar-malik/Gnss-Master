; Auto-generated. Do not edit!


(cl:in-package rtkrcv-msg)


;//! \htmlinclude DifferentialGnss.msg.html

(cl:defclass <DifferentialGnss> (roslisp-msg-protocol:ros-message)
  ((t0
    :reader t0
    :initarg :t0
    :type cl:real
    :initform 0)
   (prc
    :reader prc
    :initarg :prc
    :type cl:float
    :initform 0.0)
   (rrc
    :reader rrc
    :initarg :rrc
    :type cl:float
    :initform 0.0)
   (iod
    :reader iod
    :initarg :iod
    :type cl:integer
    :initform 0)
   (udre
    :reader udre
    :initarg :udre
    :type cl:float
    :initform 0.0))
)

(cl:defclass DifferentialGnss (<DifferentialGnss>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DifferentialGnss>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DifferentialGnss)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtkrcv-msg:<DifferentialGnss> is deprecated: use rtkrcv-msg:DifferentialGnss instead.")))

(cl:ensure-generic-function 't0-val :lambda-list '(m))
(cl:defmethod t0-val ((m <DifferentialGnss>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:t0-val is deprecated.  Use rtkrcv-msg:t0 instead.")
  (t0 m))

(cl:ensure-generic-function 'prc-val :lambda-list '(m))
(cl:defmethod prc-val ((m <DifferentialGnss>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:prc-val is deprecated.  Use rtkrcv-msg:prc instead.")
  (prc m))

(cl:ensure-generic-function 'rrc-val :lambda-list '(m))
(cl:defmethod rrc-val ((m <DifferentialGnss>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:rrc-val is deprecated.  Use rtkrcv-msg:rrc instead.")
  (rrc m))

(cl:ensure-generic-function 'iod-val :lambda-list '(m))
(cl:defmethod iod-val ((m <DifferentialGnss>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:iod-val is deprecated.  Use rtkrcv-msg:iod instead.")
  (iod m))

(cl:ensure-generic-function 'udre-val :lambda-list '(m))
(cl:defmethod udre-val ((m <DifferentialGnss>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:udre-val is deprecated.  Use rtkrcv-msg:udre instead.")
  (udre m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DifferentialGnss>) ostream)
  "Serializes a message object of type '<DifferentialGnss>"
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'prc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rrc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'iod)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'udre))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DifferentialGnss>) istream)
  "Deserializes a message object of type '<DifferentialGnss>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rrc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iod) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'udre) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DifferentialGnss>)))
  "Returns string type for a message object of type '<DifferentialGnss>"
  "rtkrcv/DifferentialGnss")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DifferentialGnss)))
  "Returns string type for a message object of type 'DifferentialGnss"
  "rtkrcv/DifferentialGnss")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DifferentialGnss>)))
  "Returns md5sum for a message object of type '<DifferentialGnss>"
  "512aa2736c1354bc1ba3a9dc20331f42")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DifferentialGnss)))
  "Returns md5sum for a message object of type 'DifferentialGnss"
  "512aa2736c1354bc1ba3a9dc20331f42")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DifferentialGnss>)))
  "Returns full string definition for message of type '<DifferentialGnss>"
  (cl:format cl:nil "# DGPS/GNSS correction type~%~%time t0             # correction time~%float64 prc         # pseudorange correction (PRC) (m)~%float64 rrc         # range rate correction (RRC) (m/s)~%int32 iod           # issue of data (IOD)~%float64 udre        # UDRE~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DifferentialGnss)))
  "Returns full string definition for message of type 'DifferentialGnss"
  (cl:format cl:nil "# DGPS/GNSS correction type~%~%time t0             # correction time~%float64 prc         # pseudorange correction (PRC) (m)~%float64 rrc         # range rate correction (RRC) (m/s)~%int32 iod           # issue of data (IOD)~%float64 udre        # UDRE~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DifferentialGnss>))
  (cl:+ 0
     8
     8
     8
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DifferentialGnss>))
  "Converts a ROS message object to a list"
  (cl:list 'DifferentialGnss
    (cl:cons ':t0 (t0 msg))
    (cl:cons ':prc (prc msg))
    (cl:cons ':rrc (rrc msg))
    (cl:cons ':iod (iod msg))
    (cl:cons ':udre (udre msg))
))
