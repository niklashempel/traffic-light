; Auto-generated. Do not edit!


(cl:in-package controller-msg)


;//! \htmlinclude TrafficViolation.msg.html

(cl:defclass <TrafficViolation> (roslisp-msg-protocol:ros-message)
  ((location
    :reader location
    :initarg :location
    :type cl:string
    :initform "")
   (violation_detected
    :reader violation_detected
    :initarg :violation_detected
    :type cl:boolean
    :initform cl:nil)
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:float
    :initform 0.0))
)

(cl:defclass TrafficViolation (<TrafficViolation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficViolation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficViolation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller-msg:<TrafficViolation> is deprecated: use controller-msg:TrafficViolation instead.")))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <TrafficViolation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:location-val is deprecated.  Use controller-msg:location instead.")
  (location m))

(cl:ensure-generic-function 'violation_detected-val :lambda-list '(m))
(cl:defmethod violation_detected-val ((m <TrafficViolation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:violation_detected-val is deprecated.  Use controller-msg:violation_detected instead.")
  (violation_detected m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <TrafficViolation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:timestamp-val is deprecated.  Use controller-msg:timestamp instead.")
  (timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficViolation>) ostream)
  "Serializes a message object of type '<TrafficViolation>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'violation_detected) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficViolation>) istream)
  "Deserializes a message object of type '<TrafficViolation>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'location) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'violation_detected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timestamp) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficViolation>)))
  "Returns string type for a message object of type '<TrafficViolation>"
  "controller/TrafficViolation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficViolation)))
  "Returns string type for a message object of type 'TrafficViolation"
  "controller/TrafficViolation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficViolation>)))
  "Returns md5sum for a message object of type '<TrafficViolation>"
  "b565cc422536c9871f3e727883ef5afb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficViolation)))
  "Returns md5sum for a message object of type 'TrafficViolation"
  "b565cc422536c9871f3e727883ef5afb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficViolation>)))
  "Returns full string definition for message of type '<TrafficViolation>"
  (cl:format cl:nil "string location~%bool violation_detected~%float32 timestamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficViolation)))
  "Returns full string definition for message of type 'TrafficViolation"
  (cl:format cl:nil "string location~%bool violation_detected~%float32 timestamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficViolation>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'location))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficViolation>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficViolation
    (cl:cons ':location (location msg))
    (cl:cons ':violation_detected (violation_detected msg))
    (cl:cons ':timestamp (timestamp msg))
))
