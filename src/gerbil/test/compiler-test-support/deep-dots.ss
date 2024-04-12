(import :std/test)

(deftype @B B)
(deftype @C C)
(defclass A ((x : @B)))
(defclass B ((y : @C)))
(defclass C (z))

(defmethod {do-it C}
  (lambda (self a b)
    (+ (* a self.z) b)))

(def (main)
  (let* ((c (C z: 3))
         (b (B y: c))
         (a (A x: b)))
    (using (a :- A)
      (check a.x =>  b)
      (check a.x.y => c)
      (check {a.x.y.do-it 1 2} => 5))))
