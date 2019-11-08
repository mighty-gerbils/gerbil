;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler optimization passes
package: gerbil/compiler
namespace: gxc

(import :gerbil/expander
        "base"
        "compile"
        "optimize-base"
        "optimize-xform"
        "optimize-top"
        "optimize-spec"
        "optimize-ann"
        "optimize-call"
        (only-in :gerbil/gambit/exceptions display-exception))
(export #t)

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
                    (module-id->path-string (expander-context-id ctx))
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

;;; source transforms
(def (optimize-source stx)
  (apply-collect-mutators stx)
  (apply-collect-methods stx)
  ;; collect top-level types to aid specializer generation
  (apply-collect-top-level-type-info stx)
  (let* ((stx (apply-generate-method-specializers stx))
         (stx (apply-lift-top-lambdas stx)))
    ;; full type collection to aid further optimizations
    (apply-collect-type-info stx)
    (let (stx (apply-optimize-annotated stx))
      (apply-optimize-call stx))))

(defcompile-method apply-generate-ssxi (&generate-ssxi &generate-runtime-empty)
  (%#begin         generate-runtime-begin%)
  (%#begin-syntax  generate-ssxi-begin-syntax%)
  (%#module        generate-ssxi-module%)
  (%#define-values generate-ssxi-define-values%)
  (%#call          generate-ssxi-call%))

;;; apply-generate-ssxi
(def (generate-ssxi-begin-syntax% stx)
  (ast-case stx ()
    ((_ . forms)
     (parameterize ((current-expander-phi (fx1+ (current-expander-phi))))
       (generate-runtime-begin% stx)))))

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
     (runtime-identifier=? #'-bind-method 'bind-method!)
     ['declare-method (identifier-symbol #'type-t)
                      (stx-e #'method) (identifier-symbol #'impl)
                      (stx-e #'rebind?)])
    ((_ (%#ref -bind-method!) (%#ref type-t) (%#quote method) (%#ref impl))
     (runtime-identifier=? #'-bind-method 'bind-method!)
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

(defmethod {typedecl !class-type}
  (lambda (self)
    (with ((!class-type type-id super mixin slots xslots ctor plist) self)
      ['@class-type type-id super mixin slots xslots ctor plist])))

(defmethod {typedecl !class-pred}
  (lambda (self)
    (with ((!class-pred class-t) self)
      ['@class-pred class-t])))

(defmethod {typedecl !class-cons}
  (lambda (self)
    (with ((!class-cons class-t) self)
      ['@class-cons class-t])))

(defmethod {typedecl !class-getf}
  (lambda (self)
    (with ((!class-getf class-t slot unchecked?) self)
      ['@class-getf class-t slot unchecked?])))

(defmethod {typedecl !class-setf}
  (lambda (self)
    (with ((!class-setf class-t slot unchecked?) self)
      ['@class-setf class-t slot unchecked?])))

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

(defmethod {typedecl !kw-lambda}
  (lambda (self)
    (with ((!kw-lambda _ table dispatch) self)
      ['@kw-lambda table dispatch])))

(defmethod {typedecl !kw-lambda-primary}
  (lambda (self)
    (with ((!kw-lambda-primary _ keys main) self)
      ['@kw-lambda-dispatch keys main])))
