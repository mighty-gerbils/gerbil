;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler: code generation
prelude: "../core"
package: gerbil/compiler
namespace: gxc

(import "../core/expander"
        "../expander"
        "base"
        "method")
(export #t)

(def gambit-annotations
  '(not
    gambit-scheme
    ieee-scheme
    r4rs-scheme
    r5rs-scheme
    block
    separate
    core
    inline
    inline-primitives
    inlining-limit
    constant-fold
    lambda-lift
    standard-bindings
    extended-bindings
    run-time-bindings
    safe
    interrupts-enabled
    poll-on-return
    proper-tail-calls
    generative-lambda
    optimize-dead-local-variables
    optimize-dead-definitions
    generic
    fixnum
    flonum
    mostly-fixnum
    mostly-flonum
    mostly-fixnum-flonum
    debug
    debug-location
    debug-source
    debug-environments))

;; primitives that must remain checked, as they change to unchecked when (not safe)
(def checked-primitives
  '(##direct-structure-ref
    ##direct-structure-set!
    ##structure-ref
    ##structure-set!))

;; quote-syntax lifts
(def current-compile-lift
  (make-parameter #f))
(def current-compile-marks
  (make-parameter #f))
(def current-compile-identifiers
  (make-parameter #f))
(def current-compile-boolean-context
  (make-parameter #f))

(def (make-bound-identifier-table)
  (def (hash-e id)
    (symbol-hash (stx-e id)))
  (make-hash-table test: bound-identifier=? hash: hash-e))

;; method that collects top level bindings
(defcompile-method (apply-collect-bindings)
  (::collect-bindings ::void) ()
  final:
  (%#begin         apply-begin%)
  (%#begin-syntax  apply-begin-syntax%)
  (%#module        apply-module%)
  (%#define-values collect-bindings-define-values%)
  (%#define-syntax collect-bindings-define-syntax%))

;; method that lifts nested modules
(defcompile-method (apply-lift-modules modules: modules)
  (::lift-modules ::void)
  (modules)
  final:
  (%#begin         apply-begin%)
  (%#module        lift-modules-module%))

;; method that decides whether there is runtime code in the module
(defcompile-method (apply-find-runtime-code) ::find-runtime-code ()
  final:
  (%#begin                   find-runtime-begin%)
  (%#begin-syntax            false-method)
  (%#begin-foreign           true-method)
  (%#begin-annotation        true-method)
  (%#module                  false-method)
  (%#import                  false-method)
  (%#export                  false-method)
  (%#provide                 false-method)
  (%#extern                  false-method)
  (%#define-values           true-method)
  (%#define-syntax           false-method)
  (%#define-alias            false-method)
  (%#declare                 false-method)
  (%#lambda                       true-method)
  (%#case-lambda                  true-method)
  (%#let-values              true-method)
  (%#letrec-values           true-method)
  (%#letrec*-values          true-method)
  (%#quote                   true-method)
  (%#call                    true-method)
  (%#call-unchecked          true-method)
  (%#if                      true-method)
  (%#ref                     true-method)
  (%#set!                    true-method)
  (%#struct-instance?        true-method)
  (%#struct-direct-instance? true-method)
  (%#struct-ref              true-method)
  (%#struct-set!             true-method)
  (%#struct-direct-ref       true-method)
  (%#struct-direct-set!      true-method)
  (%#struct-unchecked-ref    true-method)
  (%#struct-unchecked-set!   true-method))

;; method that finds lambdas
(defcompile-method (apply-find-lambda-expression) (::find-lambda-expression ::false) ()
  final:
  (%#begin                   apply-last-begin%)
  (%#begin-annotation        apply-begin-annotation%)
  (%#lambda                       identity-method)
  (%#case-lambda                  identity-method)
  (%#let-values              apply-body-last-let-values%)
  (%#letrec-values           apply-body-last-let-values%)
  (%#letrec*-values          apply-body-last-let-values%))

;; method that counts return values, where possible.
(defcompile-method (apply-count-values) (::count-values ::false-expression) ()
  final:
  (%#begin                   apply-last-begin%)
  (%#begin-annotation        apply-begin-annotation%)
  (%#lambda                       count-values-single%)
  (%#case-lambda                  count-values-single%)
  (%#let-values              apply-body-last-let-values%)
  (%#letrec-values           apply-body-last-let-values%)
  (%#letrec*-values          apply-body-last-let-values%)
  (%#quote                   count-values-single%)
  (%#call                    count-values-call%)
  (%#call-unchecked          count-values-call%)
  (%#if                      count-values-if%))

;; abstact method to generate empty empty runtime code
(defcompile-method #f ::generate-runtime-empty ()
  (%#begin                   generate-runtime-empty)
  (%#begin-syntax            generate-runtime-empty)
  (%#begin-foreign           generate-runtime-empty)
  (%#begin-annotation        generate-runtime-empty)
  (%#module                  generate-runtime-empty)
  (%#import                  generate-runtime-empty)
  (%#export                  generate-runtime-empty)
  (%#provide                 generate-runtime-empty)
  (%#extern                  generate-runtime-empty)
  (%#define-values           generate-runtime-empty)
  (%#define-syntax           generate-runtime-empty)
  (%#define-alias            generate-runtime-empty)
  (%#declare                 generate-runtime-empty)
  (%#lambda                       generate-runtime-empty)
  (%#case-lambda                  generate-runtime-empty)
  (%#let-values              generate-runtime-empty)
  (%#letrec-values           generate-runtime-empty)
  (%#letrec*-values          generate-runtime-empty)
  (%#quote                   generate-runtime-empty)
  (%#call                    generate-runtime-empty)
  (%#call-unchecked          generate-runtime-empty)
  (%#if                      generate-runtime-empty)
  (%#ref                     generate-runtime-empty)
  (%#set!                    generate-runtime-empty)
  (%#struct-instance?        generate-runtime-empty)
  (%#struct-direct-instance? generate-runtime-empty)
  (%#struct-ref              generate-runtime-empty)
  (%#struct-set!             generate-runtime-empty)
  (%#struct-direct-ref       generate-runtime-empty)
  (%#struct-direct-set!      generate-runtime-empty)
  (%#struct-unchecked-ref    generate-runtime-empty)
  (%#struct-unchecked-set!   generate-runtime-empty))

;; concrete method to generate runtime loader code
(defcompile-method (apply-generate-loader) (::generate-loader ::generate-runtime-empty)
  ()
  final:
  (%#begin                   generate-runtime-begin%)
  (%#import                  generate-runtime-loader-import%))

;; concrete method to generate the runtime code of a module
(defcompile-method (apply-generate-runtime) (::generate-runtime ::generate-runtime-empty)
  ()
  (%#begin                   generate-runtime-begin%)
  (%#begin-foreign           generate-runtime-begin-foreign%)
  (%#begin-annotation        generate-runtime-begin-annotation%)
  (%#define-values           generate-runtime-define-values%)
  (%#declare                 generate-runtime-declare%)
  (%#lambda                       generate-runtime-lambda%)
  (%#case-lambda                  generate-runtime-case-lambda%)
  (%#let-values              generate-runtime-let-values%)
  (%#letrec-values           generate-runtime-letrec-values%)
  (%#letrec*-values          generate-runtime-letrec*-values%)
  (%#quote                   generate-runtime-quote%)
  (%#quote-syntax            generate-runtime-quote-syntax%)
  (%#call                    generate-runtime-call%)
  (%#call-unchecked          generate-runtime-call-unchecked%)
  (%#if                      generate-runtime-if%)
  (%#ref                     generate-runtime-ref%)
  (%#set!                    generate-runtime-setq%)
  (%#struct-instance?        generate-runtime-struct-instancep%)
  (%#struct-direct-instance? generate-runtime-struct-direct-instancep%)
  (%#struct-ref              generate-runtime-struct-ref%)
  (%#struct-set!             generate-runtime-struct-setq%)
  (%#struct-direct-ref       generate-runtime-struct-direct-ref%)
  (%#struct-direct-set!      generate-runtime-struct-direct-setq%)
  (%#struct-unchecked-ref    generate-runtime-struct-unchecked-ref%)
  (%#struct-unchecked-set!   generate-runtime-struct-unchecked-setq%))

;; concrete method to generate the runtime code of a phased section of a module
(defcompile-method (apply-generate-runtime-phi) (::generate-runtime-phi
                                                 ::generate-runtime)
  ()
  final:
  (%#define-runtime generate-runtime-phi-define-runtime%))

;; method to collection expression references
(defcompile-method (apply-collect-expression-refs table: table) ::collect-expression-refs
  (table)
  (%#begin                   apply-begin%)
  (%#begin-annotation        apply-begin-annotation%)
  (%#lambda                       apply-body-lambda%)
  (%#case-lambda                  apply-body-case-lambda%)
  (%#let-values              apply-body-let-values%)
  (%#letrec-values           apply-body-let-values%)
  (%#letrec*-values          apply-body-let-values%)
  (%#quote                   void-method)
  (%#quote-syntax            void-method)
  (%#call                    apply-operands)
  (%#call-unchecked          apply-operands)
  (%#if                      apply-operands)
  (%#ref                     collect-refs-ref%)
  (%#set!                    collect-refs-setq%)
  (%#struct-instance?        apply-operands)
  (%#struct-direct-instance? apply-operands)
  (%#struct-ref              apply-operands)
  (%#struct-set!             apply-operands)
  (%#struct-direct-ref       apply-operands)
  (%#struct-direct-set!      apply-operands)
  (%#struct-unchecked-ref    apply-operands)
  (%#struct-unchecked-set!   apply-operands))

;; method to generate the meta parts of a module
(defcompile-method (apply-generate-meta state: state) (::generate-meta ::void-expression)
  (state)
  final:
  (%#begin          generate-meta-begin%)
  (%#begin-syntax   generate-meta-begin-syntax%)
  (%#module         generate-meta-module%)
  (%#import         generate-meta-import%)
  (%#export         generate-meta-export%)
  (%#provide        generate-meta-provide%)
  (%#extern         generate-meta-extern%)
  (%#define-values  generate-meta-define-values%)
  (%#define-syntax  generate-meta-define-syntax%)
  (%#define-alias   generate-meta-define-alias%)
  (%#begin-foreign  void-method)
  (%#declare        void-method))

;; method to generate the meta parts of a phased section
(defcompile-method (apply-generate-meta-phi state: state) ::generate-meta-phi
  (state)
  final:
  (%#begin                   generate-meta-begin%)
  (%#begin-syntax            generate-meta-begin-syntax%)
  (%#define-syntax           generate-meta-define-syntax%)
  (%#define-alias            generate-meta-define-alias%)
  (%#define-values           generate-meta-phi-define-values%)
  (%#begin-annotation        generate-meta-phi-expr)
  (%#lambda                       generate-meta-phi-expr)
  (%#case-lambda                  generate-meta-phi-expr)
  (%#let-values              generate-meta-phi-expr)
  (%#letrec-values           generate-meta-phi-expr)
  (%#letrec*-values          generate-meta-phi-expr)
  (%#quote                   generate-meta-phi-expr)
  (%#quote-syntax            generate-meta-phi-expr)
  (%#call                    generate-meta-phi-expr)
  (%#call-unchecked          generate-meta-phi-expr)
  (%#if                      generate-meta-phi-expr)
  (%#ref                     generate-meta-phi-expr)
  (%#set!                    generate-meta-phi-expr)
  (%#struct-instance?        generate-meta-phi-expr)
  (%#struct-direct-instance? generate-meta-phi-expr)
  (%#struct-ref              generate-meta-phi-expr)
  (%#struct-set!             generate-meta-phi-expr)
  (%#struct-direct-ref       generate-meta-phi-expr)
  (%#struct-direct-set!      generate-meta-phi-expr)
  (%#struct-unchecked-ref    generate-meta-phi-expr)
  (%#struct-unchecked-set!   generate-meta-phi-expr)
  (%#declare                 void-method))

;;; compile method method implementations [sic]

;;; collect-bindings
(def (collect-bindings-define-values% self stx)
  (ast-case stx ()
    ((_ hd expr)
     (stx-for-each
      (lambda (bind)
        (when (identifier? bind)
          (add-module-binding! bind #f)))
      #'hd))))

(def (collect-bindings-define-syntax% self stx)
  (ast-case stx ()
    ((_ id expr)
     (add-module-binding! #'id #t))))

;;; lift-modules
(def (lift-modules-module% self stx)
  (ast-case stx ()
    ((_ id . body)
     (let (ctx (syntax-local-e #'id))
       (set! (box (@ self modules))
         (cons ctx (unbox (@ self modules))))
       (parameterize ((current-expander-context ctx))
         (compile-e self (module-context-code ctx)))))))

;;; runtime code generation
(defrules with-primitive-bind+args ()
  ((_ (bind args init) body ...)
   (let lp ((rest init)
            (bind [])
            (args []))
     (match rest
       ([e . rest]
        (ast-case e (%#quote %#ref)
          ((%#ref _)
           (lp rest bind (cons (compile-e e) args)))
          ((%#quote _)
           (lp rest bind (cons (compile-e e) args)))
          (_
           (let (tmp (make-symbol (gensym '__tmp)))
             (lp rest (cons [tmp (compile-e e)] bind) (cons tmp args))))))
       (else body ...)))))

(def (current-compile-decls-unsafe?)
  (alet (decls (current-compile-decls))
    (let lp ((rest decls))
      (match rest
        ([decl . decls]
         (cond
          ((equal? decl '(not safe)) #t)
          ((equal? decl '(safe)) #f)
          (else (lp decls))))
        (else #f)))))

(defrules with-inline-unsafe-primitives ()
  ((_ generate-inline generate)
   (cond-expand
     (gambit-inline-unsafe-primitives
      generate-inline)
     (else
      (if (current-compile-decls-unsafe?)
        generate-inline
        generate)))))

(def (add-module-binding! id syntax?)
  (let ((eid (binding-id (resolve-identifier id)))
        (ht (symbol-table-bindings (current-compile-symbol-table))))
    (unless (interned-symbol? eid)
      (hash-put! ht eid
                 (make-binding-id (generate-runtime-gensym-reference eid)
                                  syntax?)))))

(def (runtime-identifier=? id1 id2)
  (def (symbol-e id)
    (if (symbol? id) id
        (generate-runtime-binding-id id)))
  (eq? (symbol-e id1) (symbol-e id2)))

(def (generate-runtime-binding-id id)
  (cond
   ((and (syntax-quote? id) (resolve-identifier id))
    => (lambda (bind)
         (let ((eid (binding-id bind))
               (ht (symbol-table-bindings (current-compile-symbol-table))))
           (cond
            ((interned-symbol? eid) eid)
            ((hash-get ht eid))
            ((local-binding? bind)
             (let (gid (generate-runtime-gensym-reference eid))
               (hash-put! ht eid gid)
               gid))
            ((module-binding? bind)
             (let (gid
                   (cond
                    ((module-context-ns (module-binding-context bind))
                     => (lambda (ns) (make-symbol ns "#" eid)))
                    (else (generate-runtime-gensym-reference eid))))
               (hash-put! ht eid gid)
               gid))
            (else
             ;; module bindings have been mapped in collect-bindings.
             (raise-compile-error "Cannot compile reference to uninterned binding"
                                  id eid bind))))))
   ((interned-symbol? (stx-e id))
    ;; implicit extern or optimizer introduced symbol
    (stx-e id))
   (else
    ;; gensymed reference, where did you get this one?
    (raise-compile-error "Cannot compile reference to uninterned identifier"
                         id))))

(def (generate-runtime-binding-id* id)
  (if (identifier? id)
    (generate-runtime-binding-id id)
    (generate-runtime-temporary)))

(def (generate-runtime-gensym-reference sym (quote? #f))
  (let (ht (symbol-table-gensyms (current-compile-symbol-table)))
    (cond
     ((hash-get ht sym))
     (else
      (let (g (if quote?
                (make-symbol "__" sym "__" (current-compile-timestamp))
                (make-symbol "_%" sym "%_")))
        (hash-put! ht sym g)
        g)))))

(def (generate-runtime-identifier id)
  (generate-runtime-identifier-key (core-identifier-key id)))

(def (generate-runtime-identifier-key key)
  (cond
   ((interned-symbol? key) key)
   ((uninterned-symbol? key)
    (generate-runtime-gensym-reference key))
   (else
    (match key
      ([eid . mark]
       (cond
        ((expander-mark-subst mark)
         => (lambda (ht)
              (cond
               ((hash-get ht eid)
                => (lambda (id)
                     (if (interned-symbol? id) id
                         (generate-runtime-gensym-reference id))))
               (else
                (generate-runtime-identifier-key eid)))))
        (else
         (generate-runtime-identifier-key eid))))))))

(def (generate-runtime-temporary (top #f))
  (if top
    (let ((ns (module-context-ns (core-context-top (current-expander-context))))
          (phi (current-expander-phi)))
      (if ns
        (if (fxpositive? phi)
          (make-symbol ns "[" (number->string phi) "]#_" (gensym) "_")
          (make-symbol ns "#_" (gensym) "_"))
        (if (fxpositive? phi)
          (make-symbol "[" (number->string phi) "]#_" (gensym) "_")
          (make-symbol "_" (gensym) "_"))))
    (make-symbol "_" (gensym) "_")))

(def (generate-runtime-empty self stx)
  '(begin))

(def (generate-runtime-begin% self stx)
  (def (simplify body)
    (let lp ((rest body) (r []))
      (match rest
        ([hd . rest]
         (match hd
           (['begin . exprs]
            (lp (foldr cons rest exprs) r))
           (['quote _]
            (if (null? rest)
              (lp rest (cons hd r))
              (lp rest r)))
           ((? symbol?)
            (if (null? rest)
              (lp rest (cons hd r))
              (lp rest r)))
           (else
            (lp rest (cons hd r)))))
        (else
         (reverse r)))))

  (ast-case stx ()
    ((_ . body)
     (let* ((body (map (cut compile-e self <>) #'body))
            (body (simplify body)))
       (if (fx= (length body) 1)
         (car body)
         ['begin body ...])))))

(def (generate-runtime-begin-foreign% self stx)
  (ast-case stx ()
    ((_ . body)
     ['begin (syntax->datum #'body) ...])))

(def (generate-runtime-begin-annotation% self stx)
  (ast-case stx ()
    ((_ ann expr)
     (identifier? #'ann) ; context annotation mark
     ;; TODO track the annotation context in parameter
     (compile-e self #'expr))
    ((_ (ann param ...) expr)
     (and (identifier? #'ann) ; extended optimizer annotation?
          (not (memq (stx-e #'ann) gambit-annotations)))
     (if (memq (stx-e #'ann) '(@inline))
       ;; optimizer declaration, skip
       '(begin)
       ;; other annotations
       (compile-e self #'expr)))
    ((_ ann expr)
     (let (decls (map syntax->datum #'ann))
       (parameterize ((current-compile-decls (foldr cons (current-compile-decls) decls)))
         ['begin ['declare decls ...]
                 (compile-e self #'expr)])))))

(def (generate-runtime-declare% self stx)
  (ast-case stx ()
    ((_ . decls)
     (let (decls (map syntax->datum #'decls))
       (current-compile-decls (foldr cons (current-compile-decls) decls))
       ['declare decls ...]))))

(def (generate-runtime-define-values% self stx)
  (ast-case stx ()
    ((_ hd expr)
     (ast-case #'hd ()
       ((#f)
        (compile-e self #'expr))
       ((id)
        (let (eid (generate-runtime-binding-id #'id))
          (alet (lambda-expr (apply-find-lambda-expression #'expr))
            (hash-put! (current-compile-runtime-names) lambda-expr eid))
          ['define eid (compile-e self #'expr)]))
       (_
        (let* ((tmp (generate-runtime-temporary #t))
               (body
                (let lp ((rest #'hd) (k 0) (r []))
                  (ast-case rest ()
                    ((#f . rest)
                     (lp #'rest (fx1+ k) r))
                    ((id . rest)
                     (lp #'rest (fx1+ k)
                         (cons ['define (generate-runtime-binding-id #'id)
                                 (generate-runtime-values-ref tmp k #'rest)]
                               r)))
                    (id
                     (identifier? #'id)
                     (foldl cons
                            [['define (generate-runtime-binding-id #'id)
                               (generate-runtime-values->list tmp k)]]
                            r))
                    (_ (reverse r))))))
          ['begin
           ['define tmp (compile-e self #'expr)]
           (generate-runtime-check-values tmp #'hd #'expr)
           body ...]))))))

(def (generate-runtime-check-values vals hd expr)
  (cond
   ((apply-count-values expr)
    => (lambda (count)
         (let ((len (stx-length hd))
               (cmp (if (stx-list? hd) fx= fx>=)))
           (if (or (fx= len 0) (cmp count len))
             #!void
             (raise-compile-error "Value count mismatch" expr hd)))))
   (else
    (let* ((len (stx-length hd))
           (cmp (if (stx-list? hd) '##fx= '##fx>=))
           (errmsg
            (string-append
             (if (stx-list? hd)
               "Context expects "
               "Context expects at least ")
             (number->string len)
             " values"))
           (count (generate-runtime-temporary)))
      (if (and (not (stx-list? hd)) (fx= len 0))
        #!void
        ['let [[count (generate-runtime-values-count vals)]]
          ['if ['not
                (with-inline-unsafe-primitives
                    [cmp count len]
                  ['let []
                    '(declare (not safe))
                    [cmp count len]])]
            ['error errmsg count]]])))))

(def (generate-runtime-values-count var)
  (def (generate-inline)
    ['if ['##values? var] ['##vector-length var] 1])

  ;; see gambit#422
  (with-inline-unsafe-primitives (generate-inline)
    ['let []
         '(declare (not safe))
         (generate-inline)]))

(def (generate-runtime-values-ref var i rest)
  (def (generate-inline)
    (if (and (fx= i 0) (not (stx-pair? rest)))
      ['if ['##values? var] ['##vector-ref var 0] var]
      ['##vector-ref var i]))

  ;; see gambit#422
  (with-inline-unsafe-primitives (generate-inline)
    ['let []
      '(declare (not safe))
      (generate-inline)]))

(def (generate-runtime-values->list var i)
  (cond
   ((fx= i 0)
    (with-inline-unsafe-primitives
        ['if ['##values? var] ['##vector->list var] ['list var]]
      ['let []
        '(declare (not safe))
        ['if ['##values? var] ['##vector->list var] ['list var]]]))
   ((fx= i 1)
    (with-inline-unsafe-primitives
        ['if ['##values? var] ['##cdr ['##vector->list var]] '(quote ())]
      ['let []
        '(declare (not safe))
        ['if ['##values? var] ['##cdr ['##vector->list var]] '(quote ())]]))
   (else
    (with-inline-unsafe-primitives
        ['##list-tail ['##vector->list var] i]
      ['let []
        '(declare (not safe))
        ['##list-tail ['##vector->list var] i]]))))

(def (generate-runtime-lambda% self stx)
  (ast-case stx ()
    ((_ hd body)
     (generate-runtime-lambda-form self #'hd #'body))))

(def (generate-runtime-lambda-form self hd body)
  (let* ((hd (generate-runtime-lambda-head hd))
         (body (compile-e self body))
         (body
          (match body
            (['begin . exprs] exprs)
            (else [body]))))
    ['lambda hd body ...]))

(def (generate-runtime-lambda-head hd)
  (stx-map generate-runtime-binding-id* hd))

(def (generate-runtime-case-lambda% self stx)
  (def (dispatch-case? hd body)
    (let (form [hd body])
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
              (runtime-identifier=? #'-apply 'apply)
              (fx= (length #'(arg ...)) (length  #'(xarg ...)))
              (andmap free-identifier=? #'(arg ...) #'(xarg ...))
              (free-identifier=? #'rest #'xrest)
              (not (find (cut free-identifier=? <> #'rator) #'(arg ... rest))))
         #t)
        ((args (%#call (%#ref -apply) (%#ref rator) (%#ref xargs)))
         (and (identifier? #'args)
              (runtime-identifier=? #'-apply 'apply)
              (free-identifier=? #'args #'xargs)
              (not (free-identifier=? #'rator #'args)))
         #t)
        (_ #f))))

  (def (dispatch-case-e hd body)
    (let (form [hd body])
      (ast-case form (%#call %#ref)
        (((arg ...) (%#call (%#ref rator) (%#ref xarg) ...))
         (compile-e self #'(%#ref rator)))
        (((arg ... . rest) (%#call (%#ref -apply) (%#ref rator) . _))
         (compile-e self #'(%#ref rator)))
        ((args (%#call (%#ref -apply) (%#ref rator) _))
         (compile-e self #'(%#ref rator))))))

  (def (generate1 args arglen hd body)
    (let* ((len (stx-length hd))
           (condition
            (cond
             ((stx-list? hd)
              (with-inline-unsafe-primitives
                  ['##fx= arglen len]
                ['let []
                  '(declare (not safe))
                  ['##fx= arglen len]]))
             ((> len 0)
              (with-inline-unsafe-primitives
                  ['##fx>= arglen len]
                ['let []
                  '(declare (not safe))
                  ['##fx>= arglen len]]))
             (else #t)))
           (dispatch
            (if (dispatch-case? hd body)
              (dispatch-case-e hd body)
              (generate-runtime-lambda-form self hd body))))
      [condition ['apply dispatch args]]))

  (ast-case stx ()
    ((_ (hd body) ...)
     (let ((args (generate-runtime-temporary))
           (arglen (generate-runtime-temporary))
           (name (or (hash-get (current-compile-runtime-names) stx)
                     '(quote case-lambda-dispatch))))
       ['lambda args
         ['let [[arglen
                 (with-inline-unsafe-primitives
                     ['##length args]
                   ['let []
                     '(declare (not safe))
                     ['##length args]])]]
           ['cond
            (map (cut generate1 args arglen <> <>) #'(hd ...) #'(body ...)) ...
            ['else
             ['##raise-wrong-number-of-arguments-exception name args]]]]]))))

(def (generate-runtime-let-values% self stx (compiled-body? #f))
  (def (generate-simple hd body)
    (coalesce-boolean
     (coalesce-let*
      (generate-runtime-simple-let self 'let hd body compiled-body?))))

  (def (coalesce-boolean code)
    (if (current-compile-boolean-context)
      (match code
        (['let [[id expr1]] ['if (eq? id) (eq? id) expr2]]
         (match expr2
           (['or . exprs]
            ['or expr1 . exprs])
           (else
            ['or expr1 expr2])))
        (else code))
      code))

  (def (coalesce-let* code)
    (match code
      (['let [[id expr]] ['let [] . body]]
       ['let [[id expr]] . body])
      (['let [[id1 expr1]] ['let [[id2 expr2]] . body]]
       ['let* [[id1 expr1] [id2 expr2]] . body])
      (['let [[id1 expr1]] ['let* bind . body]]
       ['let* [[id1 expr1] . bind] . body])
      (else code)))

  (def (generate-values hd body)
    (let lp ((rest hd) (bind []) (check []) (post []))
      (ast-case rest ()
        ((bind-hd . rest)
         (ast-case #'bind-hd ()
           (((id) expr)
            (let ((eid (generate-runtime-binding-id* #'id))
                  (expr (compile-e self #'expr)))
              (lp #'rest (cons [eid expr] bind) check post)))
           ((hd expr)
            (let* ((vals (generate-runtime-temporary))
                   (check-values (generate-runtime-check-values vals #'hd #'expr))
                   (refs (generate-runtime-let-values-bind vals #'hd))
                   (expr (compile-e self #'expr)))
              (lp #'rest
                  (cons [vals expr] bind)
                  (cons check-values check)
                  (cons refs post))))))
        (_ (let* ((body (if compiled-body? body (compile-e self body)))
                  (body (generate-values-post post body))
                  (body (generate-values-check check body)))
             ['let (reverse bind) body])))))

  (def (generate-values-post post body)
    (let lp ((rest post) (body body))
      (match rest
        ([bind . rest]
         (lp rest ['let bind body]))
        (else body))))

  (def (generate-values-check check body)
    ['begin (reverse check) ... body])

  (ast-case stx ()
    ((_ hd body)
     (if (generate-runtime-simple-let? #'hd)
       (generate-simple #'hd #'body)
       (generate-values #'hd #'body)))))

(def (generate-runtime-let-values-bind vals hd)
  (let lp ((rest hd) (k 0) (r []))
    (ast-case rest ()
      ((#f . rest)
       (lp #'rest (fx1+ k) r))
      ((id . rest)
       (lp #'rest
           (fx1+ k)
           (cons [(generate-runtime-binding-id #'id)
                  (generate-runtime-values-ref vals k #'rest)]
                 r)))
      (tail
       (identifier? #'tail)
       (foldl cons
              [[(generate-runtime-binding-id #'tail)
                (generate-runtime-values->list vals k)]]
              r))
      (_ (reverse r)))))

(def (generate-runtime-letrec-values% self stx (compiled-body? #f))
  (def (generate-simple hd body)
    (generate-runtime-simple-let self 'letrec hd body compiled-body?))

  (def (generate-values hd body)
    (let lp ((rest hd) (bind []) (check []) (post []))
      (ast-case rest ()
        ((bind-hd . rest)
         (ast-case #'bind-hd ()
           (((id) expr)
            (let ((eid (generate-runtime-binding-id* #'id))
                  (expr (compile-e self #'expr)))
              (lp #'rest (cons [eid expr] bind) check post)))
           ((hd expr)
            (let* ((vals (generate-runtime-temporary))
                   (check-values (generate-runtime-check-values vals #'hd #'expr))
                   (refs (generate-runtime-let-values-bind vals #'hd))
                   (expr (compile-e self #'expr)))
              (lp #'rest
                  (foldl cons
                         (cons [vals expr] bind)
                         (map (match <> ([eid _] [eid #!void])) refs))
                  (cons check-values check)
                  (foldl cons refs post))))))
        (_ (let* ((body (if compiled-body? body (compile-e self body)))
                  (body (generate-values-post post body))
                  (body (generate-values-check check body)))
              ['letrec (reverse bind) body])))))

  (def (generate-values-check check body)
    ['begin (reverse check) ... body])

  (def (generate-values-post post body)
    ['begin (map (cut cons 'set! <>) (reverse post)) ... body])

  (ast-case stx ()
    ((_ hd body)
     (if (generate-runtime-simple-let? #'hd)
       (generate-simple #'hd #'body)
       (generate-values #'hd #'body)))))

(def (generate-runtime-letrec*-values% self stx)
  (def (generate-values hd body)
    (let lp ((rest hd) (bind []))
      (match rest
        ([hd-bind . rest]
         (ast-case hd-bind ()
           (((id) expr)
            (let ((eid (generate-runtime-binding-id* #'id))
                  (expr (compile-e self #'expr)))
              (lp rest (cons [eid expr] bind))))
           ((hd expr)
            (let* ((vals (generate-runtime-temporary))
                   (tmp  (generate-runtime-temporary))
                   (check-values (generate-runtime-check-values tmp #'hd #'expr))
                   (refs (generate-runtime-let-values-bind vals #'hd))
                   (expr (compile-e self #'expr)))
              (lp rest
                  (foldl cons
                         (cons [vals ['let [[tmp expr]] check-values tmp]]
                               bind)
                         refs))))))
        (else
         (let ((bind (reverse bind))
               (body (compile-e self body)))
           ['letrec* bind body])))))

  (def (generate-letrec? hd)
    (let lp ((rest hd))
      (match rest
        ([hd-bind . rest]
         (ast-case hd-bind ()
           (((id) expr)
            (and (is-lambda-expr? #'expr)
                 (lp rest)))))
        (else #t))))

  (def (is-lambda-expr? expr)
    (ast-case expr (%#lambda)
      ((%#lambda hd . body) #t)
      (_ #f)))

  (ast-case stx ()
    ((_ hd body)
     (if (generate-runtime-simple-let? #'hd)
       (if (generate-letrec? #'hd)
         (generate-runtime-simple-let self 'letrec #'hd #'body #f)
         (generate-runtime-simple-let self 'letrec* #'hd #'body #f))
       (generate-values #'hd #'body)))))

(def (generate-runtime-simple-let? hd)
  (let lp ((rest hd))
    (match rest
      ([[[_] _] . rest]
       (lp rest))
      ([] #t)
      (else #f))))

(def (generate-runtime-simple-let self form hd body compiled-body?)
  (def (generate1 bind)
    (with ([[id] expr] bind)
      [(generate-runtime-binding-id* id) (compile-e self expr)]))

  (let* ((bind (map generate1 hd))
         (body (if compiled-body? body
                   (compile-e self body)))
         (body
          (match body
            (['begin . exprs] exprs)
            (else [body]))))
    [form bind body ...]))

(def (generate-runtime-quote% self stx)
  (def (generate1 datum)
    (cond
     ((or (null? datum)
          (interned-symbol? datum)
          (self-quoting? datum)
          (eof-object? datum))
      datum)
     ((uninterned-symbol? datum)
      (generate-runtime-gensym-reference datum #t))
     ((pair? datum)
      (cons (generate1 (car datum))
            (generate1 (cdr datum))))
     ((box? datum)
      (box (generate1 (unbox datum))))
     ((vector? datum)
      (vector-map generate1 datum))
     ((or (s8vector? datum) (u8vector? datum)
          (s16vector? datum) (u16vector? datum)
          (s32vector? datum) (u32vector? datum)
          (s64vector? datum) (u64vector? datum)
          (f32vector? datum) (f64vector? datum))
      datum)
     (else
      (raise-compile-error "Cannot compile non-primitive quote" stx))))

  (ast-case stx ()
    ((_ datum)
     ['quote (generate1 (stx-e #'datum))])))

(def (generate-runtime-call% self stx)
  (def (compile-call rator rands)
    (let ((rator (compile-e self rator))
          (rands (map (cut compile-e self <>) rands)))
      (ast-case rator (letrec lambda)
        ;; decompile let loops -- Gambit optimizes them
        ((letrec ((id (lambda (arg ...) body ...))) ret)
         (eq? #'id #'ret)
         (if (fx= (length rands) (length #'(arg ...)))
           (let* ((id #'id)
                  (args #'(arg ...))
                  (body #'(body ...))
                  (init (map list args rands)))
             ['let id init body ...])
           (raise-compile-error "Illegal loop application; arity mismatch"
                                stx #'(arg ...) rands)))
        (_ (cons rator rands)))))

  (ast-case stx ()
    ((_ rator rand ...)
     ;; see gambit#422
     (with-inline-unsafe-primitives (compile-call #'rator #'(rand ...))
       (ast-case #'rator (%#ref)
         ((%#ref _)
          (let (f (compile-e self #'rator))
            (if (and (string-prefix? "##" (symbol->string f))
                     (not (memq f checked-primitives)))
              (with-primitive-bind+args (bind args (reverse #'(rand ...)))
                ['let [bind ...]
                  '(declare (not safe))
                  (cons f args)])
              (compile-call #'rator #'(rand ...)))))
         (_ (compile-call #'rator #'(rand ...))))))))

(def (generate-runtime-call-unchecked% self stx)
  (ast-case stx (%#ref)
    ((_ (%#ref rator) rand ...)
     (if (current-compile-decls-unsafe?)
       (generate-runtime-call% self stx)
       (let (f (compile-e self #'(%#ref rator)))
         (with-primitive-bind+args (bind args (reverse #'(rand ...)))
           ['let [bind ...]
             '(declare (not safe))
             (cons f args)]))))
    (_ (generate-runtime-call% self stx))))

(def (generate-runtime-if% self stx)
  (def (simplify code)
    (match code
      (['if test expr ['quote #f]]
       (match expr
         (['and . exprs]
          ['and test . exprs])
         (else
          ['and test expr])))
      (else code)))

  (ast-case stx ()
    ((_ test K E)
     (if (current-compile-boolean-context)
       (simplify ['if (compile-e self #'test) (compile-e self #'K) (compile-e self #'E)])
       ['if (parameterize ((current-compile-boolean-context #t))
              (compile-e self #'test))
         (compile-e self #'K)
         (compile-e self #'E)]))))

(def (generate-runtime-ref% self stx)
  (ast-case stx ()
    ((_ id)
     (generate-runtime-binding-id #'id))))

(def (generate-runtime-setq% self stx)
  (ast-case stx ()
    ((_ id expr)
     ['set! (generate-runtime-binding-id #'id)
       (compile-e self #'expr)])))

(def (generate-runtime-struct-instancep% self stx)
  (ast-case stx ()
    ((_ type-id obj)
     ;; see gambit#422
     (with-inline-unsafe-primitives
         ['##structure-instance-of? (compile-e self #'obj) (compile-e self #'type-id)]
       (with-primitive-bind+args (bind args [#'type-id #'obj])
         ['let [bind ...]
           '(declare (not safe))
           ;; (##structure-instance-of? obj type-id)
           ['##structure-instance-of? args ...]])))))

(def (generate-runtime-struct-direct-instancep% self stx)
  (ast-case stx ()
    ((_ type-id obj)
     ;; see gambit#422
     (with-inline-unsafe-primitives
         ['##structure-direct-instance-of? (compile-e self #'obj) (compile-e self #'type-id)]
       (with-primitive-bind+args (bind args [#'type-id #'obj])
         ['let [bind ...]
           '(declare (not safe))
           ;; (##structure-direct-instance-of? obj type-id)
           ['##structure-direct-instance-of? args ...]])))))

(def (generate-runtime-struct-ref% self stx)
  (ast-case stx ()
    ((_ type off obj)
     ;; see gambit#422
     ;; unfortunately this ends up being unsafe
     #;(with-inline-unsafe-primitives
         ['##structure-ref (compile-e #'obj)
                           (compile-e #'off)
                           (compile-e #'type)
                           '(quote #f)]
       (with-primitive-bind+args (bind args [#'type #'off #'obj])
         ['let [bind ...]
           '(declare (not safe))
           ;; (##structure-ref obj off type where)
           ['##structure-ref args ... '(quote #f)]]))
     ['##structure-ref (compile-e self #'obj)
                       (compile-e self #'off)
                       (compile-e self #'type)
                       '(quote #f)]
     )))

(def (generate-runtime-struct-setq% self stx)
  (ast-case stx ()
    ((_ type off obj val)
     ;; see gambit#422
     ;; unfortunately this ends up being unsafe
     #;(with-inline-unsafe-primitives
         ['##structure-set! (compile-e #'obj)
                            (compile-e #'val)
                            (compile-e #'off)
                            (compile-e #'type)
                            '(quote #f)]
       (with-primitive-bind+args (bind args [#'type #'off #'val #'obj])
         ['let [bind ...]
           '(declare (not safe))
           ;; (##structure-set! obj val off type where)
           ['##structure-set! args ... '(quote #f)]]))
     ['##structure-set! (compile-e self #'obj)
                        (compile-e self #'val)
                        (compile-e self #'off)
                        (compile-e self #'type)
                        '(quote #f)]
     )))

(def (generate-runtime-struct-direct-ref% self stx)
  (ast-case stx ()
    ((_ type off obj)
     ;; see gambit#422
     ;; unfortunately this ends up being unsafe
     #;(with-inline-unsafe-primitives
         ['##direct-structure-ref (compile-e #'obj)
                                  (compile-e #'off)
                                  (compile-e #'type)
                                  '(quote #f)]
       (with-primitive-bind+args (bind args [#'type #'off #'obj])
         ['let [bind ...]
           '(declare (not safe))
           ;; (##direct-structure-ref obj off type where)
           ['##direct-structure-ref args ... '(quote #f)]]))
     ['##direct-structure-ref (compile-e self #'obj)
                              (compile-e self #'off)
                              (compile-e self #'type)
                              '(quote #f)]
     )))

(def (generate-runtime-struct-direct-setq% self stx)
  (ast-case stx ()
    ((_ type off obj val)
     ;; see gambit#422
     ;; unfortunately this ends up being unsafe
     #;(with-inline-unsafe-primitives
         ['##direct-structure-set! (compile-e #'obj)
                                   (compile-e #'val)
                                   (compile-e #'off)
                                   (compile-e #'type)
                                   '(quote #f)]
       (with-primitive-bind+args (bind args [#'type #'off #'val #'obj])
         ['let [bind ...]
           '(declare (not safe))
           ;; (##direct-structure-set! obj val off type where)
           ['##direct-structure-set! args ... '(quote #f)]]))
     ['##direct-structure-set! (compile-e self #'obj)
                               (compile-e self #'val)
                               (compile-e self #'off)
                               (compile-e self #'type)
                               '(quote #f)]
     )))

(def (generate-runtime-struct-unchecked-ref% self stx)
  (ast-case stx ()
    ((_ type off obj)
     ;; see gambit#422
     (with-inline-unsafe-primitives
         ['##unchecked-structure-ref (compile-e self #'obj)
                                     (compile-e self #'off)
                                     '(quote #f)
                                     '(quote #f)]
       (with-primitive-bind+args (bind args [ #'off #'obj])
         ['let [bind ...]
           '(declare (not safe))
           ;; (##unchecked-structure-ref obj off type where)
           ['##unchecked-structure-ref args ... '(quote #f) '(quote #f)]])))))

(def (generate-runtime-struct-unchecked-setq% self stx)
  (ast-case stx ()
    ((_ type off obj val)
     ;; see gambit#422
     (with-inline-unsafe-primitives
         ['##unchecked-structure-set! (compile-e self #'obj)
                                      (compile-e self #'val)
                                      (compile-e self #'off)
                                      '(quote #f)
                                      '(quote #f)]
       (with-primitive-bind+args (bind args [#'off #'val #'obj])
         ['let [bind ...]
           '(declare (not safe))
           ;; (##unchecked-structure-set! obj val off type where)
           ['##unchecked-structure-set! args ... '(quote #f) '(quote #f)]])))))

;;; loader
(def (generate-runtime-loader-import% self stx)
  (def (import-set-template in phi)
    (let ((iphi (fx+ phi (import-set-phi in)))
          (imports (module-context-import (import-set-source in))))
      (let lp ((rest imports) (r []))
        (match rest
          ([in . rest]
           (cond
            ((module-context? in)
             (if (fxzero? iphi)
               (lp rest (cons in r))
               (lp rest r)))
            ((module-import? in)
             (let (iphi (fx+ phi (module-import-phi in)))
               (if (fxzero? iphi)
                 (lp rest (cons (module-export-context (module-import-source in)) r))
                 (lp rest r))))
            ((import-set? in)
             (let (xphi (fx+ iphi (import-set-phi in)))
               (cond
                ((fxzero? xphi)
                 (lp rest (cons (import-set-source in) r)))
                ((fxpositive? xphi)
                 (lp rest (foldl cons r (import-set-template in iphi))))
                (else
                 (lp rest r)))))
            (else
             (lp rest r))))
          (else r)))))

  (ast-case stx ()
    ((_ . imports)
     (let (ht (make-hash-table-eq))
       (let lp ((rest #'imports) (loads []))
         (def (K ctx rest)
           (let (id (expander-context-id ctx))
             (if (hash-get ht id)
               (lp rest loads)
               (let (rt (module-id->path-string id))
                 (hash-put! ht id rt)
                 (lp rest (cons rt loads))))))

         (match rest
           ([in . rest]
            (cond
             ((module-context? in)
              (K in rest))
             ((module-import? in)
              (if (fxzero? (module-import-phi in))
                (K (module-export-context (module-import-source in)) rest)
                (lp rest loads)))
             ((import-set? in)
              (let (phi (import-set-phi in))
                (cond
                 ((fxzero? phi)
                  (K (import-set-source in) rest))
                 ((fxpositive? phi)
                  (let (deps (import-set-template in 0))
                    (lp (foldl cons rest deps) loads)))
                 (else
                  (lp rest loads)))))
             (else
              (raise-compile-error "Unexpected import" stx in))))
           (else
            ['begin (map (cut list 'load-module <>) (reverse loads)) ...])))))))

;;; runtime-phi
(def (generate-runtime-quote-syntax% self stx)
  (def (add-lift! expr)
    (set! (box (current-compile-lift))
      (cons expr (unbox (current-compile-lift)))))

  (def (generate-syntax-quote id marks)
    ['##structure 'gx#syntax-quote::t
                  ['quote id]
                  #f
                  '(gx#current-expander-context)
                  marks])

  (def (generate-simple stxq)
    (let ((gid (generate-runtime-temporary #t))
          (qid (generate-runtime-identifier stxq)))
      (add-lift! ['define gid (generate-syntax-quote qid '(quote ()))])
      (hash-put! (current-compile-identifiers) stxq gid)
      gid))

  (def (generate-serialized stxq marks)
    (let* ((mark-refs (map generate-mark marks))
           (gid (generate-runtime-temporary #t))
           (qid (generate-runtime-identifier stxq)))
      (add-lift! ['define gid (generate-syntax-quote qid ['list mark-refs ...])])
      (hash-put! (current-compile-identifiers) stxq gid)
      gid))

  (def (generate-mark mark)
    (cond
     ((hash-get (current-compile-marks) mark)
      => values)
     (else
      (let* ((gid (generate-runtime-temporary #t))
             (repr (serialize-mark mark))
             (ctx (core-context-top (expander-mark-context mark)))
             (ctx-ref
              (if (eq? ctx (current-expander-context))
                '(gx#current-expander-context)
                ['gx#import-module ['quote (context-ref ctx)]])))
        (hash-put! (current-compile-marks) mark gid)
        (add-lift! ['define gid
                     ['gx#core-deserialize-mark ['quote repr] ctx-ref]])
        gid))))

  (def (serialize-mark mark)
    (def (quote-e sym)
      (if (interned-symbol? sym) sym
          (generate-runtime-gensym-reference sym)))

    (with ((expander-mark subst ctx phi trace) mark)
      (let (subs (if subst (hash->list subst) []))
        (cons phi
              (map (lambda (pair) (cons (quote-e (car pair)) (quote-e (cdr pair))))
                   subs)))))

  (def (context-ref ctx)
    (if (module-context? (phi-context-super ctx))
      (let ((ctx-ref (context-ref-nested ctx))
            (ctx-origin (context-ref-origin ctx))
            (origin (context-ref-origin (current-expander-context))))
        (if (eq? origin ctx-origin)
          (let (ref (context-ref-nested (current-expander-context)))
            (let lp ((ref (cdr ref))
                     (ctx-ref (cdr ctx-ref)))
              (if (and (pair? ref) (eq? (car ref) (car ctx-ref)))
                (lp (cdr ref) (cdr ctx-ref))
                (cons #f ctx-ref))))
          ctx-ref))
      (make-symbol ":" (expander-context-id ctx))))

  (def (context-ref-origin ctx)
    (let lp ((ctx ctx))
      (let (super (phi-context-super ctx))
        (if (module-context? super)
          (lp super)
          ctx))))

  (def (context-ref-nested ctx)
    (let lp ((ctx ctx) (r []))
      (let (super (phi-context-super ctx))
        (if (module-context? super)
          (lp super (cons (car (module-context-path ctx)) r))
          (cons (make-symbol ":" (expander-context-id ctx)) r)))))

  (ast-case stx ()
    ((_ stxq)
     (if (identifier? #'stxq)
       (cond
        ((hash-get (current-compile-identifiers) #'stxq)
         => values)
        (else
         (let (marks (syntax-quote-marks #'stxq))
           (if (null? marks)
             (generate-simple #'stxq)
             (generate-serialized #'stxq marks)))))
       (raise-compile-error "Cannot quote non-identifier syntax" #'stxq)))))

(def (generate-runtime-phi-define-runtime% self stx)
  (ast-case stx ()
    ((_ eid expr)
     ['define (stx-e #'eid) (compile-e self #'expr)])))

;;; meta
(def (generate-meta-begin% self stx)
  (ast-case stx ()
    ((_ . body)
     (let* ((c-body (map (cut compile-e self <>) #'body))
            (c-body (filter (? (not void?)) c-body)))
       ['%#begin c-body ...]))))

(def (generate-meta-begin-syntax% self stx)
  (ast-case stx ()
    ((_ . body)
     (let* ((phi (fx1+ (current-expander-phi)))
            (block (meta-state-begin-phi! (@ self state) phi))
            (compiled
             (parameterize ((current-expander-phi phi))
               (apply-generate-meta-phi #'(%#begin . body) state: (@ self state)))))
       (ast-case compiled (%#begin)
         ((%#begin . body)
          (let (c-body (filter (? (not void?)) #'body))
            (cond
             (block
              ['%#begin-syntax
               ['%#call ['%#ref 'load-module] ['%#quote block]]
               c-body ...])
             ((null? c-body) #!void)
             (else
              ['%#begin-syntax c-body ...])))))))))

(def (generate-meta-module% self stx)
  (meta-state-end-phi! (@ self state))
  (ast-case stx ()
    ((_ id . body)
     (let (key (core-identifier-key #'id))
       (unless (interned-symbol? key)
         (raise-compile-error "Cannot compile module with uninterned id"
                              stx #'id key))
       (let* ((ctx (syntax-local-e #'id))
              (code
               (parameterize ((current-expander-context ctx))
                 (compile-e self (module-context-code ctx))))
              (rt (hash-get (current-compile-runtime-sections) ctx))
              (loader
               (if rt
                 [['%#call ['%#ref 'load-module] ['%#quote rt]]]
                 []))
              (modid (stx-e #'id)))
         ;; close the module's blocks
         (meta-state-end-phi! (@ self state))
         ['%#module modid code loader ...])))))

(def (generate-meta-import-path ctx context-chain)
  (let lp ((ctx ctx) (path []))
    (let (super (phi-context-super ctx))
      (cond
       ((memq super context-chain)
        (cons* #f (car (module-context-path ctx)) path))
       ((module-context? super)
        (lp super (cons (car (module-context-path ctx)) path)))
       (else
        (cons (make-symbol ":" (expander-context-id ctx)) path))))))

(def (current-context-chain)
  (let lp ((ctx (current-expander-context)) (r []))
    (cond
     ((module-context? ctx)
      (lp (phi-context-super ctx) (cons ctx r)))
     (else r))))

(def (generate-meta-import% self stx)
  ;; handle the curious case of the cactus, referring to
  ;;  a nested module a parent.
  ;; this also covers submodule references
  (def context-chain
    (current-context-chain))

  (def (make-import-spec in)
    (with ((module-import (module-export src-ctx src-key src-phi src-name)
                          name phi)
           in)
      [phi (generate-runtime-identifier-key name)
       src-phi (generate-runtime-identifier-key src-name)]))

  (def (make-import-path ctx)
    (generate-meta-import-path ctx context-chain))

  (def (make-import-spec-in ctx in)
    [spec: (make-import-path ctx) (reverse in) ...])

  (meta-state-end-phi! (@ self state))
  (ast-case stx ()
    ((_ . body)
     (let lp ((rest #'body) (current-src #f) (current-in []) (r []))
       (match rest
         ([in . rest]
          (cond
           ((module-import? in)
            (with ((module-import (module-export src-ctx)) in)
              (cond
               ((eq? current-src src-ctx)
                (lp rest current-src
                    (cons (make-import-spec in) current-in)
                    r))
               (current-src
                (lp rest src-ctx
                    [(make-import-spec in)]
                    (cons (make-import-spec-in current-src current-in)
                          r)))
               (else
                (lp rest src-ctx [(make-import-spec in)] r)))))
           ((import-set? in)
            (let* ((phi (import-set-phi in))
                   (src (import-set-source in))
                   (src-in
                    (match (make-import-path src)
                      ([path] path)
                      (path (cons in: path))))
                   (r (if current-src
                        (cons (make-import-spec-in current-src current-in)
                              r)
                        r)))
              (lp rest #f []
                  (cons (if (fxzero? phi) src-in [phi: phi src-in])
                        r))))
           ((module-context? in)
            ;; don't mix with the current-src accumulation since this
            ;; is a forced runtime reference
            (let (r (if current-src
                      (cons (make-import-spec-in current-src current-in)
                            r)
                      r))
              (lp rest #f []
                  (cons (cons runtime: (make-import-path in))
                        r))))))
         (else
          (let (r (if current-src
                    (cons (make-import-spec-in current-src current-in)
                          r)
                    r))
            ['%#import (reverse r) ...])))))))

(def (generate-meta-export% self stx)
  (def context-chain
    (current-context-chain))

  (def (make-import-path ctx)
    (generate-meta-import-path ctx context-chain))

  (ast-case stx ()
    ((_ . body)
     (let lp ((rest #'body) (r []))
       (match rest
         ([out . rest]
          (match out
            ((module-export _ key phi name)
             (lp rest
                 (cons [spec: phi
                              (generate-runtime-identifier-key key)
                              (generate-runtime-identifier-key name)]
                       r)))
            ((export-set src phi)
             (let* ((out
                     (if src
                       [import:
                        (match (make-import-path src)
                          ([path] path)
                          (path (cons in: path)))]
                       #t))
                    (out (if (fxzero? phi) out [phi: phi out])))
               (lp rest (cons out r))))))
         (else ['%#export (reverse r) ...]))))))

(def (generate-meta-provide% self stx)
  (meta-state-end-phi! (@ self state))
  (ast-case stx ()
    ((_ . features)
     ['%#provide (map generate-runtime-identifier #'features) ...])))

(def (generate-meta-extern% self stx)
  (def (generate1 id eid)
    (let (eid (stx-e eid))
      (unless (interned-symbol? eid)
        (raise-compile-error "Cannot compile extern reference" stx eid))
    [(generate-runtime-identifier id) eid]))

  (ast-case stx ()
    ((_ (id eid) ...)
     ['%#extern (map generate1 #'(id ...) #'(eid ...)) ...])))

(def (generate-meta-define-values% self stx)
  (def (generate1 id)
    (let ((eid (generate-runtime-binding-id id))
          (ident (generate-runtime-identifier id)))
      ['%#define-runtime ident eid]))

  (def (generate* all)
    (match all
      ([one] one)
      (else ['%#begin all ...])))

  (ast-case stx ()
    ((_ hd expr)
     (let lp ((rest #'hd) (r []))
       (ast-case rest ()
         ((#f . rest)
          (lp #'rest r))
         ((id . rest)
          (lp #'rest (cons (generate1 #'id) r)))
         (id
          (identifier? #'id)
          (generate* (foldl cons [(generate1 #'id)] r)))
         (_ (generate* (reverse r))))))))

(def (generate-meta-define-syntax% self stx)
  (ast-case stx ()
    ((_ id expr)
     (let* ((eid (generate-runtime-binding-id #'id))
            (phi (fx1+ (current-expander-phi)))
            (block (meta-state-begin-phi! (@ self state) phi)))
       (with-syntax ((rtid eid))
         (meta-state-add-phi! (@ self state) phi #'(%#define-runtime rtid expr)))
       (if block
         ['%#begin
          ['%#begin-syntax
           ['%#call ['%#ref 'load-module] ['%#quote block]]]
          ['%#define-syntax (generate-runtime-identifier #'id) eid]]
         ['%#define-syntax (generate-runtime-identifier #'id) eid])))))

(def (generate-meta-define-alias% self stx)
  (ast-case stx ()
    ((_ id alias-id)
     ['%#define-alias (generate-runtime-identifier #'id)
                      (generate-runtime-identifier #'alias-id)])))

(def (generate-meta-phi-define-values% self stx)
  (meta-state-add-phi! (@ self state) (current-expander-phi) stx)
  (generate-meta-define-values% self stx))

(def (generate-meta-phi-expr self stx)
  (meta-state-add-phi! (@ self state) (current-expander-phi) stx)
  #!void)

;; meta generation state
(defstruct meta-state (src n open blocks)
  id: gxc#meta-state::t
  constructor: :init!)

(defmethod {:init! meta-state}
  (lambda (self ctx)
    (struct-instance-init! self
      (module-id->path-string (expander-context-id ctx))
      1 (make-hash-table-eq) [])))

(defstruct meta-state-block (ctx phi n code)
  id: gxc#meta-state-block::t)

;; open a block for phi if one is not already phi
;; returns the block modpath if a new one was created
(def (meta-state-begin-phi! state phi)
  (with ((meta-state src n open) state)
    (if (hash-get open phi) #f
        (let (block-ref (string-append src "~" (number->string n)))
          (set! (meta-state-n state) (fx1+ n))
          (hash-put! open phi (make-meta-state-block (current-expander-context)
                                                     phi n []))
          block-ref))))

;; add stx to phi's current block -- error if a block doesn't exist for phi
(def (meta-state-add-phi! state phi stx)
  (let (block (hash-get (meta-state-open state) phi))
    (set! (meta-state-block-code block)
      (cons stx (meta-state-block-code block)))))

;; close all phi blocks
(def (meta-state-end-phi! state)
  (set! (meta-state-blocks state)
    (hash-fold (lambda (_ block r) (cons block r))
               (meta-state-blocks state)
               (meta-state-open state)))
  (set! (meta-state-open state)
    (make-hash-table-eq)))

;; close all phi blocks and get them as [[phi-ctx phi n phi-code] ...]
(def (meta-state-end! state)
  (meta-state-end-phi! state)
  (foldl (lambda (block r)
           (with ((meta-state-block ctx phi n code) block)
             (if (null? code) r
                 (cons [ctx phi n ['%#begin (reverse code) ...]] r))))
         [] (meta-state-blocks state)))

;;; collect refs
(def (collect-expression-refs stx)
  (let (ht (make-hash-table-eq))
    (apply-collect-expression-refs stx table: ht)
    ht))

(def (collect-refs-ref% self stx)
  (ast-case stx ()
    ((_ id)
     (let* ((bind (resolve-identifier #'id))
            (eid (if bind (binding-id bind) (stx-e #'id))))
       (hash-put! (@ self table) eid eid)))))

(def (collect-refs-setq% self stx)
  (ast-case stx ()
    ((_ id expr)
     (let* ((bind (resolve-identifier #'id))
            (eid (if bind (binding-id bind) (stx-e #'id))))
       (hash-put! (@ self table) eid eid)
       (compile-e self #'expr)))))

;;; find runtime
(def (find-runtime-begin% self stx)
  (ast-case stx ()
    ((_ . body)
     (ormap (cut compile-e self <>) #'body))))

;; count-values
(def (count-values-single% self stx)
  1)

(def (count-values-call% self stx)
  (ast-case stx (%#ref)
    ((_ (%#ref -values) rand ...)
     (free-identifier=? #'-values 'values)
     (length #'(rand ...)))
    (_ #f)))

(def (count-values-if% self stx)
  (ast-case stx ()
    ((_ test K E)
     (alet* ((c1 (compile-e self #'K))
             (c2 (compile-e self #'E)))
       (and (fx= c1 c2) c1)))))
