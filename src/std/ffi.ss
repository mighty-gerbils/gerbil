;;; -*- Gerbil -*-
;;; © vyzo
;;; ffi macrology
;;; Note: this will eventually replace :std/foreign
(require ,(compilation-target? C))
(export #t)

(defrule (C-ffi-macrology)
  (begin-foreign
    (c-declare
     #<<END-C
#ifndef ___GERBIL_FFI_MACROLOGY
#define ___GERBIL_FFI_MACROLOGY
#define ___U8VECTOR_AS(t, arg) ___CAST(t, ___BODY_AS (arg, ___tSUBTYPED))
#define ___TRAP_ERRNO(expr) ({\
                              int __r = expr; \
                              (__r<0) ? (-errno) : __r\
                              })
#endif
END-C
)))

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
  XXX
  )

(defsyntax-case def-C-syscall ()
  ((_ head code)
   (stx-string? #'code)
   (with-syntax ((code-string (string-append "___TRAP_ERRNO(" (stx-e #'code) ")")))
     #'(def-C head => :fixnum
         code-string))))

;; (defsyntax-case def-C-code (=>)
;;   ((_ (proc contract ...) => return c-code)
;;    (and (syntax-local-runtime-type-info? #'return)
;;         (stx-string? #'c-code))
;;    (let* ((info (syntax-local-value #'return))
;;           (wrap
;;            (case (runtime-type-id info)
;;              ((fixnum) "__FIX")
;;              (else
;;               (raise-syntax-error #f "unsupported type" stx #'return)))))
;;      (with-syntax (((arg ...)   (map car #'(contract ...)))
;;                    (code-string (string-append "___RESULT = " wrap "(" (stx-e #'c-code) ");")))
;;        #'(def (proc contract ...) => return
;;            (let (result (##c-code code-string arg ...))
;;              (:- result return)))))))

;; (defsyntax-case def-C-lambda ()
;;   XXX)

(defsyntax-case def-C-struct ()
  XXX)

(defsyntax-case def-C-union ()
  XXX)

(defsyntax-case def-C-const ()
  XXX)
