;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler optimization passes
prelude: "../core"
package: gerbil/compiler
namespace: gxc

(import "../core/expander"
        "../expander"
        "base"
        "compile"
        "optimize-base")
(export #t)

(defcompile-method #f &identity-expression ()
  (%#begin-annotation        identity-method)
  (%#lambda                       identity-method)
  (%#case-lambda                  identity-method)
  (%#let-values              identity-method)
  (%#letrec-values           identity-method)
  (%#letrec*-values          identity-method)
  (%#quote                   identity-method)
  (%#quote-syntax            identity-method)
  (%#call                    identity-method)
  (%#call-unchecked          identity-method)
  (%#if                      identity-method)
  (%#ref                     identity-method)
  (%#set!                    identity-method)
  (%#struct-instance?        identity-method)
  (%#struct-direct-instance? identity-method)
  (%#struct-ref              identity-method)
  (%#struct-set!             identity-method)
  (%#struct-direct-ref       identity-method)
  (%#struct-direct-set!      identity-method)
  (%#struct-unchecked-ref    identity-method)
  (%#struct-unchecked-set!   identity-method))

(defcompile-method #f &identity-special-form ()
  (%#begin          identity-method)
  (%#begin-syntax   identity-method)
  (%#begin-foreign  identity-method)
  (%#module         identity-method)
  (%#import         identity-method)
  (%#export         identity-method)
  (%#provide        identity-method)
  (%#extern         identity-method)
  (%#define-values  identity-method)
  (%#define-syntax  identity-method)
  (%#define-alias   identity-method)
  (%#declare        identity-method))

(defcompile-method #f (&identity &identity-special-form &identity-expression) ())

(defcompile-method #f &basic-xform-expression ()
  (%#begin-annotation        xform-begin-annotation%)
  (%#lambda                       xform-lambda%)
  (%#case-lambda                  xform-case-lambda%)
  (%#let-values              xform-let-values%)
  (%#letrec-values           xform-let-values%)
  (%#letrec*-values          xform-let-values%)
  (%#quote                   identity-method)
  (%#quote-syntax            identity-method)
  (%#call                    xform-operands)
  (%#call-unchecked          xform-operands)
  (%#if                      xform-operands)
  (%#ref                     identity-method)
  (%#set!                    xform-setq%)
  (%#struct-instance?        xform-operands)
  (%#struct-direct-instance? xform-operands)
  (%#struct-ref              xform-operands)
  (%#struct-set!             xform-operands)
  (%#struct-direct-ref       xform-operands)
  (%#struct-direct-set!      xform-operands)
  (%#struct-unchecked-ref    xform-operands)
  (%#struct-unchecked-set!   xform-operands))

(defcompile-method #f (&basic-xform &basic-xform-expression &identity) ()
  (%#begin          xform-begin%)
  (%#begin-syntax   xform-begin-syntax%)
  (%#module         xform-module%)
  (%#define-values  xform-define-values%)
  (%#define-syntax  xform-define-syntax%))

(defcompile-method (apply-collect-mutators) (&collect-mutators &void) ()
  final:
  (%#begin                   collect-begin%)
  (%#begin-syntax            collect-begin-syntax%)
  (%#begin-annotation        collect-begin-annotation%)
  (%#module                  collect-module%)
  (%#define-values           collect-define-values%)
  (%#define-syntax           collect-define-syntax%)
  (%#lambda                       collect-body-lambda%)
  (%#case-lambda                  collect-body-case-lambda%)
  (%#let-values              collect-body-let-values%)
  (%#letrec-values           collect-body-let-values%)
  (%#letrec*-values          collect-body-let-values%)
  (%#call                    collect-operands)
  (%#call-unchecked          collect-operands)
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

(defcompile-method (apply-collect-methods) (&collect-methods &void) ()
  final:
  (%#begin          collect-begin%)
  (%#begin-syntax   collect-begin-syntax%)
  (%#module         collect-module%)
  (%#call           collect-methods-call%)
  (%#call-unchecked collect-methods-call%))

(defcompile-method (apply-expression-subst id: id new-id: new-id)
  (&expression-subst &basic-xform-expression)
  (id new-id)
  final:
  (%#begin xform-begin%)
  (%#ref   expression-subst-ref%)
  (%#set!  expression-subst-setq%))

(defcompile-method (apply-expression-subst* subst: subst)
  (&expression-subst* &basic-xform-expression)
  (subst)
  final:
  (%#begin xform-begin%)
  (%#ref   expression-subst*-ref%)
  (%#set!  expression-subst*-setq%))

(defcompile-method #f (&find-expression &false-expression) ()
  (%#begin                   find-body%)
  (%#begin-annotation        find-begin-annotation%)
  (%#lambda                       find-lambda%)
  (%#case-lambda                  find-case-lambda%)
  (%#let-values              find-let-values%)
  (%#letrec-values           find-let-values%)
  (%#letrec*-values          find-let-values%)
  (%#call                    find-body%)
  (%#call-unchecked          find-body%)
  (%#if                      find-body%)
  (%#set!                    find-setq%)
  (%#struct-instance?        find-body%)
  (%#struct-direct-instance? find-body%)
  (%#struct-ref              find-body%)
  (%#struct-set!             find-body%)
  (%#struct-direct-ref       find-body%)
  (%#struct-direct-set!      find-body%)
  (%#struct-unchecked-ref    find-body%)
  (%#struct-unchecked-set!   find-body%))

(defcompile-method (apply-find-var-refs ids: ids)
  (&find-var-refs &find-expression)
  (ids)
  final:
  (%#ref  find-var-refs-ref%)
  (%#set! find-var-refs-setq%))

(defcompile-method (apply-collect-runtime-refs table: table)
  (&collect-runtime-refs &collect-expression-refs)
  ()
  final:
  (%#ref  collect-runtime-refs-ref%)
  (%#set! collect-runtime-refs-setq%))

;;; basic-xform
(def (xform-wrap-source stx src-stx)
  (stx-wrap-source stx (stx-source src-stx)))

(def (xform-begin% self stx)
  (ast-case stx ()
    ((_ . forms)
     (let (forms (map (cut compile-e self <>) #'forms))
       (xform-wrap-source
        ['%#begin forms ...]
        stx)))))

(def (xform-begin-syntax% self stx)
  (ast-case stx ()
    ((_ . forms)
     (parameterize ((current-expander-phi (fx1+ (current-expander-phi))))
       (let (forms (map (cut compile-e self <>) #'forms))
         (xform-wrap-source
          ['%#begin-syntax forms ...]
          stx))))))

(def (xform-module% self stx)
  (ast-case stx ()
    ((_ id . body)
     (let* ((ctx (syntax-local-e #'id))
            (code (module-context-code ctx))
            (code
             (parameterize ((current-expander-context ctx))
               (compile-e self code))))
       (set! (module-context-code ctx)
         code)
       (xform-wrap-source
        ['%#module #'id code]
        stx)))))

(def (xform-define-values% self stx)
  (ast-case stx ()
    ((_ hd expr)
     (let (expr (compile-e self #'expr))
       (xform-wrap-source
        ['%#define-values #'hd expr]
        stx)))))

(def (xform-define-syntax% self stx)
  (ast-case stx ()
    ((_ id expr)
     (parameterize ((current-expander-phi (fx1+ (current-expander-phi))))
       (let (expr (compile-e self #'expr))
         (xform-wrap-source
          ['%#define-syntax #'id expr]
          stx))))))

(def (xform-begin-annotation% self stx)
  (ast-case stx ()
    ((_ ann expr)
     (let (expr (compile-e self #'expr))
       (xform-wrap-source
        ['%#begin-annotation #'ann expr]
        stx)))))

(def (xform-lambda% self stx)
  (ast-case stx ()
    ((_ hd . body)
     (let (body (map (cut compile-e self <>) #'body))
       (xform-wrap-source
        ['%#lambda #'hd body ...]
        stx)))))

(def (xform-case-lambda% self stx)
  (def (clause-e clause)
    (ast-case clause ()
      ((hd . body)
       (let (body (map (cut compile-e self <>) #'body))
         [#'hd body ...]))))

  (ast-case stx ()
    ((_ . clauses)
     (let (clauses (map clause-e #'clauses))
       (xform-wrap-source
        ['%#case-lambda clauses ...]
        stx)))))

(def (xform-let-values% self stx)
  (ast-case stx ()
    ((form ((hd expr) ...) . body)
     (with-syntax (((expr ...) (map (cut compile-e self <>) #'(expr ...))))
       (let (body (map (cut compile-e self <>) #'body))
         (xform-wrap-source
          [#'form #'((hd expr) ...) body ...]
          stx))))))

(def (xform-operands self stx)
  (ast-case stx ()
    ((form . rands)
     (let (rands (map (cut compile-e self <>) #'rands))
       (xform-wrap-source
        [#'form rands ...]
        stx)))))

(def xform-call% xform-operands)

(def (xform-setq% self stx)
  (ast-case stx ()
    ((_ id expr)
     (let (expr (compile-e self #'expr))
       (xform-wrap-source
        ['%#set! #'id expr]
        stx)))))

;;; apply-collect-mutators
(def (collect-mutators-setq% self stx)
  (ast-case stx ()
    ((_ id expr)
     (let (sym (identifier-symbol #'id))
       (verbose "collect mutator " sym)
       (hash-put! (current-compile-mutators) sym #t) ; just set for now
       (compile-e self #'expr)))))

;;; apply-collect-methods
(def (collect-methods-call% self stx)
  (ast-case stx (%#ref %#quote)
    ((_ (%#ref -bind-method) (%#ref type-t) (%#quote method) (%#ref impl) (%#quote rebind?))
     (runtime-identifier=? #'-bind-method 'bind-method!)
     (optimizer-top-level-method! (identifier-symbol #'impl)))
    ((_ (%#ref -bind-method!) (%#ref type-t) (%#quote method) (%#ref impl))
     (runtime-identifier=? #'-bind-method 'bind-method!)
     (optimizer-top-level-method! (identifier-symbol #'impl)))
    (_ (void))))

;;; apply-subst-refs
(def (expression-subst-ref% self stx)
  (ast-case stx ()
    ((_ xid)
     (if (free-identifier=? #'xid (@ self id))
       (xform-wrap-source
        ['%#ref (@ self new-id)]
        stx)
       stx))))

(def (expression-subst*-ref% self stx)
  (ast-case stx ()
    ((_ xid)
     (cond
      ((find (lambda (sub) (free-identifier=? #'xid (car sub)))
             (@ self subst))
       => (lambda (sub)
            (xform-wrap-source
             ['%#ref (cdr sub)]
             stx)))
      (else stx)))))

(def (expression-subst-setq% self stx)
  (ast-case stx ()
    ((_ xid expr)
     (let ((new-expr (compile-e self #'expr))
           (new-xid
            (if (free-identifier=? #'xid (@ self id))
              (@ self new-id)
              #'xid)))
       (xform-wrap-source
        ['%#set! new-xid new-expr]
        stx)))))

(def (expression-subst*-setq% self stx)
  (ast-case stx ()
    ((_ xid expr)
     (let ((new-expr (compile-e self #'expr))
           (new-xid
            (cond
             ((find (lambda (sub) (free-identifier=? #'xid (car sub)))
                    (@ self subst))
              => cdr)
             (else #'xid))))
       (xform-wrap-source
        ['%#set! new-xid new-expr]
        stx)))))

;;; apply-collect-runtime-refs
(def (collect-runtime-refs-ref% self stx)
  (ast-case stx ()
    ((_ id)
     (let (eid (identifier-symbol #'id))
       (hash-update! (@ self table) eid 1+ 0)))))

(def (collect-runtime-refs-setq% self stx)
  (ast-case stx ()
    ((_ id expr)
     (let (eid (identifier-symbol #'id))
       (hash-update! (@ self table) eid 1+ 0)
       (compile-e self #'expr)))))

;;; &find-expression
(def (find-body% self stx)
  (ast-case stx ()
    ((_ expr ...)
     (ormap (cut compile-e self <>) #'(expr ...)))))

(def (find-begin-annotation% self stx)
  (ast-case stx ()
    ((_ ann expr)
     (compile-e self #'expr))))

(def (find-lambda% self stx)
  (ast-case stx ()
    ((_ hd body)
     (compile-e self #'body))))

(def (find-case-lambda% self stx)
  (ast-case stx ()
    ((_ (hd body) ...)
     (ormap (cut compile-e self <>) #'(body ...)))))

(def (find-let-values% self stx)
  (ast-case stx ()
    ((_ ((bind expr) ...) body)
     (or (ormap (cut compile-e self <>) #'(expr ...))
         (compile-e self #'body)))))

(def (find-setq% self stx)
  (ast-case stx ()
    ((_ id expr)
     (compile-e self #'expr))))

;;; apply-find-var-refs
(def (find-var-refs-ref% self stx)
  (ast-case stx ()
    ((_ id)
     (find (cut free-identifier=? #'id <>) (@ self ids)))))

(def (find-var-refs-setq% self stx)
  (ast-case stx ()
    ((_ id expr)
     (or (find (cut free-identifier=? #'id <>) (@ self ids))
         (compile-e self #'expr)))))
