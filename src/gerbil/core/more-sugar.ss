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

;; checked type cast
(defsyntax (: stx)
  (syntax-case stx ()
    ((_ expr type)
     (identifier? #'type)
     (let (meta (syntax-local-value #'type false))
       (cond
        ((not meta)
         (raise-syntax-error #f "unknown type" stx #'type))
        ((class-type-info? meta)
         (with-syntax ((klass (!class-type-descriptor meta))
                       (predicate (!class-type-predicate meta)))
           #'(begin-annotation (@type klass)
               (let (val expr)
                 (if (predicate val)
                   val
                   (error "bad cast" val klass))))))
        ((method-ref meta 'type-descriptor)
         => (lambda (type-descriptor)
              (cond
               ((method-ref meta 'type-cast)
                => (lambda (type-cast)
                     (with-syntax ((klass (type-descriptor meta))
                                   (cast-it (type-cast meta)))
                       #'(begin-annotation (@type klass)
                           (cast-it expr)))))
               ((method-ref meta 'type-predicate)
                => (lambda (type-predicate)
                     (with-syntax ((klass (type-descriptor meta))
                                   (predicate (type-predicate meta)))
                       #'(begin-annotation (@type klass)
                           (let (val expr)
                             (if (predicate val)
                               val
                               (error "bad cast" val klass)))))))
               (else
                (raise-syntax-error #f "type does not support casting" stx #'type)))))
        (else
         (raise-syntax-error #f "not a type" stx #'type)))))))

;; predicate contract
(defrules :~ (:-)
  ((_ expr predicate)
   (let (val expr)
     (if (predicate val)
       val
       (error "contract check failure" val 'predicate))))
  ((_ expr predicate :- type)
   (:- (:~ expr predicate) type)))

;; type assertion (unchecked cast)
(defsyntax (:- stx)
  (syntax-case stx ()
    ((_ expr type)
     (identifier? #'type)
     (let (meta (syntax-local-value #'type false))
       (cond
        ((not meta)
         (raise-syntax-error #f "unknown type" stx #'type))
        ((class-type-info? meta)
         (with-syntax ((klass (!class-type-descriptor meta)))
           #'(begin-annotation (@type klass) expr)))
        ((method-ref meta 'type-descriptor)
         => (lambda (type-descriptor)
              (with-syntax ((klass (type-descriptor meta)))
                #'(begin-annotation (@type klass) expr))))
        (else
         (raise-syntax-error #f "not a type" stx #'type)))))))

;; default value
(defrules := ())

(begin-syntax
  (defclass (setq-macro macro-object) ()
    id: gerbil.core#setq-macro::t)
  (defclass (setf-macro macro-object) ()
    id: gerbil.core#setf-macro::t)

  (def (syntax-local-setf-macro? stx)
    (and (identifier? stx)
         (setf-macro? (syntax-local-value stx false))))

  (def (syntax-local-setq-macro? stx)
    (and (identifier? stx)
         (setq-macro? (syntax-local-value stx false)))))

(defsyntax (set! stx)
  (syntax-case stx ()
    ((_ (setf-id . _) . _)
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
     #'(%#set! id expr))))

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