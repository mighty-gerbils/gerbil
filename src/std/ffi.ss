;;; -*- Gerbil -*-
;;; © vyzo
;;; ffi macrology
;;; Note: this will eventually replace :std/foreign
(require ,(compilation-target? C))
(export #t)

(defsyntax-case C-include ()
  ((_ str)
   (stx-string? #'str)
   (with-syntax ((include-string (string-append "#include " (stx-e #'str))))
     #'(begin-foreign (c-declare include-string)))))

(defsyntax-case def-C (=>)
  ((_ (proc contract ...) => return c-code)
   (stx-string? #'c-code)
   (with-syntax (((arg ...)   (map stx-car #'(contract ...)))
                 (code-string (string-append "___RESULT = " (stx-e #'c-code) ";")))
     #'(def (proc contract ...) => return
         (:- (##c-code code-string arg ...)
             return)))))
