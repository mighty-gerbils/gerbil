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

(defsyntax (parameterize stx)
    (syntax-case stx ()
      ((_ () body ...)
       #'(let () body ...))
      ((_ ((param expr) ...) body ...)
       (with-syntax* ((thunk
                       (syntax/loc stx
                         (lambda () body ...)))
                      ((arg ...)
                       (foldr cons* []
                              (syntax->list #'(param ...))
                              (syntax->list #'(expr ...)))))
         #'(call-with-parameters thunk arg ...)))))

(defrules let/cc ()
  ((_ id body ...)
   (identifier? #'id)
   (call/cc (lambda (id) body ...))))

(defrules unwind-protect ()
    ((_ body postlude rest ...)
     (with-unwind-protect
      (lambda () body)
      (lambda () postlude rest ...))))

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