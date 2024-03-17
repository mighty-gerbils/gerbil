;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/generic unit-tests

(import :std/test
        :std/generic)
(export generic-test)

(def generic-test
  (test-suite "test :std/generic support"
    (def my-generic (make-generic 'my-generic (lambda args #f)))
    (test-case "test default dispatch"
      (check (generic-dispatch my-generic 1 2) => #f))

    (generic-bind! my-generic
                   [number::t number::t]
                   (lambda (a b) ['number+ a b]))
    (generic-bind! my-generic
                   [string::t string::t]
                   (lambda (a b) ['string+ a b]))

    (test-case "test multimethod dispatch"
      (check (generic-dispatch my-generic 1 2) => '(number+ 1 2))
      (check (generic-dispatch my-generic "a" "b") => '(string+ "a" "b")))

    (generic-bind! my-generic
                   [fixnum::t fixnum::t]
                   (lambda (a b) ['fixnum+ a b]))
    (test-case "test specialization"
      (check (generic-dispatch my-generic 1 2) => '(fixnum+ 1 2))
      (check (generic-dispatch my-generic 1.0 2.0) => '(number+ 1.0 2.0)))

    (defstruct A (x))
    (generic-bind! my-generic
                   [A::t A::t]
                   (lambda (a b) ['A+ (A-x a) (A-x b)]))
    (test-case "test user type dispatch"
      (check (generic-dispatch my-generic (make-A 1) (make-A 2)) => '(A+ 1 2)))

    ;; Test cases for macro support
    (defgeneric my-add
      (lambda args #f))

    (test-case "test default dispatch"
      (check (my-add 1 2) => #f))

    (defmethod (my-add (a :number) (b :number))
      ['number+ a b])
    (defmethod (my-add (a :string) (b :string))
      ['string+ a b])

    (test-case "test multimethod dispatch"
      (check (my-add 1 2) => '(number+ 1 2))
      (check (my-add "a" "b") => '(string+ "a" "b")))

    (defmethod (my-add (a :fixnum) (b :fixnum))
      ['fixnum+ a b])

    (test-case "test specialization"
      (check (my-add 1 2) => '(fixnum+ 1 2))
      (check (my-add 1.0 2.0) => '(number+ 1.0 2.0)))

    (defmethod (my-add (a A) (b A))
      ['A+ (A-x a) (A-x b)])

    (test-case "test user type dispatch"
      (check (my-add (make-A 1) (make-A 2)) => '(A+ 1 2)))))
