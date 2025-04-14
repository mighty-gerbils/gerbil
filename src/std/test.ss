;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Unit testing support

(import :gerbil/gambit
        :std/error
        :std/misc/list
        :std/sugar
        :std/format)
(export
  test-suite test-case
  check checkf
  check-eq? check-not-eq?
  check-eqv? check-not-eqv?
  check-equal? check-not-equal?
  check-output check-predicate check-exception
  !check-fail? !check-fail-e
  run-tests!
  run-test-suite!
  set-test-verbose!
  test-verbose?
  set-test-quiet!
  test-quiet?
  test-begin!
  test-result
  test-report-summary!)

(defstruct !check-exception ())
(defstruct (!check-fail !check-exception) (e value expected loc))
(defstruct (!check-error !check-exception) (exn check loc))
(defstruct !test-suite (desc thunk tests error))
(defstruct !test-case (desc checks fail error))

(defmethod {display-exception !check-error}
  (lambda (self port)
    (with ((!check-error exn check loc) self)
      (fprintf port "~a at ~a: " check loc)
      (display-exception exn port))))

;; this is only necessary for stray checks outside a test-case
(defmethod {display-exception !check-fail}
  (lambda (self port)
    (with ((!check-fail check value expected loc) self)
      (fprintf port "check ~a at ~a FAILED: ~s [expected: ~s]~n"
               check loc value expected))))

