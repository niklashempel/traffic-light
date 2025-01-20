
(cl:in-package :asdf)

(defsystem "controller-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PedestrianCrossing" :depends-on ("_package_PedestrianCrossing"))
    (:file "_package_PedestrianCrossing" :depends-on ("_package"))
    (:file "ToggleMode" :depends-on ("_package_ToggleMode"))
    (:file "_package_ToggleMode" :depends-on ("_package"))
  ))