; Auto-generated. Do not edit!


(cl:in-package rtkrcv-msg)


;//! \htmlinclude SignalObservation.msg.html

(cl:defclass <SignalObservation> (roslisp-msg-protocol:ros-message)
  ((snr
    :reader snr
    :initarg :snr
    :type cl:fixnum
    :initform 0)
   (lli
    :reader lli
    :initarg :lli
    :type cl:fixnum
    :initform 0)
   (sig_code
    :reader sig_code
    :initarg :sig_code
    :type cl:fixnum
    :initform 0)
   (carrier_phase
    :reader carrier_phase
    :initarg :carrier_phase
    :type cl:float
    :initform 0.0)
   (pseudorange
    :reader pseudorange
    :initarg :pseudorange
    :type cl:float
    :initform 0.0)
   (doppler
    :reader doppler
    :initarg :doppler
    :type cl:float
    :initform 0.0))
)

(cl:defclass SignalObservation (<SignalObservation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SignalObservation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SignalObservation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtkrcv-msg:<SignalObservation> is deprecated: use rtkrcv-msg:SignalObservation instead.")))

(cl:ensure-generic-function 'snr-val :lambda-list '(m))
(cl:defmethod snr-val ((m <SignalObservation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:snr-val is deprecated.  Use rtkrcv-msg:snr instead.")
  (snr m))

(cl:ensure-generic-function 'lli-val :lambda-list '(m))
(cl:defmethod lli-val ((m <SignalObservation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:lli-val is deprecated.  Use rtkrcv-msg:lli instead.")
  (lli m))

(cl:ensure-generic-function 'sig_code-val :lambda-list '(m))
(cl:defmethod sig_code-val ((m <SignalObservation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:sig_code-val is deprecated.  Use rtkrcv-msg:sig_code instead.")
  (sig_code m))

(cl:ensure-generic-function 'carrier_phase-val :lambda-list '(m))
(cl:defmethod carrier_phase-val ((m <SignalObservation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:carrier_phase-val is deprecated.  Use rtkrcv-msg:carrier_phase instead.")
  (carrier_phase m))

(cl:ensure-generic-function 'pseudorange-val :lambda-list '(m))
(cl:defmethod pseudorange-val ((m <SignalObservation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:pseudorange-val is deprecated.  Use rtkrcv-msg:pseudorange instead.")
  (pseudorange m))

(cl:ensure-generic-function 'doppler-val :lambda-list '(m))
(cl:defmethod doppler-val ((m <SignalObservation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:doppler-val is deprecated.  Use rtkrcv-msg:doppler instead.")
  (doppler m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SignalObservation>)))
    "Constants for message type '<SignalObservation>"
  '((:SIG_CODE_NONE . 0)
    (:SIG_CODE_L1C . 1)
    (:SIG_CODE_L1P . 2)
    (:SIG_CODE_L1W . 3)
    (:SIG_CODE_L1Y . 4)
    (:SIG_CODE_L1M . 5)
    (:SIG_CODE_L1N . 6)
    (:SIG_CODE_L1S . 7)
    (:SIG_CODE_L1L . 8)
    (:SIG_CODE_L1E . 9)
    (:SIG_CODE_L1A . 10)
    (:SIG_CODE_L1B . 11)
    (:SIG_CODE_L1X . 12)
    (:SIG_CODE_L1Z . 13)
    (:SIG_CODE_L2C . 14)
    (:SIG_CODE_L2D . 15)
    (:SIG_CODE_L2S . 16)
    (:SIG_CODE_L2L . 17)
    (:SIG_CODE_L2X . 18)
    (:SIG_CODE_L2P . 19)
    (:SIG_CODE_L2W . 20)
    (:SIG_CODE_L2Y . 21)
    (:SIG_CODE_L2M . 22)
    (:SIG_CODE_L2N . 23)
    (:SIG_CODE_L5I . 24)
    (:SIG_CODE_L5Q . 25)
    (:SIG_CODE_L5X . 26)
    (:SIG_CODE_L7I . 27)
    (:SIG_CODE_L7Q . 28)
    (:SIG_CODE_L7X . 29)
    (:SIG_CODE_L6A . 30)
    (:SIG_CODE_L6B . 31)
    (:SIG_CODE_L6C . 32)
    (:SIG_CODE_L6X . 33)
    (:SIG_CODE_L6Z . 34)
    (:SIG_CODE_L6S . 35)
    (:SIG_CODE_L6L . 36)
    (:SIG_CODE_L8I . 37)
    (:SIG_CODE_L8Q . 38)
    (:SIG_CODE_L8X . 39)
    (:MAXSIGCODE . 39))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SignalObservation)))
    "Constants for message type 'SignalObservation"
  '((:SIG_CODE_NONE . 0)
    (:SIG_CODE_L1C . 1)
    (:SIG_CODE_L1P . 2)
    (:SIG_CODE_L1W . 3)
    (:SIG_CODE_L1Y . 4)
    (:SIG_CODE_L1M . 5)
    (:SIG_CODE_L1N . 6)
    (:SIG_CODE_L1S . 7)
    (:SIG_CODE_L1L . 8)
    (:SIG_CODE_L1E . 9)
    (:SIG_CODE_L1A . 10)
    (:SIG_CODE_L1B . 11)
    (:SIG_CODE_L1X . 12)
    (:SIG_CODE_L1Z . 13)
    (:SIG_CODE_L2C . 14)
    (:SIG_CODE_L2D . 15)
    (:SIG_CODE_L2S . 16)
    (:SIG_CODE_L2L . 17)
    (:SIG_CODE_L2X . 18)
    (:SIG_CODE_L2P . 19)
    (:SIG_CODE_L2W . 20)
    (:SIG_CODE_L2Y . 21)
    (:SIG_CODE_L2M . 22)
    (:SIG_CODE_L2N . 23)
    (:SIG_CODE_L5I . 24)
    (:SIG_CODE_L5Q . 25)
    (:SIG_CODE_L5X . 26)
    (:SIG_CODE_L7I . 27)
    (:SIG_CODE_L7Q . 28)
    (:SIG_CODE_L7X . 29)
    (:SIG_CODE_L6A . 30)
    (:SIG_CODE_L6B . 31)
    (:SIG_CODE_L6C . 32)
    (:SIG_CODE_L6X . 33)
    (:SIG_CODE_L6Z . 34)
    (:SIG_CODE_L6S . 35)
    (:SIG_CODE_L6L . 36)
    (:SIG_CODE_L8I . 37)
    (:SIG_CODE_L8Q . 38)
    (:SIG_CODE_L8X . 39)
    (:MAXSIGCODE . 39))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SignalObservation>) ostream)
  "Serializes a message object of type '<SignalObservation>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'snr)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lli)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sig_code)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'carrier_phase))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pseudorange))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'doppler))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SignalObservation>) istream)
  "Deserializes a message object of type '<SignalObservation>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'snr)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lli)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sig_code)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'carrier_phase) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pseudorange) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'doppler) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SignalObservation>)))
  "Returns string type for a message object of type '<SignalObservation>"
  "rtkrcv/SignalObservation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SignalObservation)))
  "Returns string type for a message object of type 'SignalObservation"
  "rtkrcv/SignalObservation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SignalObservation>)))
  "Returns md5sum for a message object of type '<SignalObservation>"
  "14a56f525e59be7564f63947c358c1cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SignalObservation)))
  "Returns md5sum for a message object of type 'SignalObservation"
  "14a56f525e59be7564f63947c358c1cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SignalObservation>)))
  "Returns full string definition for message of type '<SignalObservation>"
  (cl:format cl:nil "#Signal to noise ratio (0.25 dBHz)~%uint8 snr~%#Loss of lock indicator~%uint8 lli~%#Code indicator~%uint8 sig_code~%#Observation data carrier-phase (cycle)~%float64 carrier_phase~%#Observation data pseudorange (m)~%float64 pseudorange~%#Observation data doppler frequency (Hz)~%float32 doppler~%~%uint8 SIG_CODE_NONE = 0     # obs code: none or unknown~%uint8 SIG_CODE_L1C  = 1     # obs code: L1C/A,E1C  (GPS,GLO,GAL,QZS,SBS)~%uint8 SIG_CODE_L1P  = 2     # obs code: L1P        (GPS,GLO)~%uint8 SIG_CODE_L1W  = 3     # obs code: L1 Z-track (GPS)~%uint8 SIG_CODE_L1Y  = 4     # obs code: L1Y        (GPS)~%uint8 SIG_CODE_L1M  = 5     # obs code: L1M        (GPS)~%uint8 SIG_CODE_L1N  = 6     # obs code: L1codeless (GPS)~%uint8 SIG_CODE_L1S  = 7     # obs code: L1C(D)     (GPS,QZS)~%uint8 SIG_CODE_L1L  = 8     # obs code: L1C(P)     (GPS,QZS)~%uint8 SIG_CODE_L1E  = 9     # obs code: L1-SAIF    (QZS)~%uint8 SIG_CODE_L1A  = 10    # obs code: E1A        (GAL)~%uint8 SIG_CODE_L1B  = 11    # obs code: E1B        (GAL)~%uint8 SIG_CODE_L1X  = 12    # obs code: E1B+C,L1C(D+P) (GAL,QZS)~%uint8 SIG_CODE_L1Z  = 13    # obs code: E1A+B+C    (GAL)~%uint8 SIG_CODE_L2C  = 14    # obs code: L2C/A      (GPS,GLO)~%uint8 SIG_CODE_L2D  = 15    # obs code: L2 L1C/A-(P2-P1) (GPS)~%uint8 SIG_CODE_L2S  = 16    # obs code: L2C(M)     (GPS,QZS)~%uint8 SIG_CODE_L2L  = 17    # obs code: L2C(L)     (GPS,QZS)~%uint8 SIG_CODE_L2X  = 18    # obs code: L2C(M+L)   (GPS,QZS)~%uint8 SIG_CODE_L2P  = 19    # obs code: L2P        (GPS,GLO)~%uint8 SIG_CODE_L2W  = 20    # obs code: L2 Z-track (GPS)~%uint8 SIG_CODE_L2Y  = 21    # obs code: L2Y        (GPS)~%uint8 SIG_CODE_L2M  = 22    # obs code: L2M        (GPS)~%uint8 SIG_CODE_L2N  = 23    # obs code: L2codeless (GPS)~%uint8 SIG_CODE_L5I  = 24    # obs code: L5/E5aI    (GPS,GAL,QZS,SBS)~%uint8 SIG_CODE_L5Q  = 25    # obs code: L5/E5aQ    (GPS,GAL,QZS,SBS)~%uint8 SIG_CODE_L5X  = 26    # obs code: L5/E5aI+Q  (GPS,GAL,QZS,SBS)~%uint8 SIG_CODE_L7I  = 27    # obs code: E5bI       (GAL)~%uint8 SIG_CODE_L7Q  = 28    # obs code: E5bQ       (GAL)~%uint8 SIG_CODE_L7X  = 29    # obs code: E5bI+Q     (GAL)~%uint8 SIG_CODE_L6A  = 30    # obs code: E6A        (GAL)~%uint8 SIG_CODE_L6B  = 31    # obs code: E6B        (GAL)~%uint8 SIG_CODE_L6C  = 32    # obs code: E6C        (GAL)~%uint8 SIG_CODE_L6X  = 33    # obs code: E6B+C      (GAL)~%uint8 SIG_CODE_L6Z  = 34    # obs code: E6A+B+C    (GAL)~%uint8 SIG_CODE_L6S  = 35    # obs code: LEX-S      (QZS)~%uint8 SIG_CODE_L6L  = 36    # obs code: LEX-L      (QZS)~%uint8 SIG_CODE_L8I  = 37    # obs code: E5(a+b)I   (GAL)~%uint8 SIG_CODE_L8Q  = 38    # obs code: E5(a+b)Q   (GAL)~%uint8 SIG_CODE_L8X  = 39    # obs code: E5(a+b)I+Q (GAL)~%uint8 MAXSIGCODE   = 39    # max number of obs code~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SignalObservation)))
  "Returns full string definition for message of type 'SignalObservation"
  (cl:format cl:nil "#Signal to noise ratio (0.25 dBHz)~%uint8 snr~%#Loss of lock indicator~%uint8 lli~%#Code indicator~%uint8 sig_code~%#Observation data carrier-phase (cycle)~%float64 carrier_phase~%#Observation data pseudorange (m)~%float64 pseudorange~%#Observation data doppler frequency (Hz)~%float32 doppler~%~%uint8 SIG_CODE_NONE = 0     # obs code: none or unknown~%uint8 SIG_CODE_L1C  = 1     # obs code: L1C/A,E1C  (GPS,GLO,GAL,QZS,SBS)~%uint8 SIG_CODE_L1P  = 2     # obs code: L1P        (GPS,GLO)~%uint8 SIG_CODE_L1W  = 3     # obs code: L1 Z-track (GPS)~%uint8 SIG_CODE_L1Y  = 4     # obs code: L1Y        (GPS)~%uint8 SIG_CODE_L1M  = 5     # obs code: L1M        (GPS)~%uint8 SIG_CODE_L1N  = 6     # obs code: L1codeless (GPS)~%uint8 SIG_CODE_L1S  = 7     # obs code: L1C(D)     (GPS,QZS)~%uint8 SIG_CODE_L1L  = 8     # obs code: L1C(P)     (GPS,QZS)~%uint8 SIG_CODE_L1E  = 9     # obs code: L1-SAIF    (QZS)~%uint8 SIG_CODE_L1A  = 10    # obs code: E1A        (GAL)~%uint8 SIG_CODE_L1B  = 11    # obs code: E1B        (GAL)~%uint8 SIG_CODE_L1X  = 12    # obs code: E1B+C,L1C(D+P) (GAL,QZS)~%uint8 SIG_CODE_L1Z  = 13    # obs code: E1A+B+C    (GAL)~%uint8 SIG_CODE_L2C  = 14    # obs code: L2C/A      (GPS,GLO)~%uint8 SIG_CODE_L2D  = 15    # obs code: L2 L1C/A-(P2-P1) (GPS)~%uint8 SIG_CODE_L2S  = 16    # obs code: L2C(M)     (GPS,QZS)~%uint8 SIG_CODE_L2L  = 17    # obs code: L2C(L)     (GPS,QZS)~%uint8 SIG_CODE_L2X  = 18    # obs code: L2C(M+L)   (GPS,QZS)~%uint8 SIG_CODE_L2P  = 19    # obs code: L2P        (GPS,GLO)~%uint8 SIG_CODE_L2W  = 20    # obs code: L2 Z-track (GPS)~%uint8 SIG_CODE_L2Y  = 21    # obs code: L2Y        (GPS)~%uint8 SIG_CODE_L2M  = 22    # obs code: L2M        (GPS)~%uint8 SIG_CODE_L2N  = 23    # obs code: L2codeless (GPS)~%uint8 SIG_CODE_L5I  = 24    # obs code: L5/E5aI    (GPS,GAL,QZS,SBS)~%uint8 SIG_CODE_L5Q  = 25    # obs code: L5/E5aQ    (GPS,GAL,QZS,SBS)~%uint8 SIG_CODE_L5X  = 26    # obs code: L5/E5aI+Q  (GPS,GAL,QZS,SBS)~%uint8 SIG_CODE_L7I  = 27    # obs code: E5bI       (GAL)~%uint8 SIG_CODE_L7Q  = 28    # obs code: E5bQ       (GAL)~%uint8 SIG_CODE_L7X  = 29    # obs code: E5bI+Q     (GAL)~%uint8 SIG_CODE_L6A  = 30    # obs code: E6A        (GAL)~%uint8 SIG_CODE_L6B  = 31    # obs code: E6B        (GAL)~%uint8 SIG_CODE_L6C  = 32    # obs code: E6C        (GAL)~%uint8 SIG_CODE_L6X  = 33    # obs code: E6B+C      (GAL)~%uint8 SIG_CODE_L6Z  = 34    # obs code: E6A+B+C    (GAL)~%uint8 SIG_CODE_L6S  = 35    # obs code: LEX-S      (QZS)~%uint8 SIG_CODE_L6L  = 36    # obs code: LEX-L      (QZS)~%uint8 SIG_CODE_L8I  = 37    # obs code: E5(a+b)I   (GAL)~%uint8 SIG_CODE_L8Q  = 38    # obs code: E5(a+b)Q   (GAL)~%uint8 SIG_CODE_L8X  = 39    # obs code: E5(a+b)I+Q (GAL)~%uint8 MAXSIGCODE   = 39    # max number of obs code~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SignalObservation>))
  (cl:+ 0
     1
     1
     1
     8
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SignalObservation>))
  "Converts a ROS message object to a list"
  (cl:list 'SignalObservation
    (cl:cons ':snr (snr msg))
    (cl:cons ':lli (lli msg))
    (cl:cons ':sig_code (sig_code msg))
    (cl:cons ':carrier_phase (carrier_phase msg))
    (cl:cons ':pseudorange (pseudorange msg))
    (cl:cons ':doppler (doppler msg))
))