(def *test-verbose* #t)
(def (set-test-verbose! val)
  (set! *test-verbose* val))
(def (test-verbose?) *test-verbose*)

(def (verbose fmt . args)
  (when *test-verbose*
    (apply printf fmt args)))

(def *test-quiet* #f)
(def (set-test-quiet! val)
  (set! *test-quiet* val))
(def (test-quiet?) *test-quiet*)

(defrules test-suite ()
  ((_ desc body body-rest ...)
   (stx-string? #'desc)
   (make-test-suite desc (lambda () body body-rest ...))))

(defrule (test-case desc body body-rest ...)
   (run-test-case! desc (lambda () body body-rest ...)))

(defrules check (=> ?)
  ((_ expr => value)
   (check-equal? expr value))
  ((_ expr => value :: eqf)
   (checkf eqf expr value))
  ((_ expr ? pred)
   (check-predicate expr (? pred)))
  ((_ eqf expr value)
   (checkf eqf expr value)))

(defrule (print-check-e expr eqv value)
  (verbose "... check ~a is ~a to ~s~n" 'expr 'eqv value))

(defrule (checkf eqf expr value)
  (let (val value)
    (print-check-e expr eqf val)
    (test-check-e '(check eqf expr value) eqf (lambda () expr) val
                  (location expr))))

(defrule (check-eq? expr value)
  (checkf eq? expr value))

(defrule (check-not-eq? expr value)
  (checkf not-eq? expr value))

(def (not-eq? x y)
  (not (eq? x y)))

(defrule (check-eqv? expr value)
  (checkf eqv? expr value))

(defrule (check-not-eqv? expr value)
  (checkf not-eqv? expr value))

(def (not-eqv? x y)
  (not (eqv? x y)))

(defrule (check-equal? expr value)
  (let (val value)
    (print-check-e expr equal? val)
    (test-check-e '(check equal? expr value) equal-values? (lambda () expr) val
                  (location expr))))

(defrule (check-not-equal? expr value)
  (let (val value)
    (print-check-e expr equal? value)
    (test-check-e '(check not-equal? expr value) not-equal-values? (lambda () expr) val
                  (location expr))))

(def (equal-values? obj-a obj-b)
  (if (##values? obj-a)
    (and (##values? obj-b)
         (equal? (##values->list obj-a)
                 (##values->list obj-b)))
    (equal? obj-a obj-b)))

(def (not-equal-values? x y)
  (not (equal-values? x y)))

(defrule (check-output expr value)
  (let (val value)
    (verbose "... check ~a outputs ~s~n" 'expr val)
    (test-check-output '(check-output expr value) (lambda () expr) value
                       (location expr))))

(defrule (check-predicate expr pred)
  (begin
    (verbose "... check ~a is ~a~n" 'expr 'pred)
    (test-check-predicate '(check-predicate expr pred) (lambda () expr) pred
                          (location expr))))

(defrule (check-exception expr exn-pred)
  (begin
    (verbose "... check ~a raises ~a~n" 'expr 'exn-pred)
    (test-check-exception '(check-exception expr exn-pred) (lambda () expr) exn-pred
                          (location expr))))

(defsyntax (location stx)
  (syntax-case stx ()
    ((_ expr)
     (with-syntax ((loc
                    (cond
                     ((stx-source #'expr)
                      => (lambda (loc)
                           (call-with-output-string "" (cut ##display-locat loc #t <>))))
                     (else '?))))
       #'(quote loc)))))

(def (with-check-error thunk what loc)
  (try
   (with-stack-trace thunk)
   (catch (e)
     (raise (make-!check-error e what loc)))))

(def current-test-case
  (make-parameter #f))
(def current-test-suite
  (make-parameter #f))
(def *tests* [])

(def (make-test-suite desc thunk)
  (make-!test-suite desc thunk [] #f))

(def (run-tests! suite . more)
  (test-begin!)
  (foldl (lambda (s r) (and (run-test-suite! s) r)) #t [suite . more]))

(def (test-report-summary!)
  (let (tests (reverse *tests*))
    (unless (null? tests)
      (eprintf "--- Test Summary\n")
      (for-each test-suite-summary! tests)
      (eprintf "~a~n" (test-result)))))

(def (test-result)
  (let lp ((rest *tests*))
    (match rest
      ([suite . rest]
       (if (or (!test-suite-error suite)
               (ormap (? (or !test-case-fail !test-case-error))
                      (!test-suite-tests suite)))
         'FAILURE
         (lp rest)))
      (else 'OK))))

(def (test-suite-summary! suite)
  (def (print-failed tc)
    (cond
     ((!test-case-fail tc)
      => (lambda (fail)
           (eprintf "~a: Check FAILED ~a at ~a~n"
                    (!test-case-desc tc)
                    (!check-fail-e fail)
                    (!check-fail-loc fail))))
     ((!test-case-error tc)
      => (lambda (exn)
           (eprintf "~a: ERROR " (!test-case-desc tc))
           (display-exception exn (current-error-port))))))

  (let (tests (!test-suite-tests suite))
    (cond
     ((!test-suite-error suite)
      => (lambda (exn)
           (eprintf "~a: FAILED~n" (!test-suite-desc suite))
           (eprintf "~a: ERROR " (!test-suite-desc suite))
           (display-exception exn (current-error-port))))
     ((ormap (? (or !test-case-fail !test-case-error))
               tests)
      (eprintf "~a: FAILED~n" (!test-suite-desc suite))
      (for-each print-failed tests))
     (else
      (eprintf "~a: OK~n" (!test-suite-desc suite))))))

(def (test-begin!)
  (set! *tests* []))

(def (test-add-test! suite)
  (push! suite *tests*))

(def (with-stack-trace thunk)
  (with-exception-handler
   (let (E (current-exception-handler))
     (lambda (exn)
       (##continuation-capture
        (lambda (cont)
          (unless (!check-exception? exn)
            (dump-stack-trace! cont exn (current-error-port)))
          (E exn)))))
   thunk))

(def (run-test-suite! suite)
  (test-suite-begin! suite)
  (try
   (parameterize ((current-test-suite suite))
     (with-stack-trace (!test-suite-thunk suite)))
   (catch (e)
     (set! (!test-suite-error suite) e)))
   (test-suite-end! suite))

(def (test-suite-begin! suite)
  (set! (!test-suite-tests suite) [])
  (test-add-test! suite)
  (eprintf "Test suite: ~a~n" (!test-suite-desc suite)))

(def (test-suite-end! suite)
  (if (or (!test-suite-error suite)
          (find (? (or !test-case-fail !test-case-error))
                (!test-suite-tests suite)))
    (begin (eprintf "*** Test FAILED~n") #f)
    (begin (eprintf "... All tests OK~n") #t)))

(def (test-suite-add-test! suite tc)
  (set! (!test-suite-tests suite)
    (cons tc (!test-suite-tests suite))))

(def (run-test-case! desc thunk)
  (let (tc (make-!test-case desc 0 #f #f))
    (test-case-begin! tc)
    (try
     (parameterize ((current-test-case tc))
       (with-stack-trace thunk))
     (catch (!check-fail? e)
       (set! (!test-case-fail tc) e))
     (catch (e)
       (set! (!test-case-error tc) e)))
    (when *test-verbose*
      (force-output))
    (test-case-end! tc)))

(def (test-case-begin! tc)
  (eprintf "Test case: ~a~n" (!test-case-desc tc))
  (cond
   ((current-test-suite)
    => (cut test-suite-add-test! <> tc))))

(def (test-case-end! tc)
  (cond
   ((!test-case-fail tc)
    => (lambda (fail)
         (eprintf "*** FAILED: ~a at ~a; value: ~s; expected: ~s~n"
                  (!check-fail-e fail)
                  (!check-fail-loc fail)
                  (!check-fail-value fail)
                  (!check-fail-expected fail))))
   ((!test-case-error tc)
    => (lambda (e)
         (eprintf "*** ERROR: ")
         (display-exception e (current-error-port))))
   (else
    (eprintf "... ~a checks OK~n" (!test-case-checks tc)))))

(def (test-case-add-check! tc)
  (when tc
    (set! (!test-case-checks tc)
      (fx1+ (!test-case-checks tc)))))

(def (test-check-e what eqf thunk value loc)
  (test-case-add-check! (current-test-case))
  (let (val (with-check-error thunk what loc))
    (unless (eqf val value)
      (raise (make-!check-fail what val value loc)))))

(def (test-check-output what thunk value loc)
  (test-case-add-check! (current-test-case))
  (let (val (with-output-to-string [] (cut with-check-error thunk what loc)))
    (unless (equal? val value)
      (raise (make-!check-fail what val value loc)))))

(def (test-check-predicate what thunk pred loc)
  (test-case-add-check! (current-test-case))
  (let (val (with-check-error thunk what loc))
    (unless (pred val)
      (raise (make-!check-fail what val "(predicate check)" loc)))))

(def (test-check-exception what thunk pred loc)
  (test-case-add-check! (current-test-case))
  (let/cc success
    (let/cc fail-to-throw
      (let ((val (with-catch values (lambda () (thunk) (fail-to-throw)))))
        (if (pred val)
          (success)
          (raise (make-!check-fail what val "(exception check)" loc)))))
    (raise (make-!check-fail what "(failed to throw an exception)" "(exception check)" loc))))
