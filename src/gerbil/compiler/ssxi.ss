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
  ((_ arity inline: inline-rules)
   (make-!lambda 'lambda 'arity #f inline-rules '(@lambda arity inline: inline-rules)))
  ((recur primitive: arity)
   (recur primitive: arity #f))
  ((_ primitive: arity dispatch)
   (make-!primitive-lambda 'lambda 'arity 'dispatch))
  ((_ primitive: arity dispatch signature: signature )
   (apply make-!primitive-lambda 'lambda 'arity 'dispatch 'signature))
  ((_ arity dispatch)
   (make-!lambda 'lambda 'arity 'dispatch))
  ((_ arity dispatch signature: signature)
   (apply make-!lambda 'lambda 'arity 'dispatch signature))
  ((recur arity)
   (recur arity #f))
  ((recur arity signature: signature)
   (recur arity #f signature: signature)))

(defrules @case-lambda ()
  ((_ primitive: (arity dispatch) ...)
   (make-!primitive-case-lambda 'case-lambda [(@lambda primitive: arity dispatch) ...]))
  ((_ primitive: (arity dispatch signature: signature) ...)
   (make-!primitive-case-lambda 'case-lambda [(@lambda primitive: arity dispatch signature: signature) ...]))
  ((_ (arity dispatch) ...)
   (make-!case-lambda 'case-lambda [(@lambda arity dispatch) ...]))
  ((_ (arity dispatch signature: signature) ...)
   (make-!case-lambda 'case-lambda [(@lambda arity dispatch signature: signature) ...])))

(defrules @kw-lambda ()
  ((_ tab dispatch)
   (make-!kw-lambda 'kw-lambda 'tab 'dispatch)))

(defrules @kw-lambda-dispatch ()
  ((_ keys main)
   (make-!kw-lambda-primary 'kw-lambda-dispatch 'keys 'main)))

(defrules declare-iniline-rules! ()
  ((_ (proc rule) ...)
   (begin (declare-iniline-rule! proc rule) ...)))

(defrules declare-iniline-rule! ()
  ((_ proc rule)
   (let (type (optimizer-lookup-type 'proc))
     (if (!lambda? type)
       (set! (!lambda-inline type) rule)
       (error "cannot declare inline rule for non lambda procedure" 'proc type)))))

(defrules declare-primitive-predicates ()
  ((_ (proc klass) ...)
   (begin (declare-primitive-predicate proc klass) ...)))

(defrules declare-primitive-procedures ()
  ((_ (id sig ...) ...)
   (begin (declare-primitive-procedure id sig ...) ...)))

(defrules declare-primitive-procedure (@list)
  ((_ id (@list sig ...))
   (declare-primitive-case-lambda id (sig ...)))
  ((_ id sig ...)
   (declare-primitive-lambda id sig ...)))

(defsyntax (declare-primitive-predicate stx)
  XXX
  )

(defsyntax (declare-primitive-lambda stx)
  XXX
  )

(defsyntax (declare-primitive-case-lambda stx)
  XXX
  )
