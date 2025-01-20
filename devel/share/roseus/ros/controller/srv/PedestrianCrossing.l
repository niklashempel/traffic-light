;; Auto-generated. Do not edit!


(when (boundp 'controller::PedestrianCrossing)
  (if (not (find-package "CONTROLLER"))
    (make-package "CONTROLLER"))
  (shadow 'PedestrianCrossing (find-package "CONTROLLER")))
(unless (find-package "CONTROLLER::PEDESTRIANCROSSING")
  (make-package "CONTROLLER::PEDESTRIANCROSSING"))
(unless (find-package "CONTROLLER::PEDESTRIANCROSSINGREQUEST")
  (make-package "CONTROLLER::PEDESTRIANCROSSINGREQUEST"))
(unless (find-package "CONTROLLER::PEDESTRIANCROSSINGRESPONSE")
  (make-package "CONTROLLER::PEDESTRIANCROSSINGRESPONSE"))

(in-package "ROS")





(defclass controller::PedestrianCrossingRequest
  :super ros::object
  :slots (_direction ))

(defmethod controller::PedestrianCrossingRequest
  (:init
   (&key
    ((:direction __direction) "")
    )
   (send-super :init)
   (setq _direction (string __direction))
   self)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; string _direction
    4 (length _direction)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _direction
       (write-long (length _direction) s) (princ _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass controller::PedestrianCrossingResponse
  :super ros::object
  :slots (_success ))

(defmethod controller::PedestrianCrossingResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass controller::PedestrianCrossing
  :super ros::object
  :slots ())

(setf (get controller::PedestrianCrossing :md5sum-) "1285b61c3167de41a64fcd81f53ed29b")
(setf (get controller::PedestrianCrossing :datatype-) "controller/PedestrianCrossing")
(setf (get controller::PedestrianCrossing :request) controller::PedestrianCrossingRequest)
(setf (get controller::PedestrianCrossing :response) controller::PedestrianCrossingResponse)

(defmethod controller::PedestrianCrossingRequest
  (:response () (instance controller::PedestrianCrossingResponse :init)))

(setf (get controller::PedestrianCrossingRequest :md5sum-) "1285b61c3167de41a64fcd81f53ed29b")
(setf (get controller::PedestrianCrossingRequest :datatype-) "controller/PedestrianCrossingRequest")
(setf (get controller::PedestrianCrossingRequest :definition-)
      "string direction
---
bool success
")

(setf (get controller::PedestrianCrossingResponse :md5sum-) "1285b61c3167de41a64fcd81f53ed29b")
(setf (get controller::PedestrianCrossingResponse :datatype-) "controller/PedestrianCrossingResponse")
(setf (get controller::PedestrianCrossingResponse :definition-)
      "string direction
---
bool success
")



(provide :controller/PedestrianCrossing "1285b61c3167de41a64fcd81f53ed29b")


