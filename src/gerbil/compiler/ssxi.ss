;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Prelude for compiler ssxi modules
package: gerbil/compiler
namespace: gxc

(import :gerbil/compiler/base
        :gerbil/compiler/optimize)
(export #t ast-rules)

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
  ((_ type off)
   (make-!struct-getf 'type off)))

(defrules @struct-setf ()
  ((_ type off)
   (make-!struct-setf 'type off)))

(defrules @lambda ()
  ((_ arity inline: inline-rules)
   (make-!lambda 'lambda 'arity #f inline-rules))
  ((_ arity dispatch)
   (make-!lambda 'lambda 'arity 'dispatch))
  ((recur arity)
   (recur arity #f)))

(defrules @case-lambda ()
  ((_ (arity dispatch) ...)
   (make-!case-lambda 'case-lambda [(@lambda arity dispatch) ...])))
