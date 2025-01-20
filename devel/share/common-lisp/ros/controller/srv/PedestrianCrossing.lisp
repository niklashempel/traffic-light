; Auto-generated. Do not edit!


(cl:in-package controller-srv)


;//! \htmlinclude PedestrianCrossing-request.msg.html

(cl:defclass <PedestrianCrossing-request> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type cl:string
    :initform ""))
)

(cl:defclass PedestrianCrossing-request (<PedestrianCrossing-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PedestrianCrossing-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PedestrianCrossing-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller-srv:<PedestrianCrossing-request> is deprecated: use controller-srv:PedestrianCrossing-request instead.")))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <PedestrianCrossing-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-srv:direction-val is deprecated.  Use controller-srv:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PedestrianCrossing-request>) ostream)
  "Serializes a message object of type '<PedestrianCrossing-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'direction))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PedestrianCrossing-request>) istream)
  "Deserializes a message object of type '<PedestrianCrossing-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PedestrianCrossing-request>)))
  "Returns string type for a service object of type '<PedestrianCrossing-request>"
  "controller/PedestrianCrossingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PedestrianCrossing-request)))
  "Returns string type for a service object of type 'PedestrianCrossing-request"
  "controller/PedestrianCrossingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PedestrianCrossing-request>)))
  "Returns md5sum for a message object of type '<PedestrianCrossing-request>"
  "1285b61c3167de41a64fcd81f53ed29b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PedestrianCrossing-request)))
  "Returns md5sum for a message object of type 'PedestrianCrossing-request"
  "1285b61c3167de41a64fcd81f53ed29b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PedestrianCrossing-request>)))
  "Returns full string definition for message of type '<PedestrianCrossing-request>"
  (cl:format cl:nil "string direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PedestrianCrossing-request)))
  "Returns full string definition for message of type 'PedestrianCrossing-request"
  (cl:format cl:nil "string direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PedestrianCrossing-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'direction))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PedestrianCrossing-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PedestrianCrossing-request
    (cl:cons ':direction (direction msg))
))
;//! \htmlinclude PedestrianCrossing-response.msg.html

(cl:defclass <PedestrianCrossing-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PedestrianCrossing-response (<PedestrianCrossing-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PedestrianCrossing-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PedestrianCrossing-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller-srv:<PedestrianCrossing-response> is deprecated: use controller-srv:PedestrianCrossing-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PedestrianCrossing-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-srv:success-val is deprecated.  Use controller-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PedestrianCrossing-response>) ostream)
  "Serializes a message object of type '<PedestrianCrossing-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PedestrianCrossing-response>) istream)
  "Deserializes a message object of type '<PedestrianCrossing-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PedestrianCrossing-response>)))
  "Returns string type for a service object of type '<PedestrianCrossing-response>"
  "controller/PedestrianCrossingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PedestrianCrossing-response)))
  "Returns string type for a service object of type 'PedestrianCrossing-response"
  "controller/PedestrianCrossingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PedestrianCrossing-response>)))
  "Returns md5sum for a message object of type '<PedestrianCrossing-response>"
  "1285b61c3167de41a64fcd81f53ed29b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PedestrianCrossing-response)))
  "Returns md5sum for a message object of type 'PedestrianCrossing-response"
  "1285b61c3167de41a64fcd81f53ed29b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PedestrianCrossing-response>)))
  "Returns full string definition for message of type '<PedestrianCrossing-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PedestrianCrossing-response)))
  "Returns full string definition for message of type 'PedestrianCrossing-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PedestrianCrossing-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PedestrianCrossing-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PedestrianCrossing-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PedestrianCrossing)))
  'PedestrianCrossing-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PedestrianCrossing)))
  'PedestrianCrossing-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PedestrianCrossing)))
  "Returns string type for a service object of type '<PedestrianCrossing>"
  "controller/PedestrianCrossing")