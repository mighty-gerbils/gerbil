;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler compilation methods
prelude: "../core"
package: gerbil/compiler
namespace: gxc

(import "../core/expander"
        "../expander"
        "base")
(export #t)

;;; Overview of compilation methods
;;; ------------------------------
;;; Compilation methods are classes that can make a pass over an AST
;;; of Gerbil code.
;;;
;;; After expansion, and during compilation, ASTs are normalized to have
;;; a terminal "macro" symbol at the head.
;;; Compilation method instances can then be applied to them to produce
;;; an arbitrary value or another AST.
;;;
;;; Compilation methods are defined with defcompile-method (see below)
;;; which creates a "method" object, initialized with the parameters of
;;; the transfor.
;;; Method implementations (one for each terminal macro the pass can process)
;;; are dispatched with compile-e. The signature accepts a single value, the
;;; syntax object to be processed.

;;; current compilation method instance
(def current-compile-method
  (make-parameter #f))

;;; compilation method application
(def* compile-e
  ((stx)
   (let (self (current-compile-method))
     (cond
      ((method-ref self (stx-car-e stx))
       => (lambda (method) (declare (not safe)) (method self stx)))
      (else
       (error "missing method" self (stx-car-e stx) (syntax->datum stx))))))
  ((self stx)
   (cond
    ((method-ref self (stx-car-e stx))
     => (lambda (method) (declare (not safe)) (method self stx)))
    (else
     (error "missing method" self (stx-car-e stx) (syntax->datum stx))))))

(def (stx-car-e stx)
  (stx-e (car (stx-e stx))))

;;; compilation method definitions
(defsyntax (defcompile-method stx)
  (syntax-case stx ()
    ((_ compile-method klass slots . methods)
     (identifier? #'klass)
     #'(defcompile-method compile-method (klass) slots . methods))

    ((_ #f (klass super ...) slots (method implementation) ...)
     (with-syntax ((klass-bind-methods! (stx-identifier #'klass #'klass "-bind-methods!"))
                   ((super-bind-methods! ...)
                    (map (lambda (super) (stx-identifier super super "-bind-methods!"))
                         #'(super ...)))
                   (klass::t (stx-identifier #'klass #'klass "::t")))
       #'(begin
           (defclass (klass super ...) slots)
           (def klass-bind-methods!
             (delay
               (begin
                 (force super-bind-methods!) ...
                 (bind-method! klass::t 'method implementation) ...))))))

    ((_ (compile-method arg ...) (klass super ...) slots (method implementation) ...)
     (with-syntax ((klass-bind-methods! (stx-identifier #'klass #'klass "-bind-methods!"))
                   ((super-bind-methods! ...)
                    (map (lambda (super) (stx-identifier super super "-bind-methods!"))
                         #'(super ...)))
                   (klass::t (stx-identifier #'klass #'klass "::t")))
       #'(begin
           (defclass (klass super ...) slots)
           (def klass-bind-methods!
             (delay
               (begin
                 (force super-bind-methods!) ...
                 (bind-method! klass::t 'method implementation) ...)))
           (def (compile-method stx arg ...)
             (force klass-bind-methods!)
             (let (self (klass arg ...))
               (parameterize ((current-compile-method self))
                 (compile-e self stx)))))))

    ((_ (compile-method arg ...) (klass super ...) slots final: (method implementation) ...)
     (with-syntax ((klass-bind-methods! (stx-identifier #'klass #'klass "-bind-methods!"))
                   ((super-bind-methods! ...)
                    (map (lambda (super) (stx-identifier super super "-bind-methods!"))
                         #'(super ...)))
                   (klass::t (stx-identifier #'klass #'klass "::t")))
       #'(begin
           (defclass (klass super ...) slots final: #t)
           (def klass-bind-methods!
             (delay
               (begin
                 (force super-bind-methods!) ...
                 (bind-method! klass::t 'method implementation) ...
                 (seal-class! klass::t))))
           (def (compile-method stx arg ...)
             (force klass-bind-methods!)
             (let (self (klass arg ...))
               (parameterize ((current-compile-method self))
                 (compile-e self stx)))))))))

;;; some primitive method mixins
(def (void-method self stx)
  #!void)

(def (false-method self stx)
  #f)

(def (true-method self stx)
  #t)

(def (identity-method self stx)
  stx)

(defcompile-method #f ::void-expression ()
  (%#begin-annotation        void-method)
  (%#lambda                       void-method)
  (%#case-lambda                  void-method)
  (%#let-values              void-method)
  (%#letrec-values           void-method)
  (%#letrec*-values          void-method)
  (%#quote                   void-method)
  (%#quote-syntax            void-method)
  (%#call                    void-method)
  (%#call-unchecked          void-method)
  (%#if                      void-method)
  (%#ref                     void-method)
  (%#set!                    void-method)
  (%#struct-instance?        void-method)
  (%#struct-direct-instance? void-method)
  (%#struct-ref              void-method)
  (%#struct-set!             void-method)
  (%#struct-direct-ref       void-method)
  (%#struct-direct-set!      void-method)
  (%#struct-unchecked-ref    void-method)
  (%#struct-unchecked-set!   void-method))

(defcompile-method #f ::void-special-form ()
  (%#begin          void-method)
  (%#begin-syntax   void-method)
  (%#begin-foreign  void-method)
  (%#module         void-method)
  (%#import         void-method)
  (%#export         void-method)
  (%#provide        void-method)
  (%#extern         void-method)
  (%#define-values  void-method)
  (%#define-syntax  void-method)
  (%#define-alias   void-method)
  (%#declare        void-method))

(defcompile-method #f (::void ::void-special-form ::void-expression) ())

(defcompile-method #f ::false-expression ()
  (%#begin-annotation        false-method)
  (%#lambda                       false-method)
  (%#case-lambda                  false-method)
  (%#let-values              false-method)
  (%#letrec-values           false-method)
  (%#letrec*-values          false-method)
  (%#quote                   false-method)
  (%#quote-syntax            false-method)
  (%#call                    false-method)
  (%#call-unchecked          false-method)
  (%#if                      false-method)
  (%#ref                     false-method)
  (%#set!                    false-method)
  (%#struct-instance?        false-method)
  (%#struct-direct-instance? false-method)
  (%#struct-ref              false-method)
  (%#struct-set!             false-method)
  (%#struct-direct-ref       false-method)
  (%#struct-direct-set!      false-method)
  (%#struct-unchecked-ref    false-method)
  (%#struct-unchecked-set!   false-method))

(defcompile-method #f ::false-special-form ()
  (%#begin          false-method)
  (%#begin-syntax   false-method)
  (%#begin-foreign  false-method)
  (%#module         false-method)
  (%#import         false-method)
  (%#export         false-method)
  (%#provide        false-method)
  (%#extern         false-method)
  (%#define-values  false-method)
  (%#define-syntax  false-method)
  (%#define-alias   false-method)
  (%#declare        false-method))

(defcompile-method #f (::false ::false-special-form ::false-expression) ())

(defcompile-method #f ::identity-expression ()
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

(defcompile-method #f ::identity-special-form ()
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

(defcompile-method #f (::identity ::identity-special-form ::identity-expression) ())

;;; Source to Source transforms
(defcompile-method #f ::basic-xform-expression ()
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

(defcompile-method #f (::basic-xform ::basic-xform-expression ::identity) ()
  (%#begin          xform-begin%)
  (%#begin-syntax   xform-begin-syntax%)
  (%#module         xform-module%)
  (%#define-values  xform-define-values%)
  (%#define-syntax  xform-define-syntax%))


;;; Common definitions for compile methods
;;; applicative methods: the method is applied to the AST to extract a value,
;;; possibly by side effect.
(def (apply-begin% self stx)
  (ast-case stx ()
    ((_ . body)
     (for-each (cut compile-e self <>) (stx-e #'body)))))

(def (apply-last-begin% self stx)
  (ast-case stx ()
    ((_ . body)
     (compile-e self (last #'body)))))

(def (apply-begin-syntax% self stx)
  (parameterize ((current-expander-phi (fx1+ (current-expander-phi))))
    (apply-begin% self stx)))

(def (apply-module% self stx)
  (ast-case stx ()
    ((_ id . body)
     (let* ((ctx (syntax-local-e #'id))
            (ctx-stx (module-context-code ctx)))
       (parameterize ((current-expander-context ctx))
         (compile-e self ctx-stx))))))

(def (apply-begin-annotation% self stx)
  (ast-case stx ()
    ((_ ann expr)
     (compile-e self #'expr))))

(def (apply-define-values% self stx)
  (ast-case stx ()
    ((_ hd expr)
     (compile-e self #'expr))))

(def (apply-define-syntax% self stx)
  (ast-case stx ()
    ((_ id expr)
     (parameterize ((current-expander-phi (fx1+ (current-expander-phi))))
       (compile-e self #'expr)))))

(def (apply-body-lambda% self stx)
  (ast-case stx ()
    ((_ hd body)
     (compile-e self #'body))))

(def (apply-body-case-lambda% self stx)
  (ast-case stx ()
    ((_ (hd body) ...)
     (for-each (cut compile-e self <>) #'(body ...)))))

(def (apply-body-let-values% self stx)
  (ast-case stx ()
    ((_ ((hd expr) ...) body)
     (for-each (cut compile-e self <>) #'(expr ... body)))))

(def (apply-body-last-let-values% self stx)
  (ast-case stx ()
    ((_ bind . body)
     (compile-e self (last #'body)))))

(def (apply-body-setq% self stx)
  (ast-case stx ()
    ((_ id expr)
     (compile-e self #'expr))))

(def (apply-operands self stx)
  (ast-case stx ()
    ((_ rands ...)
     (for-each (cut compile-e self <>) #'(rands ...)))))

;; source to source transforms
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
