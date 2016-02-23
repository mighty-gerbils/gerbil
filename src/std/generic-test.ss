;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/generic unit-tests

(import :std/test
        :std/generic)
(export generic-runtime-test generic-macro-test)

(def generic-runtime-test
  (test-suite "test generics runtime support"
    (def my-generic (make-generic 'my-generic (lambda args #f)))
    (test-case "test default dispatch"
      (check (generic-dispatch my-generic 1 2) => #f))
    
    (generic-add-method! my-generic
                     (lambda (a b) (and (number? a) (number? b)))
                     (lambda (next-method a b) ['number+ a b])
                     '((number t) (number t)))
    (generic-add-method! my-generic
                     (lambda (a b) (and (string? a) (string? b)))
                     (lambda (next-method a b) ['string+ a b])
                     '((string t) (string t)))

    (test-case "test multimethod dispatch"
      (check (generic-dispatch my-generic 1 2) => '(number+ 1 2))
      (check (generic-dispatch my-generic "a" "b") => '(string+ "a" "b")))

    (generic-add-method! my-generic
                     (lambda (a b) (and (fixnum? a) (fixnum? b)))
                     (lambda (next-method a b) ['fixnum+ a b])
                     '((fixnum number t) (fixnum number t)))
    (test-case "test specialization"
      (check (generic-dispatch my-generic 1 2) => '(fixnum+ 1 2))
      (check (generic-dispatch my-generic 1.0 2.0) => '(number+ 1.0 2.0)))

    (defstruct A (x))
    (generic-add-method! my-generic
                         (lambda (a b) (and (A? a) (A? b)))
                         (lambda (next-method a b) ['A+ (A-x a) (A-x b)])
                         [A::t A::t])
    (test-case "test user type dispatch"
      (check (generic-dispatch my-generic (make-A 1) (make-A 2)) => '(A+ 1 2)))))


(def generic-macro-test
  (test-suite "test :std/generic library"
    (defgeneric my-add
      (lambda args #f))

    (test-case "test default dispatch"
      (check (my-add 1 2) => #f))

    (defmethod (my-add (a <number>) (b <number>))
      ['number+ a b])
    (defmethod (my-add (a <string>) (b <string>))
      ['string+ a b])

    (test-case "test multimethod dispatch"
      (check (my-add 1 2) => '(number+ 1 2))
      (check (my-add "a" "b") => '(string+ "a" "b")))

    (defmethod (my-add (a <fixnum>) (b <fixnum>))
      ['fixnum+ a b])

    (test-case "test specialization"
      (check (my-add 1 2) => '(fixnum+ 1 2))
      (check (my-add 1.0 2.0) => '(number+ 1.0 2.0)))

    (defstruct A (x))
    (defmethod (my-add (a A) (b A))
      ['A+ (A-x a) (A-x b)])

    (test-case "test user type dispatch"
      (check (my-add (make-A 1) (make-A 2)) => '(A+ 1 2)))))
