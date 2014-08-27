; Auto-generated. Do not edit!


(cl:in-package rtkrcv-msg)


;//! \htmlinclude PreciseClock.msg.html

(cl:defclass <PreciseClock> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:real
    :initform 0)
   (index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0)
   (clk
    :reader clk
    :initarg :clk
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (std
    :reader std
    :initarg :std
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PreciseClock (<PreciseClock>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PreciseClock>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PreciseClock)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtkrcv-msg:<PreciseClock> is deprecated: use rtkrcv-msg:PreciseClock instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <PreciseClock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:time-val is deprecated.  Use rtkrcv-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <PreciseClock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:index-val is deprecated.  Use rtkrcv-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'clk-val :lambda-list '(m))
(cl:defmethod clk-val ((m <PreciseClock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:clk-val is deprecated.  Use rtkrcv-msg:clk instead.")
  (clk m))

(cl:ensure-generic-function 'std-val :lambda-list '(m))
(cl:defmethod std-val ((m <PreciseClock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:std-val is deprecated.  Use rtkrcv-msg:std instead.")
  (std m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PreciseClock>) ostream)
  "Serializes a message object of type '<PreciseClock>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time) (cl:floor (cl:slot-value msg 'time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'clk))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'clk))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'std))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PreciseClock>) istream)
  "Deserializes a message object of type '<PreciseClock>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'clk) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'clk)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'std) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'std)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PreciseClock>)))
  "Returns string type for a message object of type '<PreciseClock>"
  "rtkrcv/PreciseClock")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PreciseClock)))
  "Returns string type for a message object of type 'PreciseClock"
  "rtkrcv/PreciseClock")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PreciseClock>)))
  "Returns md5sum for a message object of type '<PreciseClock>"
  "1c8bd3bb2ae3e242d87bf2ed540c9e2d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PreciseClock)))
  "Returns md5sum for a message object of type 'PreciseClock"
  "1c8bd3bb2ae3e242d87bf2ed540c9e2d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PreciseClock>)))
  "Returns full string definition for message of type '<PreciseClock>"
  (cl:format cl:nil "# precise clock type~%~%time time               # time (GPST)~%int32 index             # clock index for multiple files~%float64[] clk           # satellite clock (s)~%float32[] std           # satellite clock std (s)~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PreciseClock)))
  "Returns full string definition for message of type 'PreciseClock"
  (cl:format cl:nil "# precise clock type~%~%time time               # time (GPST)~%int32 index             # clock index for multiple files~%float64[] clk           # satellite clock (s)~%float32[] std           # satellite clock std (s)~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PreciseClock>))
  (cl:+ 0
     8
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'clk) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'std) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PreciseClock>))
  "Converts a ROS message object to a list"
  (cl:list 'PreciseClock
    (cl:cons ':time (time msg))
    (cl:cons ':index (index msg))
    (cl:cons ':clk (clk msg))
    (cl:cons ':std (std msg))
))
