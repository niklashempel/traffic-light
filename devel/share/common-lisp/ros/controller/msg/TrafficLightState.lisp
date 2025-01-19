; Auto-generated. Do not edit!


(cl:in-package controller-msg)


;//! \htmlinclude TrafficLightState.msg.html

(cl:defclass <TrafficLightState> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type cl:string
    :initform "")
   (state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (duration
    :reader duration
    :initarg :duration
    :type cl:float
    :initform 0.0))
)

(cl:defclass TrafficLightState (<TrafficLightState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller-msg:<TrafficLightState> is deprecated: use controller-msg:TrafficLightState instead.")))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <TrafficLightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:direction-val is deprecated.  Use controller-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <TrafficLightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:state-val is deprecated.  Use controller-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <TrafficLightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:duration-val is deprecated.  Use controller-msg:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightState>) ostream)
  "Serializes a message object of type '<TrafficLightState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'direction))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightState>) istream)
  "Deserializes a message object of type '<TrafficLightState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightState>)))
  "Returns string type for a message object of type '<TrafficLightState>"
  "controller/TrafficLightState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightState)))
  "Returns string type for a message object of type 'TrafficLightState"
  "controller/TrafficLightState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightState>)))
  "Returns md5sum for a message object of type '<TrafficLightState>"
  "52bcdc476bde5096da27668421adb68e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightState)))
  "Returns md5sum for a message object of type 'TrafficLightState"
  "52bcdc476bde5096da27668421adb68e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightState>)))
  "Returns full string definition for message of type '<TrafficLightState>"
  (cl:format cl:nil "string direction~%string state~%float32 duration~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightState)))
  "Returns full string definition for message of type 'TrafficLightState"
  (cl:format cl:nil "string direction~%string state~%float32 duration~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'direction))
     4 (cl:length (cl:slot-value msg 'state))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightState>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightState
    (cl:cons ':direction (direction msg))
    (cl:cons ':state (state msg))
    (cl:cons ':duration (duration msg))
))
