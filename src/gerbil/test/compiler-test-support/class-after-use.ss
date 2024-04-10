(def (use-it)
  (lambda ((obj : A))
    => A
    obj.x))

(deftype @A A)
(defclass A ((x :? @A)))
