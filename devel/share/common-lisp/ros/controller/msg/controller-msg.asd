
(cl:in-package :asdf)

(defsystem "controller-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PassingVehicle" :depends-on ("_package_PassingVehicle"))
    (:file "_package_PassingVehicle" :depends-on ("_package"))
    (:file "TrafficLightState" :depends-on ("_package_TrafficLightState"))
    (:file "_package_TrafficLightState" :depends-on ("_package"))
    (:file "TrafficViolation" :depends-on ("_package_TrafficViolation"))
    (:file "_package_TrafficViolation" :depends-on ("_package"))
  ))