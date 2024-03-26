;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Prelude for compiler ssxi modules
prelude: "../core"
package: gerbil/compiler
namespace: gxc

(import "../core"
        "../core/expander"
        "../expander"
        "base" "optimize-base")
(export #t ast-rules ast-case
        syntax with-syntax with-syntax*
        (import: "../core" "../core/expander" "../expander"))

(defrules declare-type ()
  ((_ symbol type-expr)
   (identifier? #'symbol)
   (optimizer-declare-type! 'symbol type-expr)))

(defrules declare-type* ()
  ((_ (symbol type) ...)
   (begin (declare-type symbol type) ...)))

(defrules declare-method ()
  ((_ type-t method symbol rebind?)
   (and (identifier? #'type-t)
        (identifier? #'method)
        (identifier? #'symbol))
   (optimizer-declare-method! 'type-t 'method 'symbol rebind?))
  ((recur type-t method symbol)
   (recur type-t method symbol rebind?)))

(defrules declare-method* ()
  ((_ (type-t method symbol) ...)
   (begin (declare-method type-t method symbol) ...)))

(defrules declare-methods ()
  ((_ type-t (method symbol) ...)
   (begin (declare-method type-t method symbol) ...)))

;; aliases
(defrules @alias ()
  ((_ alias-id)
   (make-!alias 'alias-id)))

;; MOP
(defrules @class ()
  ((_ type-id super-ids precedence-list slots fields constructor struct? final? system? metaclass methods)
   (make-!class 'type-id 'super-ids 'precedence-list 'slots 'fields 'constructor struct? final? system? 'metaclass 'methods)))

(defrules @predicate ()
  ((_ type-id)
   (make-!predicate 'type-id)))

(defrules @constructor ()
  ((_ type-id)
   (make-!constructor 'type-id)))

(defrules @accessor ()
  ((_ type-id slot checked?)
   (make-!accessor 'type-id 'slot checked?)))

(defrules @mutator ()
  ((_ type-id slot checked?)
   (make-!mutator 'type-id 'slot checked?)))

;; interfaces
(defrules @interface ()
  ((_ type-id methods)
   (make-!interface 'type-id 'methods)))

;; lambdas
(defrules @lambda ()
  ((_ arity dispatch)
   (make-!lambda 'arity 'dispatch))
  ((_ arity dispatch signature: signature)
   (make-!lambda 'arity 'dispatch signature: (apply make-!signature 'signature)))
  ((recur arity)
   (recur arity #f))
  ((recur arity signature: signature)
   (recur arity #f signature: signature)))

(defrules @case-lambda ()
  ((_ (arity dispatch) ...)
   (make-!case-lambda [(@lambda arity dispatch) ...]))
  ((_ (arity dispatch signature: signature) ...)
   (make-!case-lambda [(@lambda arity dispatch signature: signature) ...])))

(defrules @kw-lambda ()
  ((_ tab dispatch)
   (make-!kw-lambda 'tab 'dispatch)))

(defrules @kw-lambda-dispatch ()
  ((_ keys main)
   (make-!kw-lambda-primary 'keys 'main)))

(defrules declare-inline-rules! ()
  ((_ (proc rule) ...)
   (begin (declare-inline-rule! proc rule) ...)))

(defrules declare-inline-rule! ()
  ((_ proc rule)
   (let (type (optimizer-lookup-type 'proc))
     (if (!lambda? type)
       (set! (!lambda-inline type) rule)
       (raise-syntax-error #f "cannot declare inline rule for non lambda procedure" 'proc type)))))

(defrules declare-primitive-predicates ()
  ((_ (proc klass) ...)
   (begin (declare-primitive-predicate proc klass) ...)))

(defrules declare-primitive-procedures ()
  ((_ (id sig ...) ...)
   (begin (declare-primitive-procedure id sig ...) ...)))

(defrules declare-primitive-procedure (@list)
  ((_ id (@list sig ...))
   (declare-primitive-case-lambda id sig ...))
  ((_ id sig ...)
   (declare-primitive-lambda id sig ...)))

(begin-syntax
  (def (verify-procedure! ctx id)
    (let (proc (with-catch false (cut eval-syntax id)))
      (unless (procedure? proc)
        (raise-syntax-error #f "unknown procedure" ctx id))))

  (def (verify-class! ctx id)
    (let (klass (with-catch false (cut eval-syntax id)))
      (unless (class-type? klass)
        (raise-syntax-error #f "unknown class" ctx id))))

  (def (parse-signature ctx proc sig)
    (def (signature-arity args)
      (let loop ((rest args) (count 0))
        (match rest
          ([_ . rest]
           (loop rest (fx1+ count)))
          ([] count)
          (_ [count]))))

    (def (make-signature args return effect unchecked)
      (stx-for-each (cut verify-class! ctx <>) args)
      (verify-class! ctx return)
      (when unchecked
        (verify-procedure! ctx unchecked))
      (let (arity (signature-arity (stx-map stx-e args)))
        (when effect
          (let (effect (syntax->datum effect))
            (unless (and (list? effect) (andmap symbol? effect))
              (raise-syntax-error #f "bad effect" ctx proc effect))))
        [arity
         (with-syntax ((args args) (return return) (effect effect) (unchecked unchecked))
           #'(make-!signature arguments: args
                              return: return
                              effect: effect
                              unchecked: unchecked))]))

    (verify-procedure! ctx proc)
    (syntax-case sig ()
      ((args return)
       (make-signature #'args #'return #f #f))
      ((args return effect: effect)
       (make-signature #'args #'return #'effect #f))
      ((args return effect: effect unchecked:)
       (make-signature #'args #'return #'effect (make-symbol "##" (stx-e #'proc))))
      ((args return effect: effect unchecked: unchecked-proc)
       (make-signature #'args #'return #f #'unchecked-proc))
      ((args return unchecked:)
       (make-signature #'args #'return #f (make-symbol "##" (stx-e #'proc))))
      ((args return unchecked: unchecked-proc)
       (make-signature #'args #'return #f #'unchecked-proc)))))

(defsyntax (declare-primitive-predicate stx)
  (syntax-case stx ()
    ((_ proc klass)
     (and (identifier? #'proc) (identifier? #'klass))
     (begin
       (verify-procedure! stx #'proc)
       (verify-class! stx #'klass)
       #'(declare-type proc (make-!primitive-predicate klass))))))

(defsyntax (declare-primitive-lambda stx)
  (syntax-case stx ()
    ((proc signature ...)
     (identifier? #'proc)
     (begin
       (verify-procedure! #'proc)
       (with-syntax (((arity sig) (parse-signature stx #'proc #'(signature ...))))
         #'(declare-type proc (make-!primitive-lambda 'arity #f signature: sig)))))))

(defsyntax (declare-primitive-case-lambda stx)
  (syntax-case stx ()
    ((_ proc case-signature ...)
     (identifier? #'proc)
     (begin
       (verify-procedure! #'proc)
       (with-syntax ((((arity sig) ...)
                      (map (cut parse-signature stx #'proc <>) #'(case-signature ...))))
         #'(declare-type proc (make-!primitive-case-lambda [(make-!primitive-lambda 'arity #f signature: 'sig) ...])))))))
