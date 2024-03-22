;; -*- Gerbil -*-
;;; © vyzo
;;; prelude for hand-written .ssi's
(export begin module import export defruntime defalias load-module quote)

(defsyntax (defruntime stx)
  (syntax-case stx ()
    ((_ id ...)
     (identifier-list? #'(id ...))
     (let (ns (module-context-ns (current-expander-context)))
       (with-syntax (((bind-id ...)
                      (stx-map (lambda (id)
                                 (syntax-local-introduce
                                  (make-symbol ns "#" (stx-e id))))
                               #'(id ...))))
         #'(begin
             (%#define-runtime id bind-id)
             ...))))))
