; Auto-generated. Do not edit!


(cl:in-package rtkrcv-msg)


;//! \htmlinclude satellitedata.msg.html

(cl:defclass <satellitedata> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sat
    :reader sat
    :initarg :sat
    :type (cl:vector rtkrcv-msg:satellite)
   :initform (cl:make-array 0 :element-type 'rtkrcv-msg:satellite :initial-element (cl:make-instance 'rtkrcv-msg:satellite))))
)

(cl:defclass satellitedata (<satellitedata>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <satellitedata>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'satellitedata)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtkrcv-msg:<satellitedata> is deprecated: use rtkrcv-msg:satellitedata instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <satellitedata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:header-val is deprecated.  Use rtkrcv-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sat-val :lambda-list '(m))
(cl:defmethod sat-val ((m <satellitedata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:sat-val is deprecated.  Use rtkrcv-msg:sat instead.")
  (sat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <satellitedata>) ostream)
  "Serializes a message object of type '<satellitedata>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sat))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <satellitedata>) istream)
  "Deserializes a message object of type '<satellitedata>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sat) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sat)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rtkrcv-msg:satellite))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<satellitedata>)))
  "Returns string type for a message object of type '<satellitedata>"
  "rtkrcv/satellitedata")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'satellitedata)))
  "Returns string type for a message object of type 'satellitedata"
  "rtkrcv/satellitedata")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<satellitedata>)))
  "Returns md5sum for a message object of type '<satellitedata>"
  "07e86fa56a81ff89048619cca509e531")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'satellitedata)))
  "Returns md5sum for a message object of type 'satellitedata"
  "07e86fa56a81ff89048619cca509e531")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<satellitedata>)))
  "Returns full string definition for message of type '<satellitedata>"
  (cl:format cl:nil "#Array of satellites~%~%  Header header~%  satellite[] sat~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: rtkrcv/satellite~%#Characteristics of on one satellite   ~%~%  int32 id~%  int32 vs~%  float64 elevation~%  float64 asimuth~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'satellitedata)))
  "Returns full string definition for message of type 'satellitedata"
  (cl:format cl:nil "#Array of satellites~%~%  Header header~%  satellite[] sat~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: rtkrcv/satellite~%#Characteristics of on one satellite   ~%~%  int32 id~%  int32 vs~%  float64 elevation~%  float64 asimuth~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <satellitedata>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sat) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <satellitedata>))
  "Converts a ROS message object to a list"
  (cl:list 'satellitedata
    (cl:cons ':header (header msg))
    (cl:cons ':sat (sat msg))
))
