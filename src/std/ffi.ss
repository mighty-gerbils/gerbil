;;; -*- Gerbil -*-
;;; © vyzo
;;; ffi macrology
;;; Note: this will eventually replace :std/foreign
(require ,(compilation-target? C))
(import (for-syntax :gerbil/expander))
(export #t)

(module C-struct
  (export #t)
  (defstruct raw-c-struct ((body :- :u8vector))
    acyclic: #t))
(import C-struct (for-syntax C-struct))
(export (import: C-struct))

(module FFIMethods
  (import ClassMeta)
  (export #t)

  (defmethod-for-meta :u8vector (expand-ffi-c-prepare self arg)
    arg)

  (defmethod-for-meta :u8vector (expand-ffi-c-unwrap self raw-arg arg)
    (string-append "__uint8_t*" arg " = ___U8VECTOR_AS(__uint8_t*, " raw-arg ")"))

  (defmethod-for-meta :fixnum (expand-ffi-c-prepare self arg)
    arg)

  (defmethod-for-meta :fixnum (expand-ffi-c-unwrap self raw-arg arg)
    (string-append "int " arg " = ___INT(" raw-arg ")"))

  (defmethod-for-meta :flonum (expand-ffi-c-prepare self arg)
    arg)

  (defmethod-for-meta :flonum (expand-ffi-c-unwrap self raw-arg arg)
    (string-append "double " arg " = ___F64UNBOX(" raw-arg ")"))

  (defmethod-for-meta :fixnum (expand-ffi-c-wrap self code)
    (string-append "___FIX(" code ")"))

  (defmethod-for-meta :flonum (expand-ffi-c-wrap self code)
    (string-append "___F64BOX(" code ")"))

  (defmethod-for-meta :void (expand-ffi-c-wrap self code)
    (string-append "({" code "; ___VOID;})"))

  (defmethod-for-meta raw-c-struct (expand-ffi-c-prepare self arg)
    ['raw-c-struct-body arg])

  (defmethod-for-meta raw-c-struct (expand-ffi-c-unwrap self raw-arg arg)
    (let (type (string-append "struct " (symbol->string (!class-type-name self)) "*"))
      (string-append type " " arg " = ___U8VECTOR_AS(" type ", " raw-arg ")"))))

(import (for-syntax FFIMethods))

(defrule (C-ffi-macrology)
  (begin-foreign
    (c-declare
     #<<END-C
#ifndef ___GERBIL_FFI_MACROLOGY
#define ___GERBIL_FFI_MACROLOGY
#define ___U8VECTOR_AS(t, arg) ___CAST(t, ___BODY_AS (arg, ___tSUBTYPED))
#define ___TRAP_ERRNO(expr) ({int _r = expr; (_r<0) ? (-errno) : _r;})
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
                  (let loop ((rest #'(code rest ...)))
                    (match rest
                      ([code] (stx-e code))
                      ([code . rest]
                       (let (prev (loop rest))
                         (string-append prev "\n"  (stx-e code))))))))
     #'(begin-foreign (c-declare code-string))32)))

(defsyntax-case def-C (=>)
  ((_ (proc (arg ~ type) ...) => return code)
   (and (identifier? #'proc)
        (andmap (lambda (sigil)
                  (and (identifier? sigil)
                       (member sigil '(: :-) free-identifier=?)))
                #'(~ ...))
        (andmap identifier? #'(arg ...))
        (andmap (cut syntax-local-runtime-type-info? <> meta-object?) #'(type ...))
        (syntax-local-runtime-type-info? #'return meta-object?)
        (stx-string? #'code))
   (let* ((args         #'(arg ...))
          (arg-iota     (iota (length args) 1))
          (arg-iota-str (map number->string arg-iota))
          (arg-klasses  (map syntax-local-value #'(type ...)))
          (return-klass (syntax-local-value #'return))
          (args-in     (map (lambda (klass arg)
                              (call-meta-object klass 'expand-ffi-c-prepare arg))
                            arg-klasses args))
          (raw-args     (map (lambda (n) (string-append "___ARG" n))
                             arg-iota-str))
          (c-args       (map (lambda (n) (string-append "___arg" n))
                             arg-iota-str))
          (c-unwrap     (map (lambda (klass raw-arg arg)
                               (call-meta-object klass 'expand-ffi-c-unwrap raw-arg arg))
                             arg-klasses raw-args c-args))
          (c-code      (stx-e #'code))
          (return-wrap (call-meta-object return-klass 'expand-ffi-c-wrap c-code)))
     (with-syntax ((code (string-append
                          (foldl (lambda (unwrap r)
                                   (string-append r unwrap ";"))
                                 "" c-unwrap)
                          "___RESULT = " return-wrap ";"
                          ))
                   ((arg-in ...) args-in))
       #'(def (proc (arg ~ type) ...)
           => return
           (:- (##c-code code arg-in ...)
               return))))))

(defsyntax-case def-C-syscall ()
  ((_ head code)
   (stx-string? #'code)
   (with-syntax ((code-string (string-append "___TRAP_ERRNO(" (stx-e #'code) ")")))
     #'(def-C head => :fixnum
         code-string))))

(defsyntax-case def-C-lambda (: =>)
  ((_ (name (arg : arg-type) ...) => return-type impl)
   (and (identifier? #'name)
        (andmap identifier? #'(arg ...))
        (andmap identifier? #'(arg-type ...))
        (identifier? #'return-type)
        (stx-string? #'impl))
   (with-syntax ((full-name
                  (stx-identifier #'name
                                  (or (core-context-namespace)
                                      "__ffi")
                                  "#"
                                  #'name)))
   #'(begin
       (define-runtime name full-name)
       (begin-foreign
         (define full-name
           (c-lambda (arg-type ...) return-type
              impl)))))))

(defsyntax-case def-C-struct ()
  ((_ name)
   (identifier? #'name)
   (with-syntax ((:init!     (syntax-local-introduce ':init!))
                 (name::size (stx-identifier #'name #'name "::size"))
                 (size-c-code
                  (string-append
                   "___RESULT = ___FIX(sizeof(struct "
                   (symbol->string (stx-e #'name))
                   "));")))
     #'(begin
         (defstruct (name raw-c-struct) ()
           final: #t
           acyclic: #t
           constructor: :init!)
         (defmethod {:init! name}
           (lambda (self (buf #f))
             (set! (raw-c-struct-body self)
               (or buf (make-u8vector name::size 0)))))
         (def name::size
           (##c-code size-c-code))))))

(defsyntax-case def-C-union ()
  ((_ name mixin ...)
   (identifier? #'name)
   (with-syntax ((:init!     (syntax-local-introduce ':init!))
                 (name::size (stx-identifier #'name #'name "::size"))
                 ((mixin-size ...)
                  (map (lambda (mixin)
                         (stx-identifier mixin mixin "::size"))
                       #'(mixin ...)))
                 ((name-as-mixin ...)
                  (map (lambda (mixin)
                         (stx-identifier #'name #'name "::" mixin))
                       #'(mixin ...))))
     #'(begin
         (defstruct (name raw-c-struct) ()
           final: #t
           acyclic: #t
           constructor: :init!)
         (defmethod {:init! name}
           (lambda (self (buf #f))
             (set! (raw-c-struct-body self)
               (or buf (make-u8vector name::size 0)))))
         (def name::size
           (max mixin-size ...))
         (def (name-as-mixin (u : name)) => mixin
           (mixin u.body))
         ...))))

(defrule (def-C-const* const ...)
  (begin (def-C-const const) ...))

(defsyntax-case def-C-const ()
  ((_ const)
   (identifier? #'const)
   (let (const-str (symbol->string (stx-e #'const)))
     (with-syntax ((c-code
                    (string-append
                     "___RESULT = ___FIX(\n"
                     "#ifdef " const-str "\n"
                      const-str "\n"
                     "#else\n"
                     "0\n"
                     "#endif\n"
                     ");")))
       #'(def const (##c-code c-code))))))

(def (string->c-string (str : :string))
  => :u8vector
  (##u8vector-append (##string->utf8 str) '#u8(0)))
