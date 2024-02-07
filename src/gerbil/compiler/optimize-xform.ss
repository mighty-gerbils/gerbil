;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler optimization passes
prelude: :gerbil/core
package: gerbil/compiler
namespace: gxc

(import :gerbil/expander
        "base"
        "compile"
        "optimize-base")
(export #t)

(defcompile-method #f &identity-expression
  (%#begin-annotation        xform-identity)
  (%#lambda                       xform-identity)
  (%#case-lambda                  xform-identity)
  (%#let-values              xform-identity)
  (%#letrec-values           xform-identity)
  (%#letrec*-values          xform-identity)
  (%#quote                   xform-identity)
  (%#quote-syntax            xform-identity)
  (%#call                    xform-identity)
  (%#call-unchecked          xform-identity)
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
  (%#begin-annotation        xform-begin-annotation%)
  (%#lambda                       xform-lambda%)
  (%#case-lambda                  xform-case-lambda%)
  (%#let-values              xform-let-values%)
  (%#letrec-values           xform-let-values%)
  (%#letrec*-values          xform-let-values%)
  (%#quote                   xform-identity)
  (%#quote-syntax            xform-identity)
  (%#call                    xform-operands)
  (%#call-unchecked          xform-operands)
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
  (%#begin-syntax   xform-begin-syntax%)
  (%#module         xform-module%)
  (%#define-values  xform-define-values%)
  (%#define-syntax  xform-define-syntax%))

(defcompile-method apply-collect-mutators (&collect-mutators &void)
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

(defcompile-method apply-collect-methods (&collect-methods &void)
  (%#begin          collect-begin%)
  (%#begin-syntax   collect-begin-syntax%)
  (%#module         collect-module%)
  (%#call           collect-methods-call%)
  (%#call-unchecked collect-methods-call%))

(defcompile-method apply-expression-subst (&expression-subst &basic-xform-expression)
  (%#begin xform-begin%)
  (%#ref   expression-subst-ref%)
  (%#set!  expression-subst-setq%))

(defcompile-method apply-expression-subst* (&expression-subst* &expression-subst)
  (%#ref   expression-subst*-ref%)
  (%#set!  expression-subst*-setq%))

(defcompile-method #f (&find-expression &false-expression)
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

(defcompile-method apply-find-var-refs (&find-var-refs &find-expression)
  (%#ref  find-var-refs-ref%)
  (%#set! find-var-refs-setq%))

(defcompile-method apply-collect-runtime-refs (&collect-runtime-refs &collect-expression-refs)
  (%#ref  collect-runtime-refs-ref%)
  (%#set! collect-runtime-refs-setq%))

;;; basic-xform
(def (xform-identity stx . args)
  stx)

(def (xform-wrap-source stx src-stx)
  (stx-wrap-source stx (stx-source src-stx)))

(def (xform-apply-compile-e args)
  (lambda (stx) (do-apply-compile-e stx args)))

(def (xform-begin% stx . args)
  (ast-case stx ()
    ((_ . forms)
     (let (forms (map (xform-apply-compile-e args) #'forms))
       (xform-wrap-source
        ['%#begin forms ...]
        stx)))))

(def (xform-begin-syntax% stx . args)
  (ast-case stx ()
    ((_ . forms)
     (parameterize ((current-expander-phi (fx1+ (current-expander-phi))))
       (let (forms (map (xform-apply-compile-e args) #'forms))
         (xform-wrap-source
          ['%#begin-syntax forms ...]
          stx))))))

(def (xform-module% stx . args)
  (ast-case stx ()
    ((_ id . body)
     (let* ((ctx (syntax-local-e #'id))
            (code (module-context-code ctx))
            (code
             (parameterize ((current-expander-context ctx))
               (do-apply-compile-e code args))))
       (set! (module-context-code ctx)
         code)
       (xform-wrap-source
        ['%#module #'id code]
        stx)))))

(def (xform-define-values% stx . args)
  (ast-case stx ()
    ((_ hd expr)
     (let (expr (do-apply-compile-e #'expr args))
       (xform-wrap-source
        ['%#define-values #'hd expr]
        stx)))))

(def (xform-define-syntax% stx . args)
  (ast-case stx ()
    ((_ id expr)
     (parameterize ((current-expander-phi (fx1+ (current-expander-phi))))
       (let (expr (do-apply-compile-e #'expr args))
         (xform-wrap-source
          ['%#define-syntax #'id expr]
          stx))))))

(def (xform-begin-annotation% stx . args)
  (ast-case stx ()
    ((_ ann expr)
     (let (expr (do-apply-compile-e #'expr args))
       (xform-wrap-source
        ['%#begin-annotation #'ann expr]
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
     (let (expr (do-apply-compile-e #'expr args))
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

;;; apply-collect-methods
(def (collect-methods-call% stx)
  (ast-case stx (%#ref %#quote)
    ((_ (%#ref -bind-method) (%#ref type-t) (%#quote method) (%#ref impl) (%#quote rebind?))
     (runtime-identifier=? #'-bind-method 'bind-method!)
     (optimizer-top-level-method! (identifier-symbol #'impl)))
    ((_ (%#ref -bind-method!) (%#ref type-t) (%#quote method) (%#ref impl))
     (runtime-identifier=? #'-bind-method 'bind-method!)
     (optimizer-top-level-method! (identifier-symbol #'impl)))
    (_ (void))))

;;; apply-subst-refs
(def (expression-subst-ref% stx id new-id)
  (ast-case stx ()
    ((_ xid)
     (if (free-identifier=? #'xid id)
       (xform-wrap-source
        ['%#ref new-id]
        stx)
       stx))))

(def (expression-subst*-ref% stx subst)
  (ast-case stx ()
    ((_ xid)
     (cond
      ((find (lambda (sub) (free-identifier=? #'xid (car sub)))
             subst)
       => (lambda (sub)
            (xform-wrap-source
             ['%#ref (cdr sub)]
             stx)))
      (else stx)))))

(def (expression-subst-setq% stx id new-id)
  (ast-case stx ()
    ((_ xid expr)
     (let ((new-expr (compile-e #'expr id new-id))
           (new-xid
            (if (free-identifier=? #'xid id)
              new-id
              #'xid)))
       (xform-wrap-source
        ['%#set! new-xid new-expr]
        stx)))))

(def (expression-subst*-setq% stx subst)
  (ast-case stx ()
    ((_ xid expr)
     (let ((new-expr (compile-e #'expr subst))
           (new-xid
            (cond
             ((find (lambda (sub) (free-identifier=? #'xid (car sub)))
                    subst)
              => cdr)
             (else #'xid))))
       (xform-wrap-source
        ['%#set! new-xid new-expr]
        stx)))))

;;; apply-collect-runtime-refs
(def (collect-runtime-refs-ref% stx ht)
  (ast-case stx ()
    ((_ id)
     (let (eid (identifier-symbol #'id))
       (hash-update! ht eid 1+ 0)))))

(def (collect-runtime-refs-setq% stx ht)
  (ast-case stx ()
    ((_ id expr)
     (let (eid (identifier-symbol #'id))
       (hash-update! ht eid 1+ 0)
       (compile-e #'expr ht)))))

;;; &find-expression
(def (find-body% stx arg)
  (ast-case stx ()
    ((_ expr ...)
     (ormap (cut compile-e <> arg) #'(expr ...)))))

(def (find-begin-annotation% stx arg)
  (ast-case stx ()
    ((_ ann expr)
     (compile-e #'expr arg))))

(def (find-lambda% stx arg)
  (ast-case stx ()
    ((_ hd body)
     (compile-e #'body arg))))

(def (find-case-lambda% stx arg)
  (ast-case stx ()
    ((_ (hd body) ...)
     (ormap (cut compile-e <> arg) #'(body ...)))))

(def (find-let-values% stx arg)
  (ast-case stx ()
    ((_ ((bind expr) ...) body)
     (or (ormap (cut compile-e <> arg) #'(expr ...))
         (compile-e #'body arg)))))

(def (find-setq% stx arg)
  (ast-case stx ()
    ((_ id expr)
     (compile-e #'expr arg))))

;;; apply-find-var-refs
(def (find-var-refs-ref% stx ids)
  (ast-case stx ()
    ((_ id)
     (find (cut free-identifier=? #'id <>) ids))))

(def (find-var-refs-setq% stx ids)
  (ast-case stx ()
    ((_ id expr)
     (or (find (cut free-identifier=? #'id <>) ids)
         (compile-e #'expr ids)))))
