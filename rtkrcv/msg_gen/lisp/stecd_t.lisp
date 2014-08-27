; Auto-generated. Do not edit!


(cl:in-package rtkrcv-msg)


;//! \htmlinclude stecd_t.msg.html

(cl:defclass <stecd_t> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sat
    :reader sat
    :initarg :sat
    :type cl:fixnum
    :initform 0)
   (slip
    :reader slip
    :initarg :slip
    :type cl:fixnum
    :initform 0)
   (iono
    :reader iono
    :initarg :iono
    :type cl:float
    :initform 0.0)
   (rate
    :reader rate
    :initarg :rate
    :type cl:float
    :initform 0.0)
   (rms
    :reader rms
    :initarg :rms
    :type cl:float
    :initform 0.0))
)

(cl:defclass stecd_t (<stecd_t>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <stecd_t>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'stecd_t)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtkrcv-msg:<stecd_t> is deprecated: use rtkrcv-msg:stecd_t instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <stecd_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:header-val is deprecated.  Use rtkrcv-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sat-val :lambda-list '(m))
(cl:defmethod sat-val ((m <stecd_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:sat-val is deprecated.  Use rtkrcv-msg:sat instead.")
  (sat m))

(cl:ensure-generic-function 'slip-val :lambda-list '(m))
(cl:defmethod slip-val ((m <stecd_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:slip-val is deprecated.  Use rtkrcv-msg:slip instead.")
  (slip m))

(cl:ensure-generic-function 'iono-val :lambda-list '(m))
(cl:defmethod iono-val ((m <stecd_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:iono-val is deprecated.  Use rtkrcv-msg:iono instead.")
  (iono m))

(cl:ensure-generic-function 'rate-val :lambda-list '(m))
(cl:defmethod rate-val ((m <stecd_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:rate-val is deprecated.  Use rtkrcv-msg:rate instead.")
  (rate m))

(cl:ensure-generic-function 'rms-val :lambda-list '(m))
(cl:defmethod rms-val ((m <stecd_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:rms-val is deprecated.  Use rtkrcv-msg:rms instead.")
  (rms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <stecd_t>) ostream)
  "Serializes a message object of type '<stecd_t>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'slip)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'iono))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <stecd_t>) istream)
  "Deserializes a message object of type '<stecd_t>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'slip)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'iono) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rms) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<stecd_t>)))
  "Returns string type for a message object of type '<stecd_t>"
  "rtkrcv/stecd_t")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stecd_t)))
  "Returns string type for a message object of type 'stecd_t"
  "rtkrcv/stecd_t")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<stecd_t>)))
  "Returns md5sum for a message object of type '<stecd_t>"
  "95762bd9e503eecab8a0fa95f59b94b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'stecd_t)))
  "Returns md5sum for a message object of type 'stecd_t"
  "95762bd9e503eecab8a0fa95f59b94b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<stecd_t>)))
  "Returns full string definition for message of type '<stecd_t>"
  (cl:format cl:nil "# stec data type~%~%Header header           #time (GPST)~%uint8 sat               #satellite number~%uint8 slip              #slip flag~%float32 iono            #L1 ionosphere delay (m)~%float32 rate            #L1 ionosphere rate (m/s)~%float32 rms             #rms value (m)~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'stecd_t)))
  "Returns full string definition for message of type 'stecd_t"
  (cl:format cl:nil "# stec data type~%~%Header header           #time (GPST)~%uint8 sat               #satellite number~%uint8 slip              #slip flag~%float32 iono            #L1 ionosphere delay (m)~%float32 rate            #L1 ionosphere rate (m/s)~%float32 rms             #rms value (m)~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <stecd_t>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <stecd_t>))
  "Converts a ROS message object to a list"
  (cl:list 'stecd_t
    (cl:cons ':header (header msg))
    (cl:cons ':sat (sat msg))
    (cl:cons ':slip (slip msg))
    (cl:cons ':iono (iono msg))
    (cl:cons ':rate (rate msg))
    (cl:cons ':rms (rms msg))
))
