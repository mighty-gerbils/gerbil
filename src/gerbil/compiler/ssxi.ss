;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Prelude for compiler ssxi modules
prelude: "../prelude/core"
package: gerbil/compiler
namespace: gxc

(import "base" "optimize-base"
        :gerbil/core)
(export #t ast-rules ast-case
        syntax with-syntax with-syntax*
        (import: :gerbil/core))

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
  ((_ type-id super-ids precedence-list slots fields constructor struct? final? methods)
   (make-!class 'type-id 'super-ids 'precedence-list 'slots 'fields 'constructor 'struct? 'final? 'methods)))

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

;; lambdas
(defrules @lambda ()
  ((_ arity inline: inline-rules)
   (make-!lambda 'lambda 'arity #f inline-rules 'inline-rules))
  ((recur primitive: arity)
   (recur primitive: arity #f))
  ((_ primitive: arity dispatch)
   (make-!primitive-lambda 'lambda 'arity 'dispatch))
  ((_ arity dispatch)
   (make-!lambda 'lambda 'arity 'dispatch))
  ((recur arity)
   (recur arity #f)))

(defrules @case-lambda ()
  ((_ primitive: (arity dispatch) ...)
   (make-!primitive-case-lambda 'case-lambda [(@lambda primitive: arity dispatch) ...]))
  ((_ (arity dispatch) ...)
   (make-!case-lambda 'case-lambda [(@lambda arity dispatch) ...])))

(defrules @kw-lambda ()
  ((_ tab dispatch)
   (make-!kw-lambda 'kw-lambda 'tab 'dispatch)))

(defrules @kw-lambda-dispatch ()
  ((_ keys main)
   (make-!kw-lambda-primary 'kw-lambda-dispatch 'keys 'main)))

(defrules declare-primitive ()
  ((_ prim unchecked: arity)
   (declare-type prim (@lambda arity)))
  ((_ prim unchecked: arity ...)
   (declare-type prim (@case-lambda (arity #f) ...)))
  ((_ prim arity)
   (declare-type prim (@lambda primitive: arity)))
    ((_ prim arity ...)
   (declare-type prim (@case-lambda primitive: (arity #f) ...))))

(defrules declare-primitive/unchecked ()
  ((_ prim arity)
   (declare-type prim (@lambda arity)))
  ((_ prim arity ...)
   (declare-type prim (@case-lambda (arity #f) ...))))

(defrules declare-primitive* ()
  ((_ (prim arity ...) ...)
   (begin
     (declare-primitive prim arity ...) ...)))

(defrules declare-primitive/unchecked* ()
  ((_ (prim arity ...) ...)
   (begin
     (declare-primitive/unchecked prim arity ...) ...)))
