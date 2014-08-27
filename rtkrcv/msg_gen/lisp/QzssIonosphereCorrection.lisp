; Auto-generated. Do not edit!


(cl:in-package rtkrcv-msg)


;//! \htmlinclude QzssIonosphereCorrection.msg.html

(cl:defclass <QzssIonosphereCorrection> (roslisp-msg-protocol:ros-message)
  ((t0
    :reader t0
    :initarg :t0
    :type cl:real
    :initform 0)
   (tspan
    :reader tspan
    :initarg :tspan
    :type cl:float
    :initform 0.0)
   (pos0
    :reader pos0
    :initarg :pos0
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0))
   (coefs
    :reader coefs
    :initarg :coefs
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass QzssIonosphereCorrection (<QzssIonosphereCorrection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QzssIonosphereCorrection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QzssIonosphereCorrection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtkrcv-msg:<QzssIonosphereCorrection> is deprecated: use rtkrcv-msg:QzssIonosphereCorrection instead.")))

(cl:ensure-generic-function 't0-val :lambda-list '(m))
(cl:defmethod t0-val ((m <QzssIonosphereCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:t0-val is deprecated.  Use rtkrcv-msg:t0 instead.")
  (t0 m))

(cl:ensure-generic-function 'tspan-val :lambda-list '(m))
(cl:defmethod tspan-val ((m <QzssIonosphereCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:tspan-val is deprecated.  Use rtkrcv-msg:tspan instead.")
  (tspan m))

(cl:ensure-generic-function 'pos0-val :lambda-list '(m))
(cl:defmethod pos0-val ((m <QzssIonosphereCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:pos0-val is deprecated.  Use rtkrcv-msg:pos0 instead.")
  (pos0 m))

(cl:ensure-generic-function 'coefs-val :lambda-list '(m))
(cl:defmethod coefs-val ((m <QzssIonosphereCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtkrcv-msg:coefs-val is deprecated.  Use rtkrcv-msg:coefs instead.")
  (coefs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QzssIonosphereCorrection>) ostream)
  "Serializes a message object of type '<QzssIonosphereCorrection>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 't0)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 't0) (cl:floor (cl:slot-value msg 't0)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tspan))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'pos0))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'coefs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QzssIonosphereCorrection>) istream)
  "Deserializes a message object of type '<QzssIonosphereCorrection>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 't0) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tspan) (roslisp-utils:decode-double-float-bits bits)))
  (cl:setf (cl:slot-value msg 'pos0) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'pos0)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'coefs) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'coefs)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QzssIonosphereCorrection>)))
  "Returns string type for a message object of type '<QzssIonosphereCorrection>"
  "rtkrcv/QzssIonosphereCorrection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QzssIonosphereCorrection)))
  "Returns string type for a message object of type 'QzssIonosphereCorrection"
  "rtkrcv/QzssIonosphereCorrection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QzssIonosphereCorrection>)))
  "Returns md5sum for a message object of type '<QzssIonosphereCorrection>"
  "ea4c4afab86c4c57082330cf44915cef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QzssIonosphereCorrection)))
  "Returns md5sum for a message object of type 'QzssIonosphereCorrection"
  "ea4c4afab86c4c57082330cf44915cef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QzssIonosphereCorrection>)))
  "Returns full string definition for message of type '<QzssIonosphereCorrection>"
  (cl:format cl:nil "# QZSS LEX ionosphere correction type~%~%time t0                      # epoch time (GPST)~%float64 tspan                # valid time span (s)~%float64[2] pos0              # reference position {lat,lon} (rad)~%float64[6] coefs             # coefficients lat x lon (3 x 2)~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QzssIonosphereCorrection)))
  "Returns full string definition for message of type 'QzssIonosphereCorrection"
  (cl:format cl:nil "# QZSS LEX ionosphere correction type~%~%time t0                      # epoch time (GPST)~%float64 tspan                # valid time span (s)~%float64[2] pos0              # reference position {lat,lon} (rad)~%float64[6] coefs             # coefficients lat x lon (3 x 2)~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QzssIonosphereCorrection>))
  (cl:+ 0
     8
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'pos0) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'coefs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QzssIonosphereCorrection>))
  "Converts a ROS message object to a list"
  (cl:list 'QzssIonosphereCorrection
    (cl:cons ':t0 (t0 msg))
    (cl:cons ':tspan (tspan msg))
    (cl:cons ':pos0 (pos0 msg))
    (cl:cons ':coefs (coefs msg))
))
