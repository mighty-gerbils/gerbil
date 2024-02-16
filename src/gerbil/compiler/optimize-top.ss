;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler optimization passes
prelude: "../prelude/core"
package: gerbil/compiler
namespace: gxc

(import "../expander"
        "base"
        "compile"
        "optimize-base"
        "optimize-xform")
(export #t)

(defcompile-method apply-collect-top-level-type-info (&collect-top-level-type-info &void)
  (%#begin            collect-begin%)
  (%#begin-syntax     collect-begin-syntax%)
  (%#module           collect-module%)
  (%#define-values    collect-top-level-type-define-values%))

(defcompile-method apply-basic-expression-top-level-type (&basic-expression-top-level-type &false)
  (%#begin-annotation basic-expression-type-begin-annotation%)
  (%#call             basic-expression-type-call%))

(defcompile-method apply-collect-type-info (&collect-type-info &void)
  (%#begin            collect-begin%)
  (%#begin-syntax     collect-begin-syntax%)
  (%#module           collect-module%)
  (%#define-values    collect-type-define-values%)
  (%#begin-annotation collect-begin-annotation%)
  (%#lambda                collect-body-lambda%)
  (%#case-lambda           collect-body-case-lambda%)
  (%#let-values       collect-type-let-values%)
  (%#letrec-values    collect-type-let-values%)
  (%#letrec*-values   collect-type-let-values%)
  (%#call             collect-type-call%)
  (%#if               collect-operands)
  (%#set!             collect-body-setq%))

(defcompile-method apply-basic-expression-type (&basic-expression-type &false)
  (%#begin            basic-expression-type-begin%)
  (%#begin-annotation basic-expression-type-begin-annotation%)
  (%#lambda                basic-expression-type-lambda%)
  (%#case-lambda           basic-expression-type-case-lambda%)
  (%#let-values       basic-expression-type-let-values%)
  (%#letrec-values    basic-expression-type-let-values%)
  (%#letrec*-values   basic-expression-type-let-values%)
  (%#call             basic-expression-type-call%)
  (%#ref              basic-expression-type-ref%))

(defcompile-method apply-lift-top-lambdas (&lift-top-lambdas &basic-xform)
  (%#define-values  lift-top-lambda-define-values%)
  (%#let-values     lift-top-lambda-let-values%)
  (%#letrec-values  lift-top-lambda-letrec-values%)
  (%#letrec*-values lift-top-lambda-letrec-values%))

;;; apply-collect-top-level-type-infp
(def (collect-top-level-type-define-values% stx)
  (ast-case stx ()
    ((_ (id) expr)
     (identifier? #'id)
     (let (sym (identifier-symbol #'id))
       (if (hash-get (current-compile-mutators) sym)
           (verbose "skipping type inference for mutable binding " sym)
           (alet (type (apply-basic-expression-top-level-type #'expr))
             (optimizer-declare-type! sym type)))))
    (_ (void))))

;;; apply-collect-type-info
(def (collect-type-define-values% stx)
  (ast-case stx ()
    ((_ (id) expr)
     (identifier? #'id)
     (let (sym (identifier-symbol #'id))
       (cond
        ((hash-get (current-compile-mutators) sym)
         (verbose "skipping type inference for mutable binding " sym))
        ((optimizer-lookup-type sym) ; already have a type from top level type collection
         (verbose "skipping type inference for already declared type " sym))
        (else
         (alet (type (apply-basic-expression-type #'expr))
           (optimizer-declare-type! sym type))))
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
     (runtime-identifier=? #'-bind-method 'bind-method!)
     (optimizer-declare-method! (identifier-symbol #'type-t)
                                (stx-e #'method) (identifier-symbol #'impl)
                                (stx-e #'rebind?)))
    ((_ (%#ref -bind-method!) (%#ref type-t) (%#quote method) (%#ref impl))
     (runtime-identifier=? #'-bind-method 'bind-method!)
     (optimizer-declare-method! (identifier-symbol #'type-t)
                                (stx-e #'method) (identifier-symbol #'impl)
                                #f))

    ((_ expr ...)
     (for-each compile-e #'(expr ...)))))


;;; apply-basic-expression-type
(def current-compile-type-closure
  (make-parameter #f))

(def (basic-expression-type-begin% stx)
  (ast-case stx ()
    ((_ expr)
     (compile-e #'expr))
    (_ #f)))

(def basic-expression-type-annotations (make-hash-table-eq))
(defrules defbasic-expression-type-annotations ()
  ((_ (id type-e) ...)
   (begin
     (hash-put! basic-expression-type-annotations 'id type-e) ...)))

(def (basic-expression-type-begin-annotation% stx)
  (ast-case stx ()
    ((_ ann expr)
     (ast-case #'ann ()
       ((annotation . args)
        (identifier? #'annotation)
        (cond
         ((hash-get basic-expression-type-annotations (stx-e #'annotation))
          => (lambda (type-e) (type-e stx #'ann)))
         (else
          (compile-e #'expr))))
       (_ (compile-e #'expr))))))

(def (basic-expression-type-annotation-mop.class stx ann)
  (ast-case ann ()
    ((_ type-id super slots ctor-method struct? final? metaclass)
     (let ((type-id (stx-e #'type-id))
           (super (stx-map identifier-symbol #'super))
           (slots (stx-map stx-e #'slots))
           (ctor-method (stx-e #'ctor-method))
           (struct? (stx-e #'struct?))
           (final? (stx-e #'final?))
           (metaclass (and (stx-e #'metaclass) (identifier-symbol #'metaclass))))
       (make-!class type-id super slots ctor-method struct? final? metaclass)))))

(def (basic-expression-type-annotation-mop.constructor stx ann)
  (ast-case ann ()
    ((_ type-t)
     (make-!constructor (identifier-symbol #'type-t)))))

(def (basic-expression-type-annotation-mop.predicate stx ann)
  (ast-case ann ()
    ((_ type-t)
     (make-!predicate (identifier-symbol #'type-t)))))

(def (basic-expression-type-annotation-mop.accessor stx ann)
  (ast-case ann ()
    ((_ type-t slot checked?)
     (make-!accessor (identifier-symbol #'type-t)
                     (stx-e #'slot)
                     (stx-e #'checked?)))))

(def (basic-expression-type-annotation-mop.mutator stx ann)
  (ast-case ann ()
    ((_ type-t slot checked?)
     (make-!mutator (identifier-symbol #'type-t)
                    (stx-e #'slot)
                    (stx-e #'checked?)))))

(defbasic-expression-type-annotations
  (@mop.class       basic-expression-type-annotation-mop.class)
  (@mop.constructor basic-expression-type-annotation-mop.constructor)
  (@mop.predicate   basic-expression-type-annotation-mop.predicate)
  (@mop.accessor    basic-expression-type-annotation-mop.accessor)
  (@mop.mutator     basic-expression-type-annotation-mop.mutator))

(def (basic-expression-type-lambda% stx)
  (begin-annotation @match:prefix
    (ast-case stx (%#call %#ref %#quote)
      ((_ . form)
       (current-compile-type-closure)
       ;; don't capture local dispatch references, just enough to arity check
       (make-!lambda 'lambda (lambda-form-arity #'form) #f))

      ((_ args (%#call (%#ref -apply) (%#ref -keyword-dispatch) (%#quote kwt)
                       (%#ref dispatch) (%#ref -args)))
       ;; kw-lambda
       (and (identifier? #'args)
            (runtime-identifier=? #'-apply 'apply)
            (runtime-identifier=? #'-keyword-dispatch 'keyword-dispatch)
            (free-identifier=? #'args #'-args))
       (let* ((tab (stx-e #'kwt))
              (keys (and tab (filter values (vector->list tab)))))
         (make-!kw-lambda 'kw-lambda keys (identifier-symbol #'dispatch))))

      ((_ (kwvar . args)
          (%#call (%#ref -apply) (%#ref main) (%#ref -kwvar)
                  (%#call (%#ref -hash-ref) (%#ref -xkwvar) (%#quote key) (%#ref -absent-value))
                  ...
                  (%#ref -args)))
       ;; kw-lambda dispatch
       (and (identifier? #'kwvar)
            (identifier? #'args)
            (runtime-identifier=? #'-apply 'apply)
            (free-identifier=? #'kwvar #'-kwvar)
            (andmap stx-keyword? #'(key ...))
            (andmap (cut runtime-identifier=? <> 'hash-ref) #'(-hash-ref ...))
            (andmap (cut runtime-identifier=? <> 'absent-value) #'(-absent-value ...))
            (andmap (cut free-identifier=? <> #'kwvar) #'(-xkwvar ...)))
       (make-!kw-lambda-primary 'kw-lambda-dispatch (map stx-e #'(key ...)) (identifier-symbol #'main)))

      ((_ . form)
       ;; delegate dispatch
       (dispatch-lambda-form? #'form)
       (make-!lambda 'lambda (lambda-form-arity #'form) (dispatch-lambda-form-delegate #'form)))

      ((_ . form)
       ;; generic lambda -- track type for call arity checking
       (make-!lambda 'lambda (lambda-form-arity #'form) #f)))))

(def (basic-expression-type-case-lambda% stx)
  (def (clause-e form)
    (make-!lambda 'case-lambda-clause (lambda-form-arity form)
             (and (not (current-compile-type-closure)) ; don't capture local dispatch
                  (dispatch-lambda-form? form)
                  (dispatch-lambda-form-delegate form))))
  (ast-case stx ()
    ((_ . clauses)
     (let (clauses (map clause-e #'clauses))
       (make-!case-lambda 'case-lambda clauses)))))

(def (basic-expression-type-let-values% stx)
  (ast-case stx ()
    ((_ bind body)
     (parameterize ((current-compile-type-closure #t))
       (compile-e #'body)))))

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


(defbasic-expression-type-builtin)

(def (basic-expression-type-ref% stx)
  (ast-case stx ()
    ((_ id)
     (optimizer-lookup-type (identifier-symbol #'id)))))

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

(def (kw-lambda-expr? expr)
  (ast-case expr (%#let-values %#lambda %#call %#ref %#quote)
    ((%#let-values
      (((id)
        (%#let-values
         (((xid) _))
         (%#lambda (kwt . _) (%#call (%#ref -apply1) (%#ref -xid) (%#ref -kwt) . _)))))
      (%#lambda args (%#call (%#ref -apply2) (%#ref -keyword-dispatch) (%#quote _)
                        (%#ref -id) (%#ref -args))))
     (and (runtime-identifier=? #'-apply1 'apply)
          (runtime-identifier=? #'-apply2 'apply)
          (runtime-identifier=? #'-keyword-dispatch 'keyword-dispatch)
          (free-identifier=? #'id #'-id)
          (free-identifier=? #'xid #'-xid)
          (free-identifier=? #'args #'-args)
          (free-identifier=? #'kwt #'-kwt)))
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

  (def (opt-lambda-dispatch-name id)
    (if (uninterned-symbol? id)
      (let (str (symbol->string id))
        (if (string-prefix? "opt-lambda" str)
          "%"
          id))
      id))

  (def (kw-lambda-dispatch-name id name)
    (if (uninterned-symbol? id)
      (let (str (symbol->string id))
        (if (string-prefix? "kw-lambda" str)
          name
          id))
      id))

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
        (let* ((lambda-id (make-symbol (stx-e #'id) "__" (opt-lambda-dispatch-name (stx-e #'xid))))
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
    ((_ (id) expr)
     (and (identifier? #'id)
          (kw-lambda-expr? #'expr))
     (ast-case #'expr ()
       ((_ (((get-kws) (_ (((main) main-impl)) get-kws-impl)))
           kw-dispatch)
        (let* ((get-kws-id
                (make-symbol (stx-e #'id) "__" (kw-lambda-dispatch-name (stx-e #'get-kws) "@")))
               (get-kws-id
                (core-quote-syntax get-kws-id (stx-source stx)))
               (main-id
                (make-symbol (stx-e #'id) "__" (kw-lambda-dispatch-name (stx-e #'main) "%")))
               (main-id
                (core-quote-syntax main-id (stx-source stx)))
               (_ (core-bind-runtime! get-kws-id))
               (_ (core-bind-runtime! main-id))
               (new-kw-dispatch
                (apply-expression-subst #'kw-dispatch #'get-kws get-kws-id))
               (new-get-kws
                (apply-expression-subst #'get-kws-impl #'main main-id)))
          (verbose "lift kw-lambda dispatch " (identifier-symbol #'id)
                   " => " (identifier-symbol get-kws-id)
                   " => " (identifier-symbol main-id))
          (xform-wrap-source
           ['%#begin (lift-top-lambda-define-values%
                      (xform-wrap-source
                       ['%#define-values [main-id] #'main-impl]
                       stx))
                     (xform-wrap-source
                      ['%#define-values [get-kws-id] new-get-kws]
                      stx)
                     (xform-wrap-source
                      ['%#define-values [#'id] new-kw-dispatch]
                      stx)]
           stx)))))
    ((_ hd expr)
     (xform-wrap-source
      ['%#define-values #'hd (compile-e #'expr)]
      stx))))

(def (lift-top-lambda-let-values% stx)
  (def (bind-e id expr (compile? #t))
    [[id] (if compile? (compile-e expr) expr)])

  (def (compile-bindings bindings)
    (let lp ((rest bindings) (lift1 []) (lift2 []) (bind []))
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
               (let* ((lambda-id (make-symbol (stx-e #'id) (gensym '__)))
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

  (def (lift-kw-lambda? bind)
    (ast-case bind ()
      (((id) expr)
       (and (identifier? #'id) (kw-lambda-expr? #'expr)))
      (_ #f)))

  (def (lift-kw-lambda-bindings bindings)
    (let lp ((rest bindings) (lift1 []) (lift2 []) (bind []))
      (match rest
        ([hd . rest]
         (ast-case hd ()
           (((id) expr)
            (and (identifier? #'id)
                 (kw-lambda-expr? #'expr))
            (ast-case #'expr ()
              ((_ (((get-kws) (_ (((main) main-impl)) get-kws-impl)))
                  kw-dispatch)
               (let* ((get-kws-id
                       (make-symbol (stx-e #'id) (gensym '__)))
                      (get-kws-id
                       (core-quote-syntax get-kws-id (stx-source stx)))
                      (main-id
                       (make-symbol (stx-e #'id) (gensym '__)))
                      (main-id
                       (core-quote-syntax main-id (stx-source stx)))
                      (_ (core-bind-runtime! get-kws-id))
                      (_ (core-bind-runtime! main-id))
                      (new-kw-dispatch
                       (apply-expression-subst #'kw-dispatch #'get-kws get-kws-id))
                      (new-get-kws
                       (apply-expression-subst #'get-kws-impl #'main main-id)))
                 (verbose "lift kw-lambda dispatch " (identifier-symbol #'id)
                          " => " (identifier-symbol get-kws-id)
                          " => " (identifier-symbol main-id))
                 (lp rest
                     (cons (bind-e main-id #'main-impl #f) lift1)
                     (cons (bind-e get-kws-id new-get-kws #f) lift2)
                     (cons (bind-e #'id new-kw-dispatch #f) bind))))))
           ((hd expr)
            (lp rest lift1 lift2 (cons [#'hd #'expr] bind)))))
        (else
         (values (reverse lift1)
                 (reverse lift2)
                 (reverse bind))))))

  (ast-case stx ()
    ((_ (bind ...) body)
     (ormap lift-top-lambda-binding? #'(bind ...))
     (parameterize ((current-expander-context (make-local-context)))
       (if (ormap lift-kw-lambda? #'(bind ...))
         (let* (((values lift1 lift2 hd)
                 (lift-kw-lambda-bindings #'(bind ...)))
                (expr
                 (xform-wrap-source
                  ['%#let-values hd #'body]
                  stx))
                (expr
                 (xform-wrap-source
                  ['%#let-values lift2 expr]
                  stx))
                (expr
                 (xform-wrap-source
                  ['%#let-values lift1 expr]
                  stx)))
           (lift-top-lambda-let-values% expr))
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
           expr))))
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
               (let* ((lambda-id (make-symbol (stx-e #'id) (gensym '__)))
                      (lambda-id (core-quote-syntax lambda-id (stx-source stx)))
                      (_ (core-bind-runtime! lambda-id))
                      (new-case-lambda-expr
                       (apply-expression-subst #'case-lambda-expr #'xid lambda-id)))
                 (verbose "lift opt-lambda dispatch "(identifier-symbol #'id) " => " (identifier-symbol lambda-id))
                 (lp (cons (bind-e #'id new-case-lambda-expr #f) rest)
                     (cons (bind-e lambda-id #'lambda-expr) bind))))))
           (((id) expr)
            (and (identifier? #'id)
                 (kw-lambda-expr? #'expr))
            (ast-case #'expr ()
              ((_ (((get-kws) (_ (((main) main-impl)) get-kws-impl)))
                  kw-dispatch)
               (let* ((get-kws-id
                       (make-symbol (stx-e #'id) (gensym '__)))
                      (get-kws-id
                       (core-quote-syntax get-kws-id (stx-source stx)))
                      (main-id
                       (make-symbol (stx-e #'id) (gensym '__)))
                      (main-id
                       (core-quote-syntax main-id (stx-source stx)))
                      (_ (core-bind-runtime! get-kws-id))
                      (_ (core-bind-runtime! main-id))
                      (new-kw-dispatch
                       (apply-expression-subst #'kw-dispatch #'get-kws get-kws-id))
                      (new-get-kws
                       (apply-expression-subst #'get-kws-impl #'main main-id)))
                 (verbose "lift kw-lambda dispatch " (identifier-symbol #'id)
                          " => " (identifier-symbol get-kws-id)
                          " => " (identifier-symbol main-id))
                 (lp (cons* (bind-e main-id #'main-impl #f)
                            (bind-e get-kws-id new-get-kws #f)
                            (bind-e #'id new-kw-dispatch #f)
                            rest)
                     bind)
                 ))))
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
              (opt-lambda-expr? #'expr)
              (kw-lambda-expr? #'expr))))
    (_ #f)))
