; Auto-generated. Do not edit!


(cl:in-package rtkrcv-msg)


;//! \htmlinclude erp_t.msg.html

(cl:defclass <erp_t> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector rtkrcv-msg:erpd_t)
   :initform (cl:make-array 0 :element-type 'rtkrcv-msg:erpd_t :initial-element (cl:make-instance 'rtkrcv-msg:erpd_t))))
)

(cl:defclass erp_t (<erp_t>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <erp_t>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'erp_t)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtkrcv-msg:<erp_t> is deprecated: use rtkrcv-msg:erp_t instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <erp_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:data-val is deprecated.  Use rtkrcv-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <erp_t>) ostream)
  "Serializes a message object of type '<erp_t>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <erp_t>) istream)
  "Deserializes a message object of type '<erp_t>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rtkrcv-msg:erpd_t))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<erp_t>)))
  "Returns string type for a message object of type '<erp_t>"
  "rtkrcv/erp_t")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'erp_t)))
  "Returns string type for a message object of type 'erp_t"
  "rtkrcv/erp_t")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<erp_t>)))
  "Returns md5sum for a message object of type '<erp_t>"
  "f92506c5fa83c7103817a4617b01f94e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'erp_t)))
  "Returns md5sum for a message object of type 'erp_t"
  "f92506c5fa83c7103817a4617b01f94e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<erp_t>)))
  "Returns full string definition for message of type '<erp_t>"
  (cl:format cl:nil "# earth rotation parameter type~%~%erpd_t[] data         # earth rotation parameter data~%================================================================================~%MSG: rtkrcv/erpd_t~%# earth rotation parameter data type~%~%float64 mjd                 # mjd (days)~%float64 xp~%float64 yp                  # pole offset (rad)~%float64 xpr~%float64 ypr                 # pole offset rate (rad/day)~%float64 ut1_utc             # ut1-utc (s)~%float64 lod                 # length of day (s/day)~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'erp_t)))
  "Returns full string definition for message of type 'erp_t"
  (cl:format cl:nil "# earth rotation parameter type~%~%erpd_t[] data         # earth rotation parameter data~%================================================================================~%MSG: rtkrcv/erpd_t~%# earth rotation parameter data type~%~%float64 mjd                 # mjd (days)~%float64 xp~%float64 yp                  # pole offset (rad)~%float64 xpr~%float64 ypr                 # pole offset rate (rad/day)~%float64 ut1_utc             # ut1-utc (s)~%float64 lod                 # length of day (s/day)~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <erp_t>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <erp_t>))
  "Converts a ROS message object to a list"
  (cl:list 'erp_t
    (cl:cons ':data (data msg))
))
