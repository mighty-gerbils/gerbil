;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler optimization passes
prelude: "../core"
package: gerbil/compiler
namespace: gxc

(import "../core/expander"
        "../expander"
        "base"
        "method"
        "compile"
        "optimize-base"
        "optimize-xform")
(export #t)

;; method to collect top level type information; types for top level bindings
(defcompile-method (apply-collect-top-level-type-info)
  (::collect-top-level-type-info ::void)
  ()
  final:
  (%#begin            apply-begin%)
  (%#begin-syntax     apply-begin-syntax%)
  (%#module           apply-module%)
  (%#define-values    collect-top-level-type-define-values%)
  (%#lambda                collect-type-lambda%)
  (%#case-lambda           collect-type-case-lambda%)
  (%#let-values       collect-top-level-type-let-values%)
  (%#letrec-values    collect-top-level-type-letrec-values%)
  (%#letrec*-values   collect-top-level-type-letrec-values%)
  (%#call             collect-top-level-type-call%)
  (%#if               apply-operands)
  (%#set!             apply-body-setq%))

;; method to collect top level user type related declarations
(defcompile-method (apply-collect-top-level-declarations)
  (::collect-top-level-declarations ::void)
  ()
  final:
  (%#begin            apply-begin%)
  (%#begin-syntax     apply-begin-syntax%)
  (%#module           apply-module%)
  (%#begin-annotation collect-top-level-decl-begin-annotation%))

;; method to extract the type of an expression
(defcompile-method (apply-basic-expression-top-level-type)
  (::basic-expression-top-level-type ::false)
  ()
  final:
  (%#begin-annotation basic-expression-type-begin-annotation%))

;; method to collect types in the whole module
(defcompile-method (apply-collect-type-info) (::collect-type-info ::void)
  ()
  final:
  (%#begin            apply-begin%)
  (%#begin-syntax     apply-begin-syntax%)
  (%#module           apply-module%)
  (%#define-values    collect-type-define-values%)
  (%#begin-annotation collect-type-begin-annotation%)
  (%#lambda                collect-type-lambda%)
  (%#case-lambda           collect-type-case-lambda%)
  (%#let-values       collect-type-let-values%)
  (%#letrec-values    collect-type-letrec-values%)
  (%#letrec*-values   collect-type-letrec-values%)
  (%#call             apply-operands)
  (%#if               apply-path-type-if%)
  (%#set!             apply-body-setq%))

(defcompile-method (apply-collect-mutable-type-info) (::collect-mutable-type-info ::void)
  ()
  final:
  (%#begin            apply-begin%)
  (%#begin-syntax     apply-begin-syntax%)
  (%#module           apply-module%)
  (%#define-values    apply-define-values%)
  (%#begin-annotation apply-begin-annotation%)
  (%#lambda                collect-type-lambda%)
  (%#case-lambda           collect-type-case-lambda%)
  (%#let-values       collect-type-let-values%)
  (%#letrec-values    collect-type-letrec-values%)
  (%#letrec*-values   collect-type-letrec-values%)
  (%#call             apply-operands)
  (%#if               apply-path-type-if%)
  (%#set!             collect-type-setq%))

;; methods to find the type of an expression
(defcompile-method (apply-raw-expression-type) (::raw-expression-type ::false)
  ()
  (%#begin            apply-last-begin%)
  (%#begin-annotation basic-expression-type-begin-annotation%)
  (%#lambda                raw-expression-type-lambda%)
  (%#case-lambda           basic-expression-type-case-lambda%)
  (%#let-values       apply-body-last-let-values%)
  (%#letrec-values    apply-body-last-let-values%)
  (%#letrec*-values   apply-body-last-let-values%)
  (%#call             basic-expression-type-call%)
  (%#ref              basic-expression-type-ref%)
  (%#if               basic-expression-type-if%)
  (%#quote            basic-expression-type-quote%))

(defcompile-method (apply-basic-expression-type) (::basic-expression-type ::raw-expression-type ::false)
  ()
  final:
  (%#lambda                basic-expression-type-lambda%))

;; method to lift sub-lambdas from case/opt/kw lambda definitions
(defcompile-method (apply-lift-top-lambdas) (::lift-top-lambdas ::basic-xform)
  ()
  final:
  (%#define-values  lift-top-lambda-define-values%)
  (%#let-values     lift-top-lambda-let-values%)
  (%#letrec-values  lift-top-lambda-letrec-values%)
  (%#letrec*-values lift-top-lambda-letrec-values%))

;; method to extract the lambda signature from a typed gerbil annotation
(defcompile-method (apply-extract-lambda-signature) (::extract-lambda-signature ::false) ()
  final:
  (%#begin            apply-last-begin%)
  (%#begin-annotation extract-lambda-signature-begin-annotation%)
  (%#let-values       apply-body-last-let-values%)
  (%#letrec-values    apply-body-last-let-values%)
  (%#letrec*-values   apply-body-last-let-values%))

;;; apply-collect-top-level-type-infp
(def (collect-top-level-type-define-values% self stx)
  (ast-case stx ()
    ((_ (id) expr)
     (identifier? #'id)
     (let (sym (identifier-symbol #'id))
       ;; first pass of type collection, so that we can get preliminary type
       ;; signatures for lambda
       ;; the apply-collect-type-info pass is later applied to collect
       ;; exact type signatures.
       (compile-e self #'expr)
       (alet (type (apply-basic-expression-top-level-type #'expr))
         (if (!class-meta? type)
           (begin
             (optimizer-declare-class! sym (!class-meta-class type))
             (optimizer-declare-type! sym (optimizer-resolve-class stx 'class::t)))
           (optimizer-declare-type! sym type)))))
    (_ (void))))

;;; apply-collect-top-level-declarations
(def (collect-top-level-decl-begin-annotation% self stx)
  (ast-case stx (@inline %#quote)
    ((_ (@inline proc) (%#quote rules))
     (let (type (optimizer-lookup-type (identifier-symbol #'proc)))
       (if (!lambda? type)
         (set! (!lambda-inline type)
           (eval-in-ssxi-context #'rules))
         (raise-compile-error "inline rule for non lambda procedure" stx #'proc))))
    ((_ ann body) (void))))

(def (eval-in-ssxi-context expr)
  (parameterize ((current-expander-context (make-top-context)))
    (eval '(import :gerbil/compiler/ssxi))
    (eval-syntax expr)))

;;; apply-collect-type-info
(def (collect-type-define-values% self stx)
  (ast-case stx ()
    ((_ (hd) expr)
     (identifier? #'hd)
     (let (sym (identifier-symbol #'hd))
       (if (optimizer-lookup-type sym) ; already has a type from top
         (compile-e self #'expr)
         (let (type (apply-basic-expression-type #'expr))
           (when type (optimizer-declare-type! sym type))
           (compile-e self #'expr)))))
    ((_ _ expr)
     (compile-e self #'expr))))

(def (collect-type-begin-annotation% self stx)
  (ast-case stx (@type.assert)
    ((_ (@type.assert assertion ...) body)
     (begin
       (for-each
         (lambda (assertion)
           (ast-case assertion ()
             ((id type)
              (and (identifier? #'id) (identifier? #'type))
              (optimizer-declare-type! (identifier-symbol #'id)
                                       (optimizer-resolve-class stx (identifier-symbol #'type))
                                       #t))
             (_ (raise-compile-error "malformed type assertion" stx assertion))))
         #'(assertion ...))
       (compile-e self #'body)))
    ((_ ann body)
     (compile-e self #'body))))

(def (collect-type-lambda% self stx)
  (ast-case stx ()
    ((_ args . body)
     (begin
       (parameterize ((current-compile-local-env (xform-let-locals #'args)))
         (collect-type-lambda-formals-tail stx #'args)
         (apply-body-lambda% self stx))))))

(def (collect-type-case-lambda% self stx)
  (ast-case stx ()
    ((_ (hd body) ...)
     (begin
       (for-each (cut collect-type-lambda-formals-tail stx <>) #'(hd ...))
       (for-each (lambda (clause)
                   (ast-case clause ()
                     ((hd body)
                      (parameterize ((current-compile-local-env (xform-let-locals #'hd)))
                        (apply-body-case-lambda% self stx)))))
                 #'((hd body) ...))))))

(def (collect-type-lambda-formals-tail stx formals)
  (let loop ((rest formals))
    (ast-case rest ()
      ((_ . rest) (loop #'rest))
      (id
       (identifier? #'id)
       (optimizer-declare-type! (identifier-symbol #'id)
                                (optimizer-resolve-class stx 'list::t)
                                #t))
      (_ (void)))))

(def (collect-type-let-values% self stx (expression-type apply-basic-expression-type))
  (def (collect-e hd expr)
    (ast-case hd ()
      ((id)
       (identifier? #'id)
       (let (sym (identifier-symbol #'id))
         (alet (type (expression-type expr))
           (if (!class-meta? type)
             (begin
               (optimizer-declare-class! sym (!class-meta-class type))
               (optimizer-declare-type! sym (optimizer-resolve-class stx 'class::t) #t))
             (optimizer-declare-type! sym type #t)))))
      (_ (void))))

  (ast-case stx ()
    ((_ ((hd expr) ...) body)
     (begin
       (for-each collect-e #'(hd ...) #'(expr ...))
       (for-each (cut compile-e self <>) #'(expr ...))
       (parameterize ((current-compile-local-env (xform-let-locals #'(hd ...))))
         (compile-e self #'body))))))

(def (collect-type-letrec-values% self stx (expression-type apply-basic-expression-type))
  (def (collect-e hd expr)
    (ast-case hd ()
      ((id)
       (identifier? #'id)
       (let (sym (identifier-symbol #'id))
         (alet (type (expression-type expr))
           (if (!class-meta? type)
             (begin
               (optimizer-declare-class! sym (!class-meta-class type))
               (optimizer-declare-type! sym (optimizer-resolve-class stx 'class::t) #t))
             (optimizer-declare-type! sym type #t)))))
      (_ (void))))

  (ast-case stx ()
    ((_ ((hd expr) ...) body)
     (begin
       ;; do the bindings twice
       ;; 1. to get the return types from recursive proc declarations
       ;; 2. to apply the inference in the bindings and body,
       ;;    given the recursive return types
       (parameterize ((current-compile-local-env (xform-let-locals #'(hd ...))))
         (for-each collect-e #'(hd ...) #'(expr ...))
         (for-each (cut compile-e self <>) #'(expr ...))
         (for-each collect-e #'(hd ...) #'(expr ...))
         (for-each (cut compile-e self <>) #'(expr ...))
         (compile-e self #'body))))))

(def (collect-top-level-type-let-values% self stx)
  (collect-type-let-values% self stx apply-raw-expression-type))

(def (collect-top-level-type-letrec-values% self stx)
  (collect-type-letrec-values% self stx apply-raw-expression-type))

(def (collect-top-level-type-call% self stx)
  (ast-case stx (%#ref %#quote)
    ((_ (%#ref -bind-method) (%#ref type-t) (%#quote method) (%#ref impl) (%#quote rebind?))
     (runtime-identifier=? #'-bind-method 'bind-method!)
     (optimizer-declare-method! (identifier-symbol #'type-t)
                                (stx-e #'method)
                                (identifier-symbol #'impl)
                                (stx-e #'rebind?)))
    ((_ (%#ref -bind-method!) (%#ref type-t) (%#quote method) (%#ref impl))
     (runtime-identifier=? #'-bind-method 'bind-method!)
     (optimizer-declare-method! (identifier-symbol #'type-t)
                                (stx-e #'method)
                                (identifier-symbol #'impl)
                                #f))

    ((_ expr ...)
     (for-each (cut compile-e self <>) #'(expr ...)))))

(def (collect-type-setq% self stx)
  (ast-case stx ()
    ((_ id expr)
     (let* ((sym (identifier-symbol #'id))
            (bind-type (optimizer-resolve-type sym))
            (expr-type (apply-basic-expression-type #'expr))
            (reduced-type (greatest-common-type stx bind-type expr-type)))
       (when reduced-type
         (optimizer-declare-type! sym reduced-type
                                  (memq sym (current-compile-local-env))))
       (compile-e self #'expr)))))

(def (apply-path-type-if% self stx)
  (ast-case stx (%#call %#ref)
    ((_ (%#call (%#ref pred) (%#ref obj)) K E)
     (cond
      ((optimizer-lookup-type (identifier-symbol #'pred))
       => (lambda (pred-type)
            (if (or (!predicate? pred-type)
                    (!primitive-predicate? pred-type))
              (begin
                (parameterize ((current-compile-path-type
                                (cons (cons (identifier-symbol #'obj)
                                            (optimizer-resolve-class stx (!type-id pred-type)))
                                      (current-compile-path-type))))
                  (compile-e self #'K))
                (compile-e self #'E))
              (apply-operands self stx))))
      (else
       (apply-operands self stx))))
    ((_ (%#call (%#ref -not) expr) K E)
     (runtime-identifier=? #'-not 'not)
     (apply-path-type-if%
      self
      (xform-wrap-source
       #'(%#if expr E K)
       stx)))
    ((_ test K E)
     (apply-operands self stx))))

;;; apply-basic-expression-type
(def basic-expression-type-annotations (make-hash-table-eq))
(defrules defbasic-expression-type-annotations ()
  ((_ (id type-e) ...)
   (begin
     (hash-put! basic-expression-type-annotations 'id type-e) ...)))

(def (basic-expression-type-begin-annotation% self stx)
  (ast-case stx ()
    ((_ ann expr)
     (ast-case #'ann ()
       ((annotation . args)
        (identifier? #'annotation)
        (cond
         ((hash-get basic-expression-type-annotations (stx-e #'annotation))
          => (lambda (type-e) (type-e stx #'ann)))
         (else
          (compile-e self #'expr))))
       (_ (compile-e self #'expr))))))

(def (basic-expression-type-annotation-typedecl stx ann)
  (ast-case ann ()
    ((_ type-id)
     (optimizer-resolve-class stx (identifier-symbol #'type-id)))))

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
       (make-!class-meta
        (make-!class type-id super slots ctor-method struct? final? #f metaclass))))))

(def (basic-expression-type-annotation-mop.system stx ann)
  (ast-case ann ()
    ((_ type-id super)
     (let ((type-id (stx-e #'type-id))
           (super (stx-map identifier-symbol #'super)))
       (make-!class-meta
        (make-!class type-id super [] #f #f #f #t #f))))))

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

(def (basic-expression-type-annotation-interface stx ann)
  (ast-case ann ()
    ((_ type-t methods)
     (make-!interface (identifier-symbol #'type-t)
                      (stx-map stx-e #'methods)))))

(def (basic-expression-type-annotation-predicate stx ann)
  (ast-case ann ()
    ((_ type-t)
     (make-!primitive-predicate (identifier-symbol #'type-t)))))

(def (basic-expression-type-annotation-abort stx ann)
  (ast-case ann ()
    ((_) (make-!abort))))

(defbasic-expression-type-annotations
  (@mop.class       basic-expression-type-annotation-mop.class)
  (@mop.constructor basic-expression-type-annotation-mop.constructor)
  (@mop.predicate   basic-expression-type-annotation-mop.predicate)
  (@mop.accessor    basic-expression-type-annotation-mop.accessor)
  (@mop.mutator     basic-expression-type-annotation-mop.mutator)
  (@mop.system      basic-expression-type-annotation-mop.system)
  (@interface       basic-expression-type-annotation-interface)
  (@type            basic-expression-type-annotation-typedecl)
  (@predicate       basic-expression-type-annotation-predicate)
  (@abort           basic-expression-type-annotation-abort))

(def (raw-expression-type-lambda% self stx)
  (ast-case stx ()
    ((_ . form)
     ;; delegate dispatch
     (dispatch-lambda-form? #'form)
     (make-!lambda (lambda-form-arity #'form) (dispatch-lambda-form-delegate #'form)))

    ((_ . form)
     ;; generic lambda -- track type for call arity checking and return type inference
     (let (signature (lambda-form-infer-signature #'form))
       (make-!lambda (lambda-form-arity #'form) #f signature: signature)))))

(def (basic-expression-type-lambda% self stx)
  (begin-annotation @match:prefix
    (ast-case stx (%#call %#ref %#quote)
      ((_ args (%#call (%#ref -apply) (%#ref -keyword-dispatch) (%#quote kwt)
                       (%#ref dispatch) (%#ref -args)))
       ;; kw-lambda
       (and (identifier? #'args)
            (runtime-identifier=? #'-apply 'apply)
            (runtime-identifier=? #'-keyword-dispatch 'keyword-dispatch)
            (free-identifier=? #'args #'-args))
       (let* ((tab (stx-e #'kwt))
              (keys (and tab (filter identity (vector->list tab)))))
         (make-!kw-lambda keys (identifier-symbol #'dispatch))))

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
            (andmap (cut runtime-identifier=? <> 'symbolic-table-ref) #'(-hash-ref ...))
            (andmap (cut runtime-identifier=? <> 'absent-value) #'(-absent-value ...))
            (andmap (cut free-identifier=? <> #'kwvar) #'(-xkwvar ...)))
       (make-!kw-lambda-primary (map stx-e #'(key ...)) (identifier-symbol #'main)))

      ((_ . form)
       ;; delegate dispatch
       (dispatch-lambda-form? #'form)
       (make-!lambda (lambda-form-arity #'form) (dispatch-lambda-form-delegate #'form)))

      ((_ . form)
       ;; generic lambda -- track type for call arity checking and return type inference
       (let (signature (lambda-form-infer-signature #'form))
         (make-!lambda (lambda-form-arity #'form) #f signature: signature))))))

(def (basic-expression-type-case-lambda% self stx)
  (def (clause-e form)
    (let (signature (lambda-form-infer-signature form))
      (make-!lambda (lambda-form-arity form)
             (and (dispatch-lambda-form? form)
                  (dispatch-lambda-form-delegate form))
             signature: signature)))

  (def (return-type-e clauses)
    (let loop ((rest clauses) (result #f))
      (match rest
        ([clause . rest]
         (using (clause :- !lambda)
           (let* ((return
                   (using (signature clause.signature :- !signature)
                     (and signature
                          signature.return
                          (optimizer-resolve-class stx signature.return))))
                  (result
                   (if (and result return)
                     (greatest-common-type stx result return)
                     (or result return))))
             (loop rest result))))
        (else result))))

  (ast-case stx ()
    ((_ . clauses)
     (let* ((clauses (map clause-e #'clauses))
            (return (return-type-e clauses)))
       (make-!case-lambda
        clauses
        signature: (and return
                        (alet (return-type (optimizer-lookup-class-name return))
                          (make-!signature return: return-type))))))))

(def basic-expression-type-special (make-hash-table-eq))
(defrules defbasic-expression-type-special ()
  ((_ (id type-e) ...)
   (begin
     (hash-put! basic-expression-type-special 'id type-e) ...)))

(def (basic-expression-type-call% self stx)
  (def (type-e rator rator-type args)
    (cond
     ((not rator-type) #f)
     ((!procedure? rator-type)
      {rator-type.return-type self stx args})
     (else #f)))

  (ast-case stx (%#ref)
    ((_ (%#ref id) . args)
     (cond
      ((hash-get basic-expression-type-special (identifier-symbol #'id))
       => (lambda (type-e) (type-e self stx)))
      (else
       (type-e #'id (optimizer-resolve-type (identifier-symbol #'id)) #'args))))
    ((_ rator . args)
     (type-e #'rator (apply-basic-expression-type #'rator) #'args))))

(defmethod {return-type !procedure}
  (lambda (self ctx stx args)
    (and self.signature
         (optimizer-resolve-class stx self.signature.return))))

(defmethod {apply-return-type !procedure}
  !procedure::return-type)

(defmethod {return-type !lambda}
  (lambda (self ctx stx args)
    (if self.dispatch
      (alet (dispatch-type (optimizer-lookup-type self.dispatch))
        (and (!procedure? dispatch-type)
             {dispatch-type.return-type ctx stx args}))
      (!procedure::return-type self ctx stx args))))

(defmethod {apply-return-type !lambda}
  !lambda::return-type)

(defmethod {return-type !case-lambda}
  (lambda (self ctx stx args)
    (cond
     ((find (cut !lambda-arity-match? <> args) self.clauses)
      => (lambda (clause) {clause.return-type ctx stx args}))
     (else
      (!procedure::return-type self ctx stx args)))))

(defmethod {apply-return-type !case-lambda}
  (lambda (self ctx stx args)
    (let* ((candidates
            (filter (cut !lambda-arity-match-apply? <> args)
                    self.clauses))
           (candidate-types
            (map (lambda (candidate)
                   {candidate.apply-return-type ctx stx args})
                 candidates)))
      (if (pair? candidate-types)
        (foldl (lambda (candidate-type ret)
                 (and ret candidate-type
                      (greatest-common-type stx candidate-type ret)))
               (car candidate-types)
               (cdr candidate-types))
        (!procedure::return-type self ctx stx args)))))

(defmethod {return-type !kw-lambda}
  (lambda (self ctx stx args)
    (match (optimizer-lookup-type self.dispatch)
      ((!kw-lambda-primary _ _ keys main)
       (alet (main-type (optimizer-lookup-type main))
         {main-type.return-type ctx stx (extract-keyword-args args)}))
      ((? !procedure? proc)
       {proc.return-type proc ctx stx (extract-keyword-args args)}))))

(defmethod {apply-return-type !kw-lambda}
  (lambda (self ctx stx args)
    (match (optimizer-lookup-type self.dispatch)
      ((!kw-lambda-primary _ _ keys main)
       (alet (main-type (optimizer-lookup-type main))
         {main-type.apply-return-type ctx stx (extract-keyword-args args)}))
      ((? !procedure? proc)
       {proc.apply-return-type proc ctx stx (extract-keyword-args args)}))))

(def (extract-keyword-args args)
  (let loop ((rest args) (result []))
    (ast-case rest (%#quote)
      (((%#quote kw) arg . rest)
       (stx-keyword? #'kw)
       (loop #'rest (cons #'arg result)))
      ((arg . rest)
       (loop #'rest (cons #'arg result)))
      (_ (reverse! result)))))

(def (!lambda-arity-match? self args)
  (with ((!lambda _ _ arity) self)
    (match arity
      ((? fixnum?)
       (fx= (length args) arity))
      ([arity]
       (fx>= (length args) arity)))))

(def (!lambda-arity-match-apply? self args)
  (with ((!lambda _ _ arity) self)
    (match arity
      ((? fixnum?)
       (fx>= arity (length args)))
      ([arity] #t))))

(def (basic-expression-type-special-cast ctx stx)
  (ast-case stx (%#ref)
    ((_ _ (%#ref interface-id) expr)
     (alet (interface-type (optimizer-resolve-type (identifier-symbol #'interface-id)))
       (if (!interface? interface-type)
         (optimizer-resolve-class stx (!type-id interface-type))
         (raise-compile-error "cast to non interface" stx #'interface-id interface-type))))))

(def (basic-expression-type-special-apply ctx stx)
  (def (type-e rator rator-type args)
    (and (!procedure? rator-type)
         {rator-type.apply-return-type ctx stx args}))
  (ast-case stx (%#ref)
    ((_ _ (%#ref -kw-dispatch) kwt rator . args)
     (free-identifier=? #'-kw-dispatch 'keyword-dispatch)
     (alet (rator-type (apply-basic-expression-type #'rator))
       (type-e #'rator rator-type (cons #'kwt #'args))))
    ((_ _ rator . args)
     (alet (rator-type (apply-basic-expression-type #'rator))
       (type-e #'rator rator-type #'args)))
    (_ #f)))

(defbasic-expression-type-special
  (cast basic-expression-type-special-cast)
  (apply basic-expression-type-special-apply)
  (##apply basic-expression-type-special-apply))

(def (basic-expression-type-ref% self stx)
  (ast-case stx ()
    ((_ id)
     (optimizer-resolve-type (identifier-symbol #'id)))))

(def (basic-expression-type-if% self stx)
  (def (type-e type-K type-E)
    (cond
     ((!abort? type-E) type-K)
     ((!abort? type-K) type-E)
     (else
      (greatest-common-type stx type-K type-E))))

  (def (basic-type-e K E)
    (let ((type-K (apply-basic-expression-type K))
          (type-E (apply-basic-expression-type E)))
      (type-e type-K type-E)))

  (ast-case stx (%#call %#ref)
    ((_ (%#call (%#ref pred) (%#ref obj)) K E)
     (cond
      ((optimizer-lookup-type (identifier-symbol #'pred))
       => (lambda (pred-type)
            (if (or (!predicate? pred-type)
                    (!primitive-predicate? pred-type))
              (let* ((type-K
                      (parameterize ((current-compile-path-type
                                      (cons (cons (identifier-symbol #'obj)
                                                  (optimizer-resolve-class stx (!type-id pred-type)))
                                            (current-compile-path-type))))
                        (apply-basic-expression-type #'K)))
                     (type-E (apply-basic-expression-type #'E)))
                (type-e type-K type-E))
              (basic-type-e #'K #'E))))
      (else
       (basic-type-e #'K #'E))))
    ((_ (%#call (%#ref -not) expr) K E)
     (runtime-identifier=? #'-not 'not)
     (basic-expression-type-if%
      self
      (xform-wrap-source
       #'(%#if expr E K)
       stx)))
    ((_ test K E)
     (basic-type-e #'K #'E))))

(def (greatest-common-type stx type-a type-b)
  (def (common-e left right)
    (let loop ((rest left))
      (match rest
        ([klass-name . rest]
         (if (memq klass-name right)
           (optimizer-resolve-class stx klass-name)
           (loop rest)))
        (else (optimizer-resolve-class stx 't::t)))))

  (def (common-tail precedence-list-a precedence-list-b)
    (let* ((rev-precedence-list-a (reverse precedence-list-a))
           (rev-precedence-list-b (reverse precedence-list-b)))
      (let loop ((rest-a rev-precedence-list-a)
                 (rest-b rev-precedence-list-b)
                 (result #f))
        (match rest-a
          ([super-a . rest-a]
           (match rest-b
             ([super-b . rest-b]
              (if (eq? super-a super-b)
                (loop rest-a rest-b super-a)
                (and result (optimizer-resolve-class stx result))))
             (else
              (and result (optimizer-resolve-class stx result)))))
          (else
           (and result (optimizer-resolve-class stx result)))))))

  (cond
   ((or (not type-a) (not type-b))
    (optimizer-resolve-class stx 't::t))
   ((!type-subtype? type-a type-b)
    type-b)
   ((!type-subtype? type-b type-a)
    type-a)
   ((and (!class? type-a) (!class? type-b))
    (let* ((precedence-list-a (!class-precedence-list type-a))
           (precedence-list-b (!class-precedence-list type-b)))
      (cond
       ((> (length precedence-list-a) (length precedence-list-b))
        (common-e precedence-list-b precedence-list-a))
       ((< (length precedence-list-a) (length precedence-list-b))
        (common-e precedence-list-a precedence-list-b))
       (else
        (common-tail precedence-list-a precedence-list-b)))))
   ((and (eq? (!type-id type-a) 'procedure) (eq? (!type-id type-b) 'procedure))
    (optimizer-resolve-class stx 'procedure::t))
   (else #f)))

(def (basic-expression-type-quote% self stx)
  (ast-case stx ()
    ((_ value)
     (let (obj (stx-e #'value))
       (cond
        ((immediate? obj)
         (cond
          ((char? obj)       (optimizer-resolve-class stx 'char::t))
          ((true? obj)       (optimizer-resolve-class stx 'true::t))
          ((not obj)         (optimizer-resolve-class stx 'false::t))
          ((void? obj)       (optimizer-resolve-class stx 'void::t))
          ((eof-object? obj) (optimizer-resolve-class stx 'eof::t))
          ((fixnum? obj)     (optimizer-resolve-class stx 'fixnum::t))
          ((null? obj)       (optimizer-resolve-class stx 'null::t))
          (else              (optimizer-resolve-class stx 'special::t))))
        ((number? obj)
         (cond
          ((flonum? obj)   (optimizer-resolve-class stx 'flonum::t))
          ((##bignum? obj) (optimizer-resolve-class stx 'bignum::t))
          ((##ratnum? obj) (optimizer-resolve-class stx 'ratnum::t))
          ((##cpxnum? obj) (optimizer-resolve-class stx 'cpxnum::t))
          (else #f)))
        ((symbol? obj)  (optimizer-resolve-class stx 'symbol::t))
        ((keyword? obj) (optimizer-resolve-class stx 'keyword::t))
        ((pair? obj)    (optimizer-resolve-class stx 'pair::t))
        ((sequence? obj)
         (cond
          ((vector? obj)    (optimizer-resolve-class stx 'vector::t))
          ((string? obj)    (optimizer-resolve-class stx 'string::t))
          ((u8vector? obj)  (optimizer-resolve-class stx 'u8vector::t))
          ((s8vector? obj)  (optimizer-resolve-class stx 's8vector::t))
          ((u16vector? obj) (optimizer-resolve-class stx 'u16vector::t))
          ((s16vector? obj) (optimizer-resolve-class stx 's16vector::t))
          ((u32vector? obj) (optimizer-resolve-class stx 'u32vector::t))
          ((s32vector? obj) (optimizer-resolve-class stx 's32vector::t))
          ((u64vector? obj) (optimizer-resolve-class stx 'u64vector::t))
          ((s64vector? obj) (optimizer-resolve-class stx 's64vector::t))
          ((f32vector? obj) (optimizer-resolve-class stx 'f32vector::t))
          ((f64vector? obj) (optimizer-resolve-class stx 'f64vector::t))
          (else #f)))
        ((box? obj) (optimizer-resolve-class stx 'box::t))
        (else #f))))))

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

(def (lambda-form-infer-signature form)
  (def (default-signature)
    (make-!signature return: 't::t
                     origin: (expander-context-id (current-expander-context))))

  (ast-case form ()
    ((hd body)
     (cond
      ((apply-extract-lambda-signature #'body))
      ((apply-basic-expression-type #'body)
       => (lambda (return-type)
            (cond
             ((!procedure? return-type)
              (make-!signature return: 'procedure::t
                               origin: (expander-context-id (current-expander-context))))
             ((optimizer-lookup-class-name return-type)
              => (lambda (return-type-name)
                   (make-!signature return: return-type-name
                                    origin: (expander-context-id (current-expander-context)))))
             (else (default-signature)))))
      (else (default-signature))))))

(def (extract-lambda-signature-begin-annotation% self stx)
  (ast-case stx (@type.signature)
    ((_ (@type.signature signature ...) body)
     (let loop ((rest #'(signature ...)) (result []))
       (match rest
         ([(? stx-keyword? key) arg . rest]
          (case (stx-e key)
            ((return:)
             (loop rest
                   (cons* return: (identifier-symbol arg) result)))
            ((effect:)
             (loop rest
                   (cons* effect: (and arg (map stx-e arg)) result)))
            ((arguments:)
             (loop rest
                   (cons* arguments: (map* identifier-symbol arg) result)))
            ((unchecked:)
             (loop rest
                   (cons* unchecked: (identifier-symbol arg) result)))
            (else
             (raise-compile-error "bad lambda signature" stx #'(signature ...) key))))
         ([] (apply make-!signature
               origin: (expander-context-id (current-expander-context))
               result))
         (_ (raise-compile-error "bad lambda signature" stx #'(signature ...))))))
    ((_ ann body)
     (compile-e self #'body))))

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

(def (lift-top-lambda-define-values% self stx)
  (def (case-lambda-clause-def id impl)
    (xform-wrap-source
     ['%#define-values [id] (compile-e self impl)]
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
                (apply-expression-subst #'case-lambda-expr id: #'xid new-id: lambda-id)))
       (verbose "lift opt-lambda dispatch "(identifier-symbol #'id) " => " (identifier-symbol lambda-id))
       (xform-wrap-source
        ['%#begin (xform-wrap-source
                   ['%#define-values [lambda-id] (compile-e self #'lambda-expr)]
                   stx)
                  (lift-top-lambda-define-values%
                   self
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
                (apply-expression-subst #'kw-dispatch id: #'get-kws new-id: get-kws-id))
               (new-get-kws
                (apply-expression-subst #'get-kws-impl id: #'main new-id: main-id)))
          (verbose "lift kw-lambda dispatch " (identifier-symbol #'id)
                   " => " (identifier-symbol get-kws-id)
                   " => " (identifier-symbol main-id))
          (xform-wrap-source
           ['%#begin (lift-top-lambda-define-values%
                      self
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
      ['%#define-values #'hd (compile-e self #'expr)]
      stx))))

(def (lift-top-lambda-let-values% self stx)
  (def (bind-e id expr (compile? #t))
    [[id] (if compile? (compile-e self expr) expr)])

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
                       (apply-expression-subst #'case-lambda-expr id: #'xid new-id: lambda-id)))
                 (verbose "lift opt-lambda dispatch "(identifier-symbol #'id) " => " (identifier-symbol lambda-id))
                 (lp (cons (bind-e #'id new-case-lambda-expr #f) rest)
                     (cons (bind-e lambda-id #'lambda-expr) lift1)
                     lift2 bind)))))
           ((hd expr)
            (lp rest lift1 lift2 (cons [#'hd (compile-e self #'expr)] bind)))))
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
                       (apply-expression-subst #'kw-dispatch id: #'get-kws new-id: get-kws-id))
                      (new-get-kws
                       (apply-expression-subst #'get-kws-impl id: #'main new-id: main-id)))
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
           (lift-top-lambda-let-values% self expr))
         (let* (((values lift1 lift2 hd)
                 (compile-bindings #'(bind ...)))
                (body (compile-e self #'body))
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
    (_ (xform-let-values% self stx))))

(def (lift-top-lambda-letrec-values% self stx)
  (def (bind-e id expr (compile? #t))
    [[id] (if compile? (compile-e self expr) expr)])

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
                       (apply-expression-subst #'case-lambda-expr id: #'xid new-id: lambda-id)))
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
                       (apply-expression-subst #'kw-dispatch id: #'get-kws new-id: get-kws-id))
                      (new-get-kws
                       (apply-expression-subst #'get-kws-impl id: #'main new-id: main-id)))
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
            (lp rest (cons [#'hd (compile-e self #'expr)] bind)))))
        (else
         (reverse bind)))))

  (ast-case stx ()
    ((form (bind ...) body)
     (ormap lift-top-lambda-binding? #'(bind ...))
     (parameterize ((current-expander-context (make-local-context)))
       (let ((hd (compile-bindings #'(bind ...)))
             (body (compile-e self #'body)))
         (xform-wrap-source
          [#'form hd body]
          stx))))
    (_ (xform-let-values% self stx))))

(def (lift-top-lambda-binding? bind)
  (ast-case bind ()
    (((id) expr)
     (and (identifier? #'id)
          (or (case-lambda-expr? #'expr)
              (opt-lambda-expr? #'expr)
              (kw-lambda-expr? #'expr))))
    (_ #f)))
