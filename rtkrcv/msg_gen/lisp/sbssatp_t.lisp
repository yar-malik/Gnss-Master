; Auto-generated. Do not edit!


(cl:in-package rtkrcv-msg)


;//! \htmlinclude sbssatp_t.msg.html

(cl:defclass <sbssatp_t> (roslisp-msg-protocol:ros-message)
  ((sat
    :reader sat
    :initarg :sat
    :type cl:integer
    :initform 0)
   (fcorr
    :reader fcorr
    :initarg :fcorr
    :type rtkrcv-msg:SbasFastCorrection
    :initform (cl:make-instance 'rtkrcv-msg:SbasFastCorrection))
   (lcorr
    :reader lcorr
    :initarg :lcorr
    :type rtkrcv-msg:SbasLongTermErrorCorrection
    :initform (cl:make-instance 'rtkrcv-msg:SbasLongTermErrorCorrection)))
)

(cl:defclass sbssatp_t (<sbssatp_t>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sbssatp_t>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sbssatp_t)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtkrcv-msg:<sbssatp_t> is deprecated: use rtkrcv-msg:sbssatp_t instead.")))

(cl:ensure-generic-function 'sat-val :lambda-list '(m))
(cl:defmethod sat-val ((m <sbssatp_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:sat-val is deprecated.  Use rtkrcv-msg:sat instead.")
  (sat m))

(cl:ensure-generic-function 'fcorr-val :lambda-list '(m))
(cl:defmethod fcorr-val ((m <sbssatp_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:fcorr-val is deprecated.  Use rtkrcv-msg:fcorr instead.")
  (fcorr m))

(cl:ensure-generic-function 'lcorr-val :lambda-list '(m))
(cl:defmethod lcorr-val ((m <sbssatp_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:lcorr-val is deprecated.  Use rtkrcv-msg:lcorr instead.")
  (lcorr m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sbssatp_t>) ostream)
  "Serializes a message object of type '<sbssatp_t>"
  (cl:let* ((signed (cl:slot-value msg 'sat)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fcorr) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lcorr) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sbssatp_t>) istream)
  "Deserializes a message object of type '<sbssatp_t>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sat) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fcorr) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lcorr) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sbssatp_t>)))
  "Returns string type for a message object of type '<sbssatp_t>"
  "rtkrcv/sbssatp_t")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sbssatp_t)))
  "Returns string type for a message object of type 'sbssatp_t"
  "rtkrcv/sbssatp_t")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sbssatp_t>)))
  "Returns md5sum for a message object of type '<sbssatp_t>"
  "4650f2d5bd674ec683ed24347dc0706f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sbssatp_t)))
  "Returns md5sum for a message object of type 'sbssatp_t"
  "4650f2d5bd674ec683ed24347dc0706f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sbssatp_t>)))
  "Returns full string definition for message of type '<sbssatp_t>"
  (cl:format cl:nil "# SBAS satellite correction type~%~%int32 sat                                   # satellite number~%SbasFastCorrection fcorr                    # fast correction~%SbasLongTermErrorCorrection lcorr           # long term correction~%================================================================================~%MSG: rtkrcv/SbasFastCorrection~%# SBAS fast correction type~%~%time t0             # time of applicability (TOF)~%float64 prc         # pseudorange correction (PRC) (m)~%float64 rrc         # range-rate correction (RRC) (m/s)~%float64 dt          # range-rate correction delta-time (s)~%int32 iodf          # IODF (issue of date fast corr)~%int16 udre          # UDRE+1~%int16 ai            # degradation factor indicator~%================================================================================~%MSG: rtkrcv/SbasLongTermErrorCorrection~%# SBAS long term satellite error correction type~%~%time t0                        # correction time~%int32 iode                     # IODE (issue of date ephemeris)~%geometry_msgs/Vector3 dpos     # delta position (m) (ecef)~%geometry_msgs/Vector3 dvel     # delta velocity (m/s) (ecef)~%float64 daf0                   # delta clock-offset(s,s/s)~%float64 daf1s                  # delta drift (s,s/s)~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sbssatp_t)))
  "Returns full string definition for message of type 'sbssatp_t"
  (cl:format cl:nil "# SBAS satellite correction type~%~%int32 sat                                   # satellite number~%SbasFastCorrection fcorr                    # fast correction~%SbasLongTermErrorCorrection lcorr           # long term correction~%================================================================================~%MSG: rtkrcv/SbasFastCorrection~%# SBAS fast correction type~%~%time t0             # time of applicability (TOF)~%float64 prc         # pseudorange correction (PRC) (m)~%float64 rrc         # range-rate correction (RRC) (m/s)~%float64 dt          # range-rate correction delta-time (s)~%int32 iodf          # IODF (issue of date fast corr)~%int16 udre          # UDRE+1~%int16 ai            # degradation factor indicator~%================================================================================~%MSG: rtkrcv/SbasLongTermErrorCorrection~%# SBAS long term satellite error correction type~%~%time t0                        # correction time~%int32 iode                     # IODE (issue of date ephemeris)~%geometry_msgs/Vector3 dpos     # delta position (m) (ecef)~%geometry_msgs/Vector3 dvel     # delta velocity (m/s) (ecef)~%float64 daf0                   # delta clock-offset(s,s/s)~%float64 daf1s                  # delta drift (s,s/s)~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sbssatp_t>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fcorr))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lcorr))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sbssatp_t>))
  "Converts a ROS message object to a list"
  (cl:list 'sbssatp_t
    (cl:cons ':sat (sat msg))
    (cl:cons ':fcorr (fcorr msg))
    (cl:cons ':lcorr (lcorr msg))
))
