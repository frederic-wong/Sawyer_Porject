
(cl:in-package :asdf)

(defsystem "sawyer_beer-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Centroid" :depends-on ("_package_Centroid"))
    (:file "_package_Centroid" :depends-on ("_package"))
  ))