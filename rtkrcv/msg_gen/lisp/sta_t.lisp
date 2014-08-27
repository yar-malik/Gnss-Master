; Auto-generated. Do not edit!


(cl:in-package rtkrcv-msg)


;//! \htmlinclude sta_t.msg.html

(cl:defclass <sta_t> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (marker
    :reader marker
    :initarg :marker
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (antdes
    :reader antdes
    :initarg :antdes
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (antsno
    :reader antsno
    :initarg :antsno
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (rectype
    :reader rectype
    :initarg :rectype
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (recver
    :reader recver
    :initarg :recver
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (recsno
    :reader recsno
    :initarg :recsno
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (antsetup
    :reader antsetup
    :initarg :antsetup
    :type cl:integer
    :initform 0)
   (itrf
    :reader itrf
    :initarg :itrf
    :type cl:integer
    :initform 0)
   (deltype
    :reader deltype
    :initarg :deltype
    :type cl:integer
    :initform 0)
   (pos
    :reader pos
    :initarg :pos
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (del
    :reader del
    :initarg :del
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (hgt
    :reader hgt
    :initarg :hgt
    :type cl:integer
    :initform 0))
)

(cl:defclass sta_t (<sta_t>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sta_t>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sta_t)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtkrcv-msg:<sta_t> is deprecated: use rtkrcv-msg:sta_t instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <sta_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:name-val is deprecated.  Use rtkrcv-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'marker-val :lambda-list '(m))
(cl:defmethod marker-val ((m <sta_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:marker-val is deprecated.  Use rtkrcv-msg:marker instead.")
  (marker m))

(cl:ensure-generic-function 'antdes-val :lambda-list '(m))
(cl:defmethod antdes-val ((m <sta_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:antdes-val is deprecated.  Use rtkrcv-msg:antdes instead.")
  (antdes m))

(cl:ensure-generic-function 'antsno-val :lambda-list '(m))
(cl:defmethod antsno-val ((m <sta_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:antsno-val is deprecated.  Use rtkrcv-msg:antsno instead.")
  (antsno m))

(cl:ensure-generic-function 'rectype-val :lambda-list '(m))
(cl:defmethod rectype-val ((m <sta_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:rectype-val is deprecated.  Use rtkrcv-msg:rectype instead.")
  (rectype m))

(cl:ensure-generic-function 'recver-val :lambda-list '(m))
(cl:defmethod recver-val ((m <sta_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:recver-val is deprecated.  Use rtkrcv-msg:recver instead.")
  (recver m))

(cl:ensure-generic-function 'recsno-val :lambda-list '(m))
(cl:defmethod recsno-val ((m <sta_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:recsno-val is deprecated.  Use rtkrcv-msg:recsno instead.")
  (recsno m))

(cl:ensure-generic-function 'antsetup-val :lambda-list '(m))
(cl:defmethod antsetup-val ((m <sta_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:antsetup-val is deprecated.  Use rtkrcv-msg:antsetup instead.")
  (antsetup m))

(cl:ensure-generic-function 'itrf-val :lambda-list '(m))
(cl:defmethod itrf-val ((m <sta_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:itrf-val is deprecated.  Use rtkrcv-msg:itrf instead.")
  (itrf m))

(cl:ensure-generic-function 'deltype-val :lambda-list '(m))
(cl:defmethod deltype-val ((m <sta_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:deltype-val is deprecated.  Use rtkrcv-msg:deltype instead.")
  (deltype m))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <sta_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:pos-val is deprecated.  Use rtkrcv-msg:pos instead.")
  (pos m))

(cl:ensure-generic-function 'del-val :lambda-list '(m))
(cl:defmethod del-val ((m <sta_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:del-val is deprecated.  Use rtkrcv-msg:del instead.")
  (del m))

(cl:ensure-generic-function 'hgt-val :lambda-list '(m))
(cl:defmethod hgt-val ((m <sta_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:hgt-val is deprecated.  Use rtkrcv-msg:hgt instead.")
  (hgt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sta_t>) ostream)
  "Serializes a message object of type '<sta_t>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'name) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'marker) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'antdes) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'antsno) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rectype) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'recver) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'recsno) ostream)
  (cl:let* ((signed (cl:slot-value msg 'antsetup)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'itrf)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'deltype)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'del) ostream)
  (cl:let* ((signed (cl:slot-value msg 'hgt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sta_t>) istream)
  "Deserializes a message object of type '<sta_t>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'name) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'marker) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'antdes) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'antsno) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rectype) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'recver) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'recsno) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'antsetup) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'itrf) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'deltype) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'del) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hgt) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sta_t>)))
  "Returns string type for a message object of type '<sta_t>"
  "rtkrcv/sta_t")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sta_t)))
  "Returns string type for a message object of type 'sta_t"
  "rtkrcv/sta_t")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sta_t>)))
  "Returns md5sum for a message object of type '<sta_t>"
  "f30681337a9aca787ae7f969e9464469")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sta_t)))
  "Returns md5sum for a message object of type 'sta_t"
  "f30681337a9aca787ae7f969e9464469")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sta_t>)))
  "Returns full string definition for message of type '<sta_t>"
  (cl:format cl:nil "# station parameter type~%~%std_msgs/String name           # marker name~%std_msgs/String marker         # marker number~%std_msgs/String antdes         # antenna descriptor~%std_msgs/String antsno         # antenna serial number~%std_msgs/String rectype        # receiver type descriptor~%std_msgs/String recver         # receiver firmware version~%std_msgs/String recsno         # receiver serial number~%~%int32 antsetup                 # antenna setup id~%int32 itrf                     # ITRF realization year~%int32 deltype                  # antenna delta type (0:enu,1:xyz)~%~%geometry_msgs/Vector3 pos      # station position (ecef) (m)~%geometry_msgs/Vector3 del      # antenna position delta (e/n/u or x/y/z) (m)~%int64 hgt                      # antenna height (m)~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sta_t)))
  "Returns full string definition for message of type 'sta_t"
  (cl:format cl:nil "# station parameter type~%~%std_msgs/String name           # marker name~%std_msgs/String marker         # marker number~%std_msgs/String antdes         # antenna descriptor~%std_msgs/String antsno         # antenna serial number~%std_msgs/String rectype        # receiver type descriptor~%std_msgs/String recver         # receiver firmware version~%std_msgs/String recsno         # receiver serial number~%~%int32 antsetup                 # antenna setup id~%int32 itrf                     # ITRF realization year~%int32 deltype                  # antenna delta type (0:enu,1:xyz)~%~%geometry_msgs/Vector3 pos      # station position (ecef) (m)~%geometry_msgs/Vector3 del      # antenna position delta (e/n/u or x/y/z) (m)~%int64 hgt                      # antenna height (m)~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sta_t>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'marker))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'antdes))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'antsno))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rectype))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'recver))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'recsno))
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'del))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sta_t>))
  "Converts a ROS message object to a list"
  (cl:list 'sta_t
    (cl:cons ':name (name msg))
    (cl:cons ':marker (marker msg))
    (cl:cons ':antdes (antdes msg))
    (cl:cons ':antsno (antsno msg))
    (cl:cons ':rectype (rectype msg))
    (cl:cons ':recver (recver msg))
    (cl:cons ':recsno (recsno msg))
    (cl:cons ':antsetup (antsetup msg))
    (cl:cons ':itrf (itrf msg))
    (cl:cons ':deltype (deltype msg))
    (cl:cons ':pos (pos msg))
    (cl:cons ':del (del msg))
    (cl:cons ':hgt (hgt msg))
))
