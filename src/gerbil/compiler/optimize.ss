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
         (unless (hash-get (optimizer-info-ssxi (current-compile-optimizer-info))
                           (expander-context-id hd))
           (optimizer-load-prelude-ssxi ctx)
           (lp (module-context-import hd))
           (optimizer-load-ssxi hd))
         (lp rest))
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
(defstruct (!lambda !procedure) (arity dispatch))
(defstruct (!case-lambda !procedure) (clauses))
  
(def (optimizer-declare-type! sym type)
  (unless (!type? type)
    (error "bad declaration: expected !type" sym type))
  (verbose "declare-type " sym " " (##vector->list type))
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

(defcompile-method #f &basic-xform-expression
  (%#lambda              xform-lambda%)
  (%#case-lambda         xform-case-lambda%)
  (%#let-values     xform-let-values%)
  (%#letrec-values  xform-let-values%)
  (%#letrec*-values xform-let-values%)
  (%#quote          xform-identity)
  (%#quote-syntax   xform-identity)
  (%#call           xform-call%)
  (%#if             xform-if%)
  (%#ref            xform-identity)
  (%#set!           xform-setq%))

(defcompile-method #f (&basic-xform &basic-xform-expression &identity)
  (%#begin          xform-begin%)
  (%#define-values  xform-define-values%))

(defcompile-method apply-lift-top-lambdas (&lift-top-lambdas &identity)
  (%#begin          xform-begin%)
  (%#define-values  lift-top-lambda-define-values%))

(defcompile-method apply-expression-subst (&expression-subst &basic-xform-expression)
  (%#begin xform-begin%)
  (%#ref   expression-subst-ref%))

(defcompile-method apply-collect-type-info (&collect-type-info
                                            &void-expression
                                            &void-special-form)
  (%#begin         collect-begin%)
  (%#module        collect-module%)
  (%#define-values collect-type-define-values%))

(defcompile-method apply-basic-expression-type (&basic-expression-type &false)
  (%#begin  basic-expression-type-begin%)
  (%#lambda      basic-expression-type-lambda%)
  (%#case-lambda basic-expression-type-case-lambda%)
  (%#call   basic-expression-type-call%)
  (%#ref    basic-expression-type-ref%))

(defcompile-method apply-optimize-call (&optimize-call &basic-xform)
  (%#call optimize-call%))

(defcompile-method apply-generate-ssxi (&generate-ssxi &generate-runtime-empty)
  (%#begin         generate-runtime-begin%)
  (%#define-values generate-ssxi-define-values%))

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

;;; apply-lift-top-lambdas
(def (dispatch-lambda-form? form)
  (ast-case form (%#call %#ref)
    (((arg ...) (%#call (%#ref rator) (%#ref xarg) ...))
     (and (identifier-list? #'(arg ...))
          (fx= (stx-length #'(arg ...)) (stx-length #'(xarg ...)))
          (andmap free-identifier=? #'(arg ...) #'(xarg ...))
          (not (find (cut free-identifier=? <> #'rator) #'(arg ...)))))
    (((arg ... . rest) (%#call (%#ref -apply) (%#ref rator) (%#ref xarg) ... (%#ref xrest)))
     (and (identifier-list? #'(arg ...))
          (identifier? #'rest)
          (eq? (identifier-symbol #'-apply) 'apply)
          (fx= (stx-length #'(arg ...)) (stx-length  #'(xarg ...)))
          (andmap free-identifier=? #'(arg ...) #'(xarg ...))
          (free-identifier=? #'rest #'xrest)
          (not (find (cut free-identifier=? <> #'rator) #'(arg ... rest)))))
    (_ #f)))

(def (dispatch-lambda-form-delegate form)
  (ast-case form (%#call %#ref)
    (((arg ...) (%#call (%#ref rator) . _))
     (identifier-symbol #'rator))
    (((arg ... . rest) (%#call (%#ref -apply) (%#ref rator) . _))
     (identifier-symbol #'rator))))

(def (lambda-form-arity form)
  (ast-case form ()
    (((arg ...) . _)
     (stx-length #'(arg ...)))
    ((arg ... . rest)
     [(stx-length #'(arg ...))])))


(def (lift-top-lambda-define-values% stx)
  (def (lambda-expr? expr)
    (ast-case expr (%#lambda)
      ((%#lambda . form) #t)
      (_ #f)))

  (def (case-lambda-expr? expr)
    (ast-case expr (%#case-lambda)
      ((%#case-lambda . clauses) #t)
      (_ #f)))

  (def (lift-case-lambda-clauses id clauses)
    (let lp ((rest clauses) (ids []) (impls []) (clauses []))
      (match rest
        ([clause . rest]
         (if (dispatch-lambda-form? clause)
           (lp rest ids impls (cons clause clauses))
           (ast-case clause ()
             ((hd . body)
              (let* ((id (make-symbol (stx-e id) "__" (length clauses)))
                     (impl
                      (xform-wrap-source
                       #'(%#lambda hd . body)
                       stx))
                     (clause
                      (ast-case #'hd ()
                        ((arg ...)
                         [#'hd 
                          (xform-wrap-source
                            ['%#call ['%#ref id] #'((%#ref arg) ...) ...]
                            stx)])
                        ((arg ... . rest)
                         [#'hd
                          (xform-wrap-source
                           ['%#call ['%#ref 'apply] ['%#ref id]
                                    #'((%#ref arg) ...) ... #'(%#ref rest)]
                           stx)]))))
                (lp rest
                    (cons id ids)
                    (cons impl impls)
                    (cons clause clauses)))))))
        (else
         (values (reverse ids) (reverse impls) (reverse clauses))))))

  (def (case-lambda-clause-def id impl)
    (xform-wrap-source
     ['%#define-values [id] impl]
     stx))
  
  (ast-case stx (%#lambda %#case-lambda %#let-values)
    ((_ (id) (%#case-lambda . clauses))
     ;; dispatch clauses -- no need to lift
     (and (identifier? #'id)
          (andmap dispatch-lambda-form? #'clauses))
     stx
     )
    ((_ (id) case-lambda-expr)
     ;; generic case-lambda, lift non dispatch clauses
     (and (identifier? #'id)
          (case-lambda-expr? #'case-lambda-expr))
     (ast-case #'case-lambda-expr ()
       ((_ . clauses)
        (let* (((values ids impls clauses)
                (lift-case-lambda-clauses #'id #'clauses))
               (defs (map case-lambda-clause-def ids impls)))
          (verbose "lift case-lambda clauses " (identifier-symbol #'id) " => " ids)
          (for-each core-bind-runtime! ids)
          (xform-wrap-source
           ['%#begin defs ...
                     (xform-wrap-source
                      ['%#define-values [#'id]
                                        (xform-wrap-source
                                         ['%#case-lambda clauses ...]
                                         #'case-lambda-expr)]
                      stx)]
           stx)))))
    ((_ (id) (%#let-values (((xid) lambda-expr)) case-lambda-expr))
     ;; opt-lambda expansion
     (and (identifier? #'id)
          (identifier? #'xid)
          (lambda-expr? #'lambda-expr)
          (case-lambda-expr? #'case-lambda-expr))
     (let* ((lambda-id (make-symbol (stx-e #'id) "__" (stx-e #'xid)))
            (new-case-lambda-expr
             (apply-expression-subst #'case-lambda-expr #'xid lambda-id)))
       (verbose "lift opt-lambda dispatch "(identifier-symbol #'id) " => " lambda-id)
       (core-bind-runtime! lambda-id)
       (xform-wrap-source
        ['%#begin (xform-wrap-source
                   ['%#define-values [lambda-id] #'lambda-expr]
                   stx)
                  (lift-top-lambda-define-values%
                   (xform-wrap-source
                    ['%#define-values [#'id] new-case-lambda-expr]
                    stx))]
        stx)))
    (_ stx)))

;;; apply-subst-refs
(def (expression-subst-ref% stx id new-id)
  (ast-case stx ()
    ((_ xid)
     (free-identifier=? #'xid id)
     (xform-wrap-source
      ['%#ref new-id]
      stx))
    (_ stx)))

;;; apply-collect-type-info
(def (collect-type-define-values% stx)
  (ast-case stx ()
    ((_ (id) expr)
     (alet (type (apply-basic-expression-type #'expr))
       (optimizer-declare-type! (identifier-symbol #'id) type)))
    (_ (void))))

;;; apply-basic-expression-type
(def (basic-expression-type-begin% stx)
  (ast-case stx ()
    ((_ expr)
     (compile-e #'expr))
    (_ #f)))

(def (basic-expression-type-lambda% stx)
  (ast-case stx (%#call %#ref)
    ((_ args (%#call (%#ref -apply) (%#ref -make-instance) (%#ref type-t) (%#ref xargs)))
     ;; defstruct constructor
     (and (identifier? #'args)
          (eq? (identifier-symbol #'-apply) 'apply)
          (eq? (identifier-symbol #'-make-instance) 'make-struct-instance)
          (free-identifier=? #'args #'xargs))
     (let* ((type-t (identifier-symbol #'type-t))
            (type (optimizer-resolve-type type-t)))
       (and (!struct-type? type)
            (make-!struct-cons type-t))))
    ((_ (arg ...) (%#call (%#ref -make-struct-instance) (%#ref type-t) (%#ref xarg) ...))
     ;; srfi/9 defrecord constructor
     (and (identifier-list? #'(arg ...))
          (eq? (identifier-symbol #'-make-struct-instance) 'make-struct-instance)
          (fx= (length #'(arg ...)) (length #'(xarg ...)))
          (andmap free-identifier=?
                  #'(arg ...)
                  #'(xarg ...)))
     (let* ((type-t (identifier-symbol #'type-t))
            (type (optimizer-resolve-type type-t)))
       (and (!struct-type? type)
            (make-!struct-cons type-t))))
    ((_ . form)
     ;; delegate dispatch
     (dispatch-lambda-form? #'form)
     (make-!lambda 'lambda (lambda-form-arity #'form) (dispatch-lambda-form-delegate #'form)))
    ;; TODO generic lambda type for call arity checking
    (_ #f)))

(def (basic-expression-type-case-lambda% stx)
  (def (clause-e form)
    (make-!lambda 'case-lambda-clause (lambda-form-arity form) (dispatch-lambda-form-delegate form)))
  (ast-case stx ()
    ((_ . clauses)
     (andmap dispatch-lambda-form? #'clauses)
     (let (clauses (map clause-e #'clauses))
       (make-!case-lambda 'case-lambda clauses)))
    (_ #f)))

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
    (((%#quote type-id) (%#quote #f) (%#quote fields) name (%#quote plist) (%#quote ctor))
     (make-!struct-type (stx-e #'type-id) #f (stx-e #'fields) 0 (stx-e #'ctor) (stx-e #'plist)))
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
    (_
     (begin
       (verbose "make-struct-type: can't infer type " (syntax->datum stx))
       #f))))

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

;;; apply-optimize-call
(def (optimize-call% stx)
  (ast-case stx (%#ref)
    ((_ (%#ref rator) . rands)
     (let* ((rator-id (identifier-symbol #'rator))
            (rator-type (optimizer-lookup-type rator-id)))
       (if rator-type
         (begin
           (verbose "optimize-call " rator-id  " => " rator-type " " (!type-id rator-type))
           {optimize-call rator-type stx #'rands}
           )
         (xform-call% stx))))
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
          ((!struct-type struct-type-id _ _ _ _ plist)
           (ast-case args ()
             ((expr)
              (let ((expr (compile-e #'expr))
                    (op (if (and plist (assgetq final: plist))
                          '%#struct-direct-instance?
                          '%#struct-instance?)))
                (xform-wrap-source
                 [op ['%#quote struct-type-id] expr]
                 stx)))
             (_ (raise-compile-error "Illegal struct predicate application" stx))))
         (#f (xform-call% stx))
         (else
          (raise-compile-error "Illegal struct predicate application; not a struct type"
                               stx struct-t struct-type)))))))

(defmethod {optimize-call !struct-cons}
  (lambda (self stx args)
    (with ((!struct-cons struct-t) self)
      (let (struct-type (optimizer-resolve-type struct-t))
        (match struct-type
          ((!struct-type type-id _ fields xfields ctor)
           (let (args (stx-map compile-e args))
             (cond
              ((or ctor (not xfields)) ; inline to make-struct-instance
               (xform-wrap-source
                ['%#call ['%#ref 'make-struct-instance] ['%#ref struct-t] args ...]
                stx))
            (else
             (let (arity (fx+ fields xfields))
               (if (fx= arity (length args))
                 (xform-wrap-source
                  ['%#call ['%#ref '##structure] ['%#ref struct-t] args ...]
                  stx)
                 (raise-compile-error "Illegal struct constructor application; arity mismatch"
                                      stx struct-t arity)))))))
          (#f
           (verbose "cannot inline struct constructor; unknown struct type " struct-t)
           (xform-call% stx))
          (else
           (raise-compile-error "Illegal struct constructor application; not a struct type"
                                stx struct-t struct-type)))))))

(defmethod {optimize-call !struct-getf}
  (lambda (self stx args)
    (with ((!struct-getf struct-t off) self)
      (let (struct-type (optimizer-resolve-type struct-t))
        (match struct-type
          ((!struct-type struct-type-id _ fields xfields)
           (if xfields
             (ast-case args ()
               ((expr)
                (let ((expr (compile-e #'expr))
                      (off (fx+ off xfields 1)))
                  (xform-wrap-source
                   ['%#struct-ref ['%#ref struct-t] ['%#quote off] expr]
                   stx)))
               (_ (raise-compile-error "Illegal struct accessor application" stx)))
             (begin
               (verbose "struct-getf: incomplete struct " struct-type-id)
               (xform-call% stx)
               )
             ))                 ; incomplete struct info; can't inline
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
             (ast-case args ()
               ((expr val)
                (let ((expr (compile-e #'expr))
                      (val (compile-e #'val))
                      (off (fx+ off xfields 1)))
                  (xform-wrap-source
                   ['%#struct-set! ['%#ref struct-t] ['%#quote off] expr val]
                   stx)))
               (_ (raise-compile-error "Illegal struct mutator application" stx)))
             (begin
               (verbose "struct-setf: incomplete struct " struct-type-id)
               (xform-call% stx)
               )
             ))                 ; incomplete struct info; can't inline
          (#f (xform-call% stx))
          (else
           (raise-compile-error "Illegal struct predicate application; not a struct type"
                                stx struct-t struct-type)))))))

(defmethod {optimize-call !lambda}
  (lambda (self stx args)
    (with ((!lambda _ arity dispatch) self)
      (unless (!lambda-arity-match? self args)
        (raise-compile-error "Illegal lambda application; arity mismatch"
                             stx arity))
      (if dispatch
        (let (args (stx-map compile-e args))
          (verbose "dispatch lambda => " dispatch)
          (xform-wrap-source
           ['%#call ['%#ref dispatch] args ...]
           stx))
        (xform-call% stx)))))

(defmethod {optimize-call !case-lambda}
  (lambda (self stx args)
    (with ((!case-lambda _ clauses) self)
      (cond
       ((find (cut !lambda-arity-match? <> args) clauses)
        => (lambda (clause) {optimize-call clause stx args}))
       (else
        (raise-compile-error "Illegal case-lambda application; arity mismatch"
                             stx (map (cut !lambda-arity clauses) clauses)))))))

(def (!lambda-arity-match? self args)
  (with ((!lambda _ arity) self)
    (match arity
      ((? fixnum?)
       (fx= (stx-length args) arity))
      ([arity]
       (fx>= (stx-length args) arity)))))

;;; apply-generate-ssxi
(def (generate-ssxi-define-values% stx)
  (def (generate-e id)
    (let (sym (identifier-symbol id))
      (cond
       ((optimizer-lookup-type sym)
        => (lambda (type)
             (let (typedecl {typedecl type})
               ['declare-type sym typedecl])))
       (else '(begin)))))
  
  (ast-case stx ()
    ((_ (id) _)
     (generate-e #'id))
    ((_ (id ...) _)
     (let* ((ids (filter stx-e #'(id ...)))
            (types (map generate-e ids)))
       ['begin types ...]))))

(defmethod {typedecl !alias}
  (lambda (self)
    (with ((!alias alias-id) self)
      ['@alias alias-id])))

(defmethod {typedecl !struct-type}
  (lambda (self)
    (with ((!struct-type type-id super fields _ ctor plist) self)
      ['@struct-type type-id super fields ctor plist])))

(defmethod {typedecl !struct-pred}
  (lambda (self)
    (with ((!struct-pred struct-t) self)
      ['@struct-pred struct-t])))

(defmethod {typedecl !struct-cons}
  (lambda (self)
    (with ((!struct-cons struct-t) self)
      ['@struct-cons struct-t])))

(defmethod {typedecl !struct-getf}
  (lambda (self)
    (with ((!struct-getf struct-t off) self)
      ['@struct-getf struct-t off])))

(defmethod {typedecl !struct-setf}
  (lambda (self)
    (with ((!struct-setf struct-t off) self)
      ['@struct-setf struct-t off])))

(defmethod {typedecl !lambda}
  (lambda (self)
    (verbose "XXX IMPLEMENT ME: !lambda::typedecl")
    #f))

(defmethod {typedecl !case-lambda}
  (lambda (self)
    (verbose "XXX IMPLEMENT ME: !lambda::typedecl")
    #f))

;;; utilities
(def (identifier-symbol stx)
  (cond
   ((resolve-identifier stx) => binding-id)
   (else
    (stx-e stx))))
