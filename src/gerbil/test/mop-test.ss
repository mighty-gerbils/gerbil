;;; -*- Gerbil -*-
;;; © vyzo
;;; MOP tests
(import :std/test)
(export mop-dispatch-test)

(defclass A ())
(defclass (B A) ())
(defclass (C A) ())
(defclass (D B C) ())

(def mop-dispatch-test
  (test-suite "MOP dispatch"
    (test-case "bottom methods"
      (defmethod {identify :t}
        (lambda (obj) 't))
      (defmethod {identify :object}
        (lambda (obj) 'object))
      (check {identify (A)} => 'object)
      (check {identify (B)} => 'object)
      (check {identify (C)} => 'object)
      (check {identify (D)} => 'object)
      (check {identify '(1 2 3)} => 't)
      (check {identify (current-thread)} => 't))

    (test-case "class methods"
      (defmethod {identify A}
        (lambda (obj) 'A))
      (check {identify (A)} => 'A)
      (check {identify (B)} => 'A)
      (check {identify (C)} => 'A)
      (check {identify (D)} => 'A)

      (defmethod {identify C}
        (lambda (obj) 'C))
      (check {identify (A)} => 'A)
      (check {identify (B)} => 'A)
      (check {identify (C)} => 'C)
      (check {identify (D)} => 'C)

      (defmethod {identify D}
        (lambda (obj) 'D))
      (check {identify (A)} => 'A)
      (check {identify (B)} => 'A)
      (check {identify (C)} => 'C)
      (check {identify (D)} => 'D))

    (test-case "system class methods"
      (defmethod {identify :list}
        (lambda (obj) 'list))
      (defmethod {identify :number}
        (lambda (obj) 'number))
      (defmethod {identify :fixnum}
        (lambda (obj) 'fixnum))

      (check {identify '(1 2 3)} => 'list)
      (check {identify 1} => 'fixnum)
      (check {identify 1.0} => 'number))

    (test-case "shadow class method"
      (defmethod {identify :thread}
        (lambda (obj) 'thread))

      (check {identify (current-thread)} => 'thread))))
