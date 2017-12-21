;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler optimization passes
package: gerbil/compiler
namespace: gxc

(import :gerbil/expander
        "base"
        "compile"
        <syntax-case> <syntax-sugar>
        (only-in :gerbil/gambit/exceptions display-exception))
(export #t)

(def current-compile-optimizer-info
  (make-parameter #f))
(def current-compile-mutators
  (make-parameter #f))
(def current-compile-local-type
  (make-parameter #f))

(defstruct optimizer-info (type ssxi)
  constructor: :init!)

(defmethod {:init! optimizer-info}
  (lambda (self)
    (struct-instance-init! self (make-hash-table-eq) (make-hash-table-eq))))

;; sticky to persist across batch compilation and avoid reloading ssxi modules
(def (optimizer-info-init!)
  (unless (current-compile-optimizer-info)
    (current-compile-optimizer-info (make-optimizer-info))))


;;; optimizer entry point
(def (optimize! ctx)
  (parameterize ((current-compile-mutators (make-hash-table-eq))
                 (current-compile-local-type (make-hash-table-eq)))
    (optimizer-load-ssxi-deps ctx)
    ;; mark ssxi presence for batch
    (hash-put! (optimizer-info-ssxi (current-compile-optimizer-info))
               (expander-context-id ctx)
               #t)
    (let (code (optimize-source (module-context-code ctx)))
      (set! (module-context-code ctx) code))))

;;; ssxi loading
(def (optimizer-load-ssxi-deps ctx)
  (def deps
    (let (imports (module-context-import ctx))
      (cond
       ((core-context-prelude ctx) => (cut cons <> imports))
       (else imports))))

  (let lp ((rest deps))
    (match rest
      ([hd . rest]
       (cond
        ((module-context? hd)
         (unless (hash-get (optimizer-info-ssxi (current-compile-optimizer-info))
                           (expander-context-id hd))
           (cond
            ((core-context-prelude hd)
             => (lambda (pre)
                  (lp (cons pre (module-context-import hd)))))
            (else
             (lp (module-context-import hd))))
           (optimizer-load-ssxi hd))
         (lp rest))
        ((prelude-context? hd)
         (unless (hash-get (optimizer-info-ssxi (current-compile-optimizer-info))
                           (expander-context-id hd))
           (lp (prelude-context-import hd))
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
             (string-append ":" str-id ".ss")))
           (ssxi-path
            (if (and artefact-path (file-exists? artefact-path))
              artefact-path
              library-path)))
      (verbose "Loading ssxi module " ssxi-path)
      (import-module ssxi-path #t #t)))

  (and (expander-context-id ctx)
       (with-catch catch-e import-e)))

;;; optimizer-info: types
(defstruct !type (id))
(defstruct (!alias !type) ())
(defstruct (!struct-type !type) (super fields xfields ctor plist methods)
  constructor: :init!)
(defstruct (!procedure !type) ())
(defstruct (!struct-pred !procedure) ())
(defstruct (!struct-cons !procedure) ())
(defstruct (!struct-getf !procedure) (off unchecked?))
(defstruct (!struct-setf !procedure) (off unchecked?))
(defstruct (!lambda !procedure) (arity dispatch inline inline-typedecl)
  constructor: :init!)
(defstruct (!case-lambda !procedure) (clauses))

(defmethod {:init! !struct-type}
  (lambda (self id super fields xfields ctor plist)
    (struct-instance-init! self id super fields xfields ctor plist #f)))

(defmethod {:init! !lambda}
  (lambda (self id arity dispatch (inline #f) (typedecl #f))
    (struct-instance-init! self id arity dispatch inline typedecl)))

(def (!struct-type-vtab type)
  (cond
   ((!struct-type-methods type) => values)
   (else
    (let (vtab (make-hash-table-eq))
      (set! (!struct-type-methods type) vtab)
      vtab))))

(def (!struct-type-lookup-method type method)
  (alet (vtab (!struct-type-methods type))
    (hash-get vtab method)))

(def (optimizer-declare-type! sym type (local? #f))
  (unless (!type? type)
    (error "bad declaration: expected !type" sym type))
  (verbose "declare-type " sym " " (struct->list type))
  (hash-put! (if local?
               (current-compile-local-type)
               (optimizer-info-type (current-compile-optimizer-info)))
             sym type))

(def (optimizer-declare-method! type-t method sym (rebind? #f))
  (let (type (optimizer-resolve-type type-t))
    (cond
     ((!struct-type? type)
      (let (vtab (!struct-type-vtab type))
        (cond
        (rebind? ; we don't track rebindable methods, so it shouldn't be there
         (if (hash-key? vtab method)
           (verbose "declare-method: [warning] skip rebind on existing method" type-t " " method)
           (verbose "declare-method: skip rebind method " type-t " " method)))
        ((hash-key? vtab method)
         (error "declare-method: duplicate method declaration"))
        (else
         (verbose "declare-method " type-t " " method " => " sym)
         (hash-put! vtab method sym)))))
     ((not type)
      (verbose "declare-method: unknown type "  type-t))
     (else
      (error "declare-method: bad method declaration; no method table" type-t type)))))

(def (optimizer-lookup-type sym)
  (or (alet (ht (current-compile-local-type))
        (hash-get ht sym))
      (hash-get (optimizer-info-type (current-compile-optimizer-info))
                sym)))

(def (optimizer-resolve-type sym)
  (alet (type (optimizer-lookup-type sym))
    (if (!alias? type)
      (optimizer-resolve-type (!type-id type))
      type)))

(def (optimizer-lookup-method type-t method)
  (let (type (optimizer-resolve-type type-t))
    (cond
     ((!struct-type? type)
      (!struct-type-lookup-method type method))
     (else #f))))

;;; source transforms
(def (optimize-source stx)
  (apply-collect-mutators stx)
  (let (stx (apply-lift-top-lambdas stx))
    (apply-collect-type-info stx)
    (apply-optimize-call stx)))

(defcompile-method #f &identity-expression
  (%#lambda                       xform-identity)
  (%#case-lambda                  xform-identity)
  (%#let-values              xform-identity)
  (%#letrec-values           xform-identity)
  (%#letrec*-values          xform-identity)
  (%#quote                   xform-identity)
  (%#quote-syntax            xform-identity)
  (%#call                    xform-identity)
  (%#if                      xform-identity)
  (%#ref                     xform-identity)
  (%#set!                    xform-identity)
  (%#struct-instance?        xform-identity)
  (%#struct-direct-instance? xform-identity)
  (%#struct-ref              xform-identity)
  (%#struct-set!             xform-identity)
  (%#struct-direct-ref       xform-identity)
  (%#struct-direct-set!      xform-identity)
  (%#struct-unchecked-ref    xform-identity)
  (%#struct-unchecked-set!   xform-identity))

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
  (%#lambda                       xform-lambda%)
  (%#case-lambda                  xform-case-lambda%)
  (%#let-values              xform-let-values%)
  (%#letrec-values           xform-let-values%)
  (%#letrec*-values          xform-let-values%)
  (%#quote                   xform-identity)
  (%#quote-syntax            xform-identity)
  (%#call                    xform-operands)
  (%#if                      xform-operands)
  (%#ref                     xform-identity)
  (%#set!                    xform-setq%)
  (%#struct-instance?        xform-operands)
  (%#struct-direct-instance? xform-operands)
  (%#struct-ref              xform-operands)
  (%#struct-set!             xform-operands)
  (%#struct-direct-ref       xform-operands)
  (%#struct-direct-set!      xform-operands)
  (%#struct-unchecked-ref    xform-operands)
  (%#struct-unchecked-set!   xform-operands))

(defcompile-method #f (&basic-xform &basic-xform-expression &identity)
  (%#begin          xform-begin%)
  (%#module         xform-module%)
  (%#define-values  xform-define-values%))

(defcompile-method apply-collect-mutators (&collect-mutators &void)
  (%#begin                   collect-begin%)
  (%#module                  collect-module%)
  (%#lambda                       collect-body-lambda%)
  (%#case-lambda                  collect-body-case-lambda%)
  (%#let-values              collect-body-let-values%)
  (%#letrec-values           collect-body-let-values%)
  (%#letrec*-values          collect-body-let-values%)
  (%#call                    collect-operands)
  (%#if                      collect-operands)
  (%#set!                    collect-mutators-setq%)
  (%#struct-instance?        collect-operands)
  (%#struct-direct-instance? collect-operands)
  (%#struct-ref              collect-operands)
  (%#struct-set!             collect-operands)
  (%#struct-direct-ref       collect-operands)
  (%#struct-direct-set!      collect-operands)
  (%#struct-unchecked-ref    collect-operands)
  (%#struct-unchecked-set!   collect-operands))

(defcompile-method apply-lift-top-lambdas (&lift-top-lambdas &basic-xform)
  (%#define-values  lift-top-lambda-define-values%)
  (%#let-values     lift-top-lambda-let-values%)
  (%#letrec-values  lift-top-lambda-letrec-values%)
  (%#letrec*-values lift-top-lambda-letrec-values%))

(defcompile-method apply-expression-subst (&expression-subst &basic-xform-expression)
  (%#begin xform-begin%)
  (%#ref   expression-subst-ref%))

(defcompile-method apply-collect-type-info (&collect-type-info &void)
  (%#begin          collect-begin%)
  (%#module         collect-module%)
  (%#define-values  collect-type-define-values%)
  (%#lambda              collect-body-lambda%)
  (%#case-lambda         collect-body-case-lambda%)
  (%#let-values     collect-type-let-values%)
  (%#letrec-values  collect-type-let-values%)
  (%#letrec*-values collect-type-let-values%)
  (%#call           collect-type-call%)
  (%#if             collect-operands)
  (%#set!           collect-body-setq%))

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
  (%#module        generate-ssxi-module%)
  (%#define-values generate-ssxi-define-values%)
  (%#call          generate-ssxi-call%))

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
     (let (forms (map (xform-apply-compile-e args) #'forms))
       (xform-wrap-source
        ['%#begin forms ...]
        stx)))))

(def (xform-module% stx . args)
  (ast-case stx ()
    ((_ id . body)
     (let* ((ctx (syntax-local-e #'id))
            (code (module-context-code ctx))
            (code
             (parameterize ((current-expander-context ctx))
               (apply compile-e code args))))
       (set! (module-context-code ctx)
         code)
       (xform-wrap-source
        ['%#module #'id code]
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
     (let (body (map (xform-apply-compile-e args) #'body))
       (xform-wrap-source
        ['%#lambda #'hd body ...]
        stx)))))

(def (xform-case-lambda% stx . args)
  (def (clause-e clause)
    (ast-case clause ()
      ((hd . body)
       (let (body (map (xform-apply-compile-e args) #'body))
         [#'hd body ...]))))

  (ast-case stx ()
    ((_ . clauses)
     (let (clauses (map clause-e #'clauses))
       (xform-wrap-source
        ['%#case-lambda clauses ...]
        stx)))))

(def (xform-let-values% stx . args)
  (ast-case stx ()
    ((form ((hd expr) ...) . body)
     (with-syntax (((expr ...) (map (xform-apply-compile-e args) #'(expr ...))))
       (let (body (map (xform-apply-compile-e args) #'body))
         (xform-wrap-source
          [#'form #'((hd expr) ...) body ...]
          stx))))))

(def (xform-operands stx . args)
  (ast-case stx ()
    ((form . rands)
     (let (rands (map (xform-apply-compile-e args) #'rands))
       (xform-wrap-source
        [#'form rands ...]
        stx)))))

(def xform-call% xform-operands)

(def (xform-setq% stx . args)
  (ast-case stx ()
    ((_ id expr)
     (let (expr (apply compile-e #'expr args))
       (xform-wrap-source
        ['%#set! #'id expr]
        stx)))))

;;; apply-collect-mutators
(def (collect-mutators-setq% stx)
  (ast-case stx ()
    ((_ id expr)
     (let (sym (identifier-symbol #'id))
       (verbose "collect mutator " sym)
       (hash-put! (current-compile-mutators) sym #t) ; just set for now
       (compile-e #'expr)))))

;;; apply-lift-top-lambdas
(def (dispatch-lambda-form? form)
  (ast-case form (%#call %#ref)
    (((arg ...) (%#call (%#ref rator) (%#ref xarg) ...))
     (and (identifier-list? #'(arg ...))
          (fx= (length #'(arg ...)) (length #'(xarg ...)))
          (andmap free-identifier=? #'(arg ...) #'(xarg ...))
          (not (find (cut free-identifier=? <> #'rator) #'(arg ...))))
     #t)
    (((arg ... . rest) (%#call (%#ref -apply) (%#ref rator) (%#ref xarg) ... (%#ref xrest)))
     (and (identifier-list? #'(arg ...))
          (identifier? #'rest)
          (eq? (identifier-symbol #'-apply) 'apply)
          (fx= (length #'(arg ...)) (length  #'(xarg ...)))
          (andmap free-identifier=? #'(arg ...) #'(xarg ...))
          (free-identifier=? #'rest #'xrest)
          (not (find (cut free-identifier=? <> #'rator) #'(arg ... rest))))
     #t)
    ((args (%#call (%#ref -apply) (%#ref rator) (%#ref xargs)))
     (and (identifier? #'args)
          (eq? (identifier-symbol #'-apply) 'apply)
          (free-identifier=? #'args #'xargs)
          (not (free-identifier=? #'rator #'args)))
     #t)
    (_ #f)))

(def (dispatch-lambda-form-delegate form)
  (ast-case form (%#call %#ref)
    (((arg ...) (%#call (%#ref rator) (%#ref xarg) ...))
     (identifier-symbol #'rator))
    (((arg ... . rest) (%#call (%#ref -apply) (%#ref rator) . _))
     (identifier-symbol #'rator))
    ((args (%#call (%#ref -apply) (%#ref rator) _))
     (identifier-symbol #'rator))))

(def (lambda-form-arity form)
  (ast-case form ()
    ((hd body)
     (ast-case #'hd ()
       ((arg ...)
        (length #'(arg ...)))
       ((arg ... . rest)
        [(length #'(arg ...))])
       (rest [0])))))

(def (lambda-expr? expr)
  (ast-case expr (%#lambda)
    ((%#lambda . form) #t)
    (_ #f)))

(def (case-lambda-expr? expr)
  (ast-case expr (%#case-lambda)
    ((%#case-lambda . clauses) #t)
    (_ #f)))

(def (opt-lambda-expr? expr)
  (ast-case expr (%#let-values)
    ((%#let-values (((xid) lambda-expr)) case-lambda-expr)
     ;; opt-lambda expansion
     (and (identifier? #'xid)
          (lambda-expr? #'lambda-expr)
          (case-lambda-expr? #'case-lambda-expr)))
    (_ #f)))

(def (lift-case-lambda-clauses stx id clauses (gensym? #f))
  (let lp ((rest clauses) (ids []) (impls []) (clauses []))
    (match rest
      ([clause . rest]
       (if (dispatch-lambda-form? clause)
         (lp rest ids impls (cons clause clauses))
         (ast-case clause ()
           ((hd . body)
            (let* ((id (make-symbol (stx-e id) "__" (length clauses)
                                    (if gensym? (gensym '__) "")))
                   (id (core-quote-syntax id (stx-source stx)))
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
                         stx)])
                      (args
                       [#'hd
                        (xform-wrap-source
                         ['%#call ['%#ref 'apply] ['%#ref id] #'(%#ref args)]
                         stx)]))))
              (lp rest
                  (cons id ids)
                  (cons impl impls)
                  (cons clause clauses)))))))
      (else
       (values (reverse ids) (reverse impls) (reverse clauses))))))

(def (lift-top-lambda-define-values% stx)
  (def (case-lambda-clause-def id impl)
    (xform-wrap-source
     ['%#define-values [id] (compile-e impl)]
     stx))

  (ast-case stx ()
    ((_ (id) expr)
     (and (identifier? #'id)
          (case-lambda-expr? #'expr))
     (ast-case #'expr ()
       ((_ . clauses)
        (andmap dispatch-lambda-form? #'clauses)
        stx)
       ((_ . clauses)
        (let* (((values ids impls clauses)
                (lift-case-lambda-clauses stx #'id #'clauses))
               (_ (for-each core-bind-runtime! ids))
               (defs (map case-lambda-clause-def ids impls)))
          (verbose "lift case-lambda clauses " (identifier-symbol #'id) " => " (map identifier-symbol ids))
          (xform-wrap-source
           ['%#begin defs ...
                     (xform-wrap-source
                      ['%#define-values [#'id]
                                        (xform-wrap-source
                                         ['%#case-lambda clauses ...]
                                         #'case-lambda-expr)]
                      stx)]
           stx)))))
    ((_ (id) expr)
     (and (identifier? #'id)
          (opt-lambda-expr? #'expr))
     (ast-case #'expr ()
       ((_ (((xid) lambda-expr)) case-lambda-expr)
        (let* ((lambda-id (make-symbol (stx-e #'id) "__" (stx-e #'xid)))
               (lambda-id (core-quote-syntax lambda-id (stx-source stx)))
               (_ (core-bind-runtime! lambda-id))
               (new-case-lambda-expr
                (apply-expression-subst #'case-lambda-expr #'xid lambda-id)))
       (verbose "lift opt-lambda dispatch "(identifier-symbol #'id) " => " (identifier-symbol lambda-id))
       (xform-wrap-source
        ['%#begin (xform-wrap-source
                   ['%#define-values [lambda-id] (compile-e #'lambda-expr)]
                   stx)
                  (lift-top-lambda-define-values%
                   (xform-wrap-source
                    ['%#define-values [#'id] new-case-lambda-expr]
                    stx))]
        stx)))))
    ((_ hd expr)
     (xform-wrap-source
      ['%#define-values #'hd (compile-e #'expr)]
      stx))))

(def (lift-top-lambda-let-values% stx)
  (def (bind-e id expr (compile? #t))
    [[id] (if compile? (compile-e expr) expr)])

  (def (compile-bindings rest)
    (let lp ((rest rest) (lift1 []) (lift2 []) (bind []))
      (match rest
        ([hd . rest]
         (ast-case hd ()
           (((id) expr)
            (and (identifier? #'id)
                 (case-lambda-expr? #'expr))
            (ast-case #'expr ()
              ((_ . clauses)
               (andmap dispatch-lambda-form? #'clauses)
               (lp rest lift1 lift2 (cons (bind-e #'id #'expr #f) bind)))
              ((_ . clauses)
               (let* (((values ids impls clauses)
                       (lift-case-lambda-clauses stx #'id #'clauses #t))
                      (_ (for-each core-bind-runtime! ids))
                      (xbind (map bind-e ids impls))
                      (expr* (xform-wrap-source
                              ['%#case-lambda clauses ...]
                              #'case-lambda-expr))
                      (bind* (bind-e #'id expr* #f)))
                 (verbose "lift case-lambda clauses " (identifier-symbol #'id) " => " (map identifier-symbol ids))
                 (lp rest lift1 (foldl cons lift2 xbind) (cons bind* bind))))))
           (((id) expr)
            (and (identifier? #'id)
                 (opt-lambda-expr? #'expr))
            (ast-case #'expr ()
              ((_ (((xid) lambda-expr)) case-lambda-expr)
               (let* ((lambda-id (make-symbol (stx-e #'id) "__" (stx-e #'xid) (gensym '__)))
                      (lambda-id (core-quote-syntax lambda-id (stx-source stx)))
                      (_ (core-bind-runtime! lambda-id))
                      (new-case-lambda-expr
                       (apply-expression-subst #'case-lambda-expr #'xid lambda-id)))
                 (verbose "lift opt-lambda dispatch "(identifier-symbol #'id) " => " (identifier-symbol lambda-id))
                 (lp (cons (bind-e #'id new-case-lambda-expr #f) rest)
                     (cons (bind-e lambda-id #'lambda-expr) lift1)
                     lift2 bind)))))
           ((hd expr)
            (lp rest lift1 lift2 (cons [#'hd (compile-e #'expr)] bind)))))
        (else
         (values (reverse lift1)
                 (reverse lift2)
                 (reverse bind))))))

  (ast-case stx ()
    ((_ (bind ...) body)
     (ormap lift-top-lambda-binding? #'(bind ...))
     (parameterize ((current-expander-context (make-local-context)))
       (let* (((values lift1 lift2 hd)
               (compile-bindings #'(bind ...)))
              (body (compile-e #'body))
              (expr
               (xform-wrap-source
                ['%#let-values hd body]
                stx))
              (expr
               (if (null? lift2)
                 expr
                 (xform-wrap-source
                  ['%#let-values lift2 expr]
                  stx)))
              (expr
               (if (null? lift1)
                 expr
                 (xform-wrap-source
                  ['%#let-values lift1 expr]
                  stx))))
         expr)))
    (_ (xform-let-values% stx))))

(def (lift-top-lambda-letrec-values% stx)
  (def (bind-e id expr (compile? #t))
    [[id] (if compile? (compile-e expr) expr)])

  (def (compile-bindings rest)
    (let lp ((rest rest) (bind []))
      (match rest
        ([hd . rest]
         (ast-case hd ()
           (((id) expr)
            (and (identifier? #'id)
                 (case-lambda-expr? #'expr))
            (ast-case #'expr ()
              ((_ . clauses)
               (andmap dispatch-lambda-form? #'clauses)
               (lp rest (cons (bind-e #'id #'expr #f) bind)))
              ((_ . clauses)
               (let* (((values ids impls clauses)
                       (lift-case-lambda-clauses stx #'id #'clauses #t))
                      (_ (for-each core-bind-runtime! ids))
                      (xbind (map bind-e ids impls))
                      (expr* (xform-wrap-source
                              ['%#case-lambda clauses ...]
                              #'case-lambda-expr))
                      (bind* (bind-e #'id expr* #f)))
                 (verbose "lift case-lambda clauses " (identifier-symbol #'id) " => " (map identifier-symbol ids))
                 (lp rest (cons bind* (foldl cons bind xbind)))))))
           (((id) expr)
            (and (identifier? #'id)
                 (opt-lambda-expr? #'expr))
            (ast-case #'expr ()
              ((_ (((xid) lambda-expr)) case-lambda-expr)
               (let* ((lambda-id (make-symbol (stx-e #'id) "__" (stx-e #'xid) (gensym '__)))
                      (lambda-id (core-quote-syntax lambda-id (stx-source stx)))
                      (_ (core-bind-runtime! lambda-id))
                      (new-case-lambda-expr
                       (apply-expression-subst #'case-lambda-expr #'xid lambda-id)))
                 (verbose "lift opt-lambda dispatch "(identifier-symbol #'id) " => " (identifier-symbol lambda-id))
                 (lp (cons (bind-e #'id new-case-lambda-expr #f) rest)
                     (cons (bind-e lambda-id #'lambda-expr) bind))))))
           ((hd expr)
            (lp rest (cons [#'hd (compile-e #'expr)] bind)))))
        (else
         (reverse bind)))))

  (ast-case stx ()
    ((form (bind ...) body)
     (ormap lift-top-lambda-binding? #'(bind ...))
     (parameterize ((current-expander-context (make-local-context)))
       (let ((hd (compile-bindings #'(bind ...)))
             (body (compile-e #'body)))
         (xform-wrap-source
          [#'form hd body]
          stx))))
    (_ (xform-let-values% stx))))

(def (lift-top-lambda-binding? bind)
  (ast-case bind ()
    (((id) expr)
     (and (identifier? #'id)
          (or (case-lambda-expr? #'expr)
              (opt-lambda-expr? #'expr))))
    (_ #f)))

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
     (identifier? #'id)
     (let (sym (identifier-symbol #'id))
       (if (hash-get (current-compile-mutators) sym)
           (verbose "skipping type declaration for mutable binding " sym)
           (alet (type (apply-basic-expression-type #'expr))
             (optimizer-declare-type! sym type)))
       (compile-e #'expr)))
    ((_ hd expr)
     (compile-e #'expr))))

(def (collect-type-let-values% stx)
  (def (collect-e hd expr)
    (ast-case hd ()
      ((id)
       (identifier? #'id)
       (let (sym (identifier-symbol #'id))
         (if (hash-get (current-compile-mutators) sym)
           (verbose "skipping type declaration for mutable binding " sym)
           (alet (type (apply-basic-expression-type expr))
             (optimizer-declare-type! sym type #t)))))
      (_ (void))))

  (ast-case stx ()
    ((_ ((hd expr) ...) body)
     (begin
       (for-each collect-e #'(hd ...) #'(expr ...))
       (for-each compile-e #'(expr ...))
       (compile-e #'body)))))

(def (collect-type-call% stx)
  (ast-case stx (%#ref %#quote)
    ((_ (%#ref -bind-method) (%#ref type-t) (%#quote method) (%#ref impl) (%#quote rebind?))
     (eq? (identifier-symbol #'-bind-method) 'bind-method!)
     (optimizer-declare-method! (identifier-symbol #'type-t)
                                (stx-e #'method) (identifier-symbol #'impl)
                                (stx-e #'rebind?)))
    ((_ (%#ref -bind-method!) (%#ref type-t) (%#quote method) (%#ref impl))
     (eq? (identifier-symbol #'-bind-method) 'bind-method!)
     (optimizer-declare-method! (identifier-symbol #'type-t)
                                (stx-e #'method) (identifier-symbol #'impl)
                                #f))
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

(def (basic-expression-type-make-struct-field-accessor stx args (unchecked? #f))
  (ast-case args (%#quote %#ref)
    (((%#ref type-t) (%#quote off))
     (make-!struct-getf (identifier-symbol #'type-t) (stx-e #'off) unchecked?))
    (_ #f)))

(def (basic-expression-type-make-struct-field-mutator stx args (unchecked? #f))
  (ast-case args (%#quote %#ref)
    (((%#ref type-t) (%#quote off))
     (make-!struct-setf (identifier-symbol #'type-t) (stx-e #'off) unchecked?))
    (_ #f)))

(def (basic-expression-type-make-struct-field-unchecked-accessor stx args)
  (basic-expression-type-make-struct-field-accessor stx args #t))

(def (basic-expression-type-make-struct-field-unchecked-mutator stx args)
  (basic-expression-type-make-struct-field-mutator stx args #t))

(defbasic-expression-type-builtin
  (make-struct-type basic-expression-type-make-struct-type)
  (make-struct-predicate basic-expression-type-make-struct-predicate)
  (make-struct-field-accessor basic-expression-type-make-struct-field-accessor)
  (make-struct-field-mutator basic-expression-type-make-struct-field-mutator)
  (make-struct-field-unchecked-accessor
   basic-expression-type-make-struct-field-unchecked-accessor)
  (make-struct-field-unchecked-mutator
   basic-expression-type-make-struct-field-unchecked-mutator))

(def (basic-expression-type-ref% stx)
  (ast-case stx ()
    ((_ id)
     (optimizer-lookup-type (identifier-symbol #'id)))))

;;; apply-optimize-call
(def (optimize-call% stx)
  (ast-case stx (%#ref)
    ((_ (%#ref rator) . rands)
     (let* ((rator-id (identifier-symbol #'rator))
            (rator-type (optimizer-resolve-type rator-id)))
       (cond
        ((!procedure? rator-type)
         (verbose "optimize-call " rator-id  " => " rator-type " " (!type-id rator-type))
         {optimize-call rator-type stx #'rands})
        ((not rator-type)
         (xform-call% stx))
        (else
         (raise-compile-error "Illegal application; not a procedure" stx rator-type)))))
    (_ (xform-call% stx))))

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
           (let (args (map compile-e args))
             (cond
              ((and ctor xfields (!struct-type-lookup-method struct-type ctor))
               => (lambda (kons) ; known constructor, inline make-object and dispatch
                    (let ($obj (make-symbol (gensym '__obj)))
                      (xform-wrap-source
                       ['%#let-values [[[$obj]
                                        ['%#call ['%#ref 'make-object]
                                                 ['%#ref struct-t]
                                                 ['%#quote (fx+ fields xfields)]]]]
                                      ['%#begin
                                       (compile-e
                                        (xform-wrap-source
                                         ['%#call ['%#ref kons] ['%#ref $obj] args ...]
                                         stx))
                                       ['%#ref $obj]]]
                       stx))))
              ((or ctor (not xfields)) ; inline call to make-struct-instance
               (xform-wrap-source
                ['%#call ['%#ref 'make-struct-instance] ['%#ref struct-t] args ...]
                stx))
              (else ; plain old struct, inline ##structure application
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
    (with ((!struct-getf struct-t off unchecked?) self)
      (let (struct-type (optimizer-resolve-type struct-t))
        (match struct-type
          ((!struct-type struct-type-id _ fields xfields _ plist)
           (if xfields
             (ast-case args ()
               ((expr)
                (let ((expr (compile-e #'expr))
                      (off (fx+ off xfields 1))
                      (op (cond
                           (unchecked?
                            '%#struct-unchecked-ref)
                           ((and plist (assgetq final: plist))
                            '%#struct-direct-ref)
                           (else
                            '%#struct-ref))))
                  (xform-wrap-source
                   [op ['%#ref struct-t] ['%#quote off] expr]
                   stx)))
               (_ (raise-compile-error "Illegal struct accessor application" stx)))
             (begin
               (verbose "struct-getf: incomplete struct " struct-type-id)
               (xform-call% stx))
             ))                 ; incomplete struct info; can't inline
          (#f (xform-call% stx))
          (else
           (raise-compile-error "Illegal struct predicate application; not a struct type"
                                stx struct-t struct-type)))))))

(defmethod {optimize-call !struct-setf}
  (lambda (self stx args)
    (with ((!struct-setf struct-t off unchecked?) self)
      (let (struct-type (optimizer-resolve-type struct-t))
        (match struct-type
          ((!struct-type struct-type-id _ fields xfields _ plist)
           (if xfields
             (ast-case args ()
               ((expr val)
                (let ((expr (compile-e #'expr))
                      (val (compile-e #'val))
                      (off (fx+ off xfields 1))
                      (op (cond
                           (unchecked?
                            '%#struct-unchecked-set!)
                           ((and plist (assgetq final: plist))
                            '%#struct-direct-set!)
                           (else
                            '%#struct-set!))))
                  (xform-wrap-source
                   [op ['%#ref struct-t] ['%#quote off] expr val]
                   stx)))
               (_ (raise-compile-error "Illegal struct mutator application" stx)))
             (begin
               (verbose "struct-setf: incomplete struct " struct-type-id)
               (xform-call% stx))
             ))                 ; incomplete struct info; can't inline
          (#f (xform-call% stx))
          (else
           (raise-compile-error "Illegal struct predicate application; not a struct type"
                                stx struct-t struct-type)))))))

(defmethod {optimize-call !lambda}
  (lambda (self stx args)
    (with ((!lambda _ arity dispatch inline) self)
      (unless (!lambda-arity-match? self args)
        (raise-compile-error "Illegal lambda application; arity mismatch"
                             stx arity))
      (cond
       (inline
        (verbose "inline lambda")
        (compile-e
         (xform-wrap-source
          (inline stx)
          stx)))
       (dispatch
        (verbose "dispatch lambda => " dispatch)
        (compile-e
         (xform-wrap-source
          ['%#call ['%#ref dispatch] args ...]
          stx)))
       (else
        (xform-call% stx))))))

(defmethod {optimize-call !case-lambda}
  (lambda (self stx args)
    (with ((!case-lambda _ clauses) self)
      (cond
       ((find (cut !lambda-arity-match? <> args) clauses)
        => (lambda (clause) {optimize-call clause stx args}))
       (else
        (raise-compile-error "Illegal case-lambda application; arity mismatch"
                             stx (map !lambda-arity clauses)))))))

(def (!lambda-arity-match? self args)
  (with ((!lambda _ arity) self)
    (match arity
      ((? fixnum?)
       (fx= (length args) arity))
      ([arity]
       (fx>= (length args) arity)))))

;;; apply-generate-ssxi
(def (generate-ssxi-module% stx)
  (ast-case stx ()
    ((_ id . body)
     (let* ((ctx (syntax-local-e #'id))
            (code (module-context-code ctx)))
       (parameterize ((current-expander-context ctx))
         (compile-e code))))))

(def (generate-ssxi-define-values% stx)
  (def (generate-e id)
    (let (sym (and (identifier? #'id) (identifier-symbol id)))
      (cond
       ((and sym (optimizer-lookup-type sym))
        => (lambda (type)
             (verbose "generate typedecl " sym)
             (let (typedecl {typedecl type})
               ['declare-type sym typedecl])))
       (else '(begin)))))

  (ast-case stx ()
    ((_ (id) _)
     (generate-e #'id))
    ((_ (id ...) _)
     (let (types (map generate-e #'(id ...)))
       ['begin types ...]))))

(def (generate-ssxi-call% stx)
  (ast-case stx (%#ref %#quote)
    ((_ (%#ref -bind-method) (%#ref type-t) (%#quote method) (%#ref impl) (%#quote rebind?))
     (eq? (identifier-symbol #'-bind-method) 'bind-method!)
     ['declare-method (identifier-symbol #'type-t)
                      (stx-e #'method) (identifier-symbol #'impl)
                      (stx-e #'rebind?)])
    ((_ (%#ref -bind-method!) (%#ref type-t) (%#quote method) (%#ref impl))
     (eq? (identifier-symbol #'-bind-method) 'bind-method!)
     ['declare-method (identifier-symbol #'type-t)
                      (stx-e #'method) (identifier-symbol #'impl)
                      #f])
    (_ '(begin))))


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
    (with ((!struct-getf struct-t off unchecked?) self)
      ['@struct-getf struct-t off unchecked?])))

(defmethod {typedecl !struct-setf}
  (lambda (self)
    (with ((!struct-setf struct-t off unchecked?) self)
      ['@struct-setf struct-t off unchecked?])))

(defmethod {typedecl !lambda}
  (lambda (self)
    (with ((!lambda _ arity dispatch inline typedecl) self)
      (if inline
        (or typedecl
            (error "Cannot generate typedecl for inline rules"))
        ['@lambda arity dispatch]))))

(defmethod {typedecl !case-lambda}
  (lambda (self)
    (def (clause-e clause)
      (with ((!lambda _ arity dispatch) clause)
        [arity dispatch]))
    (with ((!case-lambda _ clauses) self)
      (let (clauses (map clause-e clauses))
        ['@case-lambda clauses ...]))))

;;; utilities
(def (identifier-symbol stx)
  (generate-runtime-binding-id stx))
