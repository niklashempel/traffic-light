;; Auto-generated. Do not edit!


(when (boundp 'controller::PassingVehicle)
  (if (not (find-package "CONTROLLER"))
    (make-package "CONTROLLER"))
  (shadow 'PassingVehicle (find-package "CONTROLLER")))
(unless (find-package "CONTROLLER::PASSINGVEHICLE")
  (make-package "CONTROLLER::PASSINGVEHICLE"))

(in-package "ROS")
;;//! \htmlinclude PassingVehicle.msg.html


(defclass controller::PassingVehicle
  :super ros::object
  :slots (_location _is_passing ))

(defmethod controller::PassingVehicle
  (:init
   (&key
    ((:location __location) "")
    ((:is_passing __is_passing) nil)
    )
   (send-super :init)
   (setq _location (string __location))
   (setq _is_passing __is_passing)
   self)
  (:location
   (&optional __location)
   (if __location (setq _location __location)) _location)
  (:is_passing
   (&optional (__is_passing :null))
   (if (not (eq __is_passing :null)) (setq _is_passing __is_passing)) _is_passing)
  (:serialization-length
   ()
   (+
    ;; string _location
    4 (length _location)
    ;; bool _is_passing
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _location
       (write-long (length _location) s) (princ _location s)
     ;; bool _is_passing
       (if _is_passing (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _is_passing
     (setq _is_passing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get controller::PassingVehicle :md5sum-) "662c35d407630f0948e461ff439fcd61")
(setf (get controller::PassingVehicle :datatype-) "controller/PassingVehicle")
(setf (get controller::PassingVehicle :definition-)
      "string location # North, East, South, West
bool is_passing
")



(provide :controller/PassingVehicle "662c35d407630f0948e461ff439fcd61")


