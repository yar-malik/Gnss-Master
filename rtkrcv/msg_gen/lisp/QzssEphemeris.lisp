; Auto-generated. Do not edit!


(cl:in-package rtkrcv-msg)


;//! \htmlinclude QzssEphemeris.msg.html

(cl:defclass <QzssEphemeris> (roslisp-msg-protocol:ros-message)
  ((toe
    :reader toe
    :initarg :toe
    :type cl:real
    :initform 0)
   (tof
    :reader tof
    :initarg :tof
    :type cl:real
    :initform 0)
   (sat
    :reader sat
    :initarg :sat
    :type cl:integer
    :initform 0)
   (health
    :reader health
    :initarg :health
    :type cl:fixnum
    :initform 0)
   (ura
    :reader ura
    :initarg :ura
    :type cl:fixnum
    :initform 0)
   (pos
    :reader pos
    :initarg :pos
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (vel
    :reader vel
    :initarg :vel
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (acc
    :reader acc
    :initarg :acc
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (jerk
    :reader jerk
    :initarg :jerk
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (af0
    :reader af0
    :initarg :af0
    :type cl:float
    :initform 0.0)
   (af1
    :reader af1
    :initarg :af1
    :type cl:float
    :initform 0.0)
   (tgd
    :reader tgd
    :initarg :tgd
    :type cl:float
    :initform 0.0)
   (isc
    :reader isc
    :initarg :isc
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass QzssEphemeris (<QzssEphemeris>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QzssEphemeris>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QzssEphemeris)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtkrcv-msg:<QzssEphemeris> is deprecated: use rtkrcv-msg:QzssEphemeris instead.")))

(cl:ensure-generic-function 'toe-val :lambda-list '(m))
(cl:defmethod toe-val ((m <QzssEphemeris>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:toe-val is deprecated.  Use rtkrcv-msg:toe instead.")
  (toe m))

(cl:ensure-generic-function 'tof-val :lambda-list '(m))
(cl:defmethod tof-val ((m <QzssEphemeris>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:tof-val is deprecated.  Use rtkrcv-msg:tof instead.")
  (tof m))

(cl:ensure-generic-function 'sat-val :lambda-list '(m))
(cl:defmethod sat-val ((m <QzssEphemeris>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:sat-val is deprecated.  Use rtkrcv-msg:sat instead.")
  (sat m))

(cl:ensure-generic-function 'health-val :lambda-list '(m))
(cl:defmethod health-val ((m <QzssEphemeris>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:health-val is deprecated.  Use rtkrcv-msg:health instead.")
  (health m))

(cl:ensure-generic-function 'ura-val :lambda-list '(m))
(cl:defmethod ura-val ((m <QzssEphemeris>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:ura-val is deprecated.  Use rtkrcv-msg:ura instead.")
  (ura m))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <QzssEphemeris>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:pos-val is deprecated.  Use rtkrcv-msg:pos instead.")
  (pos m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <QzssEphemeris>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:vel-val is deprecated.  Use rtkrcv-msg:vel instead.")
  (vel m))

(cl:ensure-generic-function 'acc-val :lambda-list '(m))
(cl:defmethod acc-val ((m <QzssEphemeris>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:acc-val is deprecated.  Use rtkrcv-msg:acc instead.")
  (acc m))

(cl:ensure-generic-function 'jerk-val :lambda-list '(m))
(cl:defmethod jerk-val ((m <QzssEphemeris>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:jerk-val is deprecated.  Use rtkrcv-msg:jerk instead.")
  (jerk m))

(cl:ensure-generic-function 'af0-val :lambda-list '(m))
(cl:defmethod af0-val ((m <QzssEphemeris>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:af0-val is deprecated.  Use rtkrcv-msg:af0 instead.")
  (af0 m))

(cl:ensure-generic-function 'af1-val :lambda-list '(m))
(cl:defmethod af1-val ((m <QzssEphemeris>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:af1-val is deprecated.  Use rtkrcv-msg:af1 instead.")
  (af1 m))

(cl:ensure-generic-function 'tgd-val :lambda-list '(m))
(cl:defmethod tgd-val ((m <QzssEphemeris>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:tgd-val is deprecated.  Use rtkrcv-msg:tgd instead.")
  (tgd m))

(cl:ensure-generic-function 'isc-val :lambda-list '(m))
(cl:defmethod isc-val ((m <QzssEphemeris>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:isc-val is deprecated.  Use rtkrcv-msg:isc instead.")
  (isc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QzssEphemeris>) ostream)
  "Serializes a message object of type '<QzssEphemeris>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'toe)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'toe) (cl:floor (cl:slot-value msg 'toe)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'tof)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'tof) (cl:floor (cl:slot-value msg 'tof)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let* ((signed (cl:slot-value msg 'sat)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'health)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ura)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acc) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'jerk) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'af0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'af1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tgd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'isc))))
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
   (cl:slot-value msg 'isc))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QzssEphemeris>) istream)
  "Deserializes a message object of type '<QzssEphemeris>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'toe) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tof) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sat) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'health)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ura)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acc) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'jerk) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'af0) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'af1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tgd) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'isc) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'isc)))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QzssEphemeris>)))
  "Returns string type for a message object of type '<QzssEphemeris>"
  "rtkrcv/QzssEphemeris")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QzssEphemeris)))
  "Returns string type for a message object of type 'QzssEphemeris"
  "rtkrcv/QzssEphemeris")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QzssEphemeris>)))
  "Returns md5sum for a message object of type '<QzssEphemeris>"
  "198daafc411df6ff6ceeae411672fe18")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QzssEphemeris)))
  "Returns md5sum for a message object of type 'QzssEphemeris"
  "198daafc411df6ff6ceeae411672fe18")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QzssEphemeris>)))
  "Returns full string definition for message of type '<QzssEphemeris>"
  (cl:format cl:nil "# QZSS LEX ephemeris type~%~%time toe                             # epoch time (GPST)~%time tof                             # message frame time (GPST)~%~%int32 sat                            # satellite~%uint8 health                         # signal health (L1,L2,L1C,L5,LEX)~%uint8 ura                            # URA index~%~%geometry_msgs/Vector3  pos           # satellite position (m)~%geometry_msgs/Vector3  vel           # satellite velocity (m/s)~%geometry_msgs/Vector3  acc           # satellite acceleration (m/s2)~%geometry_msgs/Vector3  jerk          # satellite jerk (m/s3)~%float64 af0                          # satellite clock bias~%float64 af1                          # satellite clock drift (s,s/s)~%float64 tgd                          # TGD~%float64[] isc                        # ISC~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QzssEphemeris)))
  "Returns full string definition for message of type 'QzssEphemeris"
  (cl:format cl:nil "# QZSS LEX ephemeris type~%~%time toe                             # epoch time (GPST)~%time tof                             # message frame time (GPST)~%~%int32 sat                            # satellite~%uint8 health                         # signal health (L1,L2,L1C,L5,LEX)~%uint8 ura                            # URA index~%~%geometry_msgs/Vector3  pos           # satellite position (m)~%geometry_msgs/Vector3  vel           # satellite velocity (m/s)~%geometry_msgs/Vector3  acc           # satellite acceleration (m/s2)~%geometry_msgs/Vector3  jerk          # satellite jerk (m/s3)~%float64 af0                          # satellite clock bias~%float64 af1                          # satellite clock drift (s,s/s)~%float64 tgd                          # TGD~%float64[] isc                        # ISC~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QzssEphemeris>))
  (cl:+ 0
     8
     8
     4
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acc))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'jerk))
     8
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'isc) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QzssEphemeris>))
  "Converts a ROS message object to a list"
  (cl:list 'QzssEphemeris
    (cl:cons ':toe (toe msg))
    (cl:cons ':tof (tof msg))
    (cl:cons ':sat (sat msg))
    (cl:cons ':health (health msg))
    (cl:cons ':ura (ura msg))
    (cl:cons ':pos (pos msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':acc (acc msg))
    (cl:cons ':jerk (jerk msg))
    (cl:cons ':af0 (af0 msg))
    (cl:cons ':af1 (af1 msg))
    (cl:cons ':tgd (tgd msg))
    (cl:cons ':isc (isc msg))
))
