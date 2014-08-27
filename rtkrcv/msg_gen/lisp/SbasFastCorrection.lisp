; Auto-generated. Do not edit!


(cl:in-package rtkrcv-msg)


;//! \htmlinclude SbasFastCorrection.msg.html

(cl:defclass <SbasFastCorrection> (roslisp-msg-protocol:ros-message)
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
   (dt
    :reader dt
    :initarg :dt
    :type cl:float
    :initform 0.0)
   (iodf
    :reader iodf
    :initarg :iodf
    :type cl:integer
    :initform 0)
   (udre
    :reader udre
    :initarg :udre
    :type cl:fixnum
    :initform 0)
   (ai
    :reader ai
    :initarg :ai
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SbasFastCorrection (<SbasFastCorrection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SbasFastCorrection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SbasFastCorrection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtkrcv-msg:<SbasFastCorrection> is deprecated: use rtkrcv-msg:SbasFastCorrection instead.")))

(cl:ensure-generic-function 't0-val :lambda-list '(m))
(cl:defmethod t0-val ((m <SbasFastCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:t0-val is deprecated.  Use rtkrcv-msg:t0 instead.")
  (t0 m))

(cl:ensure-generic-function 'prc-val :lambda-list '(m))
(cl:defmethod prc-val ((m <SbasFastCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:prc-val is deprecated.  Use rtkrcv-msg:prc instead.")
  (prc m))

(cl:ensure-generic-function 'rrc-val :lambda-list '(m))
(cl:defmethod rrc-val ((m <SbasFastCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:rrc-val is deprecated.  Use rtkrcv-msg:rrc instead.")
  (rrc m))

(cl:ensure-generic-function 'dt-val :lambda-list '(m))
(cl:defmethod dt-val ((m <SbasFastCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:dt-val is deprecated.  Use rtkrcv-msg:dt instead.")
  (dt m))

(cl:ensure-generic-function 'iodf-val :lambda-list '(m))
(cl:defmethod iodf-val ((m <SbasFastCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:iodf-val is deprecated.  Use rtkrcv-msg:iodf instead.")
  (iodf m))

(cl:ensure-generic-function 'udre-val :lambda-list '(m))
(cl:defmethod udre-val ((m <SbasFastCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:udre-val is deprecated.  Use rtkrcv-msg:udre instead.")
  (udre m))

(cl:ensure-generic-function 'ai-val :lambda-list '(m))
(cl:defmethod ai-val ((m <SbasFastCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:ai-val is deprecated.  Use rtkrcv-msg:ai instead.")
  (ai m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SbasFastCorrection>) ostream)
  "Serializes a message object of type '<SbasFastCorrection>"
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'iodf)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'udre)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ai)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SbasFastCorrection>) istream)
  "Deserializes a message object of type '<SbasFastCorrection>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dt) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iodf) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'udre) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ai) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SbasFastCorrection>)))
  "Returns string type for a message object of type '<SbasFastCorrection>"
  "rtkrcv/SbasFastCorrection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SbasFastCorrection)))
  "Returns string type for a message object of type 'SbasFastCorrection"
  "rtkrcv/SbasFastCorrection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SbasFastCorrection>)))
  "Returns md5sum for a message object of type '<SbasFastCorrection>"
  "6ab18b6bf8b7e82ee4ad362295691322")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SbasFastCorrection)))
  "Returns md5sum for a message object of type 'SbasFastCorrection"
  "6ab18b6bf8b7e82ee4ad362295691322")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SbasFastCorrection>)))
  "Returns full string definition for message of type '<SbasFastCorrection>"
  (cl:format cl:nil "# SBAS fast correction type~%~%time t0             # time of applicability (TOF)~%float64 prc         # pseudorange correction (PRC) (m)~%float64 rrc         # range-rate correction (RRC) (m/s)~%float64 dt          # range-rate correction delta-time (s)~%int32 iodf          # IODF (issue of date fast corr)~%int16 udre          # UDRE+1~%int16 ai            # degradation factor indicator~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SbasFastCorrection)))
  "Returns full string definition for message of type 'SbasFastCorrection"
  (cl:format cl:nil "# SBAS fast correction type~%~%time t0             # time of applicability (TOF)~%float64 prc         # pseudorange correction (PRC) (m)~%float64 rrc         # range-rate correction (RRC) (m/s)~%float64 dt          # range-rate correction delta-time (s)~%int32 iodf          # IODF (issue of date fast corr)~%int16 udre          # UDRE+1~%int16 ai            # degradation factor indicator~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SbasFastCorrection>))
  (cl:+ 0
     8
     8
     8
     8
     4
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SbasFastCorrection>))
  "Converts a ROS message object to a list"
  (cl:list 'SbasFastCorrection
    (cl:cons ':t0 (t0 msg))
    (cl:cons ':prc (prc msg))
    (cl:cons ':rrc (rrc msg))
    (cl:cons ':dt (dt msg))
    (cl:cons ':iodf (iodf msg))
    (cl:cons ':udre (udre msg))
    (cl:cons ':ai (ai msg))
))
