;; Auto-generated. Do not edit!


(when (boundp 'controller::TrafficLightState)
  (if (not (find-package "CONTROLLER"))
    (make-package "CONTROLLER"))
  (shadow 'TrafficLightState (find-package "CONTROLLER")))
(unless (find-package "CONTROLLER::TRAFFICLIGHTSTATE")
  (make-package "CONTROLLER::TRAFFICLIGHTSTATE"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightState.msg.html


(defclass controller::TrafficLightState
  :super ros::object
  :slots (_direction _state _duration ))

(defmethod controller::TrafficLightState
  (:init
   (&key
    ((:direction __direction) "")
    ((:state __state) "")
    ((:duration __duration) 0.0)
    )
   (send-super :init)
   (setq _direction (string __direction))
   (setq _state (string __state))
   (setq _duration (float __duration))
   self)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; string _direction
    4 (length _direction)
    ;; string _state
    4 (length _state)
    ;; float32 _duration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _direction
       (write-long (length _direction) s) (princ _direction s)
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; float32 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _duration
     (setq _duration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get controller::TrafficLightState :md5sum-) "52bcdc476bde5096da27668421adb68e")
(setf (get controller::TrafficLightState :datatype-) "controller/TrafficLightState")
(setf (get controller::TrafficLightState :definition-)
      "string direction
string state
float32 duration
")



(provide :controller/TrafficLightState "52bcdc476bde5096da27668421adb68e")


