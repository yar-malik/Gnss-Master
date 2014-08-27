; Auto-generated. Do not edit!


(cl:in-package rtkrcv-msg)


;//! \htmlinclude sbsion_t.msg.html

(cl:defclass <sbsion_t> (roslisp-msg-protocol:ros-message)
  ((iodi
    :reader iodi
    :initarg :iodi
    :type cl:integer
    :initform 0)
   (nigp
    :reader nigp
    :initarg :nigp
    :type cl:integer
    :initform 0)
   (igp
    :reader igp
    :initarg :igp
    :type (cl:vector rtkrcv-msg:sbsigp_t)
   :initform (cl:make-array 0 :element-type 'rtkrcv-msg:sbsigp_t :initial-element (cl:make-instance 'rtkrcv-msg:sbsigp_t))))
)

(cl:defclass sbsion_t (<sbsion_t>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sbsion_t>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sbsion_t)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtkrcv-msg:<sbsion_t> is deprecated: use rtkrcv-msg:sbsion_t instead.")))

(cl:ensure-generic-function 'iodi-val :lambda-list '(m))
(cl:defmethod iodi-val ((m <sbsion_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:iodi-val is deprecated.  Use rtkrcv-msg:iodi instead.")
  (iodi m))

(cl:ensure-generic-function 'nigp-val :lambda-list '(m))
(cl:defmethod nigp-val ((m <sbsion_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:nigp-val is deprecated.  Use rtkrcv-msg:nigp instead.")
  (nigp m))

(cl:ensure-generic-function 'igp-val :lambda-list '(m))
(cl:defmethod igp-val ((m <sbsion_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:igp-val is deprecated.  Use rtkrcv-msg:igp instead.")
  (igp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sbsion_t>) ostream)
  "Serializes a message object of type '<sbsion_t>"
  (cl:let* ((signed (cl:slot-value msg 'iodi)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'nigp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'igp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'igp))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sbsion_t>) istream)
  "Deserializes a message object of type '<sbsion_t>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iodi) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nigp) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'igp) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'igp)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rtkrcv-msg:sbsigp_t))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sbsion_t>)))
  "Returns string type for a message object of type '<sbsion_t>"
  "rtkrcv/sbsion_t")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sbsion_t)))
  "Returns string type for a message object of type 'sbsion_t"
  "rtkrcv/sbsion_t")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sbsion_t>)))
  "Returns md5sum for a message object of type '<sbsion_t>"
  "2132e51ac392772d571f82add58ab6a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sbsion_t)))
  "Returns md5sum for a message object of type 'sbsion_t"
  "2132e51ac392772d571f82add58ab6a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sbsion_t>)))
  "Returns full string definition for message of type '<sbsion_t>"
  (cl:format cl:nil "# SBAS ionospheric corrections type~%~%int32 iodi                 # IODI (issue of date ionos corr)~%int32 nigp                 # number of igps~%sbsigp_t[] igp             # ionospheric correction~%================================================================================~%MSG: rtkrcv/sbsigp_t~%# SBAS ionospheric correction type~%~%time t0               # correction time~%int16 lat             # latitude (deg)~%int16 lon             # longitude (deg)~%int16 give            # GIVI+1~%float32 delay         # vertical delay estimate (m)~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sbsion_t)))
  "Returns full string definition for message of type 'sbsion_t"
  (cl:format cl:nil "# SBAS ionospheric corrections type~%~%int32 iodi                 # IODI (issue of date ionos corr)~%int32 nigp                 # number of igps~%sbsigp_t[] igp             # ionospheric correction~%================================================================================~%MSG: rtkrcv/sbsigp_t~%# SBAS ionospheric correction type~%~%time t0               # correction time~%int16 lat             # latitude (deg)~%int16 lon             # longitude (deg)~%int16 give            # GIVI+1~%float32 delay         # vertical delay estimate (m)~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sbsion_t>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'igp) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sbsion_t>))
  "Converts a ROS message object to a list"
  (cl:list 'sbsion_t
    (cl:cons ':iodi (iodi msg))
    (cl:cons ':nigp (nigp msg))
    (cl:cons ':igp (igp msg))
))
