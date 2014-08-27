; Auto-generated. Do not edit!


(cl:in-package rtkrcv-msg)


;//! \htmlinclude erpd_t.msg.html

(cl:defclass <erpd_t> (roslisp-msg-protocol:ros-message)
  ((mjd
    :reader mjd
    :initarg :mjd
    :type cl:float
    :initform 0.0)
   (xp
    :reader xp
    :initarg :xp
    :type cl:float
    :initform 0.0)
   (yp
    :reader yp
    :initarg :yp
    :type cl:float
    :initform 0.0)
   (xpr
    :reader xpr
    :initarg :xpr
    :type cl:float
    :initform 0.0)
   (ypr
    :reader ypr
    :initarg :ypr
    :type cl:float
    :initform 0.0)
   (ut1_utc
    :reader ut1_utc
    :initarg :ut1_utc
    :type cl:float
    :initform 0.0)
   (lod
    :reader lod
    :initarg :lod
    :type cl:float
    :initform 0.0))
)

(cl:defclass erpd_t (<erpd_t>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <erpd_t>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'erpd_t)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtkrcv-msg:<erpd_t> is deprecated: use rtkrcv-msg:erpd_t instead.")))

(cl:ensure-generic-function 'mjd-val :lambda-list '(m))
(cl:defmethod mjd-val ((m <erpd_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:mjd-val is deprecated.  Use rtkrcv-msg:mjd instead.")
  (mjd m))

(cl:ensure-generic-function 'xp-val :lambda-list '(m))
(cl:defmethod xp-val ((m <erpd_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:xp-val is deprecated.  Use rtkrcv-msg:xp instead.")
  (xp m))

(cl:ensure-generic-function 'yp-val :lambda-list '(m))
(cl:defmethod yp-val ((m <erpd_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:yp-val is deprecated.  Use rtkrcv-msg:yp instead.")
  (yp m))

(cl:ensure-generic-function 'xpr-val :lambda-list '(m))
(cl:defmethod xpr-val ((m <erpd_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:xpr-val is deprecated.  Use rtkrcv-msg:xpr instead.")
  (xpr m))

(cl:ensure-generic-function 'ypr-val :lambda-list '(m))
(cl:defmethod ypr-val ((m <erpd_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:ypr-val is deprecated.  Use rtkrcv-msg:ypr instead.")
  (ypr m))

(cl:ensure-generic-function 'ut1_utc-val :lambda-list '(m))
(cl:defmethod ut1_utc-val ((m <erpd_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:ut1_utc-val is deprecated.  Use rtkrcv-msg:ut1_utc instead.")
  (ut1_utc m))

(cl:ensure-generic-function 'lod-val :lambda-list '(m))
(cl:defmethod lod-val ((m <erpd_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:lod-val is deprecated.  Use rtkrcv-msg:lod instead.")
  (lod m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <erpd_t>) ostream)
  "Serializes a message object of type '<erpd_t>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mjd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'xp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'xpr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ypr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ut1_utc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lod))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <erpd_t>) istream)
  "Deserializes a message object of type '<erpd_t>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mjd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xpr) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ypr) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ut1_utc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lod) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<erpd_t>)))
  "Returns string type for a message object of type '<erpd_t>"
  "rtkrcv/erpd_t")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'erpd_t)))
  "Returns string type for a message object of type 'erpd_t"
  "rtkrcv/erpd_t")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<erpd_t>)))
  "Returns md5sum for a message object of type '<erpd_t>"
  "875080b448f19fe62905bc31b42ff310")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'erpd_t)))
  "Returns md5sum for a message object of type 'erpd_t"
  "875080b448f19fe62905bc31b42ff310")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<erpd_t>)))
  "Returns full string definition for message of type '<erpd_t>"
  (cl:format cl:nil "# earth rotation parameter data type~%~%float64 mjd                 # mjd (days)~%float64 xp~%float64 yp                  # pole offset (rad)~%float64 xpr~%float64 ypr                 # pole offset rate (rad/day)~%float64 ut1_utc             # ut1-utc (s)~%float64 lod                 # length of day (s/day)~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'erpd_t)))
  "Returns full string definition for message of type 'erpd_t"
  (cl:format cl:nil "# earth rotation parameter data type~%~%float64 mjd                 # mjd (days)~%float64 xp~%float64 yp                  # pole offset (rad)~%float64 xpr~%float64 ypr                 # pole offset rate (rad/day)~%float64 ut1_utc             # ut1-utc (s)~%float64 lod                 # length of day (s/day)~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <erpd_t>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <erpd_t>))
  "Converts a ROS message object to a list"
  (cl:list 'erpd_t
    (cl:cons ':mjd (mjd msg))
    (cl:cons ':xp (xp msg))
    (cl:cons ':yp (yp msg))
    (cl:cons ':xpr (xpr msg))
    (cl:cons ':ypr (ypr msg))
    (cl:cons ':ut1_utc (ut1_utc msg))
    (cl:cons ':lod (lod msg))
))
