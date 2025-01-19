
(cl:in-package :asdf)

(defsystem "controller-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TrafficLightState" :depends-on ("_package_TrafficLightState"))
    (:file "_package_TrafficLightState" :depends-on ("_package"))
  ))