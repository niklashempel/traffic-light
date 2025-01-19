; Auto-generated. Do not edit!


(cl:in-package controller-srv)


;//! \htmlinclude ToggleMode-request.msg.html

(cl:defclass <ToggleMode-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform ""))
)

(cl:defclass ToggleMode-request (<ToggleMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToggleMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToggleMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller-srv:<ToggleMode-request> is deprecated: use controller-srv:ToggleMode-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <ToggleMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-srv:mode-val is deprecated.  Use controller-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToggleMode-request>) ostream)
  "Serializes a message object of type '<ToggleMode-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToggleMode-request>) istream)
  "Deserializes a message object of type '<ToggleMode-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToggleMode-request>)))
  "Returns string type for a service object of type '<ToggleMode-request>"
  "controller/ToggleModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToggleMode-request)))
  "Returns string type for a service object of type 'ToggleMode-request"
  "controller/ToggleModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToggleMode-request>)))
  "Returns md5sum for a message object of type '<ToggleMode-request>"
  "06a11c517598703a6e51ae743b5297b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToggleMode-request)))
  "Returns md5sum for a message object of type 'ToggleMode-request"
  "06a11c517598703a6e51ae743b5297b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToggleMode-request>)))
  "Returns full string definition for message of type '<ToggleMode-request>"
  (cl:format cl:nil "string mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToggleMode-request)))
  "Returns full string definition for message of type 'ToggleMode-request"
  (cl:format cl:nil "string mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToggleMode-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToggleMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ToggleMode-request
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude ToggleMode-response.msg.html

(cl:defclass <ToggleMode-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass ToggleMode-response (<ToggleMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToggleMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToggleMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller-srv:<ToggleMode-response> is deprecated: use controller-srv:ToggleMode-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ToggleMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-srv:status-val is deprecated.  Use controller-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToggleMode-response>) ostream)
  "Serializes a message object of type '<ToggleMode-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToggleMode-response>) istream)
  "Deserializes a message object of type '<ToggleMode-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToggleMode-response>)))
  "Returns string type for a service object of type '<ToggleMode-response>"
  "controller/ToggleModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToggleMode-response)))
  "Returns string type for a service object of type 'ToggleMode-response"
  "controller/ToggleModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToggleMode-response>)))
  "Returns md5sum for a message object of type '<ToggleMode-response>"
  "06a11c517598703a6e51ae743b5297b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToggleMode-response)))
  "Returns md5sum for a message object of type 'ToggleMode-response"
  "06a11c517598703a6e51ae743b5297b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToggleMode-response>)))
  "Returns full string definition for message of type '<ToggleMode-response>"
  (cl:format cl:nil "string status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToggleMode-response)))
  "Returns full string definition for message of type 'ToggleMode-response"
  (cl:format cl:nil "string status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToggleMode-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToggleMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ToggleMode-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ToggleMode)))
  'ToggleMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ToggleMode)))
  'ToggleMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToggleMode)))
  "Returns string type for a service object of type '<ToggleMode>"
  "controller/ToggleMode")