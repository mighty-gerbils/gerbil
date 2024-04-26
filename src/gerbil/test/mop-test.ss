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

      (check {identify (current-thread)} => 'thread))

    (test-case "equality"
      ;; Equality without inheritance
      (defstruct a (x)) ;; opaque by default
      (let (x (a 4)) (check (equal? x x) => #t))
      (check (equal? (a 4) (a 4)) => #f)
      (check (equal? (a 4) (a 5)) => #f)
      (defstruct b (x) transparent: #t) ;; transparent implies equal
      (check (equal? (b 4) (b 4)) => #t)
      (check (equal? (b 4) (b 5)) => #f)
      (defstruct c (x) equal: #t) ;; equal: objects are equal if same slots
      (check (equal? (c 4) (c 4)) => #t)
      (check (equal? (c 4) (c 5)) => #f)
      (defstruct d (x) equal: #f) ;; opaque: only eq? objects are equal!
      (let (x (d 4)) (check (equal? x x) => #t))
      (check (equal? (d 4) (d 4)) => #f)
      (check (equal? (d 4) (d 5)) => #f)
      (defstruct e (x y) equal: (x)) ;; equality comparison with a single slot
      (check (equal? (e 1 2) (e 1 2)) => #t)
      (check (equal? (e 1 2) (e 1 3)) => #t)
      (check (equal? (e 2 2) (e 1 2)) => #f)
      (defstruct f (x y) equal: ()) ;; not opaque, but no slots to compare: all objects are equal!
      (check (equal? (f 5 6) (f 7 8)) => #t)
      (defstruct g (x y) equal: #t) ;; equality comparison with two slots
      (check (equal? (g 1 2) (g 1 2)) => #t)
      (check (equal? (g 1 2) (g 1 3)) => #f)
      (check (equal? (g 2 2) (g 1 2)) => #f)
      ;; Now with inheritance
      (defstruct (D d) (y)) ;; inherit from opaque, remain opaque
      (check (equal? (D 1 2) (D 1 2)) => #f)
      (defstruct (DD d) (y) equal: #t) ;; inherit from opaque, add equality checks!
      (check (equal? (DD 0 1) (DD 0 1)) => #t)
      (check (equal? (DD 0 2) (DD 1 2)) => #t)
      (check (equal? (DD 0 2) (DD 0 3)) => #f)
      (check (equal? (DD 0 2) (DD 1 3)) => #f)
      (defstruct (DDD d) () equal: #t) ;; inherit from opaque, become equal(!)
      (check (equal? (DDD 1) (DDD 2)) => #t)
      (defstruct (C c) (y)) ;; inherit from equal, remain equal
      (check (equal? (C 1 2) (C 1 2)) => #t)
      (check (equal? (C 1 2) (C 1 3)) => #f)
      (check (equal? (C 1 2) (C 0 2)) => #f)
      (defstruct (CC c) (y) equal: #f) ;; inherit from equal, add unequal field
      (check (equal? (CC 0 1) (CC 0 1)) => #t)
      (check (equal? (CC 0 2) (CC 1 2)) => #f)
      (check (equal? (CC 0 2) (CC 0 3)) => #t)
      (check (equal? (CC 0 2) (CC 1 3)) => #f))))
