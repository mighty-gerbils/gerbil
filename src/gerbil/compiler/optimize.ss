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

(defcompile-method #f (&basic-xform &identity)
  (%#begin          xform-begin%)
  (%#define-values  xform-define-values%)
  (%#lambda              xform-lambda%)
  (%#case-lambda         xform-case-lambda%)
  (%#let-values     xform-let-values%)
  (%#letrec-values  xform-let-values%)
  (%#letrec*-values xform-let-values%)
  (%#call           xform-call%)
  (%#if             xform-if%)
  (%#set!           xform-setq%))

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

(defcompile-method apply-optimize-call (&optimize-call &basic-xform)
  (%#call optimize-call%))

;;; basic-xform
(def (xform-identity stx . args)
  stx)

(def (xform-wrap-source stx src-stx)
  (stx-wrap-source stx (stx-source src-stx)))

(def (xform-apply-compile-e args)
  (cut apply compile-e <> args))

(def (xform-begin% stx . args)
  (ast-case stx ()
    ((_ . forms)
     (let (forms (stx-map (xform-apply-compile-e args) #'forms))
       (xform-wrap-source
        ['%#begin forms ...]
        stx)))))

(def (xform-define-values% stx . args)
  (ast-case stx ()
    ((_ hd expr)
     (let (expr (apply compile-e #'expr args))
       (xform-wrap-source
        ['%#define-values #'hd expr]
        stx)))))

(def (xform-lambda% stx . args)
  (ast-case stx ()
    ((_ hd . body)
     (let (body (stx-map (xform-apply-compile-e args) #'body))
       (xform-wrap-source
        ['%#lambda #'hd body ...]
        stx)))))

(def (xform-case-lambda% stx . args)
  (def (clause-e clause)
    (ast-case clause ()
      ((hd . body)
       (let (body (stx-map (xform-apply-compile-e args) #'body))
         [#'hd body ...]))))
  
  (ast-case stx ()
    ((_ . clauses)
     (let (clauses (stx-map clause-e #'clauses))
       (xform-wrap-source
        ['%#case-lambda clauses ...]
        stx)))))

(def (xform-let-values% stx . args)
  (ast-case stx ()
    ((form ((hd expr) ...) . body)
     (with-syntax (((expr ...) (stx-map (xform-apply-compile-e args) #'(expr ...))))
       (let (body (stx-map (xform-apply-compile-e args) #'body))
         (xform-wrap-source
          [#'form #'((hd expr) ...) body ...]
          stx))))))

(def (xform-call% stx . args)
  (ast-case stx ()
    ((_ rator . rands)
     (let ((rator (apply compile-e #'rator args))
           (rands (stx-map (xform-apply-compile-e args) #'rands)))
       (xform-wrap-source
        ['%#call rator rands ...]
        stx)))))

(def (xform-if% stx . args)
  (ast-case stx ()
    ((_ . forms)
     (let (forms (stx-map (xform-apply-compile-e args) #'forms))
       (xform-wrap-source
        ['%#if forms ...]
        stx)))))

(def (xform-setq% stx . args)
  (ast-case stx ()
    ((_ id expr)
     (let (expr (apply compile-e #'expr args))
       (xform-wrap-source
        ['%#set! #'id expr]
        stx)))))

;;; apply-collect-type-info
(def (collect-type-define-values% stx)
  (ast-case stx ()
    ((_ (id) expr)
     (alet (type (apply-basic-expression-type #'expr))
       (optimizer-declare-type! (identifier-symbol #'id) type)))
    (_ (void))))

;;; apply-basic-expression-type
(def (basic-expression-type-lambda% stx)
  ;; TODO
  #f
  )

(def (basic-expression-type-case-lambda% stx)
  ;; TODO
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
  ;; TODO
  #f
  )

;;; apply-optimize-call
(def (optimize-call% stx)
  (ast-case stx (%#ref)
    ((_ (%#ref rator) . rands)
     (let* ((rator-id (identifier-symbol #'rator))
            (rator-type (optimizer-lookup-type rator-id)))
       (if rator-type
         {optimize-call rator-type stx #'rands}
         (let (rands (stx-map compile-e #'rands))
           (xform-wrap-source
            ['%#call #'(%#ref rator) rands ...]
            stx)))))
    (_ (xform-call% stx))))

(defmethod {optimize-call !alias}
  (lambda (self stx args)
    (with ((!alias alias-id) self)
      (let (alias-type (optimizer-lookup-type alias-id))
        (if (!type? alias-type)
          {optimize-call alias-type stx args}
          (let (args (stx-map compile-e args))
            (xform-wrap-source
             ['%#call ['%#ref alias-id] args ...]
             stx)))))))

(defmethod {optimize-call !struct-pred}
  (lambda (self stx args)
    (with ((!struct-pred struct-t) self)
      (let (struct-type (optimizer-resolve-type struct-t))
        (match struct-type
          ((!struct-type struct-type-id)
           (ast-case args ()
             ((expr)
              (let (expr (compile-e #'expr))
                (xform-wrap-source
                 ['%#struct-instance? ['%#quote struct-type-id] expr]
                 stx)))
             (_ (raise-compile-error "Illegal struct predicate application" stx))))
         (#f (xform-call% stx))
         (else
          (raise-compile-error "Illegal struct predicate application; not a struct type"
                               stx struct-t struct-type)))))))

(defmethod {optimize-call !struct-cons}
  (lambda (self stx args)
    ;; TODO
    stx
    ))

(defmethod {optimize-call !struct-getf}
  (lambda (self stx args)
    (with ((!struct-getf struct-t off) self)
      (let (struct-type (optimizer-resolve-type struct-t))
        (match struct-type
          ((!struct-type struct-type-id _ fields xfields)
           (if xfields
             (ast-case stx ()
               ((expr)
                (let ((expr (compile-e #'expr))
                      (off (fx+ off xfields)))
                  (xform-wrap-source
                   ['%#struct-ref ['%#quote struct-type-id] ['%#quote off] expr]
                   stx)))
               (_ (raise-compile-error "Illegal struct accessor application" stx)))
             (xform-call% stx))) ; incomplete struct info; can't inline
          (#f (xform-call% stx))
          (else
           (raise-compile-error "Illegal struct predicate application; not a struct type"
                                stx struct-t struct-type)))))))

(defmethod {optimize-call !struct-setf}
  (lambda (self stx args)
    (with ((!struct-setf struct-t off) self)
      (let (struct-type (optimizer-resolve-type struct-t))
        (match struct-type
          ((!struct-type struct-type-id _ fields xfields)
           (if xfields
             (ast-case stx ()
               ((expr val)
                (let ((expr (compile-e #'expr))
                      (val (compile-e #'val))
                      (off (fx+ off xfields)))
                  (xform-wrap-source
                   ['%#struct-set! ['%#quote struct-type-id] ['%#quote off] expr val]
                   stx)))
               (_ (raise-compile-error "Illegal struct mutator application" stx)))
             (xform-call% stx))) ; incomplete struct info; can't inline
          (#f (xform-call% stx))
          (else
           (raise-compile-error "Illegal struct predicate application; not a struct type"
                                stx struct-t struct-type)))))))

;;; utilities
(def (identifier-symbol stx)
  (cond
   ((resolve-identifier stx) => binding-id)
   (else
    (stx-e stx))))
