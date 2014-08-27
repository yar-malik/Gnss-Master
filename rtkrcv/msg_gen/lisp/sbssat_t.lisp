; Auto-generated. Do not edit!


(cl:in-package rtkrcv-msg)


;//! \htmlinclude sbssat_t.msg.html

(cl:defclass <sbssat_t> (roslisp-msg-protocol:ros-message)
  ((iodp
    :reader iodp
    :initarg :iodp
    :type cl:integer
    :initform 0)
   (nsat
    :reader nsat
    :initarg :nsat
    :type cl:integer
    :initform 0)
   (tlat
    :reader tlat
    :initarg :tlat
    :type cl:integer
    :initform 0)
   (sat
    :reader sat
    :initarg :sat
    :type (cl:vector rtkrcv-msg:sbssatp_t)
   :initform (cl:make-array 0 :element-type 'rtkrcv-msg:sbssatp_t :initial-element (cl:make-instance 'rtkrcv-msg:sbssatp_t))))
)

(cl:defclass sbssat_t (<sbssat_t>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sbssat_t>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sbssat_t)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtkrcv-msg:<sbssat_t> is deprecated: use rtkrcv-msg:sbssat_t instead.")))

(cl:ensure-generic-function 'iodp-val :lambda-list '(m))
(cl:defmethod iodp-val ((m <sbssat_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:iodp-val is deprecated.  Use rtkrcv-msg:iodp instead.")
  (iodp m))

(cl:ensure-generic-function 'nsat-val :lambda-list '(m))
(cl:defmethod nsat-val ((m <sbssat_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:nsat-val is deprecated.  Use rtkrcv-msg:nsat instead.")
  (nsat m))

(cl:ensure-generic-function 'tlat-val :lambda-list '(m))
(cl:defmethod tlat-val ((m <sbssat_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:tlat-val is deprecated.  Use rtkrcv-msg:tlat instead.")
  (tlat m))

(cl:ensure-generic-function 'sat-val :lambda-list '(m))
(cl:defmethod sat-val ((m <sbssat_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:sat-val is deprecated.  Use rtkrcv-msg:sat instead.")
  (sat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sbssat_t>) ostream)
  "Serializes a message object of type '<sbssat_t>"
  (cl:let* ((signed (cl:slot-value msg 'iodp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'nsat)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'tlat)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sat))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sbssat_t>) istream)
  "Deserializes a message object of type '<sbssat_t>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iodp) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nsat) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tlat) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sat) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sat)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rtkrcv-msg:sbssatp_t))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sbssat_t>)))
  "Returns string type for a message object of type '<sbssat_t>"
  "rtkrcv/sbssat_t")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sbssat_t)))
  "Returns string type for a message object of type 'sbssat_t"
  "rtkrcv/sbssat_t")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sbssat_t>)))
  "Returns md5sum for a message object of type '<sbssat_t>"
  "1c04284e2f92ed53fc55e7d63dfd1dc7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sbssat_t)))
  "Returns md5sum for a message object of type 'sbssat_t"
  "1c04284e2f92ed53fc55e7d63dfd1dc7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sbssat_t>)))
  "Returns full string definition for message of type '<sbssat_t>"
  (cl:format cl:nil "# SBAS satellite corrections type~%~%int32 iodp               # IODP (issue of date mask)~%int32 nsat               # number of satellites~%int32 tlat               # system latency (s)~%sbssatp_t[] sat          # satellite correction~%================================================================================~%MSG: rtkrcv/sbssatp_t~%# SBAS satellite correction type~%~%int32 sat                                   # satellite number~%SbasFastCorrection fcorr                    # fast correction~%SbasLongTermErrorCorrection lcorr           # long term correction~%================================================================================~%MSG: rtkrcv/SbasFastCorrection~%# SBAS fast correction type~%~%time t0             # time of applicability (TOF)~%float64 prc         # pseudorange correction (PRC) (m)~%float64 rrc         # range-rate correction (RRC) (m/s)~%float64 dt          # range-rate correction delta-time (s)~%int32 iodf          # IODF (issue of date fast corr)~%int16 udre          # UDRE+1~%int16 ai            # degradation factor indicator~%================================================================================~%MSG: rtkrcv/SbasLongTermErrorCorrection~%# SBAS long term satellite error correction type~%~%time t0                        # correction time~%int32 iode                     # IODE (issue of date ephemeris)~%geometry_msgs/Vector3 dpos     # delta position (m) (ecef)~%geometry_msgs/Vector3 dvel     # delta velocity (m/s) (ecef)~%float64 daf0                   # delta clock-offset(s,s/s)~%float64 daf1s                  # delta drift (s,s/s)~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sbssat_t)))
  "Returns full string definition for message of type 'sbssat_t"
  (cl:format cl:nil "# SBAS satellite corrections type~%~%int32 iodp               # IODP (issue of date mask)~%int32 nsat               # number of satellites~%int32 tlat               # system latency (s)~%sbssatp_t[] sat          # satellite correction~%================================================================================~%MSG: rtkrcv/sbssatp_t~%# SBAS satellite correction type~%~%int32 sat                                   # satellite number~%SbasFastCorrection fcorr                    # fast correction~%SbasLongTermErrorCorrection lcorr           # long term correction~%================================================================================~%MSG: rtkrcv/SbasFastCorrection~%# SBAS fast correction type~%~%time t0             # time of applicability (TOF)~%float64 prc         # pseudorange correction (PRC) (m)~%float64 rrc         # range-rate correction (RRC) (m/s)~%float64 dt          # range-rate correction delta-time (s)~%int32 iodf          # IODF (issue of date fast corr)~%int16 udre          # UDRE+1~%int16 ai            # degradation factor indicator~%================================================================================~%MSG: rtkrcv/SbasLongTermErrorCorrection~%# SBAS long term satellite error correction type~%~%time t0                        # correction time~%int32 iode                     # IODE (issue of date ephemeris)~%geometry_msgs/Vector3 dpos     # delta position (m) (ecef)~%geometry_msgs/Vector3 dvel     # delta velocity (m/s) (ecef)~%float64 daf0                   # delta clock-offset(s,s/s)~%float64 daf1s                  # delta drift (s,s/s)~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sbssat_t>))
  (cl:+ 0
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sat) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sbssat_t>))
  "Converts a ROS message object to a list"
  (cl:list 'sbssat_t
    (cl:cons ':iodp (iodp msg))
    (cl:cons ':nsat (nsat msg))
    (cl:cons ':tlat (tlat msg))
    (cl:cons ':sat (sat msg))
))
