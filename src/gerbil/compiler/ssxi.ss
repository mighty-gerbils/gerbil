;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Prelude for compiler ssxi modules
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
   (make-!class 'type-id 'super-ids 'precedence-lists 'slots 'fields 'constructor 'struct? 'final? 'methods)))

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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; TODO DEPRECATED remove after (re)boostrap
;; struct types
(defrules @struct-type ()
  ((_ type-id super fields ctor plist)
   (@make-struct-type type-id super fields ctor plist))
  ((recur type-id super fields)
   (recur type-id super fields #f #f))
  ((recur type-id super fields ctor)
   (recur type super fields ctor #f)))

(defrules @make-struct-type ()
  ((_ type-id #f fields ctor plist)
   (make-!struct-type 'type-id #f fields 0 'ctor 'plist))
  ((_ type-id super fields ctor plist)
   (let* ((super-type (optimizer-resolve-type 'super))
          (xfields
           (and super-type
                (alet (xfields (!struct-type-xfields super-type))
                  (fx+ xfields (!struct-type-fields super-type)))))
          (xtor
           (or 'ctor
               (if super-type
                 (!struct-type-ctor super-type)
                 #!void))))
     (make-!struct-type 'type-id 'super fields xfields xtor 'plist))))

(defrules @struct-pred ()
  ((_ type)
   (make-!struct-pred 'type)))

(defrules @struct-cons ()
  ((_ type)
   (make-!struct-cons 'type)))

(defrules @struct-getf ()
  ((_ type off unchecked?)
   (make-!struct-getf 'type off unchecked?))
  ((_ type off)
   (make-!struct-getf 'type off #f)))

(defrules @struct-setf ()
  ((_ type off unchecked?)
   (make-!struct-setf 'type off unchecked?))
  ((_ type off)
   (make-!struct-setf 'type off #f)))

;; class types
(defrules @class-type ()
  ((_ type-id super mixin slots xslots ctor plist)
   (make-!class-type 'type-id 'super 'mixin 'slots 'xslots 'ctor 'plist)))

(defrules @class-pred ()
  ((_ type)
   (make-!class-pred 'type)))

(defrules @class-cons ()
  ((_ type)
   (make-!class-cons 'type)))

(defrules @class-getf ()
  ((_ type slot unchecked?)
   (make-!class-getf 'type 'slot unchecked?))
  ((_ type slot)
   (make-!class-getf 'type 'slot #f)))

(defrules @class-setf ()
  ((_ type slot unchecked?)
   (make-!class-setf 'type 'slot unchecked?))
  ((_ type slot)
   (make-!class-setf 'type 'slot #f)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


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
