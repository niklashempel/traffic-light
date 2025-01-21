;; Auto-generated. Do not edit!


(when (boundp 'controller::TrafficViolation)
  (if (not (find-package "CONTROLLER"))
    (make-package "CONTROLLER"))
  (shadow 'TrafficViolation (find-package "CONTROLLER")))
(unless (find-package "CONTROLLER::TRAFFICVIOLATION")
  (make-package "CONTROLLER::TRAFFICVIOLATION"))

(in-package "ROS")
;;//! \htmlinclude TrafficViolation.msg.html


(defclass controller::TrafficViolation
  :super ros::object
  :slots (_location _violation_detected _timestamp ))

(defmethod controller::TrafficViolation
  (:init
   (&key
    ((:location __location) "")
    ((:violation_detected __violation_detected) nil)
    ((:timestamp __timestamp) 0.0)
    )
   (send-super :init)
   (setq _location (string __location))
   (setq _violation_detected __violation_detected)
   (setq _timestamp (float __timestamp))
   self)
  (:location
   (&optional __location)
   (if __location (setq _location __location)) _location)
  (:violation_detected
   (&optional (__violation_detected :null))
   (if (not (eq __violation_detected :null)) (setq _violation_detected __violation_detected)) _violation_detected)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:serialization-length
   ()
   (+
    ;; string _location
    4 (length _location)
    ;; bool _violation_detected
    1
    ;; float32 _timestamp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _location
       (write-long (length _location) s) (princ _location s)
     ;; bool _violation_detected
       (if _violation_detected (write-byte -1 s) (write-byte 0 s))
     ;; float32 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _violation_detected
     (setq _violation_detected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _timestamp
     (setq _timestamp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get controller::TrafficViolation :md5sum-) "b565cc422536c9871f3e727883ef5afb")
(setf (get controller::TrafficViolation :datatype-) "controller/TrafficViolation")
(setf (get controller::TrafficViolation :definition-)
      "string location
bool violation_detected
float32 timestamp

")



(provide :controller/TrafficViolation "b565cc422536c9871f3e727883ef5afb")


