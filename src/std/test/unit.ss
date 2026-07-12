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

(defrules check (=> ? =>!)
  ((_ expr => value)
   (do-check-value expr expr value equal-values?))
  ((_ expr => value :: eqf)
   (do-check-value expr expr value eqf))
  ((_  expr ? pred)
   (do-check-predicate expr expr (? pred)))
  ((_ expr =>! exn-pred)
   (do-check-exception expr expr exn-pred))
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
          (capture (open-output-u8vector)))
      (parameterize ((current-output-port capture))
        expr)
      (let (captured-output
	    (utf8->string
	     (get-output-u8vector capture)))
        (unless (string=? captured-output expected-output)
          (raise-test-error ctx "output does not match expectation"
                            test: 'expr
                            result: captured-output
                            expectation: expected-output))))))

(defrule (do-check-output-u8vector ctx expr output)
  (do-check! ctx expr
    (let ((expected-output (: output :u8vector))
          (capture (open-output-u8vector)))
      (parameterize ((current-output-port capture))
        expr)
      (let (captured-output
	    (get-output-u8vector capture))
        (unless (u8vector=? captured-output expected-output)
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
           (symbol->string (expander-context-id (core-context-top)))))))
     #'(test-check! 'expr where (lambda () body rest ...)))))

(defsyntax-case check-function ()
  ((c fun x ...)
   (let lp ((checks '()) (rargs '()) (xs #'(x ...)))
     (syntax-case xs (=> =>!)
       ((=> expected rest ...)
        (with-syntax (((args ...) (reverse rargs)))
          (lp (cons #'(check (fun args ...) => expected) checks) '() #'(rest ...))))
       ((=>! exn-pred rest ...)
        (with-syntax (((args ...) (reverse rargs)))
          (lp (cons #'(check-exception (fun args ...) exn-pred) checks) '() #'(rest ...))))
       ((=> =>!)
        (raise-syntax-error #f "missing result in check-function" #'(x ...)))
       ((a y ...)
        (lp checks (cons #'a rargs) #'(y ...)))
       (() (if (null? rargs)
             (with-syntax (((checks ...) (reverse checks)))
               #'(begin checks ...))
             (raise-syntax-error #f "dangling arguments in check-function" #'(x ...))))))))

(defsyntax-case check-codec ()
  ((c encoder decoder x ...)
   (let lp ((checks '()) (xs #'(x ...)))
     (syntax-case xs (=> =>! <= <=> !<=)
       ((a => b rest ...)
        (lp (cons #'(check (encode a) => b) checks) #'(rest ...)))
       ((a =>! exn-pred rest ...)
        (lp (cons #'(check-exception (encode a) exn-pred) checks) #'(rest ...)))
       ((a <=> b rest ...)
        (lp (cons* #'(check (decode b) => a) #'(check (encode a) => b) checks) #'(rest ...)))
       ((a <= b rest ...)
        (lp (cons #'(check (decode b) => a) checks) #'(rest ...)))
       ((exn-pred !<= b rest ...)
        (lp (cons #'(check-exception (decode b) exn-pred) checks) #'(rest ...)))
       (()
        (with-syntax ((checks (reverse checks)))
          #'(let ((encode encoder) (decode decoder)) . checks)))
       (rest
        (raise-syntax-error #f "bad arguments in check-codec" #'rest))))))

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
