;; Auto-generated. Do not edit!


(when (boundp 'controller::ToggleMode)
  (if (not (find-package "CONTROLLER"))
    (make-package "CONTROLLER"))
  (shadow 'ToggleMode (find-package "CONTROLLER")))
(unless (find-package "CONTROLLER::TOGGLEMODE")
  (make-package "CONTROLLER::TOGGLEMODE"))
(unless (find-package "CONTROLLER::TOGGLEMODEREQUEST")
  (make-package "CONTROLLER::TOGGLEMODEREQUEST"))
(unless (find-package "CONTROLLER::TOGGLEMODERESPONSE")
  (make-package "CONTROLLER::TOGGLEMODERESPONSE"))

(in-package "ROS")





(defclass controller::ToggleModeRequest
  :super ros::object
  :slots (_mode ))

(defmethod controller::ToggleModeRequest
  (:init
   (&key
    ((:mode __mode) "")
    )
   (send-super :init)
   (setq _mode (string __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; string _mode
    4 (length _mode)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass controller::ToggleModeResponse
  :super ros::object
  :slots (_status ))

(defmethod controller::ToggleModeResponse
  (:init
   (&key
    ((:status __status) "")
    )
   (send-super :init)
   (setq _status (string __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass controller::ToggleMode
  :super ros::object
  :slots ())

(setf (get controller::ToggleMode :md5sum-) "06a11c517598703a6e51ae743b5297b3")
(setf (get controller::ToggleMode :datatype-) "controller/ToggleMode")
(setf (get controller::ToggleMode :request) controller::ToggleModeRequest)
(setf (get controller::ToggleMode :response) controller::ToggleModeResponse)

(defmethod controller::ToggleModeRequest
  (:response () (instance controller::ToggleModeResponse :init)))

(setf (get controller::ToggleModeRequest :md5sum-) "06a11c517598703a6e51ae743b5297b3")
(setf (get controller::ToggleModeRequest :datatype-) "controller/ToggleModeRequest")
(setf (get controller::ToggleModeRequest :definition-)
      "string mode
---
string status
")

(setf (get controller::ToggleModeResponse :md5sum-) "06a11c517598703a6e51ae743b5297b3")
(setf (get controller::ToggleModeResponse :datatype-) "controller/ToggleModeResponse")
(setf (get controller::ToggleModeResponse :definition-)
      "string mode
---
string status
")



(provide :controller/ToggleMode "06a11c517598703a6e51ae743b5297b3")


