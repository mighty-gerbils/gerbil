;;; -*- Gerbil -*-
;;; © vyzo
;;; gerbil core prelude: more syntactic sugar
;;;
prelude: :<root>
package: gerbil/core

(import "runtime" "sugar" "mop" "match"
        (phi: +1 "runtime" "expander" "sugar" "mop" "macro-object" "match")
        (phi: +2 "runtime"))
(export #t (phi: +1 #t))

(begin-syntax
  (defclass (setq-macro macro-object) ())
  (defclass (setf-macro macro-object) ())

  (def (syntax-local-setf-macro? stx)
    (and (identifier? stx)
         (setf-macro? (syntax-local-value stx false))))

  (def (syntax-local-setq-macro? stx)
    (and (identifier? stx)
         (setq-macro? (syntax-local-value stx false))))

  (def (expand-set! stx)
    (syntax-case stx ()
      ((_ (setf-id . _) expr)
       (syntax-local-setf-macro? #'setfid)
       (core-apply-expander (syntax-local-e #'setf-id) stx))
      ((_ (getf arg ...) expr)
       (identifier? #'getf)
       (with-syntax ((setf (stx-identifier #'getf #'getf "-set!")))
         #'(setf arg ... expr)))
      ((_ setq-id . _)
       (syntax-local-setq-macro? #'setq-id)
       (core-apply-expander (syntax-local-e #'setq-id) stx))
      ((_ id expr)
       (identifier? #'id)
       #'(%#set! id expr)))))

(defsyntax (set! stx)
  (expand-set! stx))

(defsyntax (values-set! stx)
  (syntax-case stx ()
    ((_ tgt ... expr)
     (with-syntax ((($e ...) (gentemps #'(tgt ...))))
       #'(let-values ((($e ...) expr))
           (set! tgt $e) ...)))))

(defrules parameterize ()
  ((_ () body ...)
   (let () body ...))
  ((_ ((param value)) body ...)
   (call-with-parameters (lambda () body ...) param value))
  ((recur ((param value) rest ...) body ...)
   (call-with-parameters
    (lambda () (recur (rest ...) body ...))
    param value)))

(defrules let/cc ()
  ((_ id body ...)
   (identifier? #'id)
   (call/cc (lambda (id) body ...))))

(defrules unwind-protect ()
  ((_ body postlude rest ...)
   (with-unwind-protect
    (lambda () body)
    (lambda () postlude rest ...))))

(defrules do ()
  ((_ ((var init step ...) ...)
      (test fini ...)
      body ...)
   (stx-andmap identifier? #'(var ...))
   (let $loop ((var init) ...)
     (if test
       (begin #!void fini ...)
       (let () body ... ($loop (begin var step ...) ...))))))

(defrules do-while ()
  ((_ ((var init step ...) ...)
      (test fini ...)
      body ...)
   (stx-andmap identifier? #'(var ...))
   (let $loop ((var init) ...)
     body ...
     (if test
       ($loop (begin var step ...) ...)
       (begin #!void fini ...)))))

(defrule (while test body ...)
  (let lp ()
    (when test
      body ...
      (lp))))

(defrule (until test body ...)
  (let lp ()
    (unless test
      body ...
      (lp))))

(defrules catch ())
(defrules finally ())

(defsyntax (try stx)
  (def (generate-thunk body)
    (if (null? body)
      (raise-syntax-error #f "Bad syntax; missing body" stx)
      (with-syntax (((e ...) (reverse body)))
        #'(lambda () e ...))))

  (def (generate-fini thunk fini)
    (with-syntax ((thunk thunk)
                  ((e ...) fini))
      #'(with-unwind-protect thunk (lambda () e ...))))

  (def (generate-catch handlers thunk)
    (with-syntax (($e (genident)))
      (let lp ((rest handlers) (clauses []))
        (match rest
          ([hd . rest]
           (syntax-case hd (=>)
             ((pred => K)
              (lp rest (cons #'(((? pred) $e) => K)
                             clauses)))
             (((pred var) body ...)
              (identifier? #'var)
              (lp rest (cons #'(((? pred) $e) (let ((var $e)) body ...))
                             clauses)))
             (((var) body ...)
              (identifier? #'var)
              (lp rest (cons #'(#t (let ((var $e)) body ...))
                             clauses)))
             ((us body ...)
              (underscore? #'us)
              (lp rest (cons #'(#t (begin body ...))
                             clauses)))))
          (else
           (with-syntax (((clause ...) clauses)
                         (thunk thunk))
             #'(with-catch
                (lambda ($e) (cond clause ... (else (raise $e))))
                thunk)))))))

  (syntax-case stx ()
    ((_ e ...)
     (let lp ((rest #'(e ...)) (body []))
       (syntax-case rest ()
         ((hd . rest)
          (syntax-case #'hd (catch finally)
            ((finally fini ...)
             (if (stx-null? #'rest)
               (generate-fini (generate-thunk body) #'(fini ...))
               (raise-syntax-error #f "Misplaced finally clause" stx)))
            ((catch handler ...)
             (let lp ((rest #'rest) (handlers [#'(handler ...)]))
               (syntax-case rest (catch finally)
                 (((catch handler ...) . rest)
                  (lp #'rest [#'(handler ...) . handlers]))
                 (((finally fini ...))
                  (with-syntax ((body (generate-catch handlers (generate-thunk body))))
                    (generate-fini #'(lambda () body) #'(fini ...))))
                 (()
                  (generate-catch handlers (generate-thunk body))))))
            (_ (lp #'rest (cons #'hd body)))))
         (() ; no clauses, just a begin
          (cons 'begin (reverse body))))))))

(defrule (hash (key val) ...)
  (~hash-table make-hash-table (key val) ...))

(defrule (hash-eq (key val) ...)
  (~hash-table make-hash-table-eq (key val) ...))

(defrule (hash-eqv (key val) ...)
  (~hash-table make-hash-table-eqv (key val) ...))

(defsyntax (~hash-table stx)
  (syntax-case stx ()
    ((_ make-ht entry ...)
     (with-syntax* ((size (stx-length #'(entry ...)))
                    (((key val) ...) #'(entry ...)))
       #'(let (ht (make-ht size: size))
           (hash-put! ht `key val) ...
           ht)))))

(defsyntax (@bytes stx)
  (syntax-case stx ()
    ((_ str)
     (stx-string? #'str)
     (with-syntax ((e (string->bytes (stx-e #'str))))
       #'(quote e)))))

(defsyntax (eval-when-compile stx)
  (syntax-case stx ()
    ((_ expr)
     (begin
       (when (current-expander-compiling?)
         (eval-syntax #'expr))
       #'(void)))))
