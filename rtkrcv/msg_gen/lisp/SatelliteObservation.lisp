; Auto-generated. Do not edit!


(cl:in-package rtkrcv-msg)


;//! \htmlinclude SatelliteObservation.msg.html

(cl:defclass <SatelliteObservation> (roslisp-msg-protocol:ros-message)
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
   (observations
    :reader observations
    :initarg :observations
    :type (cl:vector rtkrcv-msg:SignalObservation)
   :initform (cl:make-array 0 :element-type 'rtkrcv-msg:SignalObservation :initial-element (cl:make-instance 'rtkrcv-msg:SignalObservation))))
)

(cl:defclass SatelliteObservation (<SatelliteObservation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SatelliteObservation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SatelliteObservation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtkrcv-msg:<SatelliteObservation> is deprecated: use rtkrcv-msg:SatelliteObservation instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SatelliteObservation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:header-val is deprecated.  Use rtkrcv-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sat-val :lambda-list '(m))
(cl:defmethod sat-val ((m <SatelliteObservation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:sat-val is deprecated.  Use rtkrcv-msg:sat instead.")
  (sat m))

(cl:ensure-generic-function 'observations-val :lambda-list '(m))
(cl:defmethod observations-val ((m <SatelliteObservation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:observations-val is deprecated.  Use rtkrcv-msg:observations instead.")
  (observations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SatelliteObservation>) ostream)
  "Serializes a message object of type '<SatelliteObservation>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sat)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'observations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'observations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SatelliteObservation>) istream)
  "Deserializes a message object of type '<SatelliteObservation>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sat)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'observations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'observations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rtkrcv-msg:SignalObservation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SatelliteObservation>)))
  "Returns string type for a message object of type '<SatelliteObservation>"
  "rtkrcv/SatelliteObservation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SatelliteObservation)))
  "Returns string type for a message object of type 'SatelliteObservation"
  "rtkrcv/SatelliteObservation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SatelliteObservation>)))
  "Returns md5sum for a message object of type '<SatelliteObservation>"
  "fd47f98000c5ba9f9e14c23b35fabebd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SatelliteObservation)))
  "Returns md5sum for a message object of type 'SatelliteObservation"
  "fd47f98000c5ba9f9e14c23b35fabebd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SatelliteObservation>)))
  "Returns full string definition for message of type '<SatelliteObservation>"
  (cl:format cl:nil "#Satellite observation~%Header header~%~%~%#Number of the satellite (1-32 for GPS)~%uint8 sat~%~%~%#Signal observations for different frequencies~%SignalObservation[] observations~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: rtkrcv/SignalObservation~%#Signal to noise ratio (0.25 dBHz)~%uint8 snr~%#Loss of lock indicator~%uint8 lli~%#Code indicator~%uint8 sig_code~%#Observation data carrier-phase (cycle)~%float64 carrier_phase~%#Observation data pseudorange (m)~%float64 pseudorange~%#Observation data doppler frequency (Hz)~%float32 doppler~%~%uint8 SIG_CODE_NONE = 0     # obs code: none or unknown~%uint8 SIG_CODE_L1C  = 1     # obs code: L1C/A,E1C  (GPS,GLO,GAL,QZS,SBS)~%uint8 SIG_CODE_L1P  = 2     # obs code: L1P        (GPS,GLO)~%uint8 SIG_CODE_L1W  = 3     # obs code: L1 Z-track (GPS)~%uint8 SIG_CODE_L1Y  = 4     # obs code: L1Y        (GPS)~%uint8 SIG_CODE_L1M  = 5     # obs code: L1M        (GPS)~%uint8 SIG_CODE_L1N  = 6     # obs code: L1codeless (GPS)~%uint8 SIG_CODE_L1S  = 7     # obs code: L1C(D)     (GPS,QZS)~%uint8 SIG_CODE_L1L  = 8     # obs code: L1C(P)     (GPS,QZS)~%uint8 SIG_CODE_L1E  = 9     # obs code: L1-SAIF    (QZS)~%uint8 SIG_CODE_L1A  = 10    # obs code: E1A        (GAL)~%uint8 SIG_CODE_L1B  = 11    # obs code: E1B        (GAL)~%uint8 SIG_CODE_L1X  = 12    # obs code: E1B+C,L1C(D+P) (GAL,QZS)~%uint8 SIG_CODE_L1Z  = 13    # obs code: E1A+B+C    (GAL)~%uint8 SIG_CODE_L2C  = 14    # obs code: L2C/A      (GPS,GLO)~%uint8 SIG_CODE_L2D  = 15    # obs code: L2 L1C/A-(P2-P1) (GPS)~%uint8 SIG_CODE_L2S  = 16    # obs code: L2C(M)     (GPS,QZS)~%uint8 SIG_CODE_L2L  = 17    # obs code: L2C(L)     (GPS,QZS)~%uint8 SIG_CODE_L2X  = 18    # obs code: L2C(M+L)   (GPS,QZS)~%uint8 SIG_CODE_L2P  = 19    # obs code: L2P        (GPS,GLO)~%uint8 SIG_CODE_L2W  = 20    # obs code: L2 Z-track (GPS)~%uint8 SIG_CODE_L2Y  = 21    # obs code: L2Y        (GPS)~%uint8 SIG_CODE_L2M  = 22    # obs code: L2M        (GPS)~%uint8 SIG_CODE_L2N  = 23    # obs code: L2codeless (GPS)~%uint8 SIG_CODE_L5I  = 24    # obs code: L5/E5aI    (GPS,GAL,QZS,SBS)~%uint8 SIG_CODE_L5Q  = 25    # obs code: L5/E5aQ    (GPS,GAL,QZS,SBS)~%uint8 SIG_CODE_L5X  = 26    # obs code: L5/E5aI+Q  (GPS,GAL,QZS,SBS)~%uint8 SIG_CODE_L7I  = 27    # obs code: E5bI       (GAL)~%uint8 SIG_CODE_L7Q  = 28    # obs code: E5bQ       (GAL)~%uint8 SIG_CODE_L7X  = 29    # obs code: E5bI+Q     (GAL)~%uint8 SIG_CODE_L6A  = 30    # obs code: E6A        (GAL)~%uint8 SIG_CODE_L6B  = 31    # obs code: E6B        (GAL)~%uint8 SIG_CODE_L6C  = 32    # obs code: E6C        (GAL)~%uint8 SIG_CODE_L6X  = 33    # obs code: E6B+C      (GAL)~%uint8 SIG_CODE_L6Z  = 34    # obs code: E6A+B+C    (GAL)~%uint8 SIG_CODE_L6S  = 35    # obs code: LEX-S      (QZS)~%uint8 SIG_CODE_L6L  = 36    # obs code: LEX-L      (QZS)~%uint8 SIG_CODE_L8I  = 37    # obs code: E5(a+b)I   (GAL)~%uint8 SIG_CODE_L8Q  = 38    # obs code: E5(a+b)Q   (GAL)~%uint8 SIG_CODE_L8X  = 39    # obs code: E5(a+b)I+Q (GAL)~%uint8 MAXSIGCODE   = 39    # max number of obs code~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SatelliteObservation)))
  "Returns full string definition for message of type 'SatelliteObservation"
  (cl:format cl:nil "#Satellite observation~%Header header~%~%~%#Number of the satellite (1-32 for GPS)~%uint8 sat~%~%~%#Signal observations for different frequencies~%SignalObservation[] observations~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: rtkrcv/SignalObservation~%#Signal to noise ratio (0.25 dBHz)~%uint8 snr~%#Loss of lock indicator~%uint8 lli~%#Code indicator~%uint8 sig_code~%#Observation data carrier-phase (cycle)~%float64 carrier_phase~%#Observation data pseudorange (m)~%float64 pseudorange~%#Observation data doppler frequency (Hz)~%float32 doppler~%~%uint8 SIG_CODE_NONE = 0     # obs code: none or unknown~%uint8 SIG_CODE_L1C  = 1     # obs code: L1C/A,E1C  (GPS,GLO,GAL,QZS,SBS)~%uint8 SIG_CODE_L1P  = 2     # obs code: L1P        (GPS,GLO)~%uint8 SIG_CODE_L1W  = 3     # obs code: L1 Z-track (GPS)~%uint8 SIG_CODE_L1Y  = 4     # obs code: L1Y        (GPS)~%uint8 SIG_CODE_L1M  = 5     # obs code: L1M        (GPS)~%uint8 SIG_CODE_L1N  = 6     # obs code: L1codeless (GPS)~%uint8 SIG_CODE_L1S  = 7     # obs code: L1C(D)     (GPS,QZS)~%uint8 SIG_CODE_L1L  = 8     # obs code: L1C(P)     (GPS,QZS)~%uint8 SIG_CODE_L1E  = 9     # obs code: L1-SAIF    (QZS)~%uint8 SIG_CODE_L1A  = 10    # obs code: E1A        (GAL)~%uint8 SIG_CODE_L1B  = 11    # obs code: E1B        (GAL)~%uint8 SIG_CODE_L1X  = 12    # obs code: E1B+C,L1C(D+P) (GAL,QZS)~%uint8 SIG_CODE_L1Z  = 13    # obs code: E1A+B+C    (GAL)~%uint8 SIG_CODE_L2C  = 14    # obs code: L2C/A      (GPS,GLO)~%uint8 SIG_CODE_L2D  = 15    # obs code: L2 L1C/A-(P2-P1) (GPS)~%uint8 SIG_CODE_L2S  = 16    # obs code: L2C(M)     (GPS,QZS)~%uint8 SIG_CODE_L2L  = 17    # obs code: L2C(L)     (GPS,QZS)~%uint8 SIG_CODE_L2X  = 18    # obs code: L2C(M+L)   (GPS,QZS)~%uint8 SIG_CODE_L2P  = 19    # obs code: L2P        (GPS,GLO)~%uint8 SIG_CODE_L2W  = 20    # obs code: L2 Z-track (GPS)~%uint8 SIG_CODE_L2Y  = 21    # obs code: L2Y        (GPS)~%uint8 SIG_CODE_L2M  = 22    # obs code: L2M        (GPS)~%uint8 SIG_CODE_L2N  = 23    # obs code: L2codeless (GPS)~%uint8 SIG_CODE_L5I  = 24    # obs code: L5/E5aI    (GPS,GAL,QZS,SBS)~%uint8 SIG_CODE_L5Q  = 25    # obs code: L5/E5aQ    (GPS,GAL,QZS,SBS)~%uint8 SIG_CODE_L5X  = 26    # obs code: L5/E5aI+Q  (GPS,GAL,QZS,SBS)~%uint8 SIG_CODE_L7I  = 27    # obs code: E5bI       (GAL)~%uint8 SIG_CODE_L7Q  = 28    # obs code: E5bQ       (GAL)~%uint8 SIG_CODE_L7X  = 29    # obs code: E5bI+Q     (GAL)~%uint8 SIG_CODE_L6A  = 30    # obs code: E6A        (GAL)~%uint8 SIG_CODE_L6B  = 31    # obs code: E6B        (GAL)~%uint8 SIG_CODE_L6C  = 32    # obs code: E6C        (GAL)~%uint8 SIG_CODE_L6X  = 33    # obs code: E6B+C      (GAL)~%uint8 SIG_CODE_L6Z  = 34    # obs code: E6A+B+C    (GAL)~%uint8 SIG_CODE_L6S  = 35    # obs code: LEX-S      (QZS)~%uint8 SIG_CODE_L6L  = 36    # obs code: LEX-L      (QZS)~%uint8 SIG_CODE_L8I  = 37    # obs code: E5(a+b)I   (GAL)~%uint8 SIG_CODE_L8Q  = 38    # obs code: E5(a+b)Q   (GAL)~%uint8 SIG_CODE_L8X  = 39    # obs code: E5(a+b)I+Q (GAL)~%uint8 MAXSIGCODE   = 39    # max number of obs code~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SatelliteObservation>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'observations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SatelliteObservation>))
  "Converts a ROS message object to a list"
  (cl:list 'SatelliteObservation
    (cl:cons ':header (header msg))
    (cl:cons ':sat (sat msg))
    (cl:cons ':observations (observations msg))
))
