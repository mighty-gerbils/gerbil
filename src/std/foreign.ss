;;; -*- Gerbil -*-
;;; © vyzo
;;; FFI macros

(export begin-ffi)

(defsyntax (begin-ffi stx)
  (def (namespace-def ns ids)
    (if (null? ids) []
        (with-syntax ((prefix (string-append (if (symbol? ns) (symbol->string ns) ns) "#"))
                      ((id ...) ids))
          [#'(namespace (prefix id ...))])))

  (def (prelude-macros)
    '((define-macro (define-guard guard defn)
        (if (eval `(cond-expand (,guard #t) (else #f)))
          '(begin)
          (begin
            (eval `(define-cond-expand-feature ,guard))
            defn)))
      (define-macro (define-c-lambda id args ret #!optional (name #f))
        (let ((name (or name (symbol->string id))))
          `(define ,id
             (c-lambda ,args ,ret ,name))))
      (define-macro (define-const symbol)
        (let* ((str (symbol->string symbol))
               (ref (string-append "___return (" str ");")))
          `(define ,symbol
             ((c-lambda () int ,ref)))))
      (define-macro (define-const* symbol)
        (let* ((str (symbol->string symbol))
               (code (string-append
                      "#ifdef " str "\n"
                      "___return (___FIX (" str "));\n"
                      "#else \n"
                      "___return (___FAL);\n"
                      "#endif")))
          `(define ,symbol
             ((c-lambda () scheme-object ,code)))))
      (define-macro (define-with-errno symbol ffi-symbol args)
        `(define (,symbol ,@args)
           (declare (not interrupts-enabled))
           (let ((r (,ffi-symbol ,@args)))
             (if (##fx< r 0)
               (##fx- (##c-code "___RESULT = ___FIX (errno);"))
               r))))))

  (def (prelude-c-decls)
    '((c-declare "#include <stdlib.h>")
      (c-declare "#include <errno.h>")
      (c-declare "static ___SCMOBJ ffi_free (void *ptr);")
      (c-declare #<<END-C
#ifndef ___HAVE_FFI_U8VECTOR
#define ___HAVE_FFI_U8VECTOR
#define U8_DATA(obj) ___CAST (___U8*, ___BODY_AS (obj, ___tSUBTYPED))
#define U8_LEN(obj) ___HD_BYTES (___HEADER (obj))
#endif
END-C
)
      ))

  (def (prelude-c-defs)
    '((c-declare #<<END-C
#ifndef ___HAVE_FFI_FREE
#define ___HAVE_FFI_FREE
___SCMOBJ ffi_free (void *ptr)
{
 free (ptr);
 return ___FIX (___NO_ERR);
}
#endif
END-C
)
      ))

  (syntax-case stx ()
    ((_ (id ...) body ...)
     (identifier-list? #'(id ...))
     (if (module-context? (current-expander-context))
       (let (ns (or (module-context-ns (current-expander-context))
                    (expander-context-id (current-expander-context))))
         (with-syntax (((nsdef ...) (namespace-def ns #'(id ...)))
                       ((macros ...) (prelude-macros))
                       ((c-decls ...) (prelude-c-decls))
                       ((c-defs ...) (prelude-c-defs)))
           #'(begin
               (extern id ...)
               (begin-foreign
                 macros ...
                 c-decls ...
                 nsdef ...
                 body ...
                 c-defs ...))))
       (raise-syntax-error #f "Illegal expansion context; not in module context" stx)))))
