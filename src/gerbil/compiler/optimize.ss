;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler optimization passes
package: gerbil/compiler
namespace: gxc

(import :gerbil/expander
        :gerbil/compiler/base
        :gerbil/compiler/compile
        <syntax-case> <syntax-sugar>
        (only-in :gerbil/gambit/exceptions display-exception))
(export #t)

(def current-compile-optimizer-info
  (make-parameter #f))

(defstruct optimizer-info (type ssxi)
  constructor: :init!)

(defmethod {:init! optimizer-info}
  (lambda (self)
    (direct-struct-instance-init!
     self (make-hash-table-eq) (make-hash-table-eq))))

;; sticky to persist across batch compilation and avoid reloading ssxi modules
(def (optimizer-info-init!)
  (unless (current-compile-optimizer-info)
    (current-compile-optimizer-info (make-optimizer-info))))


;;; optimizer entry point
(def (optimize! ctx)
  (optimizer-load-ssxi-deps ctx)
    ;; mark ssxi presence for batch
  (hash-put! (optimizer-info-ssxi (current-compile-optimizer-info))
             (expander-context-id ctx)
             #t)
  (let (code (optimize-source (module-context-code ctx)))
    (set! (module-context-code ctx) code)))

;;; ssxi loading
(def (optimizer-load-ssxi-deps ctx)
  (let lp ((rest (module-context-import ctx)))
    (match rest
      ([hd . rest]
       (cond
        ((module-context? hd)
         (optimizer-load-prelude-ssxi ctx)
         (optimizer-load-ssxi hd)
         (lp (append (module-context-import hd) rest)))
        ((module-import? hd)
         (lp (cons (module-import-source hd) rest)))
        ((module-export? hd)
         (lp (cons (module-export-context hd) rest)))
        ((import-set? hd)
         (lp (cons (import-set-source hd) rest)))
        (else
         (error "Unexpected module import" hd))))
      (else (void)))))

(def (optimizer-load-prelude-ssxi ctx)
  (cond
   ((core-context-prelude ctx) => optimizer-load-ssxi)
   (else (void))))

(def (optimizer-load-ssxi ctx)
  (unless (and (module-context? ctx)
               (list? (module-context-path ctx)))
    (let* ((ht (optimizer-info-ssxi (current-compile-optimizer-info)))
           (id (expander-context-id ctx))
           (mod (hash-get ht id)))
      (or mod
          (let* ((mod (optimizer-import-ssxi ctx))
                 (val (or mod #!void)))
            (hash-put! ht id val)
            val)))))

(def (optimizer-import-ssxi ctx)
  ;; check output-dir/id.ssxi.ss for existence; this is a current compilation
  ;; artefact; else check and :id.ssxi library path
  ;; catch error and display exception in verbose mode
  (def (catch-e exn)
    (when (current-compile-verbose)
      (displayln "Failed to load ssxi module for " (expander-context-id ctx))
      (display-exception exn))
    #f)

  (def (import-e)
    (let* ((str-id (string-append
                    (symbol->string (expander-context-id ctx))
                    ".ssxi"))
           (artefact-path
            (alet (odir (current-compile-output-dir))
              (path-expand (string-append str-id ".ss") odir)))
           (library-path
            (string->symbol
             (string-append ":" str-id)))
           (ssxi-path
            (if (and artefact-path (file-exists? artefact-path))
              artefact-path
              library-path)))
      (verbose "Loading ssxi module " ssxi-path)
      (import-module ssxi-path #t #t)))
  
  (with-catch catch-e import-e))

;;; optimizer-info: types
(defstruct !type (id))
(defstruct (!alias !type) ())
(defstruct (!struct-type !type) (super fields xfields ctor plist))
(defstruct (!procedure !type) ())
(defstruct (!struct-pred !procedure) ())
(defstruct (!struct-cons !procedure) ())
(defstruct (!struct-getf !procedure) (off))
(defstruct (!struct-setf !procedure) (off))
  
(def (optimizer-declare-type! sym type)
  (unless (!type? type)
    (error "bad declaration: expected !type" sym type))
  (verbose "declare-type " sym " " type " " (!type-id type))
  (hash-put! (optimizer-info-type (current-compile-optimizer-info))
             sym type))

(def (optimizer-lookup-type sym)
  (hash-get (optimizer-info-type (current-compile-optimizer-info))
            sym))

(def (optimizer-resolve-type sym)
  (alet (type (optimizer-lookup-type sym))
    (if (!alias? type)
      (optimizer-resolve-type (!type-id type))
      type)))

;;; source transforms
(def (optimize-source stx)
  (let (stx (apply-lift-top-lambdas stx))
    (apply-collect-type-info stx)
    (apply-optimize-call stx)))

(defcompile-method #f &identity-expression
  (%#lambda              xform-identity)
  (%#case-lambda         xform-identity)
  (%#let-values     xform-identity)
  (%#letrec-values  xform-identity)
  (%#letrec*-values xform-identity)
  (%#quote          xform-identity)
  (%#quote-syntax   xform-identity)
  (%#call           xform-identity)
  (%#if             xform-identity)
  (%#ref            xform-identity)
  (%#set!           xform-identity))

(defcompile-method #f &identity-special-form
  (%#begin          xform-identity)
  (%#begin-syntax   xform-identity)
  (%#begin-foreign  xform-identity)
  (%#module         xform-identity)
  (%#import         xform-identity)
  (%#export         xform-identity)
  (%#provide        xform-identity)
  (%#extern         xform-identity)
  (%#define-values  xform-identity)
  (%#define-syntax  xform-identity)
  (%#define-alias   xform-identity)
  (%#declare        xform-identity))

(defcompile-method #f (&identity &identity-special-form &identity-expression))

(defcompile-method #f &false-expression
  (%#lambda              false)
  (%#case-lambda         false)
  (%#let-values     false)
  (%#letrec-values  false)
  (%#letrec*-values false)
  (%#quote          false)
  (%#quote-syntax   false)
  (%#call           false)
  (%#if             false)
  (%#ref            false)
  (%#set!           false))

(defcompile-method #f &false-special-form
  (%#begin          false)
  (%#begin-syntax   false)
  (%#begin-foreign  false)
  (%#module         false)
  (%#import         false)
  (%#export         false)
  (%#provide        false)
  (%#extern         false)
  (%#define-values  false)
  (%#define-syntax  false)
  (%#define-alias   false)
  (%#declare        false))

(defcompile-method #f (&false &false-special-form &false-expression))

(defcompile-method apply-lift-top-lambdas (&lift-top-lambdas &identity)
  ;; TODO
  )

(defcompile-method apply-collect-type-info (&collect-type-info
                                            &void-expression
                                            &void-special-form)
  (%#begin         collect-begin%)
  (%#module        collect-module%)
  (%#define-values collect-type-define-values%))

(defcompile-method apply-basic-expression-type (&basic-expression-type &false)
  (%#lambda      basic-expression-type-lambda%)
  (%#case-lambda basic-expression-type-case-lambda%)
  (%#call   basic-expression-type-call%)
  (%#ref    basic-expression-type-ref%)
  (%#begin  basic-expression-type-begin%))

(defcompile-method apply-optimize-call (&optimize-call &identity)
  ;; TODO
  )

(def (xform-identity stx . args)
  stx)

(def (collect-type-define-values% stx)
  (ast-case stx ()
    ((_ (id) expr)
     (alet (type (apply-basic-expression-type #'expr))
       (optimizer-declare-type! (identifier-symbol #'id) type)))
    (_ (void))))

(def (basic-expression-type-lambda% stx)
  #f
  )

(def (basic-expression-type-case-lambda% stx)
  #f
  )

(def basic-expression-type-builtin (make-hash-table-eq))
(defrules defbasic-expression-type-builtin ()
  ((_ (id type-e) ...)
   (begin
     (hash-put! basic-expression-type-builtin 'id type-e) ...)))

(def (basic-expression-type-call% stx)
  (ast-case stx (%#ref)
    ((_ (%#ref id) . args)
     (alet (type-e (hash-get basic-expression-type-builtin (identifier-symbol #'id)))
       (type-e stx #'args)))
    (_ #f)))

(def (basic-expression-type-make-struct-type stx args)
  (ast-case args (%#quote %#ref)
    (((%#quote type-id) (%#ref super) (%#quote fields) name (%#quote plist) (%#quote ctor))
     (let* ((super-t (and (stx-e #'super) (identifier-symbol #'super)))
            (super-type (and super-t (optimizer-resolve-type super-t))))
       (when (and super-type (not (!struct-type? super-type)))
         (raise-compile-error "Illegal struct-type construction; invalid super type" stx #'super))
       (let ((fields (stx-e #'fields))
             (xfields
              (and super-type
                   (alet ((super-fields (!struct-type-fields super-type))
                          (super-xfields (!struct-type-xfields super-type)))
                     (fx+ super-fields super-xfields))))
            (plist (stx-e #'plist))
            (ctor
             (cond
              ((stx-e #'ctor) => values)
              (super-type (!struct-type-ctor super-type))
              (super-t #!void)          ; unknown, be conservative
              (else #f))))              ; no constructor method
         (make-!struct-type (stx-e #'type-id) super-t fields xfields ctor plist))))
    (_ #f)))

(def (basic-expression-type-make-struct-predicate stx args)
  (ast-case args (%#ref)
    (((%#ref type-t))
     (make-!struct-pred (identifier-symbol #'type-t)))
    (_ #f)))

(def (basic-expression-type-make-struct-field-accessor stx args)
  (ast-case args (%#quote %#ref)
    (((%#ref type-t) (%#quote off))
     (make-!struct-getf (identifier-symbol #'type-t) (stx-e #'off)))
    (_ #f)))

(def (basic-expression-type-make-struct-field-mutator stx args)
  (ast-case args (%#quote %#ref)
    (((%#ref type-t) (%#quote off))
     (make-!struct-setf (identifier-symbol #'type-t) (stx-e #'off)))
    (_ #f)))

(defbasic-expression-type-builtin
  (make-struct-type basic-expression-type-make-struct-type)
  (make-struct-predicate basic-expression-type-make-struct-predicate)
  (make-struct-field-accessor basic-expression-type-make-struct-field-accessor)
  (make-struct-field-mutator basic-expression-type-make-struct-field-mutator))

(def (basic-expression-type-ref% stx)
  (ast-case stx ()
    ((_ id)
     (optimizer-lookup-type (identifier-symbol #'id)))))

(def (basic-expression-type-begin% stx)
  #f
  )

(def (identifier-symbol stx)
  (cond
   ((resolve-identifier stx) => binding-id)
   (else
    (stx-e stx))))

