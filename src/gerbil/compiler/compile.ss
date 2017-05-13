;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler compilation methods
package: gerbil/compiler
namespace: gxc

(import :gerbil/compiler/base
        :gerbil/expander
        <syntax-case> <syntax-sugar>
        (only-in :gerbil/gambit/hvectors
                 s8vector? u8vector? s16vector? u16vector? 
                 s32vector? u32vector? s64vector? u64vector?
                 f32vector? f64vector?))
(export #t)

;; compilation method dispatch table
(def current-compile-methods
  (make-parameter #f))

;; quote-syntax lifts
(def current-compile-lift
  (make-parameter #f))

(def (compile-e stx . args)
  (ast-case stx ()
    ((hd . _)
     (cond
      ((hash-get (current-compile-methods) (stx-e #'hd))
       => (lambda (method) (apply method stx args)))
      (else
       (raise-compile-error "Cannot compile; missing method" stx #'hd))))))

(defrules defcompile-method ()
  ((recur compile-method table . methods)
   (identifier? #'table)
   (recur compile-method (table) . methods))
  ((_ #f (table super ...) (symbol method) ...)
   (define table
     (delay
       (let (tbl (make-hash-table-eq))
         (hash-copy! tbl (force super)) ...
         (hash-put! tbl 'symbol method) ...
         tbl))))
  ((recur compile-method (table . super) . methods)
   (identifier? #'compile-method)
   (begin
     (recur #f (table . super) . methods)
     (define (compile-method stx . args)
       (parameterize ((current-compile-methods (force table)))
         (apply compile-e stx args))))))

(defcompile-method #f &void-expression
  (%#lambda                       void)
  (%#case-lambda                  void)
  (%#let-values              void)
  (%#letrec-values           void)
  (%#letrec*-values          void)
  (%#quote                   void)
  (%#quote-syntax            void)
  (%#call                    void)
  (%#if                      void)
  (%#ref                     void)
  (%#set!                    void)
  (%#struct-instance?        void)
  (%#struct-direct-instance? void)
  (%#struct-ref              void)
  (%#struct-set!             void))

(defcompile-method #f &void-special-form
  (%#begin          void)
  (%#begin-syntax   void)
  (%#begin-foreign  void)
  (%#module         void)
  (%#import         void)
  (%#export         void)
  (%#provide        void)
  (%#extern         void)
  (%#define-values  void)
  (%#define-syntax  void)
  (%#define-alias   void)
  (%#declare        void))

(defcompile-method #f (&void &void-special-form &void-expression))

(defcompile-method apply-collect-bindings (&collect-bindings 
                                           &void-expression
                                           &void-special-form)
  (%#begin         collect-begin%)
  (%#begin-syntax  collect-begin-syntax%)
  (%#module        collect-module%)
  (%#define-values collect-bindings-define-values%)
  (%#define-syntax collect-bindings-define-syntax%))

(defcompile-method apply-lift-modules (&lift-modules &void)
  (%#begin         collect-begin%)
  (%#module        lift-modules-module%))

(defcompile-method apply-find-runtime-code &find-runtime-code
  (%#begin                   find-runtime-begin%)
  (%#begin-syntax            false)
  (%#begin-foreign           true)
  (%#module                  false)
  (%#import                  false)
  (%#export                  false)
  (%#provide                 false)
  (%#extern                  false)
  (%#define-values           true)
  (%#define-syntax           false)
  (%#define-alias            false)
  (%#declare                 false)
  (%#lambda                       true)
  (%#case-lambda                  true)
  (%#let-values              true)
  (%#letrec-values           true)
  (%#letrec*-values          true)
  (%#quote                   true)
  (%#call                    true)
  (%#if                      true)
  (%#ref                     true)
  (%#set!                    true)
  (%#struct-instance?        true)
  (%#struct-direct-instance? true)
  (%#struct-ref              true)
  (%#struct-set!             true))

(defcompile-method #f &generate-runtime-empty
  (%#begin                   generate-runtime-empty)
  (%#begin-syntax            generate-runtime-empty)
  (%#begin-foreign           generate-runtime-empty)
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
  (%#if                      generate-runtime-empty)
  (%#ref                     generate-runtime-empty)
  (%#set!                    generate-runtime-empty)
  (%#struct-instance?        generate-runtime-empty)
  (%#struct-direct-instance? generate-runtime-empty)
  (%#struct-ref              generate-runtime-empty)
  (%#struct-set!             generate-runtime-empty))

(defcompile-method apply-generate-loader (&generate-loader &generate-runtime-empty)
  (%#begin                   generate-runtime-begin%)
  (%#import                  generate-runtime-loader-import%))

(defcompile-method apply-generate-runtime (&generate-runtime &generate-runtime-empty)
  (%#begin                   generate-runtime-begin%)
  (%#begin-foreign           generate-runtime-begin-foreign%)
  (%#define-values           generate-runtime-define-values%)
  (%#declare                 generate-runtime-declare%)
  (%#lambda                       generate-runtime-lambda%)
  (%#case-lambda                  generate-runtime-case-lambda%)
  (%#let-values              generate-runtime-let-values%)
  (%#letrec-values           generate-runtime-letrec-values%)
  (%#letrec*-values          generate-runtime-letrec*-values%)
  (%#quote                   generate-runtime-quote%)
  (%#call                    generate-runtime-call%)
  (%#if                      generate-runtime-if%)
  (%#ref                     generate-runtime-ref%)
  (%#set!                    generate-runtime-setq%)
  (%#struct-instance?        generate-runtime-struct-instancep%)
  (%#struct-direct-instance? generate-runtime-struct-direct-instancep%)
  (%#struct-ref              generate-runtime-struct-ref%)
  (%#struct-set!             generate-runtime-struct-setq%))

(defcompile-method apply-generate-runtime-phi (&generate-runtime-phi
                                               &generate-runtime)
  (%#quote-syntax   generate-runtime-phi-quote-syntax%)
  (%#define-runtime generate-runtime-phi-define-runtime%))

(defcompile-method apply-collect-expression-refs &collect-expression-refs
  (%#begin                   collect-begin%)
  (%#lambda                       collect-body-lambda%)
  (%#case-lambda                  collect-body-case-lambda%)
  (%#let-values              collect-body-let-values%)
  (%#letrec-values           collect-body-let-values%)
  (%#letrec*-values          collect-body-let-values%)
  (%#quote                   void)
  (%#quote-syntax            void)
  (%#call                    collect-operands)
  (%#if                      collect-operands)
  (%#ref                     collect-refs-ref%)
  (%#set!                    collect-refs-setq%)
  (%#struct-instance?        collect-operands)
  (%#struct-direct-instance? collect-operands)
  (%#struct-ref              collect-operands)
  (%#struct-set!             collect-operands))

(defcompile-method apply-generate-meta (&generate-meta &void-expression)
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
  (%#begin-foreign  void)
  (%#declare        void))

(defcompile-method apply-generate-meta-phi &generate-meta-phi
  (%#begin                   generate-meta-begin%)
  (%#begin-syntax            generate-meta-begin-syntax%)
  (%#define-syntax           generate-meta-define-syntax%)
  (%#define-alias            generate-meta-define-alias%)
  (%#define-values           generate-meta-phi-define-values%)
  (%#lambda                       generate-meta-phi-expr)
  (%#case-lambda                  generate-meta-phi-expr)
  (%#let-values              generate-meta-phi-expr)
  (%#letrec-values           generate-meta-phi-expr)
  (%#letrec*-values          generate-meta-phi-expr)
  (%#quote                   generate-meta-phi-expr)
  (%#quote-syntax            generate-meta-phi-expr)
  (%#call                    generate-meta-phi-expr)
  (%#if                      generate-meta-phi-expr)
  (%#ref                     generate-meta-phi-expr)
  (%#set!                    generate-meta-phi-expr)
  (%#struct-instance?        generate-meta-phi-expr)
  (%#struct-direct-instance? generate-meta-phi-expr)
  (%#struct-ref              generate-meta-phi-expr)
  (%#struct-set!             generate-meta-phi-expr)
  (%#declare                 void))

;;; generic collectors
(def (collect-begin% stx . args)
  (ast-case stx ()
    ((_ . body)
     (for-each (cut apply compile-e <> args) (stx-e #'body)))))

(def (collect-begin-syntax% stx . args)
  (ast-case stx ()
    ((_ . body)
     (parameterize ((current-expander-phi (fx1+ (current-expander-phi))))
       (for-each (cut apply compile-e <> args) (stx-e #'body))))))

(def (collect-module% stx . args)
  (ast-case stx ()
    ((_ id . body)
     (let (ctx (syntax-local-e #'id))
       (parameterize ((current-expander-context ctx))
         (apply compile-e (module-context-code ctx) args))))))

(def (collect-body-lambda% stx . args)
  (ast-case stx ()
    ((_ hd body)
     (apply compile-e #'body args))))

(def (collect-body-case-lambda% stx . args)
  (ast-case stx ()
    ((_ (hd body) ...)
     (for-each (cut apply compile-e <> args) #'(body ...)))))

(def (collect-body-let-values% stx . args)
  (ast-case stx ()
    ((_ ((hd expr) ...) body)
     (for-each (cut apply compile-e <> args) #'(expr ... body)))))
       

(def (collect-body-setq% stx . args)
  (ast-case stx ()
    ((_ id expr)
     (apply compile-e #'expr args))))

(def (collect-operands stx . args)
  (ast-case stx ()
    ((_ rands ...)
     (for-each (cut apply compile-e <> args) #'(rands ...)))))

;;; collect-bindings
(def (collect-bindings-define-values% stx)
  (ast-case stx ()
    ((_ hd expr)
     (stx-for-each 
      (lambda (bind) 
        (when (identifier? bind) 
          (add-module-binding! bind #f)))
      #'hd))))

(def (collect-bindings-define-syntax% stx)
  (ast-case stx ()
    ((_ id expr)
     (add-module-binding! #'id #t))))


;;; lift-modules
(def (lift-modules-module% stx modules)
  (ast-case stx ()
    ((_ id . body)
     (let (ctx (syntax-local-e #'id))
       (set! (box modules) (cons ctx (unbox modules)))
       (parameterize ((current-expander-context ctx))
         (compile-e (module-context-code ctx) modules))))))

;;; runtime code generation
(def (add-module-binding! id syntax?)
  (let ((eid (binding-id (resolve-identifier id)))
        (ht (symbol-table-bindings (current-compile-symbol-table))))
    (unless (interned-symbol? eid)
      (hash-put! ht eid 
                 (make-binding-id (generate-runtime-gensym-reference eid) 
                                  syntax?)))))

(def (generate-runtime-binding-id id)
  (let (bind (resolve-identifier id))
    (cond 
     (bind
      (let ((eid (binding-id bind))
            (ht (symbol-table-bindings (current-compile-symbol-table))))
        (cond
         ((interned-symbol? eid) eid)
         ((hash-get ht eid) => values)
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
                               id eid bind)))))
     ((interned-symbol? (stx-e id))
      ;; implicit extern or optimizer introduced symbol
      (stx-e id))
     (else
      ;; gensymed reference, where did you get this one?
      (raise-compile-error "Cannot compile reference to uninterned identifier" 
                           id)))))

(def (generate-runtime-binding-id* id)
  (if (identifier? id)
    (generate-runtime-binding-id id)
    (generate-runtime-temporary)))

(def (generate-runtime-gensym-reference sym (quote? #f))
  (let (ht (symbol-table-gensyms (current-compile-symbol-table)))
    (cond
     ((hash-get ht sym) => values)
     (else
      (let (g (if quote?
                (make-symbol "__" sym "__" (current-compile-timestamp))
                (make-symbol "_" sym "_")))
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
               ((hash-get ht eid) => values)
               (else 
                (generate-runtime-identifier-key eid)))))
        (else 
         (generate-runtime-identifier-key eid))))))))

(def (generate-runtime-temporary (top #f))
  (if top
    (let ((ns (module-context-ns (current-expander-context)))
          (phi (current-expander-phi)))
      (if (fxpositive? phi)
        (make-symbol ns "[" (number->string phi) "]#_" (gensym) "_")
        (make-symbol ns "#_" (gensym) "_")))
    (make-symbol "_" (gensym) "_")))

(def (generate-runtime-empty stx)
  '(begin))

(def (generate-runtime-begin% stx)
  (ast-case stx ()
    ((_ . body)
     (let* ((body (stx-map compile-e #'body))
            (body (filter (lambda (stx)
                            (ast-case stx (begin)
                              ((begin) #f) ; filter empty begins
                              (_ #t)))
                          body)))
       (if (fx= (length body) 1)
         (car body)
         ['begin body ...])))))

(def (generate-runtime-begin-foreign% stx)
  (ast-case stx ()
    ((_ . body)
     ['begin (syntax->datum #'body) ...])))

(def (generate-runtime-declare% stx)
  (ast-case stx ()
    ((_ . decls)
     ['declare (map syntax->datum #'decls) ...])))

(def (generate-runtime-define-values% stx)
  (ast-case stx ()
    ((_ hd expr)
     (ast-case #'hd ()
       ((#f) 
        (compile-e #'expr))
       ((id) 
        ['define (generate-runtime-binding-id #'id)
          (compile-e #'expr)])
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
                                 ['values-ref tmp k]]
                               r)))
                    (id 
                     (identifier? #'id)
                     (foldl cons
                            [['define (generate-runtime-binding-id #'id)
                               ['values->list tmp k]]]
                            r))
                    (_ (reverse r))))))
          ['begin
           ['define tmp (compile-e #'expr)]
           (generate-runtime-check-values tmp #'hd)
           body ...]))))))

(def (generate-runtime-check-values vals hd)
  (let* ((len (stx-length hd))
         (cmp (if (stx-list? hd) 'fx= 'fx>=))
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
      ['let [[count ['values-count vals]]]
        ['if ['not [cmp count len]]
          ['error errmsg count]]])))

(def (generate-runtime-lambda% stx)
  (ast-case stx ()
    ((_ hd body)
     ['lambda (generate-runtime-lambda-head #'hd)
       (compile-e #'body)])))

(def (generate-runtime-lambda-head hd)
  (stx-map generate-runtime-binding-id* hd))

(def (generate-runtime-case-lambda% stx)
  (def (runtime-identifier=? id-stx sym)
    (alet (bind (resolve-identifier id-stx))
      (eq? (binding-id bind) sym)))
  
  (def (dispatch-case? hd body)
    (let (form [hd body])
      (ast-case form (%#call %#ref)
        (((arg ...) (%#call (%#ref rator) (%#ref xarg) ...))
         (and (identifier-list? #'(arg ...))
              (fx= (stx-length #'(arg ...)) (stx-length #'(xarg ...)))
              (andmap free-identifier=? #'(arg ...) #'(xarg ...))
              (not (find (cut free-identifier=? <> #'rator) #'(arg ...))))
         #t)
        (((arg ... . rest) (%#call (%#ref -apply) (%#ref rator) (%#ref xarg) ... (%#ref xrest)))
         (and (identifier-list? #'(arg ...))
              (identifier? #'rest)
              (runtime-identifier=? #'-apply 'apply)
              (fx= (stx-length #'(arg ...)) (stx-length  #'(xarg ...)))
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
         (compile-e #'(%#ref rator)))
        (((arg ... . rest) (%#call (%#ref -apply) (%#ref rator) . _))
         (compile-e #'(%#ref rator)))
        ((args (%#call (%#ref -apply) (%#ref rator) _))
         (compile-e #'(%#ref rator))))))
  
  (def (generate1 args arglen hd body)
    (let* ((len (stx-length hd))
           (condition
            (cond 
             ((stx-list? hd)
              ['fx= arglen len])
             ((> len 0)
              ['fx>= arglen len])
             (else #t)))
           (dispatch
            (if (dispatch-case? hd body)
              (dispatch-case-e hd body)
              ['lambda (generate-runtime-lambda-head hd) (compile-e body)])))
      [condition ['apply dispatch args]]))
  
  (ast-case stx ()
    ((_ (hd body) ...)
     (let ((args (generate-runtime-temporary))
           (arglen (generate-runtime-temporary)))
       ['lambda args
         ['let [[arglen ['length args]]]
           ['cond
            (map (cut generate1 args arglen <> <>) #'(hd ...) #'(body ...)) ...
            ['else ['error "No clause matching arguments" args]]]]]))))

(def (generate-runtime-let-values% stx (compiled-body? #f))
  (def (generate-simple hd body)
    (generate-runtime-simple-let 'let hd body compiled-body?))
  
  (def (generate-values hd body)
    (let lp ((rest hd) (bind []) (check []) (post []))
      (ast-case rest ()
        ((bind-hd . rest)
         (ast-case #'bind-hd ()
           (((id) expr)
            (let ((eid (generate-runtime-binding-id* #'id))
                  (expr (compile-e #'expr)))
              (lp #'rest (cons [eid expr] bind) check post)))
           ((hd expr)
            (let* ((vals (generate-runtime-temporary))
                   (expr (compile-e #'expr))
                   (check-values (generate-runtime-check-values vals #'hd))
                   (refs (generate-runtime-let-values-bind vals #'hd)))
              (lp #'rest
                  (cons [vals expr] bind)
                  (cons check-values check)
                  (cons refs post))))))
        (_ (let* ((body (if compiled-body? body (compile-e body)))
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
           (cons [(generate-runtime-binding-id #'id) ['values-ref vals k]]
                 r)))
      (tail 
       (identifier? #'tail)
       (foldl cons
              [[(generate-runtime-binding-id #'tail) ['values->list vals k]]]
              r))
      (_ (reverse r)))))

(def (generate-runtime-letrec-values% stx (compiled-body? #f))
  (def (generate-simple hd body)
    (generate-runtime-simple-let 'letrec hd body compiled-body?))
  
  (def (generate-values hd body)
    (let lp ((rest hd) (bind []) (check []) (post []))
      (ast-case rest ()
        ((bind-hd . rest)
         (ast-case #'bind-hd ()
           (((id) expr)
            (let ((eid (generate-runtime-binding-id* #'id))
                  (expr (compile-e #'expr)))
              (lp #'rest (cons [eid expr] bind) check post)))
           ((hd expr)
            (let* ((vals (generate-runtime-temporary))
                   (expr (compile-e #'expr))
                   (check-values (generate-runtime-check-values vals #'hd))
                   (refs (generate-runtime-let-values-bind vals #'hd)))
              (lp #'rest
                  (foldl cons
                         (cons [vals expr] bind)
                         (map (match <> ([eid _] [eid #!void])) refs))
                  (cons check-values check)
                  (foldl cons refs post))))))
        (_ (let* ((body (if compiled-body? body (compile-e body)))
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

(def (generate-runtime-letrec*-values% stx)
  ;; I love my internal defs, so optimize them a tad (gambit has no internal
  ;;   letrec* (yet) to do the work)
  (def (linearize forms)
    (let* ((closures (collect-closures forms))
           (bindings (collect-bindings forms))
           ((values pre-bind forms bindings closures)
            (lift-pre forms bindings closures))
           ((values post-bind forms bindings closures)
            (lift-post forms bindings closures))
           ((values rec-pre rec-bind rec-init)
            (lift-rec forms)))
      (values pre-bind rec-pre rec-bind rec-init post-bind)))
  
  (def (collect-closures forms)
    (map (match <> ([_ expr] (collect-expression-refs expr))) forms))
  
  (def (collect-bindings forms)
    (map (match <>
           ([bind _]
            (let lp ((rest bind) (r []))
              (match rest
                ([id . rest]
                 (if (identifier? id)
                   (lp rest (cons (binding-id (resolve-identifier id)) r))
                   (lp rest r)))
                (else 
                 (if (identifier? rest)
                   (cons rest r)
                   r))))))
         forms))
  
  (def (lift-pre hd bindings closures)
    ;; lift bindings into a preceding let*
    ;; A binding can be lifted if the expression:
    ;;  1. is not recursive
    ;;  2. has no forward references
    ;;  3. no effect reordering will occur from the lift (very conservative)
    ;; If any binding is lifted in a pass, then loop again so that lambdas can be
    ;;  bubbled up (so that's quadratic at worst case)
    (let lp ((rest-forms hd) (rest-bindings bindings) (rest-closures closures) 
             (post-forms []) (post-bindings []) (post-closures [])
             (pre-forms []) (lifted? #f))
      (match* (rest-forms rest-bindings rest-closures)
        (([form . rest-forms] 
          [bindings . rest-bindings] 
          [closure . rest-closures])
         (if (or (closure-reference? closure bindings)
                 (ormap (cut closure-reference? closure <>) rest-bindings)
                 (ormap (cut closure-reference? closure <>) post-bindings)
                 (and (is-effect-bind? form)
                      (find is-effect-bind? post-forms)))
           ;; cannot lift
           (lp rest-forms rest-bindings rest-closures
               (cons form post-forms)
               (cons bindings post-bindings)
               (cons closure post-closures)
               pre-forms lifted?)
           ;; yessir
           (lp rest-forms rest-bindings rest-closures
               post-forms post-bindings post-closures
               (cons form pre-forms) #t)))
        (else
         (if lifted? 
           ;; reloop if any has been lifted
           (lp (reverse post-forms) 
               (reverse post-bindings) 
               (reverse post-closures)
               [] [] []
               pre-forms #f)
           (values (reverse pre-forms)
                   (reverse post-forms)
                   (reverse post-bindings)
                   (reverse post-closures)))))))
  
  (def (lift-post hd bindings closures)
    ;; similar to lift-pre, but push down to a trailing let*
    ;; a binding can be lifted (pushed) if
    ;;  1. is not recursive
    ;;  2. there no backwards references to it 
    ;;  3. no effect re-ordering will occur
    (let lp ((rest-forms (reverse hd))
             (rest-bindings (reverse bindings))
             (rest-closures (reverse closures))
             (pre-forms []) (pre-bindings []) (pre-closures [])
             (post-forms []) (lifted? #f))
      (match* (rest-forms rest-bindings rest-closures)
        (([form . rest-forms]
          [bindings . rest-bindings]
          [closure . rest-closures])
         (if (or (closure-reference? closure bindings)
                 (ormap (cut closure-reference? <> bindings) rest-closures)
                 (ormap (cut closure-reference? <> bindings) pre-closures)
                 (and (is-effect-bind? form)
                      (find is-effect-bind? pre-forms)))
           ;; cannot lift
           (lp rest-forms rest-bindings rest-closures
               (cons form pre-forms)
               (cons bindings pre-bindings)
               (cons closure pre-closures)
               post-forms lifted?)
           ;; yessir
           (lp rest-forms rest-bindings rest-closures
               pre-forms pre-bindings pre-closures
               (cons form post-forms) #t)))
        (else
         (if lifted?
           (lp (reverse pre-forms)
               (reverse pre-bindings)
               (reverse pre-closures)
               [] [] []
               post-forms #f)
           (values post-forms
                   pre-forms
                   pre-bindings
                   pre-closures))))))
  
  (def (lift-rec forms)
    (let lp ((rest forms) (pre []) (bind []) (init []))
      (match rest
        ([bind-hd . rest]
         (ast-case bind-hd ()
           (((#f) expr)
            (lp rest pre bind 
                (cons (compile-e #'expr) init)))
           (((id) expr)
            (let (eid (generate-runtime-binding-id #'id))
              (if (is-lambda-expr? #'expr)
                (lp rest pre
                    (cons [eid (compile-e #'expr)] bind)
                    init)
                (lp rest 
                  (cons [eid #!void] pre)
                  bind
                  (cons ['set! eid (compile-e #'expr)] init)))))
           ((hd expr)
            (let* ((vals (generate-runtime-temporary))
                   (expr (compile-e #'expr))
                   (check-values (generate-runtime-check-values vals #'hd))
                   (refs (generate-runtime-let-values-bind vals #'hd)))
              (lp rest 
                  (foldl (lambda (ref r) (cons [(car ref) #!void] r))
                         pre refs)
                  bind
                  (cons
                   ['let [[vals expr]]
                     check-values
                     (map (cut cons 'set! <>) refs)]
                   init))))))
        (else 
         (values (reverse pre) 
                 (reverse bind) 
                 (reverse init))))))
  
  (def (closure-reference? closure bindings)
    (ormap (cut hash-get closure <>) bindings))
  
  (def (is-effect-bind? hd-bind)
    (ast-case hd-bind ()
      ((_ expr) (is-effect-expr? #'expr))))
  
  ;; very very simple and conservative
  (def (is-effect-expr? expr)
    (ast-case expr ()
      ((hd . _)
       (not (memq (stx-e #'hd) 
                  '(%#lambda %#case-lambda %#quote %#quote-syntax %#ref))))))
  
  (def (is-lambda-expr? expr)
    (ast-case expr ()
      ((hd . _)
       (memq (stx-e #'hd) '(%#lambda %#case-lambda)))))
  
  (def (generate-let* hd body)
    (match hd
      ([bind . rest]
       (match bind
         ([hd expr]
          (if (stx-ormap identifier? hd)
            (generate-runtime-let-values%
             ['%#let-values [bind] (generate-let* rest body)]
             #t)
            ['begin (compile-e expr) (generate-let* rest body)]))))
      (else body)))
  
  (ast-case stx ()
    ((_ hd body)
     (let ((values pre rec-pre rec-bind rec-init post)
           (linearize #'hd))
       (let* ((body (compile-e #'body))
              (body (if (null? post) body
                        (generate-let* post body)))
              (body (if (null? rec-init) body
                        ['begin rec-init ... body]))
              (body (if (null? rec-bind) body
                        ['letrec rec-bind body]))
              (body (if (null? rec-pre) body
                        ['let rec-pre body]))
              (body (if (null? pre) body
                        (generate-let* pre body))))
         body)))))

(def (generate-runtime-simple-let? hd)
  (let lp ((rest hd))
    (ast-case rest ()
      ((((id) e) . rest)
       (lp #'rest))
      (() #t)
      (_ #f))))

(def (generate-runtime-simple-let form hd body compiled-body?)
  (def (generate1 bind)
    (ast-case bind ()
      (((id) expr)
       [(generate-runtime-binding-id* #'id) (compile-e #'expr)])))
  [form (map generate1 hd) 
        (if compiled-body? body
            (compile-e body))])

(def (generate-runtime-quote% stx)
  (def (generate1 datum)
    (cond
     ((or (null? datum) (interned-symbol? datum) (self-quoting? datum))
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

(def (generate-runtime-call% stx)
  (ast-case stx ()
    ((_ . exprs)
     (map compile-e #'exprs))))

(def (generate-runtime-if% stx)
  (ast-case stx ()
    ((_ . exprs)
     ['if (map compile-e #'exprs) ...])))

(def (generate-runtime-ref% stx)
  (ast-case stx ()
    ((_ id)
     (generate-runtime-binding-id #'id))))

(def (generate-runtime-setq% stx)
  (ast-case stx ()
    ((_ id expr)
     ['set! (generate-runtime-binding-id #'id)
       (compile-e #'expr)])))

(def (generate-runtime-struct-instancep% stx)
  (ast-case stx ()
    ((_ type-id expr)
     ['##structure-instance-of? (compile-e #'expr) (compile-e #'type-id)])))

(def (generate-runtime-struct-direct-instancep% stx)
  (ast-case stx ()
    ((_ type-id expr)
     ['##structure-direct-instance-of? (compile-e #'expr) (compile-e #'type-id)])))

(def (generate-runtime-struct-ref% stx)
  (ast-case stx ()
    ((_ type off obj)
     ['##structure-ref (compile-e #'obj)  ; obj
                       (compile-e #'off)  ; off (incl type)
                       (compile-e #'type) ; type
                       '(quote #f)])))    ; where

(def (generate-runtime-struct-setq% stx)
  (ast-case stx ()
    ((_ type off obj val)
     ['##structure-set! (compile-e #'obj)  ; obj
                        (compile-e #'val)  ; val
                        (compile-e #'off)  ; off (incl type)
                        (compile-e #'type) ; type
                        '(quote #f)])))    ; where

;;; loader
(def (generate-runtime-loader-import% stx)
  (ast-case stx ()
    ((_ . imports)
     (let (ht (make-hash-table-eq))
       (let lp ((rest #'imports) (loads []))
         (def (K ctx rest)
           (let (id (expander-context-id ctx))
             (if (hash-get ht id)
               (lp rest loads)
               (let (rt (string-append (symbol->string id) "__rt"))
                 (hash-put! ht id rt)
                 (lp rest (cons rt loads))))))
         
         (match rest
           ([in . rest]
            (cond
             ((module-context? in)
              (K in rest))
             ((module-import? in)
              (if (fxpositive? (module-import-phi in))
                (lp rest loads)
                (K (module-export-context (module-import-source in)) rest)))
             ((import-set? in)
              (if (fxpositive? (import-set-phi in))
                (lp rest loads)
                (K (import-set-source in) rest)))
             (else
              (raise-compile-error "Unexpected import" stx in))))
           (else
            ['begin (map (cut list 'load-module <>) (reverse loads)) ...])))))))

;;; runtime-phi
(def (generate-runtime-phi-quote-syntax% stx)
  (def (generate-quote q)
    (if (identifier? q)
      ;; this is generally insufficient - it can only reference module-level
      ;; identifiers
      (generate-runtime-identifier q)
      ;; and this is even more complicated, don't bother...
      (raise-compile-error "Cannot quote non-identifier syntax" stx q)))
  
  (ast-case stx ()
    ((_ stxq)
     (let ((gid (generate-runtime-temporary #t))
           (quote-e (generate-quote #'stxq)))
       (set! (box (current-compile-lift))
         (cons ['define gid ['gx#core-quote-syntax ['quote quote-e]]]
               (unbox (current-compile-lift))))
       gid))))

(def (generate-runtime-phi-define-runtime% stx)
  (ast-case stx ()
    ((_ eid expr)
     ['define (stx-e #'eid) (compile-e #'expr)])))

;;; meta 
(def (generate-meta-begin% stx state)
  (ast-case stx ()
    ((_ . body)
     (let* ((c-body (map (cut compile-e <> state) #'body))
            (c-body (filter (? (not void?)) c-body)))
       ['%#begin c-body ...]))))

(def (generate-meta-begin-syntax% stx state)
  (ast-case stx ()
    ((_ . body)
     (let* ((phi (fx1+ (current-expander-phi)))
            (block (meta-state-begin-phi! state phi))
            (compiled
             (parameterize ((current-expander-phi phi))
               (apply-generate-meta-phi #'(%#begin . body) state))))
       (ast-case compiled (%#begin)
         ((%#begin . body)
          (let (c-body (filter (? (not void?)) #'body))
            (cond 
             (block 
              ['%#begin-syntax
               ['%#call ['%#ref '_gx#load-module] ['%#quote block]]
               c-body ...])
             ((null? c-body) #!void)
             (else 
              ['%#begin-syntax c-body ...])))))))))

(def (generate-meta-module% stx state)
  (meta-state-end-phi! state)
  (ast-case stx ()
    ((_ id . body)
     (let (key (core-identifier-key #'id))
       (unless (interned-symbol? key)
         (raise-compile-error "Cannot compile module with uninterned id"
                              stx #'id key))
       (let* ((ctx (syntax-local-e #'id))
              (code
               (parameterize ((current-expander-context ctx))
                 (compile-e (module-context-code ctx) state)))
              (rt (hash-get (current-compile-runtime-sections) ctx))
              (loader 
               (if rt 
                 [['%#call ['%#ref '_gx#load-module] ['%#quote rt]]]
                 []))
              (modid (stx-e #'id)))
         ;; close the module's blocks
         (meta-state-end-phi! state)
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

(def (generate-meta-import% stx state)
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
  
  (meta-state-end-phi! state)
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

(def (generate-meta-export% stx state)
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

(def (generate-meta-provide% stx state)
  (meta-state-end-phi! state)
  (ast-case stx ()
    ((_ . features)
     ['%#provide (map generate-runtime-identifier #'features) ...])))

(def (generate-meta-extern% stx state)
  (def (generate1 id eid)
    (let (eid (stx-e eid))
      (unless (interned-symbol? eid)
        (raise-compile-error "Cannot compile extern reference" stx eid))
    [(generate-runtime-identifier id) eid]))
  
  (ast-case stx ()
    ((_ (id eid) ...)
     ['%#extern (map generate1 #'(id ...) #'(eid ...)) ...])))

(def (generate-meta-define-values% stx state)
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
         (_
          (generate* (reverse r))))))))

(def (generate-meta-define-syntax% stx state)
  (ast-case stx ()
    ((_ id expr)
     (let* ((eid (generate-runtime-binding-id #'id))
            (phi (fx1+ (current-expander-phi)))
            (block (meta-state-begin-phi! state phi)))
       (with-syntax ((rtid eid))
         (meta-state-add-phi! state phi #'(%#define-runtime rtid expr)))
       (if block
         ['%#begin 
          ['%#begin-syntax 
           ['%#call ['%#ref '_gx#load-module] ['%#quote block]]]
          ['%#define-syntax (generate-runtime-identifier #'id) eid]]
         ['%#define-syntax (generate-runtime-identifier #'id) eid])))))

(def (generate-meta-define-alias% stx state)
  (ast-case stx ()
    ((_ id alias-id)
     ['%#define-alias (generate-runtime-identifier #'id)
                      (generate-runtime-identifier #'alias-id)])))

(def (generate-meta-phi-define-values% stx state)
  (meta-state-add-phi! state (current-expander-phi) stx)
  (generate-meta-define-values% stx state))

(def (generate-meta-phi-expr stx state)
  (meta-state-add-phi! state (current-expander-phi) stx)
  #!void)

;; meta generation state
(defstruct meta-state (src n open blocks)
  id: gxc#meta-state::t
  constructor: :init!)

(defmethod {:init! meta-state}
  (lambda (self ctx)
    (direct-struct-instance-init! self 
                                  (symbol->string (expander-context-id ctx))
                                  1 (make-hash-table-eq) [])))

(defstruct meta-state-block (ctx phi n code)
  id: gxc#meta-state-block::t)

;; open a block for phi if one is not already phi
;; returns the block modpath if a new one was created
(def (meta-state-begin-phi! state phi)
  (with ((meta-state src n open) state)
    (if (hash-get open phi) #f
        (let (block-ref (string-append src "__" (number->string n)))
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
    (apply-collect-expression-refs stx ht)
    ht))

(def (collect-refs-ref% stx ht)
  (ast-case stx ()
    ((_ id)
     (let* ((bind (resolve-identifier #'id))
            (eid (if bind (binding-id bind) (stx-e #'id))))
       (hash-put! ht eid eid)))))

(def (collect-refs-setq% stx ht)
  (ast-case stx ()
    ((_ id expr)
     (let* ((bind (resolve-identifier #'id))
            (eid (if bind (binding-id bind) (stx-e #'id))))
       (hash-put! ht eid eid)
       (compile-e #'expr ht)))))

;;; find runtime
(def (find-runtime-begin% stx)
  (ast-case stx ()
    ((_ . body)
     (ormap compile-e #'body))))

