;; -*- Gerbil -*-
;;; © vyzo
;;;; Testing metaclass support
(import :std/test
        :std/metaclass)
(export metaclass-test)

(defstruct (dyn class) ())

(defmethod {instance-init! dyn}
  (lambda (self obj . args)
    (apply class-instance-init! obj args)))

(defmethod {direct-method-ref dyn}
  (lambda (self object id)
    (alet (offset (class-slot-offset self id))
      (def (slot-method)
        (lambda (obj . args)
          (let (method (##unchecked-structure-ref obj offset #f id))
            (if (procedure? method)
              (apply method obj args)
              (error "slot method is not a procedure" object: obj slot: id value: method)))))
      (if object
        (let (slot-value (##unchecked-structure-ref object offset #f id))
          (cond
           ((procedure? slot-value)
            slot-value)
           ((not slot-value)
            (slot-method))
           (else
            (error "slot method is not a procedure" object: object slot: id value: slot-value))))
        (slot-method)))))

(def metaclass-test
  (test-suite "metaclass"
    (test-case "pure metaclass"
      (defclass A (x y) metaclass: dyn::t)
      (def a (A))
      (set! (A-x a)
        (lambda (obj . args) 'x))
      (set! (A-y a)
        (lambda (obj . args) 'y))
      (check {a.x} => 'x)
      (check {a.y} => 'y))
    (test-case "mixin metaclass"
      (defclass A (x y) metaclass: dyn::t)
      (defclass (B A) ())
      (defmethod {c B} (lambda (self . args) 'z))
      (def b (B))
      (set! (B-x b)
        (lambda (obj . args) 'x))
      (set! (B-y b)
        (lambda (obj . args) 'y))
      (check {b.x} => 'x)
      (check {b.y} => 'y)
      (check {b.z} => 'z)
      )))
