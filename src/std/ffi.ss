;;; -*- Gerbil -*-
;;; © vyzo
;;; ffi macrology
;;; Note: this will eventually replace :std/foreign
(require ,(compilation-target? C))
(export #t)

(defsyntax-case C-include ()
  ((_ path rest ...)
   (andmap stx-string? #'(path rest ...))
   (with-syntax ((include-string
                  (let loop ((rest (#'(path rest ...))))
                    (match rest
                      ([path]
                       (string-append "#include " (stx-e #'path)))
                      ([path . rest]
                       (let (prev (loop rest))
                         (string-append prev "\n" "#include " (stx-e #'path))))))))
     #'(begin-foreign (c-declare include-string)))))

(defsyntax-case C-declare ()
  ((_ code rest ...)
   (andmap stx-string? #'(code rest ...))
   (with-syntax ((code-string
                  (let loop ((rest (#'(path rest ...))))
                    (match rest
                      ([code] (stx-e #'code))
                      ([code . rest]
                       (let (prev (loop rest))
                         (string-append prev "\n"  (stx-e #'code))))))))
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

(defsyntax-case def-C-lambda ()
  XXX)

(defsyntax-case def-C-struct ()
  XXX)

(defsyntax-case def-C-const ()
  XXX)
