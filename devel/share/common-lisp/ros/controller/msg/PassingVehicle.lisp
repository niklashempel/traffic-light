; Auto-generated. Do not edit!


(cl:in-package controller-msg)


;//! \htmlinclude PassingVehicle.msg.html

(cl:defclass <PassingVehicle> (roslisp-msg-protocol:ros-message)
  ((location
    :reader location
    :initarg :location
    :type cl:string
    :initform "")
   (is_passing
    :reader is_passing
    :initarg :is_passing
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PassingVehicle (<PassingVehicle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PassingVehicle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PassingVehicle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller-msg:<PassingVehicle> is deprecated: use controller-msg:PassingVehicle instead.")))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <PassingVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:location-val is deprecated.  Use controller-msg:location instead.")
  (location m))

(cl:ensure-generic-function 'is_passing-val :lambda-list '(m))
(cl:defmethod is_passing-val ((m <PassingVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:is_passing-val is deprecated.  Use controller-msg:is_passing instead.")
  (is_passing m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PassingVehicle>) ostream)
  "Serializes a message object of type '<PassingVehicle>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_passing) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PassingVehicle>) istream)
  "Deserializes a message object of type '<PassingVehicle>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'location) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'is_passing) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PassingVehicle>)))
  "Returns string type for a message object of type '<PassingVehicle>"
  "controller/PassingVehicle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PassingVehicle)))
  "Returns string type for a message object of type 'PassingVehicle"
  "controller/PassingVehicle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PassingVehicle>)))
  "Returns md5sum for a message object of type '<PassingVehicle>"
  "662c35d407630f0948e461ff439fcd61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PassingVehicle)))
  "Returns md5sum for a message object of type 'PassingVehicle"
  "662c35d407630f0948e461ff439fcd61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PassingVehicle>)))
  "Returns full string definition for message of type '<PassingVehicle>"
  (cl:format cl:nil "string location # North, East, South, West~%bool is_passing~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PassingVehicle)))
  "Returns full string definition for message of type 'PassingVehicle"
  (cl:format cl:nil "string location # North, East, South, West~%bool is_passing~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PassingVehicle>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'location))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PassingVehicle>))
  "Converts a ROS message object to a list"
  (cl:list 'PassingVehicle
    (cl:cons ':location (location msg))
    (cl:cons ':is_passing (is_passing msg))
))
