;;; -*- Gerbil -*-
;;; © vyzo
;;; gerbil core prelude: more syntactic sugar
;;;
prelude: :<root>
package: gerbil/core

(import "expander" "sugar" "more-sugar"
        (phi: +1 "runtime"))
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
                          (and (identifier? #'fresh-id)
                               (identifier? #'ctx-id))
                          (fresh-id (stx-identifier ctx-id components ...)))))
                     #'(clause ...))))
       #'(with-syntax* (clause ...)
           body ...)))))

(defrule (with-identifier (fresh-id components ...) body ...)
  (identifier? #'fresh-id)
  (with-identifiers ((fresh-id components ...))
    body ...))

(defsyntax (defsyntax-case stx)
  (syntax-case stx ()
    ((_ name (lit ...) clause ...)
     (with-syntax (($stx (syntax-local-introduce 'stx)))
       #'(defsyntax name
           (lambda ($stx)
             (syntax-case $stx (lit ...)
               clause ...)))))))

;; TODO Not Implemented Yet -- barf
(defrules quasisyntax ())
