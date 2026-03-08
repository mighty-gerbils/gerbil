;;; -*- Gerbil -*-
;;; © vyzo
;;; ffi macrology
;;; Note: this will eventually replace :std/foreign
(require ,(compilation-target? C))
(export #t)

(module FFIMethods
  ;; XXX  these need to be meta methods
  (export #t)
  (defmethod {expand-ffi-c-unwrap :u8vector}
    (lambda (self raw-arg arg)
      (string-append "u8 *" arg " = ___U8VECTOR_AS(u8*, " raw-arg ")")))

  (defmethod {expand-ffi-c-unwrap :fixnum}
    (lambda (self raw-arg arg)
      (string-append "int " arg " = ___INT(" raw-arg ")")))

  (defmethod {expand-ffi-c-unwrap :flonum}
    (lambda (self raw-arg arg)
      (string-append "double " arg " = ___F64UNBOX(" raw-arg ")")))

  (defmethod {expand-ffi-c-wrap :fixnum}
    (lambda (self code)
      (string-append "___FIX(" code ")"))))

(import (for-syntax FFIMethods))

(begin-syntax
  (def (eval-class-type id)
    (eval-syntax+1 (!runtime-type-descriptor (syntax-local-value id)))))

(defrule (C-ffi-macrology)
  (begin-foreign
    (c-declare
     #<<END-C
#ifndef ___GERBIL_FFI_MACROLOGY
#define ___GERBIL_FFI_MACROLOGY
#define ___U8VECTOR_AS(t, arg) ___CAST(t, ___BODY_AS (arg, ___tSUBTYPED))
#define ___TRAP_ERRNO(expr) ({int _r = expr; (_r<0) ? (-errno) : _r})
#endif
END-C
)))

(defsyntax-case C-include ()
  ((_ path rest ...)
   (andmap stx-string? #'(path rest ...))
   (with-syntax ((include-string
                  (let loop ((rest #'(path rest ...)))
                    (match rest
                      ([path]
                       (string-append "#include " (stx-e path)))
                      ([path . rest]
                       (let (prev (loop rest))
                         (string-append prev "\n" "#include " (stx-e path))))))))
     #'(begin-foreign (c-declare include-string)))))

(defsyntax-case C-declare ()
  ((_ code rest ...)
   (andmap stx-string? #'(code rest ...))
   (with-syntax ((code-string
                  (let loop ((rest #'(path rest ...)))
                    (match rest
                      ([code] (stx-e #'code))
                      ([code . rest]
                       (let (prev (loop rest))
                         (string-append prev "\n"  (stx-e #'code))))))))
     #'(begin-foreign (c-declare code-string)))))

(defsyntax-case def-C (=>)
  ((_ (proc (arg ~ type) ...) => return code)
   (and (identifier? #'proc)
        (andmap (lambda (sigil)
                  (and (identifier? sigil)
                       (member sigil '(: :-) free-identifier=?)))
                #'(~ ...))
        (andmap identifier? #'(arg ...))
        (andmap syntax-local-runtime-type-info? #'(type ...))
        (syntax-local-runtime-type-info? #'return)
        (stx-string? #'code))
   (let* ((args         #'(arg ...))
          (arg-iota     (iota (length args) 1))
          (arg-iota-str (map number->string arg-iota))
          (arg-klasses  (map eval-class-type #'(type ...)))
          (return-klass (eval-class-type #'return))
          (raw-args     (map (lambda (n) (string-append "___ARG" n))
                             arg-iota-str))
          (c-args       (map (lambda (n) (string-append "___arg" n))
                             arg-iota-str))
          (c-unwrap     (map (lambda (klass raw-arg arg)
                               {klass.expand-ffi-c-unwrap raw-arg arg})
                             arg-klasses raw-args c-args))
          (c-code      (stx-e #'code))
          (return-wrap {return-klass.expand-ffi-c-wrap c-code}))
     (with-syntax ((code (string-append
                          "({"
                          (foldl (lambda (unwrap r)
                                   (string-append r unwrap ";"))
                                 c-unwrap "")
                          "___RESULT = " return-wrap ";"
                          "})")))
       #'(def (proc (arg ~ type) ...)
           => return
           (:- (##c-code code arg ...)
               return))))))

(defsyntax-case def-C-syscall ()
  ((_ head code)
   (stx-string? #'code)
   (with-syntax ((code-string (string-append "___TRAP_ERRNO(" (stx-e #'code) ")")))
     #'(def-C head => :fixnum
         code-string))))


;; (defsyntax-case def-C-struct ()
;;   XXX)

;; (defsyntax-case def-C-union ()
;;   XXX)

;; (defsyntax-case def-C-const ()
;;   XXX)
