;;; -*- Gerbil -*-
;;; © vyzo
;;; gerbil core prelude: more syntactic sugar
;;;
prelude: :<root>
package: gerbil/core

(import "runtime" "expander" "sugar" "more-sugar"
        (phi: +1 "runtime" "expander" "sugar"))
(export #t)

(defrules identifier-rules ()
  ((_ . body)
   (make-setq-macro
    macro: (syntax-rules . body))))

(defsyntax (with-identifiers stx)
  (syntax-case stx ()
    ((_ (clause ...) body ...)
     (with-syntax (((clause ...)
                    (map
                     (lambda (clause)
                       (syntax-case clause (quote)
                         ((fresh-id (quote local-id))
                          (and (identifier? #'fresh-id)
                               (identifier? #'local-id))
                          #'(fresh-id (syntax-local-temp 'local-id)))
                         ((fresh-id ctx-id components ...)
                          (identifier? #'fresh-id)
                          #'(fresh-id (stx-identifier ctx-id components ...)))))
                     #'(clause ...))))
       #'(with-syntax* (clause ...)
           body ...)))))

(defrule (with-identifier (fresh-id components ...) body ...)
  (identifier? #'fresh-id)
  (with-identifiers ((fresh-id components ...))
    body ...))

;; TODO Not Implemented Yet -- barf
(defrules quasisyntax ())
