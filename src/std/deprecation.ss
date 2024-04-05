;;; -*- Gerbil -*-
;;; © vyzo
;;; package deprecation warnings

(export #t)

(defsyntax (package-deprecation-warning! stx)
  (syntax-case stx ()
    ((_)
     (let* ((package (expander-context-id (current-expander-context)))
            (msg (call-with-output-string ""
                   (lambda (out)
                     (display "*** WARNING package :" out)
                     (display package out)
                     (display " is DEPRECATED and will be removed in the future" out)
                     (newline out)))))
       (with-syntax ((msg msg))
         #'(begin-syntax (display msg (current-error-port))))))))

(defsyntax (module-deprecation-warning! stx)
  (syntax-case stx ()
    ((_)
     (let* ((package (expander-context-id (current-expander-context)))
            (msg (call-with-output-string ""
                   (lambda (out)
                     (display "*** WARNING module :" out)
                     (display package out)
                     (display " is DEPRECATED and will be removed in the future" out)
                     (newline out)))))
       (with-syntax ((msg msg))
         #'(begin-syntax (display msg (current-error-port))))))))
