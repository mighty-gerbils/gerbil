;;; -*- Gerbil -*-
;;; © vyzo
;;; unit testing support macros
(import ./base)
(export #t)

(defrules test-suite ()
  ((_ desc body rest ...)
   (stx-string? #'desc)
   (TestSuite desc (lambda () body rest ...))))

(defrule (deftest-suite name desc body rest ...)
  (stx-string? #'desc)
  (begin
    (def name (test-suite desc body rest ...))
    (export name)))

(defrules test-case ()
  ((_ desc body rest ...)
   (stx-string? #'desc)
   (test-case-add!
    (TestCase desc (lambda () body rest ...)))))

(defrules check (=> ?)
  ((_ expr => value)
   (do-check-value expr expr value equal-values?))
  ((_ expr => value :: eqf)
   (do-check-value expr expr value eqf))
  ((_  expr ? pred)
   (do-check-predicate expr expr (? pred)))
  ((_ eqf expr value)
   (do-check-value expr expr value eqf)))

(defrule (checkf eqf expr value)
  (do-check-value expr expr value eqf))

(defrule (check-eq? expr value)
  (do-check-value expr expr value eq?))

(defrule (check-eqv? expr value)
  (do-check-value expr expr value eqv?))

(defrule (check-equal? expr value)
  (do-check-value expr expr value equal-values?))

(defrule (binary-not =?)
  (lambda (x y) (not (=? x y))))

(defrule (check-not-eq? expr value)
  (do-check-value expr expr value (binary-not eq?)))

(defrule (check-not-eqv? expr value)
  (do-check-value expr expr value (binary-not eqv?)))

(defrule (check-not-equal? expr value)
  (do-check-value expr expr value (binary-not equal-values?)))

(defrule (check-output expr output)
  (do-check-output expr expr output))

(defrule (check-predicate expr pred)
  (do-check-predicate expr expr pred))

(defrule (check-exception expr exn-pred)
  (do-check-exception expr expr exn-pred))

(defrule (do-check-value ctx expr value =?)
  (do-check! ctx expr
    (let* ((expected value)
           (result   expr))
      (unless (=? expected result)
        (raise-test-error ctx "result does not match expectation"
                          test: 'expr
                          result: result
                          expectation: expected)))))

(defrule (do-check-predicate ctx expr pred)
  (do-check! ctx expr
    (let (result expr)
      (unless (pred result)
        (raise-test-error ctx "result does not satisfy expectation"
                          test: 'expr
                          result: result
                          expectation: '(? pred))))))

(defrule (do-check-output ctx expr output)
  (do-check! ctx expr
    (let ((expected-output (: output :string))
          (capture (open-output-string)))
      (parameterize ((current-output-port capture))
        expr)
      (let (captured-output (get-output-string capture))
        (unless (string=? captured-output expected-output)
          (raise-test-error ctx "output does not match expectation"
                            test: 'expr
                            result: captured-output
                            expectation: expected-output))))))

(defrule (do-check-exception ctx expr exn-pred)
  (do-check! ctx expr
    (try
     (let (result expr)
       (raise-test-error ctx "expected exception"
                         test: 'expr
                         result: result
                         exceptation: '(catch exn-pred)))
     (catch (e)
       (unless (exn-pred e)
         (raise-test-error ctx "exception does not match expectation"
                           test: 'expr
                           result: e
                           expectation: 'exn-pred))))))

(defsyntax-case do-check! ()
  ((_ ctx expr body rest ...)
   (with-syntax
       ((where
         (cond
          ((or (stx-source #'ctx)
               (stx-source stx))
           => (lambda (locat)
                (call-with-output-string "" (cut ##display-locat locat #t <>))))
          (else
           (expander-context-id (core-context-top))))))
     #'(test-check! 'expr 'where (lambda () body rest ...)))))

(def (equal-values? a b)
  (if (##values? a)
    (and (##values? b)
         (equal? (##values->list a)
                 (##values->list b)))
    (equal? a b)))

(def (verbose . args)
  (when (fx>= VERBOSITY-CHATTY (current-test-verbosity))
    (apply displayln args)
    (force-output)))
