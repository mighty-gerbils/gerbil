;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Simple example that uses the dot-app prelude
prelude: :tutorial/lang/dot-app

(export #t)

(defstruct A (x))
(defmethod {add-x A}
  (lambda (self y)
    (with ((A x) self)
      (+ x y))))

;; use the dotted %%app from dot-app prelude
(def (add-x a y)
  (a.add-x y))

(def (a-add-x a)
  a.add-x)
