;;; -*- Gerbil -*-
;;; © vyzo
;;; ffi macrology
;;; Note: this will eventually replace :std/foreign
(require ,(compilation-target? C))
(export #t)

(defsyntax-case C-include ()
  ((_ path)
   (stx-string? #'path)
   (with-syntax ((include-string (string-append "#include " (stx-e #'path))))
     #'(begin-foreign (c-declare include-string)))))

(defsyntax-case C-declare ()
  ((_ code)
   (stx-string? #'code)
   #'(begin-foreign (c-declare code)))
  ((_ code rest ...)
   (andmap stx-string? #'(code rest ...))
   (with-syntax ((code-string (apply string-append (map stx-e #'(code rest ...)))))
     #'(begin-foreign (c-declare code-string)))))

(defsyntax-case def-C (=>)
  ((_ (proc contract ...) => return c-code)
   (stx-string? #'c-code)
   (with-syntax (((arg ...)   (map stx-car #'(contract ...)))
                 (code-string (string-append "___RESULT = " (stx-e #'c-code) ";")))
     #'(def (proc contract ...) => return
         (let (result (##c-code code-string arg ...))
           (if __DEBUG
             (:  result return)
             (:- result return)))))))
