;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Prelude for compiler ssxi modules
package: gerbil/compiler
namespace: gxc

(import :gerbil/compiler/optimize)
(export #t)

(defrules declare-type ()
  ((_ symbol type-expr)
   (identifier? #'symbol)
   (optimizer-declare-type! 'symbol type-expr)))

(defrules declare-type* ()
  ((_ (symbol type) ...)
   (begin (declare-type symbol type) ...)))

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
                  (fx+ xfields (!struct-type-fields super-type))))))
     (make-!struct-type 'type-id 'super fields xfields 'ctor 'plist))))

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


