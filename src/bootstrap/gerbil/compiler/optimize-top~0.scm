(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1781119055)
  (begin
    (define gxc#mutable-binding?
      (lambda (_%id202602%_)
        (let ((_%sym202604%_ (gxc#identifier-symbol _%id202602%_)))
          (hash-get (gxc#current-compile-mutators) _%sym202604%_))))
    (define gxc#::collect-top-level-type-info::t
      (make-class-type
       'gxc#::collect-top-level-type-info::t
       '::collect-top-level-type-info
       (list gxc#::void::t)
       '()
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::collect-top-level-type-info?
      (make-class-predicate gxc#::collect-top-level-type-info::t))
    (define gxc#make-::collect-top-level-type-info
      (lambda _%$args202599%_
        (apply make-instance
               gxc#::collect-top-level-type-info::t
               _%$args202599%_)))
    (define gxc#::collect-top-level-type-info-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::void-bind-methods!)
         (bind-method!
          gxc#::collect-top-level-type-info::t
          '%#begin
          gxc#apply-begin%)
         (bind-method!
          gxc#::collect-top-level-type-info::t
          '%#begin-syntax
          gxc#apply-begin-syntax%)
         (bind-method!
          gxc#::collect-top-level-type-info::t
          '%#module
          gxc#apply-module%)
         (bind-method!
          gxc#::collect-top-level-type-info::t
          '%#define-values
          gxc#collect-top-level-type-define-values%)
         (bind-method!
          gxc#::collect-top-level-type-info::t
          '%#lambda
          gxc#collect-type-lambda%)
         (bind-method!
          gxc#::collect-top-level-type-info::t
          '%#case-lambda
          gxc#collect-type-case-lambda%)
         (bind-method!
          gxc#::collect-top-level-type-info::t
          '%#let-values
          gxc#collect-top-level-type-let-values%)
         (bind-method!
          gxc#::collect-top-level-type-info::t
          '%#letrec-values
          gxc#collect-top-level-type-letrec-values%)
         (bind-method!
          gxc#::collect-top-level-type-info::t
          '%#letrec*-values
          gxc#collect-top-level-type-letrec-values%)
         (bind-method!
          gxc#::collect-top-level-type-info::t
          '%#call
          gxc#collect-top-level-type-call%)
         (bind-method!
          gxc#::collect-top-level-type-info::t
          '%#if
          gxc#apply-operands)
         (bind-method!
          gxc#::collect-top-level-type-info::t
          '%#set!
          gxc#apply-body-setq%)
         (seal-class! gxc#::collect-top-level-type-info::t))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_%stx202591%_)
        (force gxc#::collect-top-level-type-info-bind-methods!)
        (let ((_%self202594%_ (gxc#make-::collect-top-level-type-info)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self202594%_ _%stx202591%_))
           gxc#current-compile-method
           _%self202594%_))))
    (define gxc#::collect-top-level-declarations::t
      (make-class-type
       'gxc#::collect-top-level-declarations::t
       '::collect-top-level-declarations
       (list gxc#::void::t)
       '()
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::collect-top-level-declarations?
      (make-class-predicate gxc#::collect-top-level-declarations::t))
    (define gxc#make-::collect-top-level-declarations
      (lambda _%$args202588%_
        (apply make-instance
               gxc#::collect-top-level-declarations::t
               _%$args202588%_)))
    (define gxc#::collect-top-level-declarations-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::void-bind-methods!)
         (bind-method!
          gxc#::collect-top-level-declarations::t
          '%#begin
          gxc#apply-begin%)
         (bind-method!
          gxc#::collect-top-level-declarations::t
          '%#begin-syntax
          gxc#apply-begin-syntax%)
         (bind-method!
          gxc#::collect-top-level-declarations::t
          '%#module
          gxc#apply-module%)
         (bind-method!
          gxc#::collect-top-level-declarations::t
          '%#begin-annotation
          gxc#collect-top-level-decl-begin-annotation%)
         (seal-class! gxc#::collect-top-level-declarations::t))))
    (define gxc#apply-collect-top-level-declarations
      (lambda (_%stx202580%_)
        (force gxc#::collect-top-level-declarations-bind-methods!)
        (let ((_%self202583%_ (gxc#make-::collect-top-level-declarations)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self202583%_ _%stx202580%_))
           gxc#current-compile-method
           _%self202583%_))))
    (define gxc#::basic-expression-top-level-type::t
      (make-class-type
       'gxc#::basic-expression-top-level-type::t
       '::basic-expression-top-level-type
       (list gxc#::false::t)
       '()
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::basic-expression-top-level-type?
      (make-class-predicate gxc#::basic-expression-top-level-type::t))
    (define gxc#make-::basic-expression-top-level-type
      (lambda _%$args202577%_
        (apply make-instance
               gxc#::basic-expression-top-level-type::t
               _%$args202577%_)))
    (define gxc#::basic-expression-top-level-type-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::false-bind-methods!)
         (bind-method!
          gxc#::basic-expression-top-level-type::t
          '%#begin-annotation
          gxc#basic-expression-type-begin-annotation%)
         (seal-class! gxc#::basic-expression-top-level-type::t))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_%stx202569%_)
        (force gxc#::basic-expression-top-level-type-bind-methods!)
        (let ((_%self202572%_ (gxc#make-::basic-expression-top-level-type)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self202572%_ _%stx202569%_))
           gxc#current-compile-method
           _%self202572%_))))
    (define gxc#::collect-type-info::t
      (make-class-type
       'gxc#::collect-type-info::t
       '::collect-type-info
       (list gxc#::void::t)
       '()
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::collect-type-info?
      (make-class-predicate gxc#::collect-type-info::t))
    (define gxc#make-::collect-type-info
      (lambda _%$args202566%_
        (apply make-instance gxc#::collect-type-info::t _%$args202566%_)))
    (define gxc#::collect-type-info-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::void-bind-methods!)
         (bind-method! gxc#::collect-type-info::t '%#begin gxc#apply-begin%)
         (bind-method!
          gxc#::collect-type-info::t
          '%#begin-syntax
          gxc#apply-begin-syntax%)
         (bind-method! gxc#::collect-type-info::t '%#module gxc#apply-module%)
         (bind-method!
          gxc#::collect-type-info::t
          '%#define-values
          gxc#collect-type-define-values%)
         (bind-method!
          gxc#::collect-type-info::t
          '%#begin-annotation
          gxc#collect-type-begin-annotation%)
         (bind-method!
          gxc#::collect-type-info::t
          '%#lambda
          gxc#collect-type-lambda%)
         (bind-method!
          gxc#::collect-type-info::t
          '%#case-lambda
          gxc#collect-type-case-lambda%)
         (bind-method!
          gxc#::collect-type-info::t
          '%#let-values
          gxc#collect-type-let-values%)
         (bind-method!
          gxc#::collect-type-info::t
          '%#letrec-values
          gxc#collect-type-letrec-values%)
         (bind-method!
          gxc#::collect-type-info::t
          '%#letrec*-values
          gxc#collect-type-letrec-values%)
         (bind-method! gxc#::collect-type-info::t '%#call gxc#apply-operands)
         (bind-method!
          gxc#::collect-type-info::t
          '%#if
          gxc#apply-path-type-if%)
         (bind-method! gxc#::collect-type-info::t '%#set! gxc#apply-body-setq%)
         (seal-class! gxc#::collect-type-info::t))))
    (define gxc#apply-collect-type-info
      (lambda (_%stx202558%_)
        (force gxc#::collect-type-info-bind-methods!)
        (let ((_%self202561%_ (gxc#make-::collect-type-info)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self202561%_ _%stx202558%_))
           gxc#current-compile-method
           _%self202561%_))))
    (define gxc#::collect-mutable-type-info::t
      (make-class-type
       'gxc#::collect-mutable-type-info::t
       '::collect-mutable-type-info
       (list gxc#::void::t)
       '()
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::collect-mutable-type-info?
      (make-class-predicate gxc#::collect-mutable-type-info::t))
    (define gxc#make-::collect-mutable-type-info
      (lambda _%$args202555%_
        (apply make-instance
               gxc#::collect-mutable-type-info::t
               _%$args202555%_)))
    (define gxc#::collect-mutable-type-info-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::void-bind-methods!)
         (bind-method!
          gxc#::collect-mutable-type-info::t
          '%#begin
          gxc#apply-begin%)
         (bind-method!
          gxc#::collect-mutable-type-info::t
          '%#begin-syntax
          gxc#apply-begin-syntax%)
         (bind-method!
          gxc#::collect-mutable-type-info::t
          '%#module
          gxc#apply-module%)
         (bind-method!
          gxc#::collect-mutable-type-info::t
          '%#define-values
          gxc#apply-define-values%)
         (bind-method!
          gxc#::collect-mutable-type-info::t
          '%#begin-annotation
          gxc#apply-begin-annotation%)
         (bind-method!
          gxc#::collect-mutable-type-info::t
          '%#lambda
          gxc#collect-type-lambda%)
         (bind-method!
          gxc#::collect-mutable-type-info::t
          '%#case-lambda
          gxc#collect-type-case-lambda%)
         (bind-method!
          gxc#::collect-mutable-type-info::t
          '%#let-values
          gxc#collect-type-let-values%)
         (bind-method!
          gxc#::collect-mutable-type-info::t
          '%#letrec-values
          gxc#collect-type-letrec-values%)
         (bind-method!
          gxc#::collect-mutable-type-info::t
          '%#letrec*-values
          gxc#collect-type-letrec-values%)
         (bind-method!
          gxc#::collect-mutable-type-info::t
          '%#call
          gxc#apply-operands)
         (bind-method!
          gxc#::collect-mutable-type-info::t
          '%#if
          gxc#apply-path-type-if%)
         (bind-method!
          gxc#::collect-mutable-type-info::t
          '%#set!
          gxc#collect-type-setq%)
         (seal-class! gxc#::collect-mutable-type-info::t))))
    (define gxc#apply-collect-mutable-type-info
      (lambda (_%stx202547%_)
        (force gxc#::collect-mutable-type-info-bind-methods!)
        (let ((_%self202550%_ (gxc#make-::collect-mutable-type-info)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self202550%_ _%stx202547%_))
           gxc#current-compile-method
           _%self202550%_))))
    (define gxc#::refine-type-info::t
      (make-class-type
       'gxc#::refine-type-info::t
       '::refine-type-info
       (list gxc#::void::t)
       '()
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::refine-type-info?
      (make-class-predicate gxc#::refine-type-info::t))
    (define gxc#make-::refine-type-info
      (lambda _%$args202544%_
        (apply make-instance gxc#::refine-type-info::t _%$args202544%_)))
    (define gxc#::refine-type-info-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::void-bind-methods!)
         (bind-method! gxc#::refine-type-info::t '%#begin gxc#apply-begin%)
         (bind-method!
          gxc#::refine-type-info::t
          '%#begin-syntax
          gxc#apply-begin-syntax%)
         (bind-method! gxc#::refine-type-info::t '%#module gxc#apply-module%)
         (bind-method!
          gxc#::refine-type-info::t
          '%#define-values
          gxc#refine-type-define-values%)
         (bind-method!
          gxc#::refine-type-info::t
          '%#begin-annotation
          gxc#apply-begin-annotation%)
         (bind-method!
          gxc#::refine-type-info::t
          '%#lambda
          gxc#refine-type-lambda%)
         (bind-method!
          gxc#::refine-type-info::t
          '%#case-lambda
          gxc#refine-type-case-lambda%)
         (bind-method!
          gxc#::refine-type-info::t
          '%#let-values
          gxc#refine-type-let-values%)
         (bind-method!
          gxc#::refine-type-info::t
          '%#letrec-values
          gxc#refine-type-letrec-values%)
         (bind-method!
          gxc#::refine-type-info::t
          '%#letrec*-values
          gxc#refine-type-letrec-values%)
         (bind-method! gxc#::refine-type-info::t '%#call gxc#apply-operands)
         (bind-method! gxc#::refine-type-info::t '%#if gxc#apply-path-type-if%)
         (bind-method! gxc#::refine-type-info::t '%#set! gxc#apply-body-setq%)
         (seal-class! gxc#::refine-type-info::t))))
    (define gxc#apply-refine-type-info
      (lambda (_%stx202536%_)
        (force gxc#::refine-type-info-bind-methods!)
        (let ((_%self202539%_ (gxc#make-::refine-type-info)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self202539%_ _%stx202536%_))
           gxc#current-compile-method
           _%self202539%_))))
    (define gxc#::raw-expression-type::t
      (make-class-type
       'gxc#::raw-expression-type::t
       '::raw-expression-type
       (list gxc#::false::t)
       '()
       '()
       '#f))
    (define gxc#::raw-expression-type?
      (make-class-predicate gxc#::raw-expression-type::t))
    (define gxc#make-::raw-expression-type
      (lambda _%$args202533%_
        (apply make-instance gxc#::raw-expression-type::t _%$args202533%_)))
    (define gxc#::raw-expression-type-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::false-bind-methods!)
         (bind-method!
          gxc#::raw-expression-type::t
          '%#begin
          gxc#apply-last-begin%)
         (bind-method!
          gxc#::raw-expression-type::t
          '%#begin-annotation
          gxc#basic-expression-type-begin-annotation%)
         (bind-method!
          gxc#::raw-expression-type::t
          '%#lambda
          gxc#raw-expression-type-lambda%)
         (bind-method!
          gxc#::raw-expression-type::t
          '%#case-lambda
          gxc#basic-expression-type-case-lambda%)
         (bind-method!
          gxc#::raw-expression-type::t
          '%#let-values
          gxc#apply-body-last-let-values%)
         (bind-method!
          gxc#::raw-expression-type::t
          '%#letrec-values
          gxc#apply-body-last-let-values%)
         (bind-method!
          gxc#::raw-expression-type::t
          '%#letrec*-values
          gxc#apply-body-last-let-values%)
         (bind-method!
          gxc#::raw-expression-type::t
          '%#call
          gxc#basic-expression-type-call%)
         (bind-method!
          gxc#::raw-expression-type::t
          '%#ref
          gxc#basic-expression-type-ref%)
         (bind-method!
          gxc#::raw-expression-type::t
          '%#if
          gxc#basic-expression-type-if%)
         (bind-method!
          gxc#::raw-expression-type::t
          '%#quote
          gxc#basic-expression-type-quote%))))
    (define gxc#apply-raw-expression-type
      (lambda (_%stx202525%_)
        (force gxc#::raw-expression-type-bind-methods!)
        (let ((_%self202528%_ (gxc#make-::raw-expression-type)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self202528%_ _%stx202525%_))
           gxc#current-compile-method
           _%self202528%_))))
    (define gxc#::basic-expression-type::t
      (make-class-type
       'gxc#::basic-expression-type::t
       '::basic-expression-type
       (list gxc#::raw-expression-type::t gxc#::false::t)
       '()
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::basic-expression-type?
      (make-class-predicate gxc#::basic-expression-type::t))
    (define gxc#make-::basic-expression-type
      (lambda _%$args202522%_
        (apply make-instance gxc#::basic-expression-type::t _%$args202522%_)))
    (define gxc#::basic-expression-type-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::raw-expression-type-bind-methods!)
         (force gxc#::false-bind-methods!)
         (bind-method!
          gxc#::basic-expression-type::t
          '%#lambda
          gxc#basic-expression-type-lambda%)
         (seal-class! gxc#::basic-expression-type::t))))
    (define gxc#apply-basic-expression-type
      (lambda (_%stx202514%_)
        (force gxc#::basic-expression-type-bind-methods!)
        (let ((_%self202517%_ (gxc#make-::basic-expression-type)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self202517%_ _%stx202514%_))
           gxc#current-compile-method
           _%self202517%_))))
    (define gxc#::lift-top-lambdas::t
      (make-class-type
       'gxc#::lift-top-lambdas::t
       '::lift-top-lambdas
       (list gxc#::basic-xform::t)
       '()
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::lift-top-lambdas?
      (make-class-predicate gxc#::lift-top-lambdas::t))
    (define gxc#make-::lift-top-lambdas
      (lambda _%$args202511%_
        (apply make-instance gxc#::lift-top-lambdas::t _%$args202511%_)))
    (define gxc#::lift-top-lambdas-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::basic-xform-bind-methods!)
         (bind-method!
          gxc#::lift-top-lambdas::t
          '%#define-values
          gxc#lift-top-lambda-define-values%)
         (bind-method!
          gxc#::lift-top-lambdas::t
          '%#let-values
          gxc#lift-top-lambda-let-values%)
         (bind-method!
          gxc#::lift-top-lambdas::t
          '%#letrec-values
          gxc#lift-top-lambda-letrec-values%)
         (bind-method!
          gxc#::lift-top-lambdas::t
          '%#letrec*-values
          gxc#lift-top-lambda-letrec-values%)
         (seal-class! gxc#::lift-top-lambdas::t))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_%stx202503%_)
        (force gxc#::lift-top-lambdas-bind-methods!)
        (let ((_%self202506%_ (gxc#make-::lift-top-lambdas)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self202506%_ _%stx202503%_))
           gxc#current-compile-method
           _%self202506%_))))
    (define gxc#::extract-lambda-signature::t
      (make-class-type
       'gxc#::extract-lambda-signature::t
       '::extract-lambda-signature
       (list gxc#::false::t)
       '()
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::extract-lambda-signature?
      (make-class-predicate gxc#::extract-lambda-signature::t))
    (define gxc#make-::extract-lambda-signature
      (lambda _%$args202500%_
        (apply make-instance
               gxc#::extract-lambda-signature::t
               _%$args202500%_)))
    (define gxc#::extract-lambda-signature-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::false-bind-methods!)
         (bind-method!
          gxc#::extract-lambda-signature::t
          '%#begin
          gxc#apply-last-begin%)
         (bind-method!
          gxc#::extract-lambda-signature::t
          '%#begin-annotation
          gxc#extract-lambda-signature-begin-annotation%)
         (bind-method!
          gxc#::extract-lambda-signature::t
          '%#let-values
          gxc#apply-body-last-let-values%)
         (bind-method!
          gxc#::extract-lambda-signature::t
          '%#letrec-values
          gxc#apply-body-last-let-values%)
         (bind-method!
          gxc#::extract-lambda-signature::t
          '%#letrec*-values
          gxc#apply-body-last-let-values%)
         (seal-class! gxc#::extract-lambda-signature::t))))
    (define gxc#apply-extract-lambda-signature
      (lambda (_%stx202492%_)
        (force gxc#::extract-lambda-signature-bind-methods!)
        (let ((_%self202495%_ (gxc#make-::extract-lambda-signature)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self202495%_ _%stx202492%_))
           gxc#current-compile-method
           _%self202495%_))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_%self202395%_ _%stx202396%_)
        (let* ((_%$%g202399202419%_
                (lambda (_%$%g202400202416%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g202400202416%_)))
               (_%$%g202398202426%_
                (lambda (_%$%g202400202422%_) ((lambda () (void)))))
               (_%$%g202397202489%_
                (lambda (_%$%g202400202429%_)
                  (if (gx#stx-pair? _%$%g202400202429%_)
                      (let ((_%$%e202403202431%_
                             (gx#stx-e _%$%g202400202429%_)))
                        (let ((_%$%hd202404202434%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202403202431%_)))
                              (_%$%tl202405202436%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202403202431%_))))
                          (if (gx#stx-pair? _%$%tl202405202436%_)
                              (let ((_%$%e202406202439%_
                                     (gx#stx-e _%$%tl202405202436%_)))
                                (let ((_%$%hd202407202442%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202406202439%_)))
                                      (_%$%tl202408202444%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202406202439%_))))
                                  (if (gx#stx-pair? _%$%hd202407202442%_)
                                      (let ((_%$%e202409202447%_
                                             (gx#stx-e _%$%hd202407202442%_)))
                                        (let ((_%$%hd202410202450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202409202447%_)))
                                              (_%$%tl202411202452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202409202447%_))))
                                          (if (gx#stx-null?
                                               _%$%tl202411202452%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl202408202444%_)
                                                  (let ((_%$%e202412202455%_
                                                         (gx#stx-e
                                                          _%$%tl202408202444%_)))
                                                    (let ((_%$%hd202413202458%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e202412202455%_)))
                                                          (_%$%tl202414202460%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e202412202455%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl202414202460%_)
                                                          ((lambda (_%$%g202401202463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g202402202464%_)
                     (if (gx#identifier? _%$%g202402202464%_)
                         (let ((_%sym202482%_
                                (gxc#identifier-symbol _%$%g202402202464%_)))
                           (gxc#compile-e _%self202395%_ _%$%g202401202463%_)
                           (let ((_%$%type202483202485%_
                                  (gxc#apply-basic-expression-top-level-type
                                   _%$%g202401202463%_)))
                             (if _%$%type202483202485%_
                                 (let ((_%type202487%_ _%$%type202483202485%_))
                                   (if (gxc#!class-meta? _%type202487%_)
                                       (begin
                                         (gxc#optimizer-declare-class!
                                          _%sym202482%_
                                          (gxc#!class-meta-class
                                           _%type202487%_))
                                         (gxc#optimizer-declare-type!
                                          _%sym202482%_
                                          (gxc#optimizer-resolve-class
                                           _%stx202396%_
                                           'class::t)))
                                       (gxc#optimizer-declare-type!
                                        _%sym202482%_
                                        _%type202487%_)))
                                 '#f)))
                         (_%$%g202398202426%_ _%$%g202400202429%_)))
                   _%$%hd202413202458%_
                   _%$%hd202410202450%_)
                  (_%$%g202398202426%_ _%$%g202400202429%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g202398202426%_
                                                   _%$%g202400202429%_))
                                              (_%$%g202398202426%_
                                               _%$%g202400202429%_))))
                                      (_%$%g202398202426%_
                                       _%$%g202400202429%_))))
                              (_%$%g202398202426%_ _%$%g202400202429%_))))
                      (_%$%g202398202426%_ _%$%g202400202429%_)))))
          (_%$%g202397202489%_ _%stx202396%_))))
    (define gxc#collect-top-level-decl-begin-annotation%
      (lambda (_%self202217%_ _%stx202218%_)
        (let* ((_%$%g202221202261%_
                (lambda (_%$%g202222202258%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g202222202258%_)))
               (_%$%g202220202306%_
                (lambda (_%$%g202222202264%_)
                  (if (gx#stx-pair? _%$%g202222202264%_)
                      (let ((_%$%e202248202266%_
                             (gx#stx-e _%$%g202222202264%_)))
                        (let ((_%$%hd202249202269%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202248202266%_)))
                              (_%$%tl202250202271%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202248202266%_))))
                          (if (gx#stx-pair? _%$%tl202250202271%_)
                              (let ((_%$%e202251202274%_
                                     (gx#stx-e _%$%tl202250202271%_)))
                                (let ((_%$%hd202252202277%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202251202274%_)))
                                      (_%$%tl202253202279%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202251202274%_))))
                                  (if (gx#stx-pair? _%$%tl202253202279%_)
                                      (let ((_%$%e202254202282%_
                                             (gx#stx-e _%$%tl202253202279%_)))
                                        (let ((_%$%hd202255202285%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202254202282%_)))
                                              (_%$%tl202256202287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202254202282%_))))
                                          (if (gx#stx-null?
                                               _%$%tl202256202287%_)
                                              ((lambda (_%$%g202246202290%_
                                                        _%$%g202247202291%_)
                                                 (void))
                                               _%$%hd202255202285%_
                                               _%$%hd202252202277%_)
                                              (_%$%g202221202261%_
                                               _%$%g202222202264%_))))
                                      (_%$%g202221202261%_
                                       _%$%g202222202264%_))))
                              (_%$%g202221202261%_ _%$%g202222202264%_))))
                      (_%$%g202221202261%_ _%$%g202222202264%_))))
               (_%$%g202219202392%_
                (lambda (_%$%g202222202309%_)
                  (if (gx#stx-pair? _%$%g202222202309%_)
                      (let ((_%$%e202225202311%_
                             (gx#stx-e _%$%g202222202309%_)))
                        (let ((_%$%hd202226202314%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202225202311%_)))
                              (_%$%tl202227202316%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202225202311%_))))
                          (if (gx#stx-pair? _%$%tl202227202316%_)
                              (let ((_%$%e202228202319%_
                                     (gx#stx-e _%$%tl202227202316%_)))
                                (let ((_%$%hd202229202322%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202228202319%_)))
                                      (_%$%tl202230202324%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202228202319%_))))
                                  (if (gx#stx-pair? _%$%hd202229202322%_)
                                      (let ((_%$%e202231202327%_
                                             (gx#stx-e _%$%hd202229202322%_)))
                                        (let ((_%$%hd202232202330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202231202327%_)))
                                              (_%$%tl202233202332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202231202327%_))))
                                          (if (gx#identifier?
                                               _%$%hd202232202330%_)
                                              (if (gx#stx-eq?
                                                   '@inline
                                                   _%$%hd202232202330%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl202233202332%_)
                                                      (let ((_%$%e202234202335%_
                                                             (gx#stx-e
                                                              _%$%tl202233202332%_)))
                                                        (let ((_%$%hd202235202338%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e202234202335%_)))
                      (_%$%tl202236202340%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e202234202335%_))))
                  (if (gx#stx-null? _%$%tl202236202340%_)
                      (if (gx#stx-pair? _%$%tl202230202324%_)
                          (let ((_%$%e202237202343%_
                                 (gx#stx-e _%$%tl202230202324%_)))
                            (let ((_%$%hd202238202346%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e202237202343%_)))
                                  (_%$%tl202239202348%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e202237202343%_))))
                              (if (gx#stx-pair? _%$%hd202238202346%_)
                                  (let ((_%$%e202240202351%_
                                         (gx#stx-e _%$%hd202238202346%_)))
                                    (let ((_%$%hd202241202354%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e202240202351%_)))
                                          (_%$%tl202242202356%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e202240202351%_))))
                                      (if (gx#identifier? _%$%hd202241202354%_)
                                          (if (gx#stx-eq?
                                               '%#quote
                                               _%$%hd202241202354%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl202242202356%_)
                                                  (let ((_%$%e202243202359%_
                                                         (gx#stx-e
                                                          _%$%tl202242202356%_)))
                                                    (let ((_%$%hd202244202362%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e202243202359%_)))
                                                          (_%$%tl202245202364%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e202243202359%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl202245202364%_)
                                                          (if (gx#stx-null?
                                                               _%$%tl202239202348%_)
                                                              ((lambda (_%$%g202223202367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g202224202368%_)
                         (let ((_%type202390%_
                                (gxc#optimizer-lookup-type
                                 (gxc#identifier-symbol _%$%g202224202368%_))))
                           (if (gxc#!lambda? _%type202390%_)
                               (gxc#!lambda-inline-set!
                                _%type202390%_
                                (gxc#eval-in-ssxi-context _%$%g202223202367%_))
                               (gxc#raise-compile-error
                                '"inline rule for non lambda procedure"
                                _%stx202218%_
                                _%$%g202224202368%_))))
                       _%$%hd202244202362%_
                       _%$%hd202235202338%_)
                      (_%$%g202220202306%_ _%$%g202222202309%_))
                  (_%$%g202220202306%_ _%$%g202222202309%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g202220202306%_
                                                   _%$%g202222202309%_))
                                              (_%$%g202220202306%_
                                               _%$%g202222202309%_))
                                          (_%$%g202220202306%_
                                           _%$%g202222202309%_))))
                                  (_%$%g202220202306%_ _%$%g202222202309%_))))
                          (_%$%g202220202306%_ _%$%g202222202309%_))
                      (_%$%g202220202306%_ _%$%g202222202309%_))))
              (_%$%g202220202306%_ _%$%g202222202309%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g202220202306%_
                                                   _%$%g202222202309%_))
                                              (_%$%g202220202306%_
                                               _%$%g202222202309%_))))
                                      (_%$%g202220202306%_
                                       _%$%g202222202309%_))))
                              (_%$%g202220202306%_ _%$%g202222202309%_))))
                      (_%$%g202220202306%_ _%$%g202222202309%_)))))
          (_%$%g202219202392%_ _%stx202218%_))))
    (define gxc#eval-in-ssxi-context
      (lambda (_%expr202214%_)
        (call-with-parameters
         (lambda ()
           (eval '(import :gerbil/compiler/ssxi))
           (gx#eval-syntax _%expr202214%_))
         gx#current-expander-context
         (gx#make-top-context))))
    (define gxc#collect-type-define-values%
      (lambda (_%self202076%_ _%stx202077%_)
        (let* ((_%$%g202080202110%_
                (lambda (_%$%g202081202107%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g202081202107%_)))
               (_%$%g202079202153%_
                (lambda (_%$%g202081202113%_)
                  (if (gx#stx-pair? _%$%g202081202113%_)
                      (let ((_%$%e202097202115%_
                             (gx#stx-e _%$%g202081202113%_)))
                        (let ((_%$%hd202098202118%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202097202115%_)))
                              (_%$%tl202099202120%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202097202115%_))))
                          (if (gx#stx-pair? _%$%tl202099202120%_)
                              (let ((_%$%e202100202123%_
                                     (gx#stx-e _%$%tl202099202120%_)))
                                (let ((_%$%hd202101202126%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202100202123%_)))
                                      (_%$%tl202102202128%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202100202123%_))))
                                  (if (gx#stx-pair? _%$%tl202102202128%_)
                                      (let ((_%$%e202103202131%_
                                             (gx#stx-e _%$%tl202102202128%_)))
                                        (let ((_%$%hd202104202134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202103202131%_)))
                                              (_%$%tl202105202136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202103202131%_))))
                                          (if (gx#stx-null?
                                               _%$%tl202105202136%_)
                                              ((lambda (_%$%g202096202139%_)
                                                 (gxc#compile-e
                                                  _%self202076%_
                                                  _%$%g202096202139%_))
                                               _%$%hd202104202134%_)
                                              (_%$%g202080202110%_
                                               _%$%g202081202113%_))))
                                      (_%$%g202080202110%_
                                       _%$%g202081202113%_))))
                              (_%$%g202080202110%_ _%$%g202081202113%_))))
                      (_%$%g202080202110%_ _%$%g202081202113%_))))
               (_%$%g202078202211%_
                (lambda (_%$%g202081202156%_)
                  (if (gx#stx-pair? _%$%g202081202156%_)
                      (let ((_%$%e202084202158%_
                             (gx#stx-e _%$%g202081202156%_)))
                        (let ((_%$%hd202085202161%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202084202158%_)))
                              (_%$%tl202086202163%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202084202158%_))))
                          (if (gx#stx-pair? _%$%tl202086202163%_)
                              (let ((_%$%e202087202166%_
                                     (gx#stx-e _%$%tl202086202163%_)))
                                (let ((_%$%hd202088202169%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202087202166%_)))
                                      (_%$%tl202089202171%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202087202166%_))))
                                  (if (gx#stx-pair? _%$%hd202088202169%_)
                                      (let ((_%$%e202090202174%_
                                             (gx#stx-e _%$%hd202088202169%_)))
                                        (let ((_%$%hd202091202177%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202090202174%_)))
                                              (_%$%tl202092202179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202090202174%_))))
                                          (if (gx#stx-null?
                                               _%$%tl202092202179%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl202089202171%_)
                                                  (let ((_%$%e202093202182%_
                                                         (gx#stx-e
                                                          _%$%tl202089202171%_)))
                                                    (let ((_%$%hd202094202185%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e202093202182%_)))
                                                          (_%$%tl202095202187%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e202093202182%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl202095202187%_)
                                                          ((lambda (_%$%g202082202190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g202083202191%_)
                     (if (gx#identifier? _%$%g202083202191%_)
                         (let ((_%sym202207%_
                                (gxc#identifier-symbol _%$%g202083202191%_)))
                           (if (gxc#optimizer-lookup-type _%sym202207%_)
                               (gxc#compile-e
                                _%self202076%_
                                _%$%g202082202190%_)
                               (let ((_%type202209%_
                                      (gxc#apply-basic-expression-type
                                       _%$%g202082202190%_)))
                                 (if _%type202209%_
                                     (gxc#optimizer-declare-type!
                                      _%sym202207%_
                                      _%type202209%_)
                                     '#!void)
                                 (gxc#compile-e
                                  _%self202076%_
                                  _%$%g202082202190%_))))
                         (_%$%g202079202153%_ _%$%g202081202156%_)))
                   _%$%hd202094202185%_
                   _%$%hd202091202177%_)
                  (_%$%g202079202153%_ _%$%g202081202156%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g202079202153%_
                                                   _%$%g202081202156%_))
                                              (_%$%g202079202153%_
                                               _%$%g202081202156%_))))
                                      (_%$%g202079202153%_
                                       _%$%g202081202156%_))))
                              (_%$%g202079202153%_ _%$%g202081202156%_))))
                      (_%$%g202079202153%_ _%$%g202081202156%_)))))
          (_%$%g202078202211%_ _%stx202077%_))))
    (define gxc#collect-type-begin-annotation%
      (lambda (_%self201833%_ _%stx201834%_)
        (let* ((_%$%g201837201877%_
                (lambda (_%$%g201838201874%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g201838201874%_)))
               (_%$%g201836201922%_
                (lambda (_%$%g201838201880%_)
                  (if (gx#stx-pair? _%$%g201838201880%_)
                      (let ((_%$%e201864201882%_
                             (gx#stx-e _%$%g201838201880%_)))
                        (let ((_%$%hd201865201885%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201864201882%_)))
                              (_%$%tl201866201887%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201864201882%_))))
                          (if (gx#stx-pair? _%$%tl201866201887%_)
                              (let ((_%$%e201867201890%_
                                     (gx#stx-e _%$%tl201866201887%_)))
                                (let ((_%$%hd201868201893%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e201867201890%_)))
                                      (_%$%tl201869201895%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e201867201890%_))))
                                  (if (gx#stx-pair? _%$%tl201869201895%_)
                                      (let ((_%$%e201870201898%_
                                             (gx#stx-e _%$%tl201869201895%_)))
                                        (let ((_%$%hd201871201901%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e201870201898%_)))
                                              (_%$%tl201872201903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e201870201898%_))))
                                          (if (gx#stx-null?
                                               _%$%tl201872201903%_)
                                              ((lambda (_%$%g201862201906%_
                                                        _%$%g201863201907%_)
                                                 (gxc#compile-e
                                                  _%self201833%_
                                                  _%$%g201862201906%_))
                                               _%$%hd201871201901%_
                                               _%$%hd201868201893%_)
                                              (_%$%g201837201877%_
                                               _%$%g201838201880%_))))
                                      (_%$%g201837201877%_
                                       _%$%g201838201880%_))))
                              (_%$%g201837201877%_ _%$%g201838201880%_))))
                      (_%$%g201837201877%_ _%$%g201838201880%_))))
               (_%$%g201835202073%_
                (lambda (_%$%g201838201925%_)
                  (if (gx#stx-pair? _%$%g201838201925%_)
                      (let ((_%$%e201841201927%_
                             (gx#stx-e _%$%g201838201925%_)))
                        (let ((_%$%hd201842201930%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201841201927%_)))
                              (_%$%tl201843201932%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201841201927%_))))
                          (if (gx#stx-pair? _%$%tl201843201932%_)
                              (let ((_%$%e201844201935%_
                                     (gx#stx-e _%$%tl201843201932%_)))
                                (let ((_%$%hd201845201938%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e201844201935%_)))
                                      (_%$%tl201846201940%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e201844201935%_))))
                                  (if (gx#stx-pair? _%$%hd201845201938%_)
                                      (let ((_%$%e201847201943%_
                                             (gx#stx-e _%$%hd201845201938%_)))
                                        (let ((_%$%hd201848201946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e201847201943%_)))
                                              (_%$%tl201849201948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e201847201943%_))))
                                          (if (gx#identifier?
                                               _%$%hd201848201946%_)
                                              (if (gx#stx-eq?
                                                   '@type.assert
                                                   _%$%hd201848201946%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl201849201948%_)
                                                      (let ((_g202605_
                                                             (gx#syntax-split-splice
                                                              _%$%tl201849201948%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g202606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g202605_)
                               (##values-length _g202605_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g202606_ 2)))
                        (error "Context expects 2 values" _g202606_)))
                  (let ((_%$%target201850201951%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g202605_ 0)))
                        (_%$%tl201852201953%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g202605_ 1))))
                    (if (gx#stx-null? _%$%tl201852201953%_)
                        (letrec ((_%$%loop201853201956%_
                                  (lambda (_%$%hd201851201959%_
                                           _%$%assertion201857201961%_)
                                    (if (gx#stx-pair? _%$%hd201851201959%_)
                                        (let ((_%$%e201854201963%_
                                               (gx#stx-e
                                                _%$%hd201851201959%_)))
                                          (let ((_%$%lp-hd201855201966%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e201854201963%_)))
                                                (_%$%lp-tl201856201968%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e201854201963%_))))
                                            (_%$%loop201853201956%_
                                             _%$%lp-tl201856201968%_
                                             (cons _%$%lp-hd201855201966%_
                                                   _%$%assertion201857201961%_))))
                                        (let ((_%$%assertion201858201971%_
                                               (reverse _%$%assertion201857201961%_)))
                                          (if (gx#stx-pair?
                                               _%$%tl201846201940%_)
                                              (let ((_%$%e201859201973%_
                                                     (gx#stx-e
                                                      _%$%tl201846201940%_)))
                                                (let ((_%$%hd201860201976%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e201859201973%_)))
                                                      (_%$%tl201861201978%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e201859201973%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl201861201978%_)
                                                      ((lambda (_%$%g201839201981%_
                                                                _%$%g201840201982%_)
                                                         (for-each
                                                          (lambda (_%assertion202002%_)
                                                            (let* ((_%$%g202005202019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g202006202016%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g202006202016%_)))
                           (_%$%g202004202026%_
                            (lambda (_%$%g202006202022%_)
                              ((lambda ()
                                 (gxc#raise-compile-error
                                  '"malformed type assertion"
                                  _%stx201834%_
                                  _%assertion202002%_)))))
                           (_%$%g202003202063%_
                            (lambda (_%$%g202006202029%_)
                              (if (gx#stx-pair? _%$%g202006202029%_)
                                  (let ((_%$%e202009202031%_
                                         (gx#stx-e _%$%g202006202029%_)))
                                    (let ((_%$%hd202010202034%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e202009202031%_)))
                                          (_%$%tl202011202036%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e202009202031%_))))
                                      (if (gx#stx-pair? _%$%tl202011202036%_)
                                          (let ((_%$%e202012202039%_
                                                 (gx#stx-e
                                                  _%$%tl202011202036%_)))
                                            (let ((_%$%hd202013202042%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e202012202039%_)))
                                                  (_%$%tl202014202044%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e202012202039%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl202014202044%_)
                                                  ((lambda (_%$%g202007202047%_
                                                            _%$%g202008202048%_)
                                                     (if (and (gx#identifier?
                                                               _%$%g202008202048%_)
                                                              (gx#identifier?
                                                               _%$%g202007202047%_))
                                                         (gxc#optimizer-declare-type!
                                                          (gxc#identifier-symbol
                                                           _%$%g202008202048%_)
                                                          (gxc#optimizer-resolve-class
                                                           _%stx201834%_
                                                           (gxc#identifier-symbol
                                                            _%$%g202007202047%_))
                                                          '#t)
                                                         (_%$%g202004202026%_
                                                          _%$%g202006202029%_)))
                                                   _%$%hd202013202042%_
                                                   _%$%hd202010202034%_)
                                                  (_%$%g202004202026%_
                                                   _%$%g202006202029%_))))
                                          (_%$%g202004202026%_
                                           _%$%g202006202029%_))))
                                  (_%$%g202004202026%_ _%$%g202006202029%_)))))
                      (_%$%g202003202063%_ _%assertion202002%_)))
                  (foldr (lambda (_%$%g202065202068%_ _%$%g202066202070%_)
                           (cons _%$%g202065202068%_ _%$%g202066202070%_))
                         '()
                         _%$%g201840201982%_))
                 (gxc#compile-e _%self201833%_ _%$%g201839201981%_))
               _%$%hd201860201976%_
               _%$%assertion201858201971%_)
              (_%$%g201836201922%_ _%$%g201838201925%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g201836201922%_
                                               _%$%g201838201925%_)))))))
                          (_%$%loop201853201956%_
                           _%$%target201850201951%_
                           '()))
                        (_%$%g201836201922%_ _%$%g201838201925%_)))))
              (_%$%g201836201922%_ _%$%g201838201925%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g201836201922%_
                                                   _%$%g201838201925%_))
                                              (_%$%g201836201922%_
                                               _%$%g201838201925%_))))
                                      (_%$%g201836201922%_
                                       _%$%g201838201925%_))))
                              (_%$%g201836201922%_ _%$%g201838201925%_))))
                      (_%$%g201836201922%_ _%$%g201838201925%_)))))
          (_%$%g201835202073%_ _%stx201834%_))))
    (define gxc#collect-type-lambda%
      (lambda (_%self201777%_ _%stx201778%_)
        (let* ((_%$%g201780201794%_
                (lambda (_%$%g201781201791%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g201781201791%_)))
               (_%$%g201779201830%_
                (lambda (_%$%g201781201797%_)
                  (if (gx#stx-pair? _%$%g201781201797%_)
                      (let ((_%$%e201784201799%_
                             (gx#stx-e _%$%g201781201797%_)))
                        (let ((_%$%hd201785201802%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201784201799%_)))
                              (_%$%tl201786201804%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201784201799%_))))
                          (if (gx#stx-pair? _%$%tl201786201804%_)
                              (let ((_%$%e201787201807%_
                                     (gx#stx-e _%$%tl201786201804%_)))
                                (let ((_%$%hd201788201810%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e201787201807%_)))
                                      (_%$%tl201789201812%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e201787201807%_))))
                                  ((lambda (_%$%g201782201815%_
                                            _%$%g201783201816%_)
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#collect-type-lambda-formals-tail
                                         _%stx201778%_
                                         _%$%g201783201816%_)
                                        (gxc#apply-body-lambda%
                                         _%self201777%_
                                         _%stx201778%_))
                                      gxc#current-compile-local-env
                                      (gxc#xform-let-locals
                                       _%$%g201783201816%_)))
                                   _%$%tl201789201812%_
                                   _%$%hd201788201810%_)))
                              (_%$%g201780201794%_ _%$%g201781201797%_))))
                      (_%$%g201780201794%_ _%$%g201781201797%_)))))
          (_%$%g201779201830%_ _%stx201778%_))))
    (define gxc#collect-type-case-lambda%
      (lambda (_%self201597%_ _%stx201598%_)
        (let* ((_%$%g201600201628%_
                (lambda (_%$%g201601201625%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g201601201625%_)))
               (_%$%g201599201774%_
                (lambda (_%$%g201601201631%_)
                  (if (gx#stx-pair? _%$%g201601201631%_)
                      (let ((_%$%e201604201633%_
                             (gx#stx-e _%$%g201601201631%_)))
                        (let ((_%$%hd201605201636%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201604201633%_)))
                              (_%$%tl201606201638%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201604201633%_))))
                          (if (gx#stx-pair/null? _%$%tl201606201638%_)
                              (let ((_g202607_
                                     (gx#syntax-split-splice
                                      _%$%tl201606201638%_
                                      '0)))
                                (begin
                                  (let ((_g202608_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202607_)
                                               (##values-length _g202607_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202608_ 2)))
                                        (error "Context expects 2 values"
                                               _g202608_)))
                                  (let ((_%$%target201607201641%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g202607_ 0)))
                                        (_%$%tl201609201643%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g202607_ 1))))
                                    (if (gx#stx-null? _%$%tl201609201643%_)
                                        (letrec ((_%$%loop201610201646%_
                                                  (lambda (_%$%hd201608201649%_
                                                           _%$%body201614201651%_
                                                           _%$%hd201615201652%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd201608201649%_)
                                                        (let ((_%$%e201611201654%_
                                                               (gx#stx-e
                                                                _%$%hd201608201649%_)))
                                                          (let ((_%$%lp-hd201612201657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e201611201654%_)))
                        (_%$%lp-tl201613201659%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e201611201654%_))))
                    (if (gx#stx-pair? _%$%lp-hd201612201657%_)
                        (let ((_%$%e201618201662%_
                               (gx#stx-e _%$%lp-hd201612201657%_)))
                          (let ((_%$%hd201619201665%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e201618201662%_)))
                                (_%$%tl201620201667%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e201618201662%_))))
                            (if (gx#stx-pair? _%$%tl201620201667%_)
                                (let ((_%$%e201621201670%_
                                       (gx#stx-e _%$%tl201620201667%_)))
                                  (let ((_%$%hd201622201673%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e201621201670%_)))
                                        (_%$%tl201623201675%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e201621201670%_))))
                                    (if (gx#stx-null? _%$%tl201623201675%_)
                                        (_%$%loop201610201646%_
                                         _%$%lp-tl201613201659%_
                                         (cons _%$%hd201622201673%_
                                               _%$%body201614201651%_)
                                         (cons _%$%hd201619201665%_
                                               _%$%hd201615201652%_))
                                        (_%$%g201600201628%_
                                         _%$%g201601201631%_))))
                                (_%$%g201600201628%_ _%$%g201601201631%_))))
                        (_%$%g201600201628%_ _%$%g201601201631%_))))
                (let ((_%$%body201616201678%_ (reverse _%$%body201614201651%_))
                      (_%$%hd201617201679%_ (reverse _%$%hd201615201652%_)))
                  ((lambda (_%$%g201602201681%_ _%$%g201603201682%_)
                     (for-each
                      (lambda (_%$%g201696201698%_)
                        (gxc#collect-type-lambda-formals-tail
                         _%stx201598%_
                         _%$%g201696201698%_))
                      (foldr (lambda (_%$%g201700201703%_ _%$%g201701201705%_)
                               (cons _%$%g201700201703%_ _%$%g201701201705%_))
                             '()
                             _%$%g201603201682%_))
                     (for-each
                      (lambda (_%clause201708%_)
                        (let* ((_%$%g201710201724%_
                                (lambda (_%$%g201711201721%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g201711201721%_)))
                               (_%$%g201709201761%_
                                (lambda (_%$%g201711201727%_)
                                  (if (gx#stx-pair? _%$%g201711201727%_)
                                      (let ((_%$%e201714201729%_
                                             (gx#stx-e _%$%g201711201727%_)))
                                        (let ((_%$%hd201715201732%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e201714201729%_)))
                                              (_%$%tl201716201734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e201714201729%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl201716201734%_)
                                              (let ((_%$%e201717201737%_
                                                     (gx#stx-e
                                                      _%$%tl201716201734%_)))
                                                (let ((_%$%hd201718201740%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e201717201737%_)))
                                                      (_%$%tl201719201742%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e201717201737%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl201719201742%_)
                                                      ((lambda (_%$%g201712201745%_
                                                                _%$%g201713201746%_)
                                                         (call-with-parameters
                                                          (lambda ()
                                                            (gxc#apply-body-case-lambda%
                                                             _%self201597%_
                                                             _%stx201598%_))
                                                          gxc#current-compile-local-env
                                                          (gxc#xform-let-locals
                                                           _%$%g201713201746%_)))
                                                       _%$%hd201718201740%_
                                                       _%$%hd201715201732%_)
                                                      (_%$%g201710201724%_
                                                       _%$%g201711201727%_))))
                                              (_%$%g201710201724%_
                                               _%$%g201711201727%_))))
                                      (_%$%g201710201724%_
                                       _%$%g201711201727%_)))))
                          (_%$%g201709201761%_ _%clause201708%_)))
                      (begin
                        (gx#syntax-check-splice-targets
                         _%$%g201602201681%_
                         _%$%g201603201682%_)
                        (foldr (lambda (_%$%g201763201767%_
                                        _%$%g201764201769%_
                                        _%$%g201765201771%_)
                                 (cons (cons _%$%g201764201769%_
                                             (cons _%$%g201763201767%_ '()))
                                       _%$%g201765201771%_))
                               '()
                               _%$%g201602201681%_
                               _%$%g201603201682%_))))
                   _%$%body201616201678%_
                   _%$%hd201617201679%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop201610201646%_
                                           _%$%target201607201641%_
                                           '()
                                           '()))
                                        (_%$%g201600201628%_
                                         _%$%g201601201631%_)))))
                              (_%$%g201600201628%_ _%$%g201601201631%_))))
                      (_%$%g201600201628%_ _%$%g201601201631%_)))))
          (_%$%g201599201774%_ _%stx201598%_))))
    (define gxc#collect-type-lambda-formals-tail
      (lambda (_%stx201529%_ _%formals201530%_)
        (let _%loop201532%_ ((_%rest201534%_ _%formals201530%_))
          (let* ((_%$%g201538201549%_
                  (lambda (_%$%g201539201546%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g201539201546%_)))
                 (_%$%g201537201556%_
                  (lambda (_%$%g201539201552%_) ((lambda () (void)))))
                 (_%$%g201536201572%_
                  (lambda (_%$%g201539201559%_)
                    ((lambda (_%$%g201544201561%_)
                       (if (gx#identifier? _%$%g201544201561%_)
                           (gxc#optimizer-declare-type!
                            (gxc#identifier-symbol _%$%g201544201561%_)
                            (gxc#optimizer-resolve-class
                             _%stx201529%_
                             'list::t)
                            '#t)
                           (_%$%g201537201556%_ _%$%g201539201559%_)))
                     _%$%g201539201559%_)))
                 (_%$%g201535201594%_
                  (lambda (_%$%g201539201575%_)
                    (if (gx#stx-pair? _%$%g201539201575%_)
                        (let ((_%$%e201541201577%_
                               (gx#stx-e _%$%g201539201575%_)))
                          (let ((_%$%hd201542201580%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e201541201577%_)))
                                (_%$%tl201543201582%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e201541201577%_))))
                            ((lambda (_%$%g201540201585%_)
                               (_%loop201532%_ _%$%g201540201585%_))
                             _%$%tl201543201582%_)))
                        (_%$%g201536201572%_ _%$%g201539201575%_)))))
            (_%$%g201535201594%_ _%rest201534%_)))))
    (define gxc#collect-type-let-values%
      (let ((_%$%opt-lambda201291201517%_
             (lambda (_%self201293%_ _%stx201294%_ _%expression-type201295%_)
               (letrec ((_%collect-e201297%_
                         (lambda (_%hd201462%_ _%expr201463%_)
                           (let* ((_%$%g201466201476%_
                                   (lambda (_%$%g201467201473%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g201467201473%_)))
                                  (_%$%g201465201483%_
                                   (lambda (_%$%g201467201479%_)
                                     ((lambda () (void)))))
                                  (_%$%g201464201514%_
                                   (lambda (_%$%g201467201486%_)
                                     (if (gx#stx-pair? _%$%g201467201486%_)
                                         (let ((_%$%e201469201488%_
                                                (gx#stx-e
                                                 _%$%g201467201486%_)))
                                           (let ((_%$%hd201470201491%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e201469201488%_)))
                                                 (_%$%tl201471201493%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e201469201488%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl201471201493%_)
                                                 ((lambda (_%$%g201468201496%_)
                                                    (if (gx#identifier?
                                                         _%$%g201468201496%_)
                                                        (let* ((_%sym201507%_
                                                                (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g201468201496%_))
                       (_%$%type201508201510%_
                        (_%expression-type201295%_ _%expr201463%_)))
                  (if _%$%type201508201510%_
                      (let ((_%type201512%_ _%$%type201508201510%_))
                        (if (gxc#!class-meta? _%type201512%_)
                            (begin
                              (gxc#optimizer-declare-class!
                               _%sym201507%_
                               (gxc#!class-meta-class _%type201512%_))
                              (gxc#optimizer-declare-type!
                               _%sym201507%_
                               (gxc#optimizer-resolve-class
                                _%stx201294%_
                                'class::t)
                               '#t))
                            (gxc#optimizer-declare-type!
                             _%sym201507%_
                             _%type201512%_
                             '#t)))
                      '#f))
                (_%$%g201465201483%_ _%$%g201467201486%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$%hd201470201491%_)
                                                 (_%$%g201465201483%_
                                                  _%$%g201467201486%_))))
                                         (_%$%g201465201483%_
                                          _%$%g201467201486%_)))))
                             (_%$%g201464201514%_ _%hd201462%_)))))
                 (let* ((_%$%g201299201334%_
                         (lambda (_%$%g201300201331%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g201300201331%_)))
                        (_%$%g201298201459%_
                         (lambda (_%$%g201300201337%_)
                           (if (gx#stx-pair? _%$%g201300201337%_)
                               (let ((_%$%e201304201339%_
                                      (gx#stx-e _%$%g201300201337%_)))
                                 (let ((_%$%hd201305201342%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e201304201339%_)))
                                       (_%$%tl201306201344%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e201304201339%_))))
                                   (if (gx#stx-pair? _%$%tl201306201344%_)
                                       (let ((_%$%e201307201347%_
                                              (gx#stx-e _%$%tl201306201344%_)))
                                         (let ((_%$%hd201308201350%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e201307201347%_)))
                                               (_%$%tl201309201352%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e201307201347%_))))
                                           (if (gx#stx-pair/null?
                                                _%$%hd201308201350%_)
                                               (let ((_g202609_
                                                      (gx#syntax-split-splice
                                                       _%$%hd201308201350%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g202610_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g202609_)
                        (##values-length _g202609_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g202610_ 2)))
                 (error "Context expects 2 values" _g202610_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%$%target201310201355%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g202609_
                                                             0)))
                                                         (_%$%tl201312201357%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g202609_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%$%tl201312201357%_)
                                                         (letrec ((_%$%loop201313201360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%hd201311201363%_
                                    _%$%expr201317201365%_
                                    _%$%hd201318201366%_)
                             (if (gx#stx-pair? _%$%hd201311201363%_)
                                 (let ((_%$%e201314201368%_
                                        (gx#stx-e _%$%hd201311201363%_)))
                                   (let ((_%$%lp-hd201315201371%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e201314201368%_)))
                                         (_%$%lp-tl201316201373%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e201314201368%_))))
                                     (if (gx#stx-pair? _%$%lp-hd201315201371%_)
                                         (let ((_%$%e201321201376%_
                                                (gx#stx-e
                                                 _%$%lp-hd201315201371%_)))
                                           (let ((_%$%hd201322201379%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e201321201376%_)))
                                                 (_%$%tl201323201381%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e201321201376%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl201323201381%_)
                                                 (let ((_%$%e201324201384%_
                                                        (gx#stx-e
                                                         _%$%tl201323201381%_)))
                                                   (let ((_%$%hd201325201387%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e201324201384%_)))
                                                         (_%$%tl201326201389%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e201324201384%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl201326201389%_)
                                                         (_%$%loop201313201360%_
                                                          _%$%lp-tl201316201373%_
                                                          (cons _%$%hd201325201387%_
                                                                _%$%expr201317201365%_)
                                                          (cons _%$%hd201322201379%_
                                                                _%$%hd201318201366%_))
                                                         (_%$%g201299201334%_
                                                          _%$%g201300201337%_))))
                                                 (_%$%g201299201334%_
                                                  _%$%g201300201337%_))))
                                         (_%$%g201299201334%_
                                          _%$%g201300201337%_))))
                                 (let ((_%$%expr201319201392%_
                                        (reverse _%$%expr201317201365%_))
                                       (_%$%hd201320201393%_
                                        (reverse _%$%hd201318201366%_)))
                                   (if (gx#stx-pair? _%$%tl201309201352%_)
                                       (let ((_%$%e201327201395%_
                                              (gx#stx-e _%$%tl201309201352%_)))
                                         (let ((_%$%hd201328201398%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e201327201395%_)))
                                               (_%$%tl201329201400%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e201327201395%_))))
                                           (if (gx#stx-null?
                                                _%$%tl201329201400%_)
                                               ((lambda (_%$%g201301201403%_
                                                         _%$%g201302201404%_
                                                         _%$%g201303201405%_)
                                                  (for-each
                                                   _%collect-e201297%_
                                                   (foldr (lambda (_%$%g201425201428%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g201426201430%_)
                    (cons _%$%g201425201428%_ _%$%g201426201430%_))
                  '()
                  _%$%g201303201405%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (foldr (lambda (_%$%g201432201435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g201433201437%_)
                    (cons _%$%g201432201435%_ _%$%g201433201437%_))
                  '()
                  _%$%g201302201404%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (for-each
                                                   (lambda (_%$%g201439201441%_)
                                                     (gxc#compile-e
                                                      _%self201293%_
                                                      _%$%g201439201441%_))
                                                   (foldr (lambda (_%$%g201443201446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g201444201448%_)
                    (cons _%$%g201443201446%_ _%$%g201444201448%_))
                  '()
                  _%$%g201302201404%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (call-with-parameters
                                                   (lambda ()
                                                     (gxc#compile-e
                                                      _%self201293%_
                                                      _%$%g201301201403%_))
                                                   gxc#current-compile-local-env
                                                   (gxc#xform-let-locals
                                                    (foldr (lambda (_%$%g201451201454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g201452201456%_)
                     (cons _%$%g201451201454%_ _%$%g201452201456%_))
                   '()
                   _%$%g201303201405%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$%hd201328201398%_
                                                _%$%expr201319201392%_
                                                _%$%hd201320201393%_)
                                               (_%$%g201299201334%_
                                                _%$%g201300201337%_))))
                                       (_%$%g201299201334%_
                                        _%$%g201300201337%_)))))))
                   (_%$%loop201313201360%_ _%$%target201310201355%_ '() '()))
                 (_%$%g201299201334%_ _%$%g201300201337%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g201299201334%_
                                                _%$%g201300201337%_))))
                                       (_%$%g201299201334%_
                                        _%$%g201300201337%_))))
                               (_%$%g201299201334%_ _%$%g201300201337%_)))))
                   (_%$%g201298201459%_ _%stx201294%_))))))
        (lambda _g202611_
          (let ((_g202612_ (let () (declare (not safe)) (##length _g202611_))))
            (cond ((let () (declare (not safe)) (##fx= _g202612_ 2))
                   (apply (lambda (_%self201520%_ _%stx201521%_)
                            (let ((_%expression-type201523%_
                                   gxc#apply-basic-expression-type))
                              (_%$%opt-lambda201291201517%_
                               _%self201520%_
                               _%stx201521%_
                               _%expression-type201523%_)))
                          _g202611_))
                  ((let () (declare (not safe)) (##fx= _g202612_ 3))
                   (apply _%$%opt-lambda201291201517%_ _g202611_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#collect-type-let-values%
                    _g202611_)))))))
    (define gxc#collect-type-letrec-values%
      (let ((_%$%opt-lambda201029201280%_
             (lambda (_%self201031%_ _%stx201032%_ _%expression-type201033%_)
               (letrec ((_%collect-e201035%_
                         (lambda (_%hd201225%_ _%expr201226%_)
                           (let* ((_%$%g201229201239%_
                                   (lambda (_%$%g201230201236%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g201230201236%_)))
                                  (_%$%g201228201246%_
                                   (lambda (_%$%g201230201242%_)
                                     ((lambda () (void)))))
                                  (_%$%g201227201277%_
                                   (lambda (_%$%g201230201249%_)
                                     (if (gx#stx-pair? _%$%g201230201249%_)
                                         (let ((_%$%e201232201251%_
                                                (gx#stx-e
                                                 _%$%g201230201249%_)))
                                           (let ((_%$%hd201233201254%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e201232201251%_)))
                                                 (_%$%tl201234201256%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e201232201251%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl201234201256%_)
                                                 ((lambda (_%$%g201231201259%_)
                                                    (if (gx#identifier?
                                                         _%$%g201231201259%_)
                                                        (let* ((_%sym201270%_
                                                                (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g201231201259%_))
                       (_%$%type201271201273%_
                        (_%expression-type201033%_ _%expr201226%_)))
                  (if _%$%type201271201273%_
                      (let ((_%type201275%_ _%$%type201271201273%_))
                        (if (gxc#!class-meta? _%type201275%_)
                            (begin
                              (gxc#optimizer-declare-class!
                               _%sym201270%_
                               (gxc#!class-meta-class _%type201275%_))
                              (gxc#optimizer-declare-type!
                               _%sym201270%_
                               (gxc#optimizer-resolve-class
                                _%stx201032%_
                                'class::t)
                               '#t))
                            (gxc#optimizer-declare-type!
                             _%sym201270%_
                             _%type201275%_
                             '#t)))
                      '#f))
                (_%$%g201228201246%_ _%$%g201230201249%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$%hd201233201254%_)
                                                 (_%$%g201228201246%_
                                                  _%$%g201230201249%_))))
                                         (_%$%g201228201246%_
                                          _%$%g201230201249%_)))))
                             (_%$%g201227201277%_ _%hd201225%_)))))
                 (let* ((_%$%g201037201072%_
                         (lambda (_%$%g201038201069%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g201038201069%_)))
                        (_%$%g201036201222%_
                         (lambda (_%$%g201038201075%_)
                           (if (gx#stx-pair? _%$%g201038201075%_)
                               (let ((_%$%e201042201077%_
                                      (gx#stx-e _%$%g201038201075%_)))
                                 (let ((_%$%hd201043201080%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e201042201077%_)))
                                       (_%$%tl201044201082%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e201042201077%_))))
                                   (if (gx#stx-pair? _%$%tl201044201082%_)
                                       (let ((_%$%e201045201085%_
                                              (gx#stx-e _%$%tl201044201082%_)))
                                         (let ((_%$%hd201046201088%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e201045201085%_)))
                                               (_%$%tl201047201090%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e201045201085%_))))
                                           (if (gx#stx-pair/null?
                                                _%$%hd201046201088%_)
                                               (let ((_g202613_
                                                      (gx#syntax-split-splice
                                                       _%$%hd201046201088%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g202614_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g202613_)
                        (##values-length _g202613_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g202614_ 2)))
                 (error "Context expects 2 values" _g202614_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%$%target201048201093%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g202613_
                                                             0)))
                                                         (_%$%tl201050201095%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g202613_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%$%tl201050201095%_)
                                                         (letrec ((_%$%loop201051201098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%hd201049201101%_
                                    _%$%expr201055201103%_
                                    _%$%hd201056201104%_)
                             (if (gx#stx-pair? _%$%hd201049201101%_)
                                 (let ((_%$%e201052201106%_
                                        (gx#stx-e _%$%hd201049201101%_)))
                                   (let ((_%$%lp-hd201053201109%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e201052201106%_)))
                                         (_%$%lp-tl201054201111%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e201052201106%_))))
                                     (if (gx#stx-pair? _%$%lp-hd201053201109%_)
                                         (let ((_%$%e201059201114%_
                                                (gx#stx-e
                                                 _%$%lp-hd201053201109%_)))
                                           (let ((_%$%hd201060201117%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e201059201114%_)))
                                                 (_%$%tl201061201119%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e201059201114%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl201061201119%_)
                                                 (let ((_%$%e201062201122%_
                                                        (gx#stx-e
                                                         _%$%tl201061201119%_)))
                                                   (let ((_%$%hd201063201125%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e201062201122%_)))
                                                         (_%$%tl201064201127%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e201062201122%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl201064201127%_)
                                                         (_%$%loop201051201098%_
                                                          _%$%lp-tl201054201111%_
                                                          (cons _%$%hd201063201125%_
                                                                _%$%expr201055201103%_)
                                                          (cons _%$%hd201060201117%_
                                                                _%$%hd201056201104%_))
                                                         (_%$%g201037201072%_
                                                          _%$%g201038201075%_))))
                                                 (_%$%g201037201072%_
                                                  _%$%g201038201075%_))))
                                         (_%$%g201037201072%_
                                          _%$%g201038201075%_))))
                                 (let ((_%$%expr201057201130%_
                                        (reverse _%$%expr201055201103%_))
                                       (_%$%hd201058201131%_
                                        (reverse _%$%hd201056201104%_)))
                                   (if (gx#stx-pair? _%$%tl201047201090%_)
                                       (let ((_%$%e201065201133%_
                                              (gx#stx-e _%$%tl201047201090%_)))
                                         (let ((_%$%hd201066201136%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e201065201133%_)))
                                               (_%$%tl201067201138%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e201065201133%_))))
                                           (if (gx#stx-null?
                                                _%$%tl201067201138%_)
                                               ((lambda (_%$%g201039201141%_
                                                         _%$%g201040201142%_
                                                         _%$%g201041201143%_)
                                                  (call-with-parameters
                                                   (lambda ()
                                                     (for-each
                                                      _%collect-e201035%_
                                                      (foldr (lambda (_%$%g201164201167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g201165201169%_)
                       (cons _%$%g201164201167%_ _%$%g201165201169%_))
                     '()
                     _%$%g201041201143%_)
              (foldr (lambda (_%$%g201171201174%_ _%$%g201172201176%_)
                       (cons _%$%g201171201174%_ _%$%g201172201176%_))
                     '()
                     _%$%g201040201142%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (for-each
                                                      (lambda (_%$%g201178201180%_)
                                                        (gxc#compile-e
                                                         _%self201031%_
                                                         _%$%g201178201180%_))
                                                      (foldr (lambda (_%$%g201182201185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g201183201187%_)
                       (cons _%$%g201182201185%_ _%$%g201183201187%_))
                     '()
                     _%$%g201040201142%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (for-each
                                                      _%collect-e201035%_
                                                      (foldr (lambda (_%$%g201189201192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g201190201194%_)
                       (cons _%$%g201189201192%_ _%$%g201190201194%_))
                     '()
                     _%$%g201041201143%_)
              (foldr (lambda (_%$%g201196201199%_ _%$%g201197201201%_)
                       (cons _%$%g201196201199%_ _%$%g201197201201%_))
                     '()
                     _%$%g201040201142%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (for-each
                                                      (lambda (_%$%g201203201205%_)
                                                        (gxc#compile-e
                                                         _%self201031%_
                                                         _%$%g201203201205%_))
                                                      (foldr (lambda (_%$%g201207201210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g201208201212%_)
                       (cons _%$%g201207201210%_ _%$%g201208201212%_))
                     '()
                     _%$%g201040201142%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gxc#compile-e
                                                      _%self201031%_
                                                      _%$%g201039201141%_))
                                                   gxc#current-compile-local-env
                                                   (gxc#xform-let-locals
                                                    (foldr (lambda (_%$%g201214201217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g201215201219%_)
                     (cons _%$%g201214201217%_ _%$%g201215201219%_))
                   '()
                   _%$%g201041201143%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$%hd201066201136%_
                                                _%$%expr201057201130%_
                                                _%$%hd201058201131%_)
                                               (_%$%g201037201072%_
                                                _%$%g201038201075%_))))
                                       (_%$%g201037201072%_
                                        _%$%g201038201075%_)))))))
                   (_%$%loop201051201098%_ _%$%target201048201093%_ '() '()))
                 (_%$%g201037201072%_ _%$%g201038201075%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g201037201072%_
                                                _%$%g201038201075%_))))
                                       (_%$%g201037201072%_
                                        _%$%g201038201075%_))))
                               (_%$%g201037201072%_ _%$%g201038201075%_)))))
                   (_%$%g201036201222%_ _%stx201032%_))))))
        (lambda _g202615_
          (let ((_g202616_ (let () (declare (not safe)) (##length _g202615_))))
            (cond ((let () (declare (not safe)) (##fx= _g202616_ 2))
                   (apply (lambda (_%self201283%_ _%stx201284%_)
                            (let ((_%expression-type201286%_
                                   gxc#apply-basic-expression-type))
                              (_%$%opt-lambda201029201280%_
                               _%self201283%_
                               _%stx201284%_
                               _%expression-type201286%_)))
                          _g202615_))
                  ((let () (declare (not safe)) (##fx= _g202616_ 3))
                   (apply _%$%opt-lambda201029201280%_ _g202615_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#collect-type-letrec-values%
                    _g202615_)))))))
    (define gxc#collect-top-level-type-let-values%
      (lambda (_%self201027%_ _%stx201028%_)
        (gxc#collect-type-let-values%
         _%self201027%_
         _%stx201028%_
         gxc#apply-raw-expression-type)))
    (define gxc#collect-top-level-type-letrec-values%
      (lambda (_%self201024%_ _%stx201025%_)
        (gxc#collect-type-letrec-values%
         _%self201024%_
         _%stx201025%_
         gxc#apply-raw-expression-type)))
    (define gxc#collect-top-level-type-call%
      (lambda (_%self200513%_ _%stx200514%_)
        (let* ((_%$%g200518200633%_
                (lambda (_%$%g200519200630%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g200519200630%_)))
               (_%$%g200517200693%_
                (lambda (_%$%g200519200636%_)
                  (if (gx#stx-pair? _%$%g200519200636%_)
                      (let ((_%$%e200617200638%_
                             (gx#stx-e _%$%g200519200636%_)))
                        (let ((_%$%hd200618200641%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200617200638%_)))
                              (_%$%tl200619200643%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200617200638%_))))
                          (if (gx#stx-pair/null? _%$%tl200619200643%_)
                              (let ((_g202617_
                                     (gx#syntax-split-splice
                                      _%$%tl200619200643%_
                                      '0)))
                                (begin
                                  (let ((_g202618_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202617_)
                                               (##values-length _g202617_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202618_ 2)))
                                        (error "Context expects 2 values"
                                               _g202618_)))
                                  (let ((_%$%target200620200646%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g202617_ 0)))
                                        (_%$%tl200622200648%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g202617_ 1))))
                                    (if (gx#stx-null? _%$%tl200622200648%_)
                                        (letrec ((_%$%loop200623200651%_
                                                  (lambda (_%$%hd200621200654%_
                                                           _%$%expr200627200656%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd200621200654%_)
                                                        (let ((_%$%e200624200658%_
                                                               (gx#stx-e
                                                                _%$%hd200621200654%_)))
                                                          (let ((_%$%lp-hd200625200661%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e200624200658%_)))
                        (_%$%lp-tl200626200663%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e200624200658%_))))
                    (_%$%loop200623200651%_
                     _%$%lp-tl200626200663%_
                     (cons _%$%lp-hd200625200661%_ _%$%expr200627200656%_))))
                (let ((_%$%expr200628200666%_
                       (reverse _%$%expr200627200656%_)))
                  ((lambda (_%$%g200616200668%_)
                     (for-each
                      (lambda (_%$%g200681200683%_)
                        (gxc#compile-e _%self200513%_ _%$%g200681200683%_))
                      (foldr (lambda (_%$%g200685200688%_ _%$%g200686200690%_)
                               (cons _%$%g200685200688%_ _%$%g200686200690%_))
                             '()
                             _%$%g200616200668%_)))
                   _%$%expr200628200666%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop200623200651%_
                                           _%$%target200620200646%_
                                           '()))
                                        (_%$%g200518200633%_
                                         _%$%g200519200636%_)))))
                              (_%$%g200518200633%_ _%$%g200519200636%_))))
                      (_%$%g200518200633%_ _%$%g200519200636%_))))
               (_%$%g200516200841%_
                (lambda (_%$%g200519200696%_)
                  (if (gx#stx-pair? _%$%g200519200696%_)
                      (let ((_%$%e200577200698%_
                             (gx#stx-e _%$%g200519200696%_)))
                        (let ((_%$%hd200578200701%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200577200698%_)))
                              (_%$%tl200579200703%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200577200698%_))))
                          (if (gx#stx-pair? _%$%tl200579200703%_)
                              (let ((_%$%e200580200706%_
                                     (gx#stx-e _%$%tl200579200703%_)))
                                (let ((_%$%hd200581200709%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200580200706%_)))
                                      (_%$%tl200582200711%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200580200706%_))))
                                  (if (gx#stx-pair? _%$%hd200581200709%_)
                                      (let ((_%$%e200583200714%_
                                             (gx#stx-e _%$%hd200581200709%_)))
                                        (let ((_%$%hd200584200717%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200583200714%_)))
                                              (_%$%tl200585200719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200583200714%_))))
                                          (if (gx#identifier?
                                               _%$%hd200584200717%_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd200584200717%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl200585200719%_)
                                                      (let ((_%$%e200586200722%_
                                                             (gx#stx-e
                                                              _%$%tl200585200719%_)))
                                                        (let ((_%$%hd200587200725%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e200586200722%_)))
                      (_%$%tl200588200727%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e200586200722%_))))
                  (if (gx#stx-null? _%$%tl200588200727%_)
                      (if (gx#stx-pair? _%$%tl200582200711%_)
                          (let ((_%$%e200589200730%_
                                 (gx#stx-e _%$%tl200582200711%_)))
                            (let ((_%$%hd200590200733%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e200589200730%_)))
                                  (_%$%tl200591200735%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e200589200730%_))))
                              (if (gx#stx-pair? _%$%hd200590200733%_)
                                  (let ((_%$%e200592200738%_
                                         (gx#stx-e _%$%hd200590200733%_)))
                                    (let ((_%$%hd200593200741%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e200592200738%_)))
                                          (_%$%tl200594200743%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e200592200738%_))))
                                      (if (gx#identifier? _%$%hd200593200741%_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _%$%hd200593200741%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl200594200743%_)
                                                  (let ((_%$%e200595200746%_
                                                         (gx#stx-e
                                                          _%$%tl200594200743%_)))
                                                    (let ((_%$%hd200596200749%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e200595200746%_)))
                                                          (_%$%tl200597200751%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e200595200746%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl200597200751%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl200591200735%_)
                                                              (let ((_%$%e200598200754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl200591200735%_)))
                        (let ((_%$%hd200599200757%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200598200754%_)))
                              (_%$%tl200600200759%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200598200754%_))))
                          (if (gx#stx-pair? _%$%hd200599200757%_)
                              (let ((_%$%e200601200762%_
                                     (gx#stx-e _%$%hd200599200757%_)))
                                (let ((_%$%hd200602200765%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200601200762%_)))
                                      (_%$%tl200603200767%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200601200762%_))))
                                  (if (gx#identifier? _%$%hd200602200765%_)
                                      (if (gx#stx-eq?
                                           '%#quote
                                           _%$%hd200602200765%_)
                                          (if (gx#stx-pair?
                                               _%$%tl200603200767%_)
                                              (let ((_%$%e200604200770%_
                                                     (gx#stx-e
                                                      _%$%tl200603200767%_)))
                                                (let ((_%$%hd200605200773%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e200604200770%_)))
                                                      (_%$%tl200606200775%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e200604200770%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl200606200775%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl200600200759%_)
                                                          (let ((_%$%e200607200778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl200600200759%_)))
                    (let ((_%$%hd200608200781%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e200607200778%_)))
                          (_%$%tl200609200783%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e200607200778%_))))
                      (if (gx#stx-pair? _%$%hd200608200781%_)
                          (let ((_%$%e200610200786%_
                                 (gx#stx-e _%$%hd200608200781%_)))
                            (let ((_%$%hd200611200789%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e200610200786%_)))
                                  (_%$%tl200612200791%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e200610200786%_))))
                              (if (gx#identifier? _%$%hd200611200789%_)
                                  (if (gx#stx-eq? '%#ref _%$%hd200611200789%_)
                                      (if (gx#stx-pair? _%$%tl200612200791%_)
                                          (let ((_%$%e200613200794%_
                                                 (gx#stx-e
                                                  _%$%tl200612200791%_)))
                                            (let ((_%$%hd200614200797%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e200613200794%_)))
                                                  (_%$%tl200615200799%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e200613200794%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl200615200799%_)
                                                  (if (gx#stx-null?
                                                       _%$%tl200609200783%_)
                                                      ((lambda (_%$%g200573200802%_
                                                                _%$%g200574200803%_
                                                                _%$%g200575200804%_
                                                                _%$%g200576200805%_)
                                                         (if (gxc#runtime-identifier=?
                                                              (gx#datum->syntax
                                                               '#f
                                                               '-bind-method)
                                                              'bind-method!)
                                                             (gxc#optimizer-declare-method!
                                                              (gxc#identifier-symbol
                                                               _%$%g200575200804%_)
                                                              (gx#stx-e
                                                               _%$%g200574200803%_)
                                                              (gxc#identifier-symbol
                                                               _%$%g200573200802%_)
                                                              '#f)
                                                             (_%$%g200517200693%_
                                                              _%$%g200519200696%_)))
                                                       _%$%hd200614200797%_
                                                       _%$%hd200605200773%_
                                                       _%$%hd200596200749%_
                                                       _%$%hd200587200725%_)
                                                      (_%$%g200517200693%_
                                                       _%$%g200519200696%_))
                                                  (_%$%g200517200693%_
                                                   _%$%g200519200696%_))))
                                          (_%$%g200517200693%_
                                           _%$%g200519200696%_))
                                      (_%$%g200517200693%_
                                       _%$%g200519200696%_))
                                  (_%$%g200517200693%_ _%$%g200519200696%_))))
                          (_%$%g200517200693%_ _%$%g200519200696%_))))
                  (_%$%g200517200693%_ _%$%g200519200696%_))
              (_%$%g200517200693%_ _%$%g200519200696%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g200517200693%_
                                               _%$%g200519200696%_))
                                          (_%$%g200517200693%_
                                           _%$%g200519200696%_))
                                      (_%$%g200517200693%_
                                       _%$%g200519200696%_))))
                              (_%$%g200517200693%_ _%$%g200519200696%_))))
                      (_%$%g200517200693%_ _%$%g200519200696%_))
                  (_%$%g200517200693%_ _%$%g200519200696%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g200517200693%_
                                                   _%$%g200519200696%_))
                                              (_%$%g200517200693%_
                                               _%$%g200519200696%_))
                                          (_%$%g200517200693%_
                                           _%$%g200519200696%_))))
                                  (_%$%g200517200693%_ _%$%g200519200696%_))))
                          (_%$%g200517200693%_ _%$%g200519200696%_))
                      (_%$%g200517200693%_ _%$%g200519200696%_))))
              (_%$%g200517200693%_ _%$%g200519200696%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g200517200693%_
                                                   _%$%g200519200696%_))
                                              (_%$%g200517200693%_
                                               _%$%g200519200696%_))))
                                      (_%$%g200517200693%_
                                       _%$%g200519200696%_))))
                              (_%$%g200517200693%_ _%$%g200519200696%_))))
                      (_%$%g200517200693%_ _%$%g200519200696%_))))
               (_%$%g200515201021%_
                (lambda (_%$%g200519200844%_)
                  (if (gx#stx-pair? _%$%g200519200844%_)
                      (let ((_%$%e200525200846%_
                             (gx#stx-e _%$%g200519200844%_)))
                        (let ((_%$%hd200526200849%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200525200846%_)))
                              (_%$%tl200527200851%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200525200846%_))))
                          (if (gx#stx-pair? _%$%tl200527200851%_)
                              (let ((_%$%e200528200854%_
                                     (gx#stx-e _%$%tl200527200851%_)))
                                (let ((_%$%hd200529200857%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200528200854%_)))
                                      (_%$%tl200530200859%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200528200854%_))))
                                  (if (gx#stx-pair? _%$%hd200529200857%_)
                                      (let ((_%$%e200531200862%_
                                             (gx#stx-e _%$%hd200529200857%_)))
                                        (let ((_%$%hd200532200865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200531200862%_)))
                                              (_%$%tl200533200867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200531200862%_))))
                                          (if (gx#identifier?
                                               _%$%hd200532200865%_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd200532200865%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl200533200867%_)
                                                      (let ((_%$%e200534200870%_
                                                             (gx#stx-e
                                                              _%$%tl200533200867%_)))
                                                        (let ((_%$%hd200535200873%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e200534200870%_)))
                      (_%$%tl200536200875%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e200534200870%_))))
                  (if (gx#stx-null? _%$%tl200536200875%_)
                      (if (gx#stx-pair? _%$%tl200530200859%_)
                          (let ((_%$%e200537200878%_
                                 (gx#stx-e _%$%tl200530200859%_)))
                            (let ((_%$%hd200538200881%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e200537200878%_)))
                                  (_%$%tl200539200883%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e200537200878%_))))
                              (if (gx#stx-pair? _%$%hd200538200881%_)
                                  (let ((_%$%e200540200886%_
                                         (gx#stx-e _%$%hd200538200881%_)))
                                    (let ((_%$%hd200541200889%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e200540200886%_)))
                                          (_%$%tl200542200891%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e200540200886%_))))
                                      (if (gx#identifier? _%$%hd200541200889%_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _%$%hd200541200889%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl200542200891%_)
                                                  (let ((_%$%e200543200894%_
                                                         (gx#stx-e
                                                          _%$%tl200542200891%_)))
                                                    (let ((_%$%hd200544200897%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e200543200894%_)))
                                                          (_%$%tl200545200899%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e200543200894%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl200545200899%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl200539200883%_)
                                                              (let ((_%$%e200546200902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl200539200883%_)))
                        (let ((_%$%hd200547200905%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200546200902%_)))
                              (_%$%tl200548200907%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200546200902%_))))
                          (if (gx#stx-pair? _%$%hd200547200905%_)
                              (let ((_%$%e200549200910%_
                                     (gx#stx-e _%$%hd200547200905%_)))
                                (let ((_%$%hd200550200913%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200549200910%_)))
                                      (_%$%tl200551200915%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200549200910%_))))
                                  (if (gx#identifier? _%$%hd200550200913%_)
                                      (if (gx#stx-eq?
                                           '%#quote
                                           _%$%hd200550200913%_)
                                          (if (gx#stx-pair?
                                               _%$%tl200551200915%_)
                                              (let ((_%$%e200552200918%_
                                                     (gx#stx-e
                                                      _%$%tl200551200915%_)))
                                                (let ((_%$%hd200553200921%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e200552200918%_)))
                                                      (_%$%tl200554200923%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e200552200918%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl200554200923%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl200548200907%_)
                                                          (let ((_%$%e200555200926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl200548200907%_)))
                    (let ((_%$%hd200556200929%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e200555200926%_)))
                          (_%$%tl200557200931%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e200555200926%_))))
                      (if (gx#stx-pair? _%$%hd200556200929%_)
                          (let ((_%$%e200558200934%_
                                 (gx#stx-e _%$%hd200556200929%_)))
                            (let ((_%$%hd200559200937%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e200558200934%_)))
                                  (_%$%tl200560200939%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e200558200934%_))))
                              (if (gx#identifier? _%$%hd200559200937%_)
                                  (if (gx#stx-eq? '%#ref _%$%hd200559200937%_)
                                      (if (gx#stx-pair? _%$%tl200560200939%_)
                                          (let ((_%$%e200561200942%_
                                                 (gx#stx-e
                                                  _%$%tl200560200939%_)))
                                            (let ((_%$%hd200562200945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e200561200942%_)))
                                                  (_%$%tl200563200947%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e200561200942%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl200563200947%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl200557200931%_)
                                                      (let ((_%$%e200564200950%_
                                                             (gx#stx-e
                                                              _%$%tl200557200931%_)))
                                                        (let ((_%$%hd200565200953%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e200564200950%_)))
                      (_%$%tl200566200955%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e200564200950%_))))
                  (if (gx#stx-pair? _%$%hd200565200953%_)
                      (let ((_%$%e200567200958%_
                             (gx#stx-e _%$%hd200565200953%_)))
                        (let ((_%$%hd200568200961%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200567200958%_)))
                              (_%$%tl200569200963%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200567200958%_))))
                          (if (gx#identifier? _%$%hd200568200961%_)
                              (if (gx#stx-eq? '%#quote _%$%hd200568200961%_)
                                  (if (gx#stx-pair? _%$%tl200569200963%_)
                                      (let ((_%$%e200570200966%_
                                             (gx#stx-e _%$%tl200569200963%_)))
                                        (let ((_%$%hd200571200969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200570200966%_)))
                                              (_%$%tl200572200971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200570200966%_))))
                                          (if (gx#stx-null?
                                               _%$%tl200572200971%_)
                                              (if (gx#stx-null?
                                                   _%$%tl200566200955%_)
                                                  ((lambda (_%$%g200520200974%_
                                                            _%$%g200521200975%_
                                                            _%$%g200522200976%_
                                                            _%$%g200523200977%_
                                                            _%$%g200524200978%_)
                                                     (if (gxc#runtime-identifier=?
                                                          _%$%g200524200978%_
                                                          'bind-method!)
                                                         (gxc#optimizer-declare-method!
                                                          (gxc#identifier-symbol
                                                           _%$%g200523200977%_)
                                                          (gx#stx-e
                                                           _%$%g200522200976%_)
                                                          (gxc#identifier-symbol
                                                           _%$%g200521200975%_)
                                                          (gx#stx-e
                                                           _%$%g200520200974%_))
                                                         (_%$%g200516200841%_
                                                          _%$%g200519200844%_)))
                                                   _%$%hd200571200969%_
                                                   _%$%hd200562200945%_
                                                   _%$%hd200553200921%_
                                                   _%$%hd200544200897%_
                                                   _%$%hd200535200873%_)
                                                  (_%$%g200516200841%_
                                                   _%$%g200519200844%_))
                                              (_%$%g200516200841%_
                                               _%$%g200519200844%_))))
                                      (_%$%g200516200841%_
                                       _%$%g200519200844%_))
                                  (_%$%g200516200841%_ _%$%g200519200844%_))
                              (_%$%g200516200841%_ _%$%g200519200844%_))))
                      (_%$%g200516200841%_ _%$%g200519200844%_))))
              (_%$%g200516200841%_ _%$%g200519200844%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g200516200841%_
                                                   _%$%g200519200844%_))))
                                          (_%$%g200516200841%_
                                           _%$%g200519200844%_))
                                      (_%$%g200516200841%_
                                       _%$%g200519200844%_))
                                  (_%$%g200516200841%_ _%$%g200519200844%_))))
                          (_%$%g200516200841%_ _%$%g200519200844%_))))
                  (_%$%g200516200841%_ _%$%g200519200844%_))
              (_%$%g200516200841%_ _%$%g200519200844%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g200516200841%_
                                               _%$%g200519200844%_))
                                          (_%$%g200516200841%_
                                           _%$%g200519200844%_))
                                      (_%$%g200516200841%_
                                       _%$%g200519200844%_))))
                              (_%$%g200516200841%_ _%$%g200519200844%_))))
                      (_%$%g200516200841%_ _%$%g200519200844%_))
                  (_%$%g200516200841%_ _%$%g200519200844%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g200516200841%_
                                                   _%$%g200519200844%_))
                                              (_%$%g200516200841%_
                                               _%$%g200519200844%_))
                                          (_%$%g200516200841%_
                                           _%$%g200519200844%_))))
                                  (_%$%g200516200841%_ _%$%g200519200844%_))))
                          (_%$%g200516200841%_ _%$%g200519200844%_))
                      (_%$%g200516200841%_ _%$%g200519200844%_))))
              (_%$%g200516200841%_ _%$%g200519200844%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g200516200841%_
                                                   _%$%g200519200844%_))
                                              (_%$%g200516200841%_
                                               _%$%g200519200844%_))))
                                      (_%$%g200516200841%_
                                       _%$%g200519200844%_))))
                              (_%$%g200516200841%_ _%$%g200519200844%_))))
                      (_%$%g200516200841%_ _%$%g200519200844%_)))))
          (_%$%g200515201021%_ _%stx200514%_))))
    (define gxc#collect-type-setq%
      (lambda (_%self200436%_ _%stx200437%_)
        (let* ((_%$%g200439200456%_
                (lambda (_%$%g200440200453%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g200440200453%_)))
               (_%$%g200438200510%_
                (lambda (_%$%g200440200459%_)
                  (if (gx#stx-pair? _%$%g200440200459%_)
                      (let ((_%$%e200443200461%_
                             (gx#stx-e _%$%g200440200459%_)))
                        (let ((_%$%hd200444200464%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200443200461%_)))
                              (_%$%tl200445200466%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200443200461%_))))
                          (if (gx#stx-pair? _%$%tl200445200466%_)
                              (let ((_%$%e200446200469%_
                                     (gx#stx-e _%$%tl200445200466%_)))
                                (let ((_%$%hd200447200472%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200446200469%_)))
                                      (_%$%tl200448200474%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200446200469%_))))
                                  (if (gx#stx-pair? _%$%tl200448200474%_)
                                      (let ((_%$%e200449200477%_
                                             (gx#stx-e _%$%tl200448200474%_)))
                                        (let ((_%$%hd200450200480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200449200477%_)))
                                              (_%$%tl200451200482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200449200477%_))))
                                          (if (gx#stx-null?
                                               _%$%tl200451200482%_)
                                              ((lambda (_%$%g200441200485%_
                                                        _%$%g200442200486%_)
                                                 (let* ((_%sym200501%_
                                                         (gxc#identifier-symbol
                                                          _%$%g200442200486%_))
                                                        (_%bind-type200503%_
                                                         (gxc#optimizer-resolve-type
                                                          _%sym200501%_))
                                                        (_%expr-type200505%_
                                                         (gxc#apply-basic-expression-type
                                                          _%$%g200441200485%_))
                                                        (_%reduced-type200507%_
                                                         (gxc#greatest-common-type
                                                          _%stx200437%_
                                                          _%bind-type200503%_
                                                          _%expr-type200505%_)))
                                                   (if _%reduced-type200507%_
                                                       (gxc#optimizer-declare-type!
                                                        _%sym200501%_
                                                        _%reduced-type200507%_
                                                        (memq _%sym200501%_
                                                              (gxc#current-compile-local-env)))
                                                       '#!void)
                                                   (gxc#compile-e
                                                    _%self200436%_
                                                    _%$%g200441200485%_)))
                                               _%$%hd200450200480%_
                                               _%$%hd200447200472%_)
                                              (_%$%g200439200456%_
                                               _%$%g200440200459%_))))
                                      (_%$%g200439200456%_
                                       _%$%g200440200459%_))))
                              (_%$%g200439200456%_ _%$%g200440200459%_))))
                      (_%$%g200439200456%_ _%$%g200440200459%_)))))
          (_%$%g200438200510%_ _%stx200437%_))))
    (define gxc#apply-path-type-if%
      (lambda (_%self200036%_ _%stx200037%_)
        (let* ((_%$%g200041200130%_
                (lambda (_%$%g200042200127%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g200042200127%_)))
               (_%$%g200040200187%_
                (lambda (_%$%g200042200133%_)
                  (if (gx#stx-pair? _%$%g200042200133%_)
                      (let ((_%$%e200114200135%_
                             (gx#stx-e _%$%g200042200133%_)))
                        (let ((_%$%hd200115200138%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200114200135%_)))
                              (_%$%tl200116200140%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200114200135%_))))
                          (if (gx#stx-pair? _%$%tl200116200140%_)
                              (let ((_%$%e200117200143%_
                                     (gx#stx-e _%$%tl200116200140%_)))
                                (let ((_%$%hd200118200146%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200117200143%_)))
                                      (_%$%tl200119200148%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200117200143%_))))
                                  (if (gx#stx-pair? _%$%tl200119200148%_)
                                      (let ((_%$%e200120200151%_
                                             (gx#stx-e _%$%tl200119200148%_)))
                                        (let ((_%$%hd200121200154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200120200151%_)))
                                              (_%$%tl200122200156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200120200151%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl200122200156%_)
                                              (let ((_%$%e200123200159%_
                                                     (gx#stx-e
                                                      _%$%tl200122200156%_)))
                                                (let ((_%$%hd200124200162%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e200123200159%_)))
                                                      (_%$%tl200125200164%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e200123200159%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl200125200164%_)
                                                      ((lambda (_%$%g200111200167%_
                                                                _%$%g200112200168%_
                                                                _%$%g200113200169%_)
                                                         (gxc#apply-operands
                                                          _%self200036%_
                                                          _%stx200037%_))
                                                       _%$%hd200124200162%_
                                                       _%$%hd200121200154%_
                                                       _%$%hd200118200146%_)
                                                      (_%$%g200041200130%_
                                                       _%$%g200042200133%_))))
                                              (_%$%g200041200130%_
                                               _%$%g200042200133%_))))
                                      (_%$%g200041200130%_
                                       _%$%g200042200133%_))))
                              (_%$%g200041200130%_ _%$%g200042200133%_))))
                      (_%$%g200041200130%_ _%$%g200042200133%_))))
               (_%$%g200039200295%_
                (lambda (_%$%g200042200190%_)
                  (if (gx#stx-pair? _%$%g200042200190%_)
                      (let ((_%$%e200084200192%_
                             (gx#stx-e _%$%g200042200190%_)))
                        (let ((_%$%hd200085200195%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200084200192%_)))
                              (_%$%tl200086200197%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200084200192%_))))
                          (if (gx#stx-pair? _%$%tl200086200197%_)
                              (let ((_%$%e200087200200%_
                                     (gx#stx-e _%$%tl200086200197%_)))
                                (let ((_%$%hd200088200203%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200087200200%_)))
                                      (_%$%tl200089200205%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200087200200%_))))
                                  (if (gx#stx-pair? _%$%hd200088200203%_)
                                      (let ((_%$%e200090200208%_
                                             (gx#stx-e _%$%hd200088200203%_)))
                                        (let ((_%$%hd200091200211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200090200208%_)))
                                              (_%$%tl200092200213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200090200208%_))))
                                          (if (gx#identifier?
                                               _%$%hd200091200211%_)
                                              (if (gx#stx-eq?
                                                   '%#call
                                                   _%$%hd200091200211%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl200092200213%_)
                                                      (let ((_%$%e200093200216%_
                                                             (gx#stx-e
                                                              _%$%tl200092200213%_)))
                                                        (let ((_%$%hd200094200219%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e200093200216%_)))
                      (_%$%tl200095200221%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e200093200216%_))))
                  (if (gx#stx-pair? _%$%hd200094200219%_)
                      (let ((_%$%e200096200224%_
                             (gx#stx-e _%$%hd200094200219%_)))
                        (let ((_%$%hd200097200227%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200096200224%_)))
                              (_%$%tl200098200229%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200096200224%_))))
                          (if (gx#identifier? _%$%hd200097200227%_)
                              (if (gx#stx-eq? '%#ref _%$%hd200097200227%_)
                                  (if (gx#stx-pair? _%$%tl200098200229%_)
                                      (let ((_%$%e200099200232%_
                                             (gx#stx-e _%$%tl200098200229%_)))
                                        (let ((_%$%hd200100200235%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200099200232%_)))
                                              (_%$%tl200101200237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200099200232%_))))
                                          (if (gx#stx-null?
                                               _%$%tl200101200237%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl200095200221%_)
                                                  (let ((_%$%e200102200240%_
                                                         (gx#stx-e
                                                          _%$%tl200095200221%_)))
                                                    (let ((_%$%hd200103200243%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e200102200240%_)))
                                                          (_%$%tl200104200245%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e200102200240%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl200104200245%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl200089200205%_)
                                                              (let ((_%$%e200105200248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl200089200205%_)))
                        (let ((_%$%hd200106200251%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200105200248%_)))
                              (_%$%tl200107200253%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200105200248%_))))
                          (if (gx#stx-pair? _%$%tl200107200253%_)
                              (let ((_%$%e200108200256%_
                                     (gx#stx-e _%$%tl200107200253%_)))
                                (let ((_%$%hd200109200259%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200108200256%_)))
                                      (_%$%tl200110200261%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200108200256%_))))
                                  (if (gx#stx-null? _%$%tl200110200261%_)
                                      ((lambda (_%$%g200080200264%_
                                                _%$%g200081200265%_
                                                _%$%g200082200266%_
                                                _%$%g200083200267%_)
                                         (if (gxc#runtime-identifier=?
                                              _%$%g200083200267%_
                                              'not)
                                             (gxc#apply-path-type-if%
                                              _%self200036%_
                                              (gxc#xform-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '%#if)
                                                     (cons _%$%g200082200266%_
                                                           (cons _%$%g200080200264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%g200081200265%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx200037%_))
                                             (_%$%g200040200187%_
                                              _%$%g200042200190%_)))
                                       _%$%hd200109200259%_
                                       _%$%hd200106200251%_
                                       _%$%hd200103200243%_
                                       _%$%hd200100200235%_)
                                      (_%$%g200040200187%_
                                       _%$%g200042200190%_))))
                              (_%$%g200040200187%_ _%$%g200042200190%_))))
                      (_%$%g200040200187%_ _%$%g200042200190%_))
                  (_%$%g200040200187%_ _%$%g200042200190%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g200040200187%_
                                                   _%$%g200042200190%_))
                                              (_%$%g200040200187%_
                                               _%$%g200042200190%_))))
                                      (_%$%g200040200187%_
                                       _%$%g200042200190%_))
                                  (_%$%g200040200187%_ _%$%g200042200190%_))
                              (_%$%g200040200187%_ _%$%g200042200190%_))))
                      (_%$%g200040200187%_ _%$%g200042200190%_))))
              (_%$%g200040200187%_ _%$%g200042200190%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g200040200187%_
                                                   _%$%g200042200190%_))
                                              (_%$%g200040200187%_
                                               _%$%g200042200190%_))))
                                      (_%$%g200040200187%_
                                       _%$%g200042200190%_))))
                              (_%$%g200040200187%_ _%$%g200042200190%_))))
                      (_%$%g200040200187%_ _%$%g200042200190%_))))
               (_%$%g200038200433%_
                (lambda (_%$%g200042200298%_)
                  (if (gx#stx-pair? _%$%g200042200298%_)
                      (let ((_%$%e200047200300%_
                             (gx#stx-e _%$%g200042200298%_)))
                        (let ((_%$%hd200048200303%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200047200300%_)))
                              (_%$%tl200049200305%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200047200300%_))))
                          (if (gx#stx-pair? _%$%tl200049200305%_)
                              (let ((_%$%e200050200308%_
                                     (gx#stx-e _%$%tl200049200305%_)))
                                (let ((_%$%hd200051200311%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200050200308%_)))
                                      (_%$%tl200052200313%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200050200308%_))))
                                  (if (gx#stx-pair? _%$%hd200051200311%_)
                                      (let ((_%$%e200053200316%_
                                             (gx#stx-e _%$%hd200051200311%_)))
                                        (let ((_%$%hd200054200319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200053200316%_)))
                                              (_%$%tl200055200321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200053200316%_))))
                                          (if (gx#identifier?
                                               _%$%hd200054200319%_)
                                              (if (gx#stx-eq?
                                                   '%#call
                                                   _%$%hd200054200319%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl200055200321%_)
                                                      (let ((_%$%e200056200324%_
                                                             (gx#stx-e
                                                              _%$%tl200055200321%_)))
                                                        (let ((_%$%hd200057200327%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e200056200324%_)))
                      (_%$%tl200058200329%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e200056200324%_))))
                  (if (gx#stx-pair? _%$%hd200057200327%_)
                      (let ((_%$%e200059200332%_
                             (gx#stx-e _%$%hd200057200327%_)))
                        (let ((_%$%hd200060200335%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200059200332%_)))
                              (_%$%tl200061200337%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200059200332%_))))
                          (if (gx#identifier? _%$%hd200060200335%_)
                              (if (gx#stx-eq? '%#ref _%$%hd200060200335%_)
                                  (if (gx#stx-pair? _%$%tl200061200337%_)
                                      (let ((_%$%e200062200340%_
                                             (gx#stx-e _%$%tl200061200337%_)))
                                        (let ((_%$%hd200063200343%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200062200340%_)))
                                              (_%$%tl200064200345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200062200340%_))))
                                          (if (gx#stx-null?
                                               _%$%tl200064200345%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl200058200329%_)
                                                  (let ((_%$%e200065200348%_
                                                         (gx#stx-e
                                                          _%$%tl200058200329%_)))
                                                    (let ((_%$%hd200066200351%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e200065200348%_)))
                                                          (_%$%tl200067200353%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e200065200348%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%hd200066200351%_)
                                                          (let ((_%$%e200068200356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd200066200351%_)))
                    (let ((_%$%hd200069200359%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e200068200356%_)))
                          (_%$%tl200070200361%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e200068200356%_))))
                      (if (gx#identifier? _%$%hd200069200359%_)
                          (if (gx#stx-eq? '%#ref _%$%hd200069200359%_)
                              (if (gx#stx-pair? _%$%tl200070200361%_)
                                  (let ((_%$%e200071200364%_
                                         (gx#stx-e _%$%tl200070200361%_)))
                                    (let ((_%$%hd200072200367%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e200071200364%_)))
                                          (_%$%tl200073200369%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e200071200364%_))))
                                      (if (gx#stx-null? _%$%tl200073200369%_)
                                          (if (gx#stx-null?
                                               _%$%tl200067200353%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl200052200313%_)
                                                  (let ((_%$%e200074200372%_
                                                         (gx#stx-e
                                                          _%$%tl200052200313%_)))
                                                    (let ((_%$%hd200075200375%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e200074200372%_)))
                                                          (_%$%tl200076200377%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e200074200372%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl200076200377%_)
                                                          (let ((_%$%e200077200380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl200076200377%_)))
                    (let ((_%$%hd200078200383%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e200077200380%_)))
                          (_%$%tl200079200385%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e200077200380%_))))
                      (if (gx#stx-null? _%$%tl200079200385%_)
                          ((lambda (_%$%g200043200388%_
                                    _%$%g200044200389%_
                                    _%$%g200045200390%_
                                    _%$%g200046200391%_)
                             (let ((_%$e200423%_
                                    (gxc#optimizer-lookup-type
                                     (gxc#identifier-symbol
                                      _%$%g200046200391%_))))
                               (if _%$e200423%_
                                   ((lambda (_%pred-type200426%_)
                                      (if (or (gxc#!predicate?
                                               _%pred-type200426%_)
                                              (gxc#!primitive-predicate?
                                               _%pred-type200426%_))
                                          (begin
                                            (call-with-parameters
                                             (lambda ()
                                               (gxc#compile-e
                                                _%self200036%_
                                                _%$%g200044200389%_))
                                             gxc#current-compile-path-type
                                             (cons (cons (gxc#identifier-symbol
                                                          _%$%g200045200390%_)
                                                         (gxc#optimizer-resolve-class
                                                          _%stx200037%_
                                                          (gxc#!type-id
                                                           _%pred-type200426%_)))
                                                   (gxc#current-compile-path-type)))
                                            (gxc#compile-e
                                             _%self200036%_
                                             _%$%g200043200388%_))
                                          (gxc#apply-operands
                                           _%self200036%_
                                           _%stx200037%_)))
                                    _%$e200423%_)
                                   (gxc#apply-operands
                                    _%self200036%_
                                    _%stx200037%_))))
                           _%$%hd200078200383%_
                           _%$%hd200075200375%_
                           _%$%hd200072200367%_
                           _%$%hd200063200343%_)
                          (_%$%g200039200295%_ _%$%g200042200298%_))))
                  (_%$%g200039200295%_ _%$%g200042200298%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g200039200295%_
                                                   _%$%g200042200298%_))
                                              (_%$%g200039200295%_
                                               _%$%g200042200298%_))
                                          (_%$%g200039200295%_
                                           _%$%g200042200298%_))))
                                  (_%$%g200039200295%_ _%$%g200042200298%_))
                              (_%$%g200039200295%_ _%$%g200042200298%_))
                          (_%$%g200039200295%_ _%$%g200042200298%_))))
                  (_%$%g200039200295%_ _%$%g200042200298%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g200039200295%_
                                                   _%$%g200042200298%_))
                                              (_%$%g200039200295%_
                                               _%$%g200042200298%_))))
                                      (_%$%g200039200295%_
                                       _%$%g200042200298%_))
                                  (_%$%g200039200295%_ _%$%g200042200298%_))
                              (_%$%g200039200295%_ _%$%g200042200298%_))))
                      (_%$%g200039200295%_ _%$%g200042200298%_))))
              (_%$%g200039200295%_ _%$%g200042200298%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g200039200295%_
                                                   _%$%g200042200298%_))
                                              (_%$%g200039200295%_
                                               _%$%g200042200298%_))))
                                      (_%$%g200039200295%_
                                       _%$%g200042200298%_))))
                              (_%$%g200039200295%_ _%$%g200042200298%_))))
                      (_%$%g200039200295%_ _%$%g200042200298%_)))))
          (_%$%g200038200433%_ _%stx200037%_))))
    (define gxc#refine-type-define-values%
      (lambda (_%self199895%_ _%stx199896%_)
        (let* ((_%$%g199899199929%_
                (lambda (_%$%g199900199926%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g199900199926%_)))
               (_%$%g199898199972%_
                (lambda (_%$%g199900199932%_)
                  (if (gx#stx-pair? _%$%g199900199932%_)
                      (let ((_%$%e199916199934%_
                             (gx#stx-e _%$%g199900199932%_)))
                        (let ((_%$%hd199917199937%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199916199934%_)))
                              (_%$%tl199918199939%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199916199934%_))))
                          (if (gx#stx-pair? _%$%tl199918199939%_)
                              (let ((_%$%e199919199942%_
                                     (gx#stx-e _%$%tl199918199939%_)))
                                (let ((_%$%hd199920199945%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199919199942%_)))
                                      (_%$%tl199921199947%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199919199942%_))))
                                  (if (gx#stx-pair? _%$%tl199921199947%_)
                                      (let ((_%$%e199922199950%_
                                             (gx#stx-e _%$%tl199921199947%_)))
                                        (let ((_%$%hd199923199953%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e199922199950%_)))
                                              (_%$%tl199924199955%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e199922199950%_))))
                                          (if (gx#stx-null?
                                               _%$%tl199924199955%_)
                                              ((lambda (_%$%g199915199958%_)
                                                 (gxc#compile-e
                                                  _%self199895%_
                                                  _%$%g199915199958%_))
                                               _%$%hd199923199953%_)
                                              (_%$%g199899199929%_
                                               _%$%g199900199932%_))))
                                      (_%$%g199899199929%_
                                       _%$%g199900199932%_))))
                              (_%$%g199899199929%_ _%$%g199900199932%_))))
                      (_%$%g199899199929%_ _%$%g199900199932%_))))
               (_%$%g199897200033%_
                (lambda (_%$%g199900199975%_)
                  (if (gx#stx-pair? _%$%g199900199975%_)
                      (let ((_%$%e199903199977%_
                             (gx#stx-e _%$%g199900199975%_)))
                        (let ((_%$%hd199904199980%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199903199977%_)))
                              (_%$%tl199905199982%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199903199977%_))))
                          (if (gx#stx-pair? _%$%tl199905199982%_)
                              (let ((_%$%e199906199985%_
                                     (gx#stx-e _%$%tl199905199982%_)))
                                (let ((_%$%hd199907199988%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199906199985%_)))
                                      (_%$%tl199908199990%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199906199985%_))))
                                  (if (gx#stx-pair? _%$%hd199907199988%_)
                                      (let ((_%$%e199909199993%_
                                             (gx#stx-e _%$%hd199907199988%_)))
                                        (let ((_%$%hd199910199996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e199909199993%_)))
                                              (_%$%tl199911199998%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e199909199993%_))))
                                          (if (gx#stx-null?
                                               _%$%tl199911199998%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl199908199990%_)
                                                  (let ((_%$%e199912200001%_
                                                         (gx#stx-e
                                                          _%$%tl199908199990%_)))
                                                    (let ((_%$%hd199913200004%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e199912200001%_)))
                                                          (_%$%tl199914200006%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e199912200001%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl199914200006%_)
                                                          ((lambda (_%$%g199901200009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g199902200010%_)
                     (if (gx#identifier? _%$%g199902200010%_)
                         (let ((_%sym200026%_
                                (gxc#identifier-symbol _%$%g199902200010%_)))
                           (if (hash-get
                                (gxc#current-compile-mutators)
                                _%sym200026%_)
                               '#!void
                               (let ((_%$%type200027200029%_
                                      (gxc#apply-basic-expression-type
                                       _%$%g199901200009%_)))
                                 (if _%$%type200027200029%_
                                     (let ((_%type200031%_
                                            _%$%type200027200029%_))
                                       (if (gxc#!class-meta? _%type200031%_)
                                           '#!void
                                           (gxc#optimizer-declare-type!
                                            _%sym200026%_
                                            _%type200031%_)))
                                     '#f)))
                           (gxc#compile-e _%self199895%_ _%$%g199901200009%_))
                         (_%$%g199898199972%_ _%$%g199900199975%_)))
                   _%$%hd199913200004%_
                   _%$%hd199910199996%_)
                  (_%$%g199898199972%_ _%$%g199900199975%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g199898199972%_
                                                   _%$%g199900199975%_))
                                              (_%$%g199898199972%_
                                               _%$%g199900199975%_))))
                                      (_%$%g199898199972%_
                                       _%$%g199900199975%_))))
                              (_%$%g199898199972%_ _%$%g199900199975%_))))
                      (_%$%g199898199972%_ _%$%g199900199975%_)))))
          (_%$%g199897200033%_ _%stx199896%_))))
    (define gxc#refine-type-let-values%
      (lambda (_%self199672%_ _%stx199673%_)
        (letrec ((_%collect-e199675%_
                  (lambda (_%hd199840%_ _%expr199841%_)
                    (let* ((_%$%g199844199854%_
                            (lambda (_%$%g199845199851%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g199845199851%_)))
                           (_%$%g199843199861%_
                            (lambda (_%$%g199845199857%_)
                              ((lambda () (void)))))
                           (_%$%g199842199892%_
                            (lambda (_%$%g199845199864%_)
                              (if (gx#stx-pair? _%$%g199845199864%_)
                                  (let ((_%$%e199847199866%_
                                         (gx#stx-e _%$%g199845199864%_)))
                                    (let ((_%$%hd199848199869%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e199847199866%_)))
                                          (_%$%tl199849199871%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e199847199866%_))))
                                      (if (gx#stx-null? _%$%tl199849199871%_)
                                          ((lambda (_%$%g199846199874%_)
                                             (if (gx#identifier?
                                                  _%$%g199846199874%_)
                                                 (let ((_%sym199885%_
                                                        (gxc#identifier-symbol
                                                         _%$%g199846199874%_)))
                                                   (if (hash-get
                                                        (gxc#current-compile-mutators)
                                                        _%sym199885%_)
                                                       '#!void
                                                       (let ((_%$%type199886199888%_
                                                              (gxc#apply-basic-expression-type
                                                               _%expr199841%_)))
                                                         (if _%$%type199886199888%_
                                                             (let ((_%type199890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%type199886199888%_))
                       (if (gxc#!class-meta? _%type199890%_)
                           '#!void
                           (gxc#optimizer-declare-type!
                            _%sym199885%_
                            _%type199890%_
                            '#t)))
                     '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g199843199861%_
                                                  _%$%g199845199864%_)))
                                           _%$%hd199848199869%_)
                                          (_%$%g199843199861%_
                                           _%$%g199845199864%_))))
                                  (_%$%g199843199861%_ _%$%g199845199864%_)))))
                      (_%$%g199842199892%_ _%hd199840%_)))))
          (let* ((_%$%g199677199712%_
                  (lambda (_%$%g199678199709%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199678199709%_)))
                 (_%$%g199676199837%_
                  (lambda (_%$%g199678199715%_)
                    (if (gx#stx-pair? _%$%g199678199715%_)
                        (let ((_%$%e199682199717%_
                               (gx#stx-e _%$%g199678199715%_)))
                          (let ((_%$%hd199683199720%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e199682199717%_)))
                                (_%$%tl199684199722%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e199682199717%_))))
                            (if (gx#stx-pair? _%$%tl199684199722%_)
                                (let ((_%$%e199685199725%_
                                       (gx#stx-e _%$%tl199684199722%_)))
                                  (let ((_%$%hd199686199728%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e199685199725%_)))
                                        (_%$%tl199687199730%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e199685199725%_))))
                                    (if (gx#stx-pair/null?
                                         _%$%hd199686199728%_)
                                        (let ((_g202619_
                                               (gx#syntax-split-splice
                                                _%$%hd199686199728%_
                                                '0)))
                                          (begin
                                            (let ((_g202620_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g202619_)
                                                         (##values-length
                                                          _g202619_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g202620_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g202620_)))
                                            (let ((_%$%target199688199733%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g202619_
                                                      0)))
                                                  (_%$%tl199690199735%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g202619_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%$%tl199690199735%_)
                                                  (letrec ((_%$%loop199691199738%_
                                                            (lambda (_%$%hd199689199741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%expr199695199743%_
                             _%$%hd199696199744%_)
                      (if (gx#stx-pair? _%$%hd199689199741%_)
                          (let ((_%$%e199692199746%_
                                 (gx#stx-e _%$%hd199689199741%_)))
                            (let ((_%$%lp-hd199693199749%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e199692199746%_)))
                                  (_%$%lp-tl199694199751%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e199692199746%_))))
                              (if (gx#stx-pair? _%$%lp-hd199693199749%_)
                                  (let ((_%$%e199699199754%_
                                         (gx#stx-e _%$%lp-hd199693199749%_)))
                                    (let ((_%$%hd199700199757%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e199699199754%_)))
                                          (_%$%tl199701199759%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e199699199754%_))))
                                      (if (gx#stx-pair? _%$%tl199701199759%_)
                                          (let ((_%$%e199702199762%_
                                                 (gx#stx-e
                                                  _%$%tl199701199759%_)))
                                            (let ((_%$%hd199703199765%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e199702199762%_)))
                                                  (_%$%tl199704199767%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e199702199762%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl199704199767%_)
                                                  (_%$%loop199691199738%_
                                                   _%$%lp-tl199694199751%_
                                                   (cons _%$%hd199703199765%_
                                                         _%$%expr199695199743%_)
                                                   (cons _%$%hd199700199757%_
                                                         _%$%hd199696199744%_))
                                                  (_%$%g199677199712%_
                                                   _%$%g199678199715%_))))
                                          (_%$%g199677199712%_
                                           _%$%g199678199715%_))))
                                  (_%$%g199677199712%_ _%$%g199678199715%_))))
                          (let ((_%$%expr199697199770%_
                                 (reverse _%$%expr199695199743%_))
                                (_%$%hd199698199771%_
                                 (reverse _%$%hd199696199744%_)))
                            (if (gx#stx-pair? _%$%tl199687199730%_)
                                (let ((_%$%e199705199773%_
                                       (gx#stx-e _%$%tl199687199730%_)))
                                  (let ((_%$%hd199706199776%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e199705199773%_)))
                                        (_%$%tl199707199778%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e199705199773%_))))
                                    (if (gx#stx-null? _%$%tl199707199778%_)
                                        ((lambda (_%$%g199679199781%_
                                                  _%$%g199680199782%_
                                                  _%$%g199681199783%_)
                                           (for-each
                                            _%collect-e199675%_
                                            (foldr (lambda (_%$%g199803199806%_
                                                            _%$%g199804199808%_)
                                                     (cons _%$%g199803199806%_
                                                           _%$%g199804199808%_))
                                                   '()
                                                   _%$%g199681199783%_)
                                            (foldr (lambda (_%$%g199810199813%_
                                                            _%$%g199811199815%_)
                                                     (cons _%$%g199810199813%_
                                                           _%$%g199811199815%_))
                                                   '()
                                                   _%$%g199680199782%_))
                                           (for-each
                                            (lambda (_%$%g199817199819%_)
                                              (gxc#compile-e
                                               _%self199672%_
                                               _%$%g199817199819%_))
                                            (foldr (lambda (_%$%g199821199824%_
                                                            _%$%g199822199826%_)
                                                     (cons _%$%g199821199824%_
                                                           _%$%g199822199826%_))
                                                   '()
                                                   _%$%g199680199782%_))
                                           (call-with-parameters
                                            (lambda ()
                                              (gxc#compile-e
                                               _%self199672%_
                                               _%$%g199679199781%_))
                                            gxc#current-compile-local-env
                                            (gxc#xform-let-locals
                                             (foldr (lambda (_%$%g199829199832%_
                                                             _%$%g199830199834%_)
                                                      (cons _%$%g199829199832%_
                                                            _%$%g199830199834%_))
                                                    '()
                                                    _%$%g199681199783%_))))
                                         _%$%hd199706199776%_
                                         _%$%expr199697199770%_
                                         _%$%hd199698199771%_)
                                        (_%$%g199677199712%_
                                         _%$%g199678199715%_))))
                                (_%$%g199677199712%_ _%$%g199678199715%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop199691199738%_
                                                     _%$%target199688199733%_
                                                     '()
                                                     '()))
                                                  (_%$%g199677199712%_
                                                   _%$%g199678199715%_)))))
                                        (_%$%g199677199712%_
                                         _%$%g199678199715%_))))
                                (_%$%g199677199712%_ _%$%g199678199715%_))))
                        (_%$%g199677199712%_ _%$%g199678199715%_)))))
            (_%$%g199676199837%_ _%stx199673%_)))))
    (define gxc#refine-type-letrec-values%
      (lambda (_%self199449%_ _%stx199450%_)
        (letrec ((_%collect-e199452%_
                  (lambda (_%hd199617%_ _%expr199618%_)
                    (let* ((_%$%g199621199631%_
                            (lambda (_%$%g199622199628%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g199622199628%_)))
                           (_%$%g199620199638%_
                            (lambda (_%$%g199622199634%_)
                              ((lambda () (void)))))
                           (_%$%g199619199669%_
                            (lambda (_%$%g199622199641%_)
                              (if (gx#stx-pair? _%$%g199622199641%_)
                                  (let ((_%$%e199624199643%_
                                         (gx#stx-e _%$%g199622199641%_)))
                                    (let ((_%$%hd199625199646%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e199624199643%_)))
                                          (_%$%tl199626199648%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e199624199643%_))))
                                      (if (gx#stx-null? _%$%tl199626199648%_)
                                          ((lambda (_%$%g199623199651%_)
                                             (if (gx#identifier?
                                                  _%$%g199623199651%_)
                                                 (let ((_%sym199662%_
                                                        (gxc#identifier-symbol
                                                         _%$%g199623199651%_)))
                                                   (if (hash-get
                                                        (gxc#current-compile-mutators)
                                                        _%sym199662%_)
                                                       '#!void
                                                       (let ((_%$%type199663199665%_
                                                              (gxc#apply-basic-expression-type
                                                               _%expr199618%_)))
                                                         (if _%$%type199663199665%_
                                                             (let ((_%type199667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%type199663199665%_))
                       (if (gxc#!class-meta? _%type199667%_)
                           '#!void
                           (gxc#optimizer-declare-type!
                            _%sym199662%_
                            _%type199667%_
                            '#t)))
                     '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g199620199638%_
                                                  _%$%g199622199641%_)))
                                           _%$%hd199625199646%_)
                                          (_%$%g199620199638%_
                                           _%$%g199622199641%_))))
                                  (_%$%g199620199638%_ _%$%g199622199641%_)))))
                      (_%$%g199619199669%_ _%hd199617%_)))))
          (let* ((_%$%g199454199489%_
                  (lambda (_%$%g199455199486%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199455199486%_)))
                 (_%$%g199453199614%_
                  (lambda (_%$%g199455199492%_)
                    (if (gx#stx-pair? _%$%g199455199492%_)
                        (let ((_%$%e199459199494%_
                               (gx#stx-e _%$%g199455199492%_)))
                          (let ((_%$%hd199460199497%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e199459199494%_)))
                                (_%$%tl199461199499%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e199459199494%_))))
                            (if (gx#stx-pair? _%$%tl199461199499%_)
                                (let ((_%$%e199462199502%_
                                       (gx#stx-e _%$%tl199461199499%_)))
                                  (let ((_%$%hd199463199505%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e199462199502%_)))
                                        (_%$%tl199464199507%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e199462199502%_))))
                                    (if (gx#stx-pair/null?
                                         _%$%hd199463199505%_)
                                        (let ((_g202621_
                                               (gx#syntax-split-splice
                                                _%$%hd199463199505%_
                                                '0)))
                                          (begin
                                            (let ((_g202622_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g202621_)
                                                         (##values-length
                                                          _g202621_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g202622_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g202622_)))
                                            (let ((_%$%target199465199510%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g202621_
                                                      0)))
                                                  (_%$%tl199467199512%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g202621_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%$%tl199467199512%_)
                                                  (letrec ((_%$%loop199468199515%_
                                                            (lambda (_%$%hd199466199518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%expr199472199520%_
                             _%$%hd199473199521%_)
                      (if (gx#stx-pair? _%$%hd199466199518%_)
                          (let ((_%$%e199469199523%_
                                 (gx#stx-e _%$%hd199466199518%_)))
                            (let ((_%$%lp-hd199470199526%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e199469199523%_)))
                                  (_%$%lp-tl199471199528%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e199469199523%_))))
                              (if (gx#stx-pair? _%$%lp-hd199470199526%_)
                                  (let ((_%$%e199476199531%_
                                         (gx#stx-e _%$%lp-hd199470199526%_)))
                                    (let ((_%$%hd199477199534%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e199476199531%_)))
                                          (_%$%tl199478199536%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e199476199531%_))))
                                      (if (gx#stx-pair? _%$%tl199478199536%_)
                                          (let ((_%$%e199479199539%_
                                                 (gx#stx-e
                                                  _%$%tl199478199536%_)))
                                            (let ((_%$%hd199480199542%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e199479199539%_)))
                                                  (_%$%tl199481199544%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e199479199539%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl199481199544%_)
                                                  (_%$%loop199468199515%_
                                                   _%$%lp-tl199471199528%_
                                                   (cons _%$%hd199480199542%_
                                                         _%$%expr199472199520%_)
                                                   (cons _%$%hd199477199534%_
                                                         _%$%hd199473199521%_))
                                                  (_%$%g199454199489%_
                                                   _%$%g199455199492%_))))
                                          (_%$%g199454199489%_
                                           _%$%g199455199492%_))))
                                  (_%$%g199454199489%_ _%$%g199455199492%_))))
                          (let ((_%$%expr199474199547%_
                                 (reverse _%$%expr199472199520%_))
                                (_%$%hd199475199548%_
                                 (reverse _%$%hd199473199521%_)))
                            (if (gx#stx-pair? _%$%tl199464199507%_)
                                (let ((_%$%e199482199550%_
                                       (gx#stx-e _%$%tl199464199507%_)))
                                  (let ((_%$%hd199483199553%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e199482199550%_)))
                                        (_%$%tl199484199555%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e199482199550%_))))
                                    (if (gx#stx-null? _%$%tl199484199555%_)
                                        ((lambda (_%$%g199456199558%_
                                                  _%$%g199457199559%_
                                                  _%$%g199458199560%_)
                                           (call-with-parameters
                                            (lambda ()
                                              (for-each
                                               _%collect-e199452%_
                                               (foldr (lambda (_%$%g199581199584%_
                                                               _%$%g199582199586%_)
                                                        (cons _%$%g199581199584%_
                                                              _%$%g199582199586%_))
                                                      '()
                                                      _%$%g199458199560%_)
                                               (foldr (lambda (_%$%g199588199591%_
                                                               _%$%g199589199593%_)
                                                        (cons _%$%g199588199591%_
                                                              _%$%g199589199593%_))
                                                      '()
                                                      _%$%g199457199559%_))
                                              (for-each
                                               (lambda (_%$%g199595199597%_)
                                                 (gxc#compile-e
                                                  _%self199449%_
                                                  _%$%g199595199597%_))
                                               (foldr (lambda (_%$%g199599199602%_
                                                               _%$%g199600199604%_)
                                                        (cons _%$%g199599199602%_
                                                              _%$%g199600199604%_))
                                                      '()
                                                      _%$%g199457199559%_))
                                              (gxc#compile-e
                                               _%self199449%_
                                               _%$%g199456199558%_))
                                            gxc#current-compile-local-env
                                            (gxc#xform-let-locals
                                             (foldr (lambda (_%$%g199606199609%_
                                                             _%$%g199607199611%_)
                                                      (cons _%$%g199606199609%_
                                                            _%$%g199607199611%_))
                                                    '()
                                                    _%$%g199458199560%_))))
                                         _%$%hd199483199553%_
                                         _%$%expr199474199547%_
                                         _%$%hd199475199548%_)
                                        (_%$%g199454199489%_
                                         _%$%g199455199492%_))))
                                (_%$%g199454199489%_ _%$%g199455199492%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop199468199515%_
                                                     _%$%target199465199510%_
                                                     '()
                                                     '()))
                                                  (_%$%g199454199489%_
                                                   _%$%g199455199492%_)))))
                                        (_%$%g199454199489%_
                                         _%$%g199455199492%_))))
                                (_%$%g199454199489%_ _%$%g199455199492%_))))
                        (_%$%g199454199489%_ _%$%g199455199492%_)))))
            (_%$%g199453199614%_ _%stx199450%_)))))
    (define gxc#refine-type-lambda%
      (lambda (_%self199393%_ _%stx199394%_)
        (let* ((_%$%g199396199410%_
                (lambda (_%$%g199397199407%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g199397199407%_)))
               (_%$%g199395199446%_
                (lambda (_%$%g199397199413%_)
                  (if (gx#stx-pair? _%$%g199397199413%_)
                      (let ((_%$%e199400199415%_
                             (gx#stx-e _%$%g199397199413%_)))
                        (let ((_%$%hd199401199418%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199400199415%_)))
                              (_%$%tl199402199420%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199400199415%_))))
                          (if (gx#stx-pair? _%$%tl199402199420%_)
                              (let ((_%$%e199403199423%_
                                     (gx#stx-e _%$%tl199402199420%_)))
                                (let ((_%$%hd199404199426%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199403199423%_)))
                                      (_%$%tl199405199428%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199403199423%_))))
                                  ((lambda (_%$%g199398199431%_
                                            _%$%g199399199432%_)
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#apply-body-lambda%
                                         _%self199393%_
                                         _%stx199394%_))
                                      gxc#current-compile-local-env
                                      (gxc#xform-let-locals
                                       _%$%g199399199432%_)))
                                   _%$%tl199405199428%_
                                   _%$%hd199404199426%_)))
                              (_%$%g199396199410%_ _%$%g199397199413%_))))
                      (_%$%g199396199410%_ _%$%g199397199413%_)))))
          (_%$%g199395199446%_ _%stx199394%_))))
    (define gxc#refine-type-case-lambda%
      (lambda (_%self199224%_ _%stx199225%_)
        (let* ((_%$%g199227199255%_
                (lambda (_%$%g199228199252%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g199228199252%_)))
               (_%$%g199226199390%_
                (lambda (_%$%g199228199258%_)
                  (if (gx#stx-pair? _%$%g199228199258%_)
                      (let ((_%$%e199231199260%_
                             (gx#stx-e _%$%g199228199258%_)))
                        (let ((_%$%hd199232199263%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199231199260%_)))
                              (_%$%tl199233199265%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199231199260%_))))
                          (if (gx#stx-pair/null? _%$%tl199233199265%_)
                              (let ((_g202623_
                                     (gx#syntax-split-splice
                                      _%$%tl199233199265%_
                                      '0)))
                                (begin
                                  (let ((_g202624_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202623_)
                                               (##values-length _g202623_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202624_ 2)))
                                        (error "Context expects 2 values"
                                               _g202624_)))
                                  (let ((_%$%target199234199268%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g202623_ 0)))
                                        (_%$%tl199236199270%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g202623_ 1))))
                                    (if (gx#stx-null? _%$%tl199236199270%_)
                                        (letrec ((_%$%loop199237199273%_
                                                  (lambda (_%$%hd199235199276%_
                                                           _%$%body199241199278%_
                                                           _%$%hd199242199279%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd199235199276%_)
                                                        (let ((_%$%e199238199281%_
                                                               (gx#stx-e
                                                                _%$%hd199235199276%_)))
                                                          (let ((_%$%lp-hd199239199284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e199238199281%_)))
                        (_%$%lp-tl199240199286%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e199238199281%_))))
                    (if (gx#stx-pair? _%$%lp-hd199239199284%_)
                        (let ((_%$%e199245199289%_
                               (gx#stx-e _%$%lp-hd199239199284%_)))
                          (let ((_%$%hd199246199292%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e199245199289%_)))
                                (_%$%tl199247199294%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e199245199289%_))))
                            (if (gx#stx-pair? _%$%tl199247199294%_)
                                (let ((_%$%e199248199297%_
                                       (gx#stx-e _%$%tl199247199294%_)))
                                  (let ((_%$%hd199249199300%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e199248199297%_)))
                                        (_%$%tl199250199302%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e199248199297%_))))
                                    (if (gx#stx-null? _%$%tl199250199302%_)
                                        (_%$%loop199237199273%_
                                         _%$%lp-tl199240199286%_
                                         (cons _%$%hd199249199300%_
                                               _%$%body199241199278%_)
                                         (cons _%$%hd199246199292%_
                                               _%$%hd199242199279%_))
                                        (_%$%g199227199255%_
                                         _%$%g199228199258%_))))
                                (_%$%g199227199255%_ _%$%g199228199258%_))))
                        (_%$%g199227199255%_ _%$%g199228199258%_))))
                (let ((_%$%body199243199305%_ (reverse _%$%body199241199278%_))
                      (_%$%hd199244199306%_ (reverse _%$%hd199242199279%_)))
                  ((lambda (_%$%g199229199308%_ _%$%g199230199309%_)
                     (for-each
                      (lambda (_%clause199324%_)
                        (let* ((_%$%g199326199340%_
                                (lambda (_%$%g199327199337%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g199327199337%_)))
                               (_%$%g199325199377%_
                                (lambda (_%$%g199327199343%_)
                                  (if (gx#stx-pair? _%$%g199327199343%_)
                                      (let ((_%$%e199330199345%_
                                             (gx#stx-e _%$%g199327199343%_)))
                                        (let ((_%$%hd199331199348%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e199330199345%_)))
                                              (_%$%tl199332199350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e199330199345%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl199332199350%_)
                                              (let ((_%$%e199333199353%_
                                                     (gx#stx-e
                                                      _%$%tl199332199350%_)))
                                                (let ((_%$%hd199334199356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e199333199353%_)))
                                                      (_%$%tl199335199358%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e199333199353%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl199335199358%_)
                                                      ((lambda (_%$%g199328199361%_
                                                                _%$%g199329199362%_)
                                                         (call-with-parameters
                                                          (lambda ()
                                                            (gxc#apply-body-case-lambda%
                                                             _%self199224%_
                                                             _%stx199225%_))
                                                          gxc#current-compile-local-env
                                                          (gxc#xform-let-locals
                                                           _%$%g199329199362%_)))
                                                       _%$%hd199334199356%_
                                                       _%$%hd199331199348%_)
                                                      (_%$%g199326199340%_
                                                       _%$%g199327199343%_))))
                                              (_%$%g199326199340%_
                                               _%$%g199327199343%_))))
                                      (_%$%g199326199340%_
                                       _%$%g199327199343%_)))))
                          (_%$%g199325199377%_ _%clause199324%_)))
                      (begin
                        (gx#syntax-check-splice-targets
                         _%$%g199229199308%_
                         _%$%g199230199309%_)
                        (foldr (lambda (_%$%g199379199383%_
                                        _%$%g199380199385%_
                                        _%$%g199381199387%_)
                                 (cons (cons _%$%g199380199385%_
                                             (cons _%$%g199379199383%_ '()))
                                       _%$%g199381199387%_))
                               '()
                               _%$%g199229199308%_
                               _%$%g199230199309%_))))
                   _%$%body199243199305%_
                   _%$%hd199244199306%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop199237199273%_
                                           _%$%target199234199268%_
                                           '()
                                           '()))
                                        (_%$%g199227199255%_
                                         _%$%g199228199258%_)))))
                              (_%$%g199227199255%_ _%$%g199228199258%_))))
                      (_%$%g199227199255%_ _%$%g199228199258%_)))))
          (_%$%g199226199390%_ _%stx199225%_))))
    (define gxc#basic-expression-type-annotations (make-hash-table-eq))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_%self199102%_ _%stx199103%_)
        (let* ((_%$%g199105199122%_
                (lambda (_%$%g199106199119%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g199106199119%_)))
               (_%$%g199104199221%_
                (lambda (_%$%g199106199125%_)
                  (if (gx#stx-pair? _%$%g199106199125%_)
                      (let ((_%$%e199109199127%_
                             (gx#stx-e _%$%g199106199125%_)))
                        (let ((_%$%hd199110199130%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199109199127%_)))
                              (_%$%tl199111199132%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199109199127%_))))
                          (if (gx#stx-pair? _%$%tl199111199132%_)
                              (let ((_%$%e199112199135%_
                                     (gx#stx-e _%$%tl199111199132%_)))
                                (let ((_%$%hd199113199138%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199112199135%_)))
                                      (_%$%tl199114199140%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199112199135%_))))
                                  (if (gx#stx-pair? _%$%tl199114199140%_)
                                      (let ((_%$%e199115199143%_
                                             (gx#stx-e _%$%tl199114199140%_)))
                                        (let ((_%$%hd199116199146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e199115199143%_)))
                                              (_%$%tl199117199148%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e199115199143%_))))
                                          (if (gx#stx-null?
                                               _%$%tl199117199148%_)
                                              ((lambda (_%$%g199107199151%_
                                                        _%$%g199108199152%_)
                                                 (let* ((_%$%g199168199179%_
                                                         (lambda (_%$%g199169199176%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%$%g199169199176%_)))
                                                        (_%$%g199167199186%_
                                                         (lambda (_%$%g199169199182%_)
                                                           ((lambda ()
                                                              (gxc#compile-e
                                                               _%self199102%_
                                                               _%$%g199107199151%_)))))
                                                        (_%$%g199166199218%_
                                                         (lambda (_%$%g199169199189%_)
                                                           (if (gx#stx-pair?
                                                                _%$%g199169199189%_)
                                                               (let ((_%$%e199172199191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _%$%g199169199189%_)))
                         (let ((_%$%hd199173199194%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e199172199191%_)))
                               (_%$%tl199174199196%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e199172199191%_))))
                           ((lambda (_%$%g199170199199%_ _%$%g199171199200%_)
                              (if (gx#identifier? _%$%g199171199200%_)
                                  (let ((_%$e199212%_
                                         (hash-get
                                          gxc#basic-expression-type-annotations
                                          (gx#stx-e _%$%g199171199200%_))))
                                    (if _%$e199212%_
                                        ((lambda (_%type-e199215%_)
                                           (_%type-e199215%_
                                            _%stx199103%_
                                            _%$%g199108199152%_))
                                         _%$e199212%_)
                                        (gxc#compile-e
                                         _%self199102%_
                                         _%$%g199107199151%_)))
                                  (_%$%g199167199186%_ _%$%g199169199189%_)))
                            _%$%tl199174199196%_
                            _%$%hd199173199194%_)))
                       (_%$%g199167199186%_ _%$%g199169199189%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g199166199218%_
                                                    _%$%g199108199152%_)))
                                               _%$%hd199116199146%_
                                               _%$%hd199113199138%_)
                                              (_%$%g199105199122%_
                                               _%$%g199106199125%_))))
                                      (_%$%g199105199122%_
                                       _%$%g199106199125%_))))
                              (_%$%g199105199122%_ _%$%g199106199125%_))))
                      (_%$%g199105199122%_ _%$%g199106199125%_)))))
          (_%$%g199104199221%_ _%stx199103%_))))
    (define gxc#basic-expression-type-annotation-typedecl
      (lambda (_%stx199050%_ _%ann199051%_)
        (let* ((_%$%g199053199066%_
                (lambda (_%$%g199054199063%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g199054199063%_)))
               (_%$%g199052199099%_
                (lambda (_%$%g199054199069%_)
                  (if (gx#stx-pair? _%$%g199054199069%_)
                      (let ((_%$%e199056199071%_
                             (gx#stx-e _%$%g199054199069%_)))
                        (let ((_%$%hd199057199074%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199056199071%_)))
                              (_%$%tl199058199076%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199056199071%_))))
                          (if (gx#stx-pair? _%$%tl199058199076%_)
                              (let ((_%$%e199059199079%_
                                     (gx#stx-e _%$%tl199058199076%_)))
                                (let ((_%$%hd199060199082%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199059199079%_)))
                                      (_%$%tl199061199084%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199059199079%_))))
                                  (if (gx#stx-null? _%$%tl199061199084%_)
                                      ((lambda (_%$%g199055199087%_)
                                         (gxc#optimizer-resolve-class
                                          _%stx199050%_
                                          (gxc#identifier-symbol
                                           _%$%g199055199087%_)))
                                       _%$%hd199060199082%_)
                                      (_%$%g199053199066%_
                                       _%$%g199054199069%_))))
                              (_%$%g199053199066%_ _%$%g199054199069%_))))
                      (_%$%g199053199066%_ _%$%g199054199069%_)))))
          (_%$%g199052199099%_ _%ann199051%_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_%stx198894%_ _%ann198895%_)
        (let* ((_%$%g198897198934%_
                (lambda (_%$%g198898198931%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g198898198931%_)))
               (_%$%g198896199047%_
                (lambda (_%$%g198898198937%_)
                  (if (gx#stx-pair? _%$%g198898198937%_)
                      (let ((_%$%e198906198939%_
                             (gx#stx-e _%$%g198898198937%_)))
                        (let ((_%$%hd198907198942%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198906198939%_)))
                              (_%$%tl198908198944%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198906198939%_))))
                          (if (gx#stx-pair? _%$%tl198908198944%_)
                              (let ((_%$%e198909198947%_
                                     (gx#stx-e _%$%tl198908198944%_)))
                                (let ((_%$%hd198910198950%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e198909198947%_)))
                                      (_%$%tl198911198952%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e198909198947%_))))
                                  (if (gx#stx-pair? _%$%tl198911198952%_)
                                      (let ((_%$%e198912198955%_
                                             (gx#stx-e _%$%tl198911198952%_)))
                                        (let ((_%$%hd198913198958%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e198912198955%_)))
                                              (_%$%tl198914198960%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e198912198955%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl198914198960%_)
                                              (let ((_%$%e198915198963%_
                                                     (gx#stx-e
                                                      _%$%tl198914198960%_)))
                                                (let ((_%$%hd198916198966%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e198915198963%_)))
                                                      (_%$%tl198917198968%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e198915198963%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl198917198968%_)
                                                      (let ((_%$%e198918198971%_
                                                             (gx#stx-e
                                                              _%$%tl198917198968%_)))
                                                        (let ((_%$%hd198919198974%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e198918198971%_)))
                      (_%$%tl198920198976%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e198918198971%_))))
                  (if (gx#stx-pair? _%$%tl198920198976%_)
                      (let ((_%$%e198921198979%_
                             (gx#stx-e _%$%tl198920198976%_)))
                        (let ((_%$%hd198922198982%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198921198979%_)))
                              (_%$%tl198923198984%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198921198979%_))))
                          (if (gx#stx-pair? _%$%tl198923198984%_)
                              (let ((_%$%e198924198987%_
                                     (gx#stx-e _%$%tl198923198984%_)))
                                (let ((_%$%hd198925198990%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e198924198987%_)))
                                      (_%$%tl198926198992%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e198924198987%_))))
                                  (if (gx#stx-pair? _%$%tl198926198992%_)
                                      (let ((_%$%e198927198995%_
                                             (gx#stx-e _%$%tl198926198992%_)))
                                        (let ((_%$%hd198928198998%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e198927198995%_)))
                                              (_%$%tl198929199000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e198927198995%_))))
                                          (if (gx#stx-null?
                                               _%$%tl198929199000%_)
                                              ((lambda (_%$%g198899199003%_
                                                        _%$%g198900199004%_
                                                        _%$%g198901199005%_
                                                        _%$%g198902199006%_
                                                        _%$%g198903199007%_
                                                        _%$%g198904199008%_
                                                        _%$%g198905199009%_)
                                                 (let ((_%type-id199039%_
                                                        (gx#stx-e
                                                         _%$%g198905199009%_))
                                                       (_%super199040%_
                                                        (gx#stx-map
                                                         gxc#identifier-symbol
                                                         _%$%g198904199008%_))
                                                       (_%slots199041%_
                                                        (gx#stx-map
                                                         gx#stx-e
                                                         _%$%g198903199007%_))
                                                       (_%ctor-method199042%_
                                                        (gx#stx-e
                                                         _%$%g198902199006%_))
                                                       (_%struct?199043%_
                                                        (gx#stx-e
                                                         _%$%g198901199005%_))
                                                       (_%final?199044%_
                                                        (gx#stx-e
                                                         _%$%g198900199004%_))
                                                       (_%metaclass199045%_
                                                        (if (gx#stx-e
                                                             _%$%g198899199003%_)
                                                            (gxc#identifier-symbol
                                                             _%$%g198899199003%_)
                                                            '#f)))
                                                   (gxc#make-!class-meta
                                                    (gxc#make-!class
                                                     _%type-id199039%_
                                                     _%super199040%_
                                                     _%slots199041%_
                                                     _%ctor-method199042%_
                                                     _%struct?199043%_
                                                     _%final?199044%_
                                                     '#f
                                                     _%metaclass199045%_))))
                                               _%$%hd198928198998%_
                                               _%$%hd198925198990%_
                                               _%$%hd198922198982%_
                                               _%$%hd198919198974%_
                                               _%$%hd198916198966%_
                                               _%$%hd198913198958%_
                                               _%$%hd198910198950%_)
                                              (_%$%g198897198934%_
                                               _%$%g198898198937%_))))
                                      (_%$%g198897198934%_
                                       _%$%g198898198937%_))))
                              (_%$%g198897198934%_ _%$%g198898198937%_))))
                      (_%$%g198897198934%_ _%$%g198898198937%_))))
              (_%$%g198897198934%_ _%$%g198898198937%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g198897198934%_
                                               _%$%g198898198937%_))))
                                      (_%$%g198897198934%_
                                       _%$%g198898198937%_))))
                              (_%$%g198897198934%_ _%$%g198898198937%_))))
                      (_%$%g198897198934%_ _%$%g198898198937%_)))))
          (_%$%g198896199047%_ _%ann198895%_))))
    (define gxc#basic-expression-type-annotation-mop.system
      (lambda (_%stx198823%_ _%ann198824%_)
        (let* ((_%$%g198826198843%_
                (lambda (_%$%g198827198840%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g198827198840%_)))
               (_%$%g198825198891%_
                (lambda (_%$%g198827198846%_)
                  (if (gx#stx-pair? _%$%g198827198846%_)
                      (let ((_%$%e198830198848%_
                             (gx#stx-e _%$%g198827198846%_)))
                        (let ((_%$%hd198831198851%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198830198848%_)))
                              (_%$%tl198832198853%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198830198848%_))))
                          (if (gx#stx-pair? _%$%tl198832198853%_)
                              (let ((_%$%e198833198856%_
                                     (gx#stx-e _%$%tl198832198853%_)))
                                (let ((_%$%hd198834198859%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e198833198856%_)))
                                      (_%$%tl198835198861%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e198833198856%_))))
                                  (if (gx#stx-pair? _%$%tl198835198861%_)
                                      (let ((_%$%e198836198864%_
                                             (gx#stx-e _%$%tl198835198861%_)))
                                        (let ((_%$%hd198837198867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e198836198864%_)))
                                              (_%$%tl198838198869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e198836198864%_))))
                                          (if (gx#stx-null?
                                               _%$%tl198838198869%_)
                                              ((lambda (_%$%g198828198872%_
                                                        _%$%g198829198873%_)
                                                 (let ((_%type-id198888%_
                                                        (gx#stx-e
                                                         _%$%g198829198873%_))
                                                       (_%super198889%_
                                                        (gx#stx-map
                                                         gxc#identifier-symbol
                                                         _%$%g198828198872%_)))
                                                   (gxc#make-!class-meta
                                                    (gxc#make-!class
                                                     _%type-id198888%_
                                                     _%super198889%_
                                                     '()
                                                     '#f
                                                     '#f
                                                     '#f
                                                     '#t
                                                     '#f))))
                                               _%$%hd198837198867%_
                                               _%$%hd198834198859%_)
                                              (_%$%g198826198843%_
                                               _%$%g198827198846%_))))
                                      (_%$%g198826198843%_
                                       _%$%g198827198846%_))))
                              (_%$%g198826198843%_ _%$%g198827198846%_))))
                      (_%$%g198826198843%_ _%$%g198827198846%_)))))
          (_%$%g198825198891%_ _%ann198824%_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_%stx198771%_ _%ann198772%_)
        (let* ((_%$%g198774198787%_
                (lambda (_%$%g198775198784%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g198775198784%_)))
               (_%$%g198773198820%_
                (lambda (_%$%g198775198790%_)
                  (if (gx#stx-pair? _%$%g198775198790%_)
                      (let ((_%$%e198777198792%_
                             (gx#stx-e _%$%g198775198790%_)))
                        (let ((_%$%hd198778198795%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198777198792%_)))
                              (_%$%tl198779198797%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198777198792%_))))
                          (if (gx#stx-pair? _%$%tl198779198797%_)
                              (let ((_%$%e198780198800%_
                                     (gx#stx-e _%$%tl198779198797%_)))
                                (let ((_%$%hd198781198803%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e198780198800%_)))
                                      (_%$%tl198782198805%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e198780198800%_))))
                                  (if (gx#stx-null? _%$%tl198782198805%_)
                                      ((lambda (_%$%g198776198808%_)
                                         (gxc#make-!constructor
                                          (gxc#identifier-symbol
                                           _%$%g198776198808%_)))
                                       _%$%hd198781198803%_)
                                      (_%$%g198774198787%_
                                       _%$%g198775198790%_))))
                              (_%$%g198774198787%_ _%$%g198775198790%_))))
                      (_%$%g198774198787%_ _%$%g198775198790%_)))))
          (_%$%g198773198820%_ _%ann198772%_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_%stx198719%_ _%ann198720%_)
        (let* ((_%$%g198722198735%_
                (lambda (_%$%g198723198732%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g198723198732%_)))
               (_%$%g198721198768%_
                (lambda (_%$%g198723198738%_)
                  (if (gx#stx-pair? _%$%g198723198738%_)
                      (let ((_%$%e198725198740%_
                             (gx#stx-e _%$%g198723198738%_)))
                        (let ((_%$%hd198726198743%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198725198740%_)))
                              (_%$%tl198727198745%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198725198740%_))))
                          (if (gx#stx-pair? _%$%tl198727198745%_)
                              (let ((_%$%e198728198748%_
                                     (gx#stx-e _%$%tl198727198745%_)))
                                (let ((_%$%hd198729198751%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e198728198748%_)))
                                      (_%$%tl198730198753%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e198728198748%_))))
                                  (if (gx#stx-null? _%$%tl198730198753%_)
                                      ((lambda (_%$%g198724198756%_)
                                         (gxc#make-!predicate
                                          (gxc#identifier-symbol
                                           _%$%g198724198756%_)))
                                       _%$%hd198729198751%_)
                                      (_%$%g198722198735%_
                                       _%$%g198723198738%_))))
                              (_%$%g198722198735%_ _%$%g198723198738%_))))
                      (_%$%g198722198735%_ _%$%g198723198738%_)))))
          (_%$%g198721198768%_ _%ann198720%_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_%stx198635%_ _%ann198636%_)
        (let* ((_%$%g198638198659%_
                (lambda (_%$%g198639198656%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g198639198656%_)))
               (_%$%g198637198716%_
                (lambda (_%$%g198639198662%_)
                  (if (gx#stx-pair? _%$%g198639198662%_)
                      (let ((_%$%e198643198664%_
                             (gx#stx-e _%$%g198639198662%_)))
                        (let ((_%$%hd198644198667%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198643198664%_)))
                              (_%$%tl198645198669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198643198664%_))))
                          (if (gx#stx-pair? _%$%tl198645198669%_)
                              (let ((_%$%e198646198672%_
                                     (gx#stx-e _%$%tl198645198669%_)))
                                (let ((_%$%hd198647198675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e198646198672%_)))
                                      (_%$%tl198648198677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e198646198672%_))))
                                  (if (gx#stx-pair? _%$%tl198648198677%_)
                                      (let ((_%$%e198649198680%_
                                             (gx#stx-e _%$%tl198648198677%_)))
                                        (let ((_%$%hd198650198683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e198649198680%_)))
                                              (_%$%tl198651198685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e198649198680%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl198651198685%_)
                                              (let ((_%$%e198652198688%_
                                                     (gx#stx-e
                                                      _%$%tl198651198685%_)))
                                                (let ((_%$%hd198653198691%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e198652198688%_)))
                                                      (_%$%tl198654198693%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e198652198688%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl198654198693%_)
                                                      ((lambda (_%$%g198640198696%_
                                                                _%$%g198641198697%_
                                                                _%$%g198642198698%_)
                                                         (gxc#make-!accessor
                                                          (gxc#identifier-symbol
                                                           _%$%g198642198698%_)
                                                          (gx#stx-e
                                                           _%$%g198641198697%_)
                                                          (gx#stx-e
                                                           _%$%g198640198696%_)))
                                                       _%$%hd198653198691%_
                                                       _%$%hd198650198683%_
                                                       _%$%hd198647198675%_)
                                                      (_%$%g198638198659%_
                                                       _%$%g198639198662%_))))
                                              (_%$%g198638198659%_
                                               _%$%g198639198662%_))))
                                      (_%$%g198638198659%_
                                       _%$%g198639198662%_))))
                              (_%$%g198638198659%_ _%$%g198639198662%_))))
                      (_%$%g198638198659%_ _%$%g198639198662%_)))))
          (_%$%g198637198716%_ _%ann198636%_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_%stx198551%_ _%ann198552%_)
        (let* ((_%$%g198554198575%_
                (lambda (_%$%g198555198572%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g198555198572%_)))
               (_%$%g198553198632%_
                (lambda (_%$%g198555198578%_)
                  (if (gx#stx-pair? _%$%g198555198578%_)
                      (let ((_%$%e198559198580%_
                             (gx#stx-e _%$%g198555198578%_)))
                        (let ((_%$%hd198560198583%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198559198580%_)))
                              (_%$%tl198561198585%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198559198580%_))))
                          (if (gx#stx-pair? _%$%tl198561198585%_)
                              (let ((_%$%e198562198588%_
                                     (gx#stx-e _%$%tl198561198585%_)))
                                (let ((_%$%hd198563198591%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e198562198588%_)))
                                      (_%$%tl198564198593%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e198562198588%_))))
                                  (if (gx#stx-pair? _%$%tl198564198593%_)
                                      (let ((_%$%e198565198596%_
                                             (gx#stx-e _%$%tl198564198593%_)))
                                        (let ((_%$%hd198566198599%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e198565198596%_)))
                                              (_%$%tl198567198601%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e198565198596%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl198567198601%_)
                                              (let ((_%$%e198568198604%_
                                                     (gx#stx-e
                                                      _%$%tl198567198601%_)))
                                                (let ((_%$%hd198569198607%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e198568198604%_)))
                                                      (_%$%tl198570198609%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e198568198604%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl198570198609%_)
                                                      ((lambda (_%$%g198556198612%_
                                                                _%$%g198557198613%_
                                                                _%$%g198558198614%_)
                                                         (gxc#make-!mutator
                                                          (gxc#identifier-symbol
                                                           _%$%g198558198614%_)
                                                          (gx#stx-e
                                                           _%$%g198557198613%_)
                                                          (gx#stx-e
                                                           _%$%g198556198612%_)))
                                                       _%$%hd198569198607%_
                                                       _%$%hd198566198599%_
                                                       _%$%hd198563198591%_)
                                                      (_%$%g198554198575%_
                                                       _%$%g198555198578%_))))
                                              (_%$%g198554198575%_
                                               _%$%g198555198578%_))))
                                      (_%$%g198554198575%_
                                       _%$%g198555198578%_))))
                              (_%$%g198554198575%_ _%$%g198555198578%_))))
                      (_%$%g198554198575%_ _%$%g198555198578%_)))))
          (_%$%g198553198632%_ _%ann198552%_))))
    (define gxc#basic-expression-type-annotation-interface
      (lambda (_%stx198483%_ _%ann198484%_)
        (let* ((_%$%g198486198503%_
                (lambda (_%$%g198487198500%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g198487198500%_)))
               (_%$%g198485198548%_
                (lambda (_%$%g198487198506%_)
                  (if (gx#stx-pair? _%$%g198487198506%_)
                      (let ((_%$%e198490198508%_
                             (gx#stx-e _%$%g198487198506%_)))
                        (let ((_%$%hd198491198511%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198490198508%_)))
                              (_%$%tl198492198513%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198490198508%_))))
                          (if (gx#stx-pair? _%$%tl198492198513%_)
                              (let ((_%$%e198493198516%_
                                     (gx#stx-e _%$%tl198492198513%_)))
                                (let ((_%$%hd198494198519%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e198493198516%_)))
                                      (_%$%tl198495198521%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e198493198516%_))))
                                  (if (gx#stx-pair? _%$%tl198495198521%_)
                                      (let ((_%$%e198496198524%_
                                             (gx#stx-e _%$%tl198495198521%_)))
                                        (let ((_%$%hd198497198527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e198496198524%_)))
                                              (_%$%tl198498198529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e198496198524%_))))
                                          (if (gx#stx-null?
                                               _%$%tl198498198529%_)
                                              ((lambda (_%$%g198488198532%_
                                                        _%$%g198489198533%_)
                                                 (gxc#make-!interface
                                                  (gxc#identifier-symbol
                                                   _%$%g198489198533%_)
                                                  (gx#stx-map
                                                   gx#stx-e
                                                   _%$%g198488198532%_)))
                                               _%$%hd198497198527%_
                                               _%$%hd198494198519%_)
                                              (_%$%g198486198503%_
                                               _%$%g198487198506%_))))
                                      (_%$%g198486198503%_
                                       _%$%g198487198506%_))))
                              (_%$%g198486198503%_ _%$%g198487198506%_))))
                      (_%$%g198486198503%_ _%$%g198487198506%_)))))
          (_%$%g198485198548%_ _%ann198484%_))))
    (define gxc#basic-expression-type-annotation-predicate
      (lambda (_%stx198431%_ _%ann198432%_)
        (let* ((_%$%g198434198447%_
                (lambda (_%$%g198435198444%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g198435198444%_)))
               (_%$%g198433198480%_
                (lambda (_%$%g198435198450%_)
                  (if (gx#stx-pair? _%$%g198435198450%_)
                      (let ((_%$%e198437198452%_
                             (gx#stx-e _%$%g198435198450%_)))
                        (let ((_%$%hd198438198455%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198437198452%_)))
                              (_%$%tl198439198457%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198437198452%_))))
                          (if (gx#stx-pair? _%$%tl198439198457%_)
                              (let ((_%$%e198440198460%_
                                     (gx#stx-e _%$%tl198439198457%_)))
                                (let ((_%$%hd198441198463%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e198440198460%_)))
                                      (_%$%tl198442198465%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e198440198460%_))))
                                  (if (gx#stx-null? _%$%tl198442198465%_)
                                      ((lambda (_%$%g198436198468%_)
                                         (gxc#make-!primitive-predicate
                                          (gxc#identifier-symbol
                                           _%$%g198436198468%_)))
                                       _%$%hd198441198463%_)
                                      (_%$%g198434198447%_
                                       _%$%g198435198450%_))))
                              (_%$%g198434198447%_ _%$%g198435198450%_))))
                      (_%$%g198434198447%_ _%$%g198435198450%_)))))
          (_%$%g198433198480%_ _%ann198432%_))))
    (define gxc#basic-expression-type-annotation-abort
      (lambda (_%stx198401%_ _%ann198402%_)
        (let* ((_%$%g198404198413%_
                (lambda (_%$%g198405198410%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g198405198410%_)))
               (_%$%g198403198428%_
                (lambda (_%$%g198405198416%_)
                  (if (gx#stx-pair? _%$%g198405198416%_)
                      (let ((_%$%e198406198418%_
                             (gx#stx-e _%$%g198405198416%_)))
                        (let ((_%$%hd198407198421%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198406198418%_)))
                              (_%$%tl198408198423%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198406198418%_))))
                          (if (gx#stx-null? _%$%tl198408198423%_)
                              ((lambda () (gxc#make-!abort)))
                              (_%$%g198404198413%_ _%$%g198405198416%_))))
                      (_%$%g198404198413%_ _%$%g198405198416%_)))))
          (_%$%g198403198428%_ _%ann198402%_))))
    (hash-put!
     gxc#basic-expression-type-annotations
     '@mop.class
     gxc#basic-expression-type-annotation-mop.class)
    (hash-put!
     gxc#basic-expression-type-annotations
     '@mop.constructor
     gxc#basic-expression-type-annotation-mop.constructor)
    (hash-put!
     gxc#basic-expression-type-annotations
     '@mop.predicate
     gxc#basic-expression-type-annotation-mop.predicate)
    (hash-put!
     gxc#basic-expression-type-annotations
     '@mop.accessor
     gxc#basic-expression-type-annotation-mop.accessor)
    (hash-put!
     gxc#basic-expression-type-annotations
     '@mop.mutator
     gxc#basic-expression-type-annotation-mop.mutator)
    (hash-put!
     gxc#basic-expression-type-annotations
     '@mop.system
     gxc#basic-expression-type-annotation-mop.system)
    (hash-put!
     gxc#basic-expression-type-annotations
     '@interface
     gxc#basic-expression-type-annotation-interface)
    (hash-put!
     gxc#basic-expression-type-annotations
     '@type
     gxc#basic-expression-type-annotation-typedecl)
    (hash-put!
     gxc#basic-expression-type-annotations
     '@predicate
     gxc#basic-expression-type-annotation-predicate)
    (hash-put!
     gxc#basic-expression-type-annotations
     '@abort
     gxc#basic-expression-type-annotation-abort)
    (define gxc#raw-expression-type-lambda%
      (lambda (_%self198333%_ _%stx198334%_)
        (let* ((_%$%g198337198351%_
                (lambda (_%$%g198338198348%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g198338198348%_)))
               (_%$%g198336198376%_
                (lambda (_%$%g198338198354%_)
                  (if (gx#stx-pair? _%$%g198338198354%_)
                      (let ((_%$%e198344198356%_
                             (gx#stx-e _%$%g198338198354%_)))
                        (let ((_%$%hd198345198359%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198344198356%_)))
                              (_%$%tl198346198361%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198344198356%_))))
                          ((lambda (_%$%g198343198364%_)
                             (let ((_%signature198374%_
                                    (gxc#lambda-form-infer-signature
                                     _%$%g198343198364%_)))
                               (gxc#make-!lambda
                                (gxc#lambda-form-arity _%$%g198343198364%_)
                                '#f
                                'signature:
                                _%signature198374%_)))
                           _%$%tl198346198361%_)))
                      (_%$%g198337198351%_ _%$%g198338198354%_))))
               (_%$%g198335198398%_
                (lambda (_%$%g198338198379%_)
                  (if (gx#stx-pair? _%$%g198338198379%_)
                      (let ((_%$%e198340198381%_
                             (gx#stx-e _%$%g198338198379%_)))
                        (let ((_%$%hd198341198384%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198340198381%_)))
                              (_%$%tl198342198386%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198340198381%_))))
                          ((lambda (_%$%g198339198389%_)
                             (if (gxc#dispatch-lambda-form?
                                  _%$%g198339198389%_)
                                 (gxc#make-!lambda
                                  (gxc#lambda-form-arity _%$%g198339198389%_)
                                  (gxc#dispatch-lambda-form-delegate
                                   _%$%g198339198389%_))
                                 (_%$%g198336198376%_ _%$%g198338198379%_)))
                           _%$%tl198342198386%_)))
                      (_%$%g198336198376%_ _%$%g198338198379%_)))))
          (_%$%g198335198398%_ _%stx198334%_))))
    (define gxc#basic-expression-type-lambda%
      (lambda (_%self197485%_ _%stx197486%_)
        (let* ((_%$%g197491197683%_
                (lambda (_%$%g197492197680%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g197492197680%_)))
               (_%$%g197490197708%_
                (lambda (_%$%g197492197686%_)
                  (if (gx#stx-pair? _%$%g197492197686%_)
                      (let ((_%$%e197676197688%_
                             (gx#stx-e _%$%g197492197686%_)))
                        (let ((_%$%hd197677197691%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e197676197688%_)))
                              (_%$%tl197678197693%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e197676197688%_))))
                          ((lambda (_%$%g197675197696%_)
                             (let ((_%signature197706%_
                                    (gxc#lambda-form-infer-signature
                                     _%$%g197675197696%_)))
                               (gxc#make-!lambda
                                (gxc#lambda-form-arity _%$%g197675197696%_)
                                '#f
                                'signature:
                                _%signature197706%_)))
                           _%$%tl197678197693%_)))
                      (_%$%g197491197683%_ _%$%g197492197686%_))))
               (_%$%g197489197730%_
                (lambda (_%$%g197492197711%_)
                  (if (gx#stx-pair? _%$%g197492197711%_)
                      (let ((_%$%e197672197713%_
                             (gx#stx-e _%$%g197492197711%_)))
                        (let ((_%$%hd197673197716%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e197672197713%_)))
                              (_%$%tl197674197718%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e197672197713%_))))
                          ((lambda (_%$%g197671197721%_)
                             (if (gxc#dispatch-lambda-form?
                                  _%$%g197671197721%_)
                                 (gxc#make-!lambda
                                  (gxc#lambda-form-arity _%$%g197671197721%_)
                                  (gxc#dispatch-lambda-form-delegate
                                   _%$%g197671197721%_))
                                 (_%$%g197490197708%_ _%$%g197492197711%_)))
                           _%$%tl197674197718%_)))
                      (_%$%g197490197708%_ _%$%g197492197711%_))))
               (_%$%g197488198113%_
                (lambda (_%$%g197492197733%_)
                  (if (gx#stx-pair? _%$%g197492197733%_)
                      (let ((_%$%e197566197735%_
                             (gx#stx-e _%$%g197492197733%_)))
                        (let ((_%$%hd197567197738%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e197566197735%_)))
                              (_%$%tl197568197740%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e197566197735%_))))
                          (if (gx#stx-pair? _%$%tl197568197740%_)
                              (let ((_%$%e197569197743%_
                                     (gx#stx-e _%$%tl197568197740%_)))
                                (let ((_%$%hd197570197746%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e197569197743%_)))
                                      (_%$%tl197571197748%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e197569197743%_))))
                                  (if (gx#stx-pair? _%$%hd197570197746%_)
                                      (let ((_%$%e197572197751%_
                                             (gx#stx-e _%$%hd197570197746%_)))
                                        (let ((_%$%hd197573197754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e197572197751%_)))
                                              (_%$%tl197574197756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e197572197751%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl197571197748%_)
                                              (let ((_%$%e197575197759%_
                                                     (gx#stx-e
                                                      _%$%tl197571197748%_)))
                                                (let ((_%$%hd197576197762%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e197575197759%_)))
                                                      (_%$%tl197577197764%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e197575197759%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%hd197576197762%_)
                                                      (let ((_%$%e197578197767%_
                                                             (gx#stx-e
                                                              _%$%hd197576197762%_)))
                                                        (let ((_%$%hd197579197770%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e197578197767%_)))
                      (_%$%tl197580197772%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e197578197767%_))))
                  (if (gx#identifier? _%$%hd197579197770%_)
                      (if (gx#stx-eq? '%#call _%$%hd197579197770%_)
                          (if (gx#stx-pair? _%$%tl197580197772%_)
                              (let ((_%$%e197581197775%_
                                     (gx#stx-e _%$%tl197580197772%_)))
                                (let ((_%$%hd197582197778%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e197581197775%_)))
                                      (_%$%tl197583197780%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e197581197775%_))))
                                  (if (gx#stx-pair? _%$%hd197582197778%_)
                                      (let ((_%$%e197584197783%_
                                             (gx#stx-e _%$%hd197582197778%_)))
                                        (let ((_%$%hd197585197786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e197584197783%_)))
                                              (_%$%tl197586197788%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e197584197783%_))))
                                          (if (gx#identifier?
                                               _%$%hd197585197786%_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd197585197786%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl197586197788%_)
                                                      (let ((_%$%e197587197791%_
                                                             (gx#stx-e
                                                              _%$%tl197586197788%_)))
                                                        (let ((_%$%hd197588197794%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e197587197791%_)))
                      (_%$%tl197589197796%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e197587197791%_))))
                  (if (gx#stx-null? _%$%tl197589197796%_)
                      (if (gx#stx-pair? _%$%tl197583197780%_)
                          (let ((_%$%e197590197799%_
                                 (gx#stx-e _%$%tl197583197780%_)))
                            (let ((_%$%hd197591197802%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e197590197799%_)))
                                  (_%$%tl197592197804%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e197590197799%_))))
                              (if (gx#stx-pair? _%$%hd197591197802%_)
                                  (let ((_%$%e197593197807%_
                                         (gx#stx-e _%$%hd197591197802%_)))
                                    (let ((_%$%hd197594197810%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e197593197807%_)))
                                          (_%$%tl197595197812%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e197593197807%_))))
                                      (if (gx#identifier? _%$%hd197594197810%_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _%$%hd197594197810%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl197595197812%_)
                                                  (let ((_%$%e197596197815%_
                                                         (gx#stx-e
                                                          _%$%tl197595197812%_)))
                                                    (let ((_%$%hd197597197818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e197596197815%_)))
                                                          (_%$%tl197598197820%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e197596197815%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl197598197820%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl197592197804%_)
                                                              (let ((_%$%e197599197823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl197592197804%_)))
                        (let ((_%$%hd197600197826%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e197599197823%_)))
                              (_%$%tl197601197828%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e197599197823%_))))
                          (if (gx#stx-pair? _%$%hd197600197826%_)
                              (let ((_%$%e197602197831%_
                                     (gx#stx-e _%$%hd197600197826%_)))
                                (let ((_%$%hd197603197834%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e197602197831%_)))
                                      (_%$%tl197604197836%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e197602197831%_))))
                                  (if (gx#identifier? _%$%hd197603197834%_)
                                      (if (gx#stx-eq?
                                           '%#ref
                                           _%$%hd197603197834%_)
                                          (if (gx#stx-pair?
                                               _%$%tl197604197836%_)
                                              (let ((_%$%e197605197839%_
                                                     (gx#stx-e
                                                      _%$%tl197604197836%_)))
                                                (let ((_%$%hd197606197842%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e197605197839%_)))
                                                      (_%$%tl197607197844%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e197605197839%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl197607197844%_)
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl197601197828%_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%tl197601197828%_)
                            '1)
                      (let ((_g202625_
                             (gx#syntax-split-splice _%$%tl197601197828%_ '1)))
                        (begin
                          (let ((_g202626_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g202625_)
                                       (##values-length _g202625_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g202626_ 2)))
                                (error "Context expects 2 values" _g202626_)))
                          (let ((_%$%target197608197847%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g202625_ 0)))
                                (_%$%tl197610197849%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g202625_ 1))))
                            (if (gx#stx-pair? _%$%tl197610197849%_)
                                (let ((_%$%e197623197852%_
                                       (gx#stx-e _%$%tl197610197849%_)))
                                  (let ((_%$%hd197624197855%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e197623197852%_)))
                                        (_%$%tl197625197857%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e197623197852%_))))
                                    (if (gx#stx-pair? _%$%hd197624197855%_)
                                        (let ((_%$%e197626197860%_
                                               (gx#stx-e
                                                _%$%hd197624197855%_)))
                                          (let ((_%$%hd197627197863%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e197626197860%_)))
                                                (_%$%tl197628197865%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e197626197860%_))))
                                            (if (gx#identifier?
                                                 _%$%hd197627197863%_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _%$%hd197627197863%_)
                                                    (if (gx#stx-pair?
                                                         _%$%tl197628197865%_)
                                                        (let ((_%$%e197629197868%_
                                                               (gx#stx-e
                                                                _%$%tl197628197865%_)))
                                                          (let ((_%$%hd197630197871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e197629197868%_)))
                        (_%$%tl197631197873%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e197629197868%_))))
                    (if (gx#stx-null? _%$%tl197631197873%_)
                        (if (gx#stx-null? _%$%tl197625197857%_)
                            (letrec ((_%$%loop197611197876%_
                                      (lambda (_%$%hd197609197879%_
                                               _%$%-absent-value197615197881%_
                                               _%$%key197616197882%_
                                               _%$%-xkwvar197617197883%_
                                               _%$%-hash-ref197618197884%_)
                                        (if (gx#stx-pair? _%$%hd197609197879%_)
                                            (let ((_%$%e197612197886%_
                                                   (gx#stx-e
                                                    _%$%hd197609197879%_)))
                                              (let ((_%$%lp-hd197613197889%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e197612197886%_)))
                                                    (_%$%lp-tl197614197891%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e197612197886%_))))
                                                (if (gx#stx-pair?
                                                     _%$%lp-hd197613197889%_)
                                                    (let ((_%$%e197632197894%_
                                                           (gx#stx-e
                                                            _%$%lp-hd197613197889%_)))
                                                      (let ((_%$%hd197633197897%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e197632197894%_)))
                    (_%$%tl197634197899%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e197632197894%_))))
                (if (gx#identifier? _%$%hd197633197897%_)
                    (if (gx#stx-eq? '%#call _%$%hd197633197897%_)
                        (if (gx#stx-pair? _%$%tl197634197899%_)
                            (let ((_%$%e197635197902%_
                                   (gx#stx-e _%$%tl197634197899%_)))
                              (let ((_%$%hd197636197905%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e197635197902%_)))
                                    (_%$%tl197637197907%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e197635197902%_))))
                                (if (gx#stx-pair? _%$%hd197636197905%_)
                                    (let ((_%$%e197638197910%_
                                           (gx#stx-e _%$%hd197636197905%_)))
                                      (let ((_%$%hd197639197913%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e197638197910%_)))
                                            (_%$%tl197640197915%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e197638197910%_))))
                                        (if (gx#identifier?
                                             _%$%hd197639197913%_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd197639197913%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl197640197915%_)
                                                    (let ((_%$%e197641197918%_
                                                           (gx#stx-e
                                                            _%$%tl197640197915%_)))
                                                      (let ((_%$%hd197642197921%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e197641197918%_)))
                    (_%$%tl197643197923%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e197641197918%_))))
                (if (gx#stx-null? _%$%tl197643197923%_)
                    (if (gx#stx-pair? _%$%tl197637197907%_)
                        (let ((_%$%e197644197926%_
                               (gx#stx-e _%$%tl197637197907%_)))
                          (let ((_%$%hd197645197929%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e197644197926%_)))
                                (_%$%tl197646197931%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e197644197926%_))))
                            (if (gx#stx-pair? _%$%hd197645197929%_)
                                (let ((_%$%e197647197934%_
                                       (gx#stx-e _%$%hd197645197929%_)))
                                  (let ((_%$%hd197648197937%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e197647197934%_)))
                                        (_%$%tl197649197939%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e197647197934%_))))
                                    (if (gx#identifier? _%$%hd197648197937%_)
                                        (if (gx#stx-eq?
                                             '%#ref
                                             _%$%hd197648197937%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl197649197939%_)
                                                (let ((_%$%e197650197942%_
                                                       (gx#stx-e
                                                        _%$%tl197649197939%_)))
                                                  (let ((_%$%hd197651197945%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e197650197942%_)))
                                                        (_%$%tl197652197947%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e197650197942%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl197652197947%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl197646197931%_)
                                                            (let ((_%$%e197653197950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _%$%tl197646197931%_)))
                      (let ((_%$%hd197654197953%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e197653197950%_)))
                            (_%$%tl197655197955%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e197653197950%_))))
                        (if (gx#stx-pair? _%$%hd197654197953%_)
                            (let ((_%$%e197656197958%_
                                   (gx#stx-e _%$%hd197654197953%_)))
                              (let ((_%$%hd197657197961%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e197656197958%_)))
                                    (_%$%tl197658197963%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e197656197958%_))))
                                (if (gx#identifier? _%$%hd197657197961%_)
                                    (if (gx#stx-eq?
                                         '%#quote
                                         _%$%hd197657197961%_)
                                        (if (gx#stx-pair? _%$%tl197658197963%_)
                                            (let ((_%$%e197659197966%_
                                                   (gx#stx-e
                                                    _%$%tl197658197963%_)))
                                              (let ((_%$%hd197660197969%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e197659197966%_)))
                                                    (_%$%tl197661197971%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e197659197966%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl197661197971%_)
                                                    (if (gx#stx-pair?
                                                         _%$%tl197655197955%_)
                                                        (let ((_%$%e197662197974%_
                                                               (gx#stx-e
                                                                _%$%tl197655197955%_)))
                                                          (let ((_%$%hd197663197977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e197662197974%_)))
                        (_%$%tl197664197979%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e197662197974%_))))
                    (if (gx#stx-pair? _%$%hd197663197977%_)
                        (let ((_%$%e197665197982%_
                               (gx#stx-e _%$%hd197663197977%_)))
                          (let ((_%$%hd197666197985%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e197665197982%_)))
                                (_%$%tl197667197987%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e197665197982%_))))
                            (if (gx#identifier? _%$%hd197666197985%_)
                                (if (gx#stx-eq? '%#ref _%$%hd197666197985%_)
                                    (if (gx#stx-pair? _%$%tl197667197987%_)
                                        (let ((_%$%e197668197990%_
                                               (gx#stx-e
                                                _%$%tl197667197987%_)))
                                          (let ((_%$%hd197669197993%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e197668197990%_)))
                                                (_%$%tl197670197995%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e197668197990%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl197670197995%_)
                                                (if (gx#stx-null?
                                                     _%$%tl197664197979%_)
                                                    (_%$%loop197611197876%_
                                                     _%$%lp-tl197614197891%_
                                                     (cons _%$%hd197669197993%_
                                                           _%$%-absent-value197615197881%_)
                                                     (cons _%$%hd197660197969%_
                                                           _%$%key197616197882%_)
                                                     (cons _%$%hd197651197945%_
                                                           _%$%-xkwvar197617197883%_)
                                                     (cons _%$%hd197642197921%_
                                                           _%$%-hash-ref197618197884%_))
                                                    (_%$%g197489197730%_
                                                     _%$%g197492197733%_))
                                                (_%$%g197489197730%_
                                                 _%$%g197492197733%_))))
                                        (_%$%g197489197730%_
                                         _%$%g197492197733%_))
                                    (_%$%g197489197730%_ _%$%g197492197733%_))
                                (_%$%g197489197730%_ _%$%g197492197733%_))))
                        (_%$%g197489197730%_ _%$%g197492197733%_))))
                (_%$%g197489197730%_ _%$%g197492197733%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g197489197730%_
                                                     _%$%g197492197733%_))))
                                            (_%$%g197489197730%_
                                             _%$%g197492197733%_))
                                        (_%$%g197489197730%_
                                         _%$%g197492197733%_))
                                    (_%$%g197489197730%_
                                     _%$%g197492197733%_))))
                            (_%$%g197489197730%_ _%$%g197492197733%_))))
                    (_%$%g197489197730%_ _%$%g197492197733%_))
                (_%$%g197489197730%_ _%$%g197492197733%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g197489197730%_
                                                 _%$%g197492197733%_))
                                            (_%$%g197489197730%_
                                             _%$%g197492197733%_))
                                        (_%$%g197489197730%_
                                         _%$%g197492197733%_))))
                                (_%$%g197489197730%_ _%$%g197492197733%_))))
                        (_%$%g197489197730%_ _%$%g197492197733%_))
                    (_%$%g197489197730%_ _%$%g197492197733%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g197489197730%_
                                                     _%$%g197492197733%_))
                                                (_%$%g197489197730%_
                                                 _%$%g197492197733%_))
                                            (_%$%g197489197730%_
                                             _%$%g197492197733%_))))
                                    (_%$%g197489197730%_
                                     _%$%g197492197733%_))))
                            (_%$%g197489197730%_ _%$%g197492197733%_))
                        (_%$%g197489197730%_ _%$%g197492197733%_))
                    (_%$%g197489197730%_ _%$%g197492197733%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g197489197730%_
                                                     _%$%g197492197733%_))))
                                            (let ((_%$%-absent-value197619197998%_
                                                   (reverse _%$%-absent-value197615197881%_))
                                                  (_%$%key197620197999%_
                                                   (reverse _%$%key197616197882%_))
                                                  (_%$%-xkwvar197621198000%_
                                                   (reverse _%$%-xkwvar197617197883%_))
                                                  (_%$%-hash-ref197622198001%_
                                                   (reverse _%$%-hash-ref197618197884%_)))
                                              (if (gx#stx-null?
                                                   _%$%tl197577197764%_)
                                                  ((lambda (_%$%g197556198003%_
                                                            _%$%g197557198004%_
                                                            _%$%g197558198005%_
                                                            _%$%g197559198006%_
                                                            _%$%g197560198007%_
                                                            _%$%g197561198008%_
                                                            _%$%g197562198009%_
                                                            _%$%g197563198010%_
                                                            _%$%g197564198011%_
                                                            _%$%g197565198012%_)
                                                     (if (and (gx#identifier?
                                                               _%$%g197565198012%_)
                                                              (gx#identifier?
                                                               _%$%g197564198011%_)
                                                              (gxc#runtime-identifier=?
                                                               _%$%g197563198010%_
                                                               'apply)
                                                              (gx#free-identifier=?
                                                               _%$%g197565198012%_
                                                               _%$%g197561198008%_)
                                                              (andmap gx#stx-keyword?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (foldr (lambda (_%$%g198065198068%_
                                              _%$%g198066198070%_)
                                       (cons _%$%g198065198068%_
                                             _%$%g198066198070%_))
                                     '()
                                     _%$%g197558198005%_))
                      (andmap (lambda (_%$%g198072198074%_)
                                (gxc#runtime-identifier=?
                                 _%$%g198072198074%_
                                 'symbolic-table-ref))
                              (foldr (lambda (_%$%g198076198079%_
                                              _%$%g198077198081%_)
                                       (cons _%$%g198076198079%_
                                             _%$%g198077198081%_))
                                     '()
                                     _%$%g197560198007%_))
                      (andmap (lambda (_%$%g198083198085%_)
                                (gxc#runtime-identifier=?
                                 _%$%g198083198085%_
                                 'absent-value))
                              (foldr (lambda (_%$%g198087198090%_
                                              _%$%g198088198092%_)
                                       (cons _%$%g198087198090%_
                                             _%$%g198088198092%_))
                                     '()
                                     _%$%g197557198004%_))
                      (andmap (lambda (_%$%g198094198096%_)
                                (gx#free-identifier=?
                                 _%$%g198094198096%_
                                 _%$%g197565198012%_))
                              (foldr (lambda (_%$%g198098198101%_
                                              _%$%g198099198103%_)
                                       (cons _%$%g198098198101%_
                                             _%$%g198099198103%_))
                                     '()
                                     _%$%g197559198006%_)))
                 (gxc#make-!kw-lambda-primary
                  (map gx#stx-e
                       (foldr (lambda (_%$%g198105198108%_ _%$%g198106198110%_)
                                (cons _%$%g198105198108%_ _%$%g198106198110%_))
                              '()
                              _%$%g197558198005%_))
                  (gxc#identifier-symbol _%$%g197562198009%_))
                 (_%$%g197489197730%_ _%$%g197492197733%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$%hd197630197871%_
                                                   _%$%-absent-value197619197998%_
                                                   _%$%key197620197999%_
                                                   _%$%-xkwvar197621198000%_
                                                   _%$%-hash-ref197622198001%_
                                                   _%$%hd197606197842%_
                                                   _%$%hd197597197818%_
                                                   _%$%hd197588197794%_
                                                   _%$%tl197574197756%_
                                                   _%$%hd197573197754%_)
                                                  (_%$%g197489197730%_
                                                   _%$%g197492197733%_)))))))
                              (_%$%loop197611197876%_
                               _%$%target197608197847%_
                               '()
                               '()
                               '()
                               '()))
                            (_%$%g197489197730%_ _%$%g197492197733%_))
                        (_%$%g197489197730%_ _%$%g197492197733%_))))
                (_%$%g197489197730%_ _%$%g197492197733%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g197489197730%_
                                                     _%$%g197492197733%_))
                                                (_%$%g197489197730%_
                                                 _%$%g197492197733%_))))
                                        (_%$%g197489197730%_
                                         _%$%g197492197733%_))))
                                (_%$%g197489197730%_ _%$%g197492197733%_)))))
                      (_%$%g197489197730%_ _%$%g197492197733%_))
                  (_%$%g197489197730%_ _%$%g197492197733%_))
              (_%$%g197489197730%_ _%$%g197492197733%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g197489197730%_
                                               _%$%g197492197733%_))
                                          (_%$%g197489197730%_
                                           _%$%g197492197733%_))
                                      (_%$%g197489197730%_
                                       _%$%g197492197733%_))))
                              (_%$%g197489197730%_ _%$%g197492197733%_))))
                      (_%$%g197489197730%_ _%$%g197492197733%_))
                  (_%$%g197489197730%_ _%$%g197492197733%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g197489197730%_
                                                   _%$%g197492197733%_))
                                              (_%$%g197489197730%_
                                               _%$%g197492197733%_))
                                          (_%$%g197489197730%_
                                           _%$%g197492197733%_))))
                                  (_%$%g197489197730%_ _%$%g197492197733%_))))
                          (_%$%g197489197730%_ _%$%g197492197733%_))
                      (_%$%g197489197730%_ _%$%g197492197733%_))))
              (_%$%g197489197730%_ _%$%g197492197733%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g197489197730%_
                                                   _%$%g197492197733%_))
                                              (_%$%g197489197730%_
                                               _%$%g197492197733%_))))
                                      (_%$%g197489197730%_
                                       _%$%g197492197733%_))))
                              (_%$%g197489197730%_ _%$%g197492197733%_))
                          (_%$%g197489197730%_ _%$%g197492197733%_))
                      (_%$%g197489197730%_ _%$%g197492197733%_))))
              (_%$%g197489197730%_ _%$%g197492197733%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g197489197730%_
                                               _%$%g197492197733%_))))
                                      (_%$%g197489197730%_
                                       _%$%g197492197733%_))))
                              (_%$%g197489197730%_ _%$%g197492197733%_))))
                      (_%$%g197489197730%_ _%$%g197492197733%_))))
               (_%$%g197487198330%_
                (lambda (_%$%g197492198116%_)
                  (if (gx#stx-pair? _%$%g197492198116%_)
                      (let ((_%$%e197499198118%_
                             (gx#stx-e _%$%g197492198116%_)))
                        (let ((_%$%hd197500198121%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e197499198118%_)))
                              (_%$%tl197501198123%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e197499198118%_))))
                          (if (gx#stx-pair? _%$%tl197501198123%_)
                              (let ((_%$%e197502198126%_
                                     (gx#stx-e _%$%tl197501198123%_)))
                                (let ((_%$%hd197503198129%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e197502198126%_)))
                                      (_%$%tl197504198131%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e197502198126%_))))
                                  (if (gx#stx-pair? _%$%tl197504198131%_)
                                      (let ((_%$%e197505198134%_
                                             (gx#stx-e _%$%tl197504198131%_)))
                                        (let ((_%$%hd197506198137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e197505198134%_)))
                                              (_%$%tl197507198139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e197505198134%_))))
                                          (if (gx#stx-pair?
                                               _%$%hd197506198137%_)
                                              (let ((_%$%e197508198142%_
                                                     (gx#stx-e
                                                      _%$%hd197506198137%_)))
                                                (let ((_%$%hd197509198145%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e197508198142%_)))
                                                      (_%$%tl197510198147%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e197508198142%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd197509198145%_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _%$%hd197509198145%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl197510198147%_)
                                                              (let ((_%$%e197511198150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl197510198147%_)))
                        (let ((_%$%hd197512198153%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e197511198150%_)))
                              (_%$%tl197513198155%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e197511198150%_))))
                          (if (gx#stx-pair? _%$%hd197512198153%_)
                              (let ((_%$%e197514198158%_
                                     (gx#stx-e _%$%hd197512198153%_)))
                                (let ((_%$%hd197515198161%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e197514198158%_)))
                                      (_%$%tl197516198163%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e197514198158%_))))
                                  (if (gx#identifier? _%$%hd197515198161%_)
                                      (if (gx#stx-eq?
                                           '%#ref
                                           _%$%hd197515198161%_)
                                          (if (gx#stx-pair?
                                               _%$%tl197516198163%_)
                                              (let ((_%$%e197517198166%_
                                                     (gx#stx-e
                                                      _%$%tl197516198163%_)))
                                                (let ((_%$%hd197518198169%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e197517198166%_)))
                                                      (_%$%tl197519198171%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e197517198166%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl197519198171%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl197513198155%_)
                                                          (let ((_%$%e197520198174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl197513198155%_)))
                    (let ((_%$%hd197521198177%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e197520198174%_)))
                          (_%$%tl197522198179%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e197520198174%_))))
                      (if (gx#stx-pair? _%$%hd197521198177%_)
                          (let ((_%$%e197523198182%_
                                 (gx#stx-e _%$%hd197521198177%_)))
                            (let ((_%$%hd197524198185%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e197523198182%_)))
                                  (_%$%tl197525198187%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e197523198182%_))))
                              (if (gx#identifier? _%$%hd197524198185%_)
                                  (if (gx#stx-eq? '%#ref _%$%hd197524198185%_)
                                      (if (gx#stx-pair? _%$%tl197525198187%_)
                                          (let ((_%$%e197526198190%_
                                                 (gx#stx-e
                                                  _%$%tl197525198187%_)))
                                            (let ((_%$%hd197527198193%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e197526198190%_)))
                                                  (_%$%tl197528198195%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e197526198190%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl197528198195%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl197522198179%_)
                                                      (let ((_%$%e197529198198%_
                                                             (gx#stx-e
                                                              _%$%tl197522198179%_)))
                                                        (let ((_%$%hd197530198201%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e197529198198%_)))
                      (_%$%tl197531198203%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e197529198198%_))))
                  (if (gx#stx-pair? _%$%hd197530198201%_)
                      (let ((_%$%e197532198206%_
                             (gx#stx-e _%$%hd197530198201%_)))
                        (let ((_%$%hd197533198209%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e197532198206%_)))
                              (_%$%tl197534198211%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e197532198206%_))))
                          (if (gx#identifier? _%$%hd197533198209%_)
                              (if (gx#stx-eq? '%#quote _%$%hd197533198209%_)
                                  (if (gx#stx-pair? _%$%tl197534198211%_)
                                      (let ((_%$%e197535198214%_
                                             (gx#stx-e _%$%tl197534198211%_)))
                                        (let ((_%$%hd197536198217%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e197535198214%_)))
                                              (_%$%tl197537198219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e197535198214%_))))
                                          (if (gx#stx-null?
                                               _%$%tl197537198219%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl197531198203%_)
                                                  (let ((_%$%e197538198222%_
                                                         (gx#stx-e
                                                          _%$%tl197531198203%_)))
                                                    (let ((_%$%hd197539198225%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e197538198222%_)))
                                                          (_%$%tl197540198227%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e197538198222%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%hd197539198225%_)
                                                          (let ((_%$%e197541198230%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd197539198225%_)))
                    (let ((_%$%hd197542198233%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e197541198230%_)))
                          (_%$%tl197543198235%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e197541198230%_))))
                      (if (gx#identifier? _%$%hd197542198233%_)
                          (if (gx#stx-eq? '%#ref _%$%hd197542198233%_)
                              (if (gx#stx-pair? _%$%tl197543198235%_)
                                  (let ((_%$%e197544198238%_
                                         (gx#stx-e _%$%tl197543198235%_)))
                                    (let ((_%$%hd197545198241%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e197544198238%_)))
                                          (_%$%tl197546198243%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e197544198238%_))))
                                      (if (gx#stx-null? _%$%tl197546198243%_)
                                          (if (gx#stx-pair?
                                               _%$%tl197540198227%_)
                                              (let ((_%$%e197547198246%_
                                                     (gx#stx-e
                                                      _%$%tl197540198227%_)))
                                                (let ((_%$%hd197548198249%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e197547198246%_)))
                                                      (_%$%tl197549198251%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e197547198246%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%hd197548198249%_)
                                                      (let ((_%$%e197550198254%_
                                                             (gx#stx-e
                                                              _%$%hd197548198249%_)))
                                                        (let ((_%$%hd197551198257%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e197550198254%_)))
                      (_%$%tl197552198259%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e197550198254%_))))
                  (if (gx#identifier? _%$%hd197551198257%_)
                      (if (gx#stx-eq? '%#ref _%$%hd197551198257%_)
                          (if (gx#stx-pair? _%$%tl197552198259%_)
                              (let ((_%$%e197553198262%_
                                     (gx#stx-e _%$%tl197552198259%_)))
                                (let ((_%$%hd197554198265%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e197553198262%_)))
                                      (_%$%tl197555198267%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e197553198262%_))))
                                  (if (gx#stx-null? _%$%tl197555198267%_)
                                      (if (gx#stx-null? _%$%tl197549198251%_)
                                          (if (gx#stx-null?
                                               _%$%tl197507198139%_)
                                              ((lambda (_%$%g197493198270%_
                                                        _%$%g197494198271%_
                                                        _%$%g197495198272%_
                                                        _%$%g197496198273%_
                                                        _%$%g197497198274%_
                                                        _%$%g197498198275%_)
                                                 (if (and (gx#identifier?
                                                           _%$%g197498198275%_)
                                                          (gxc#runtime-identifier=?
                                                           _%$%g197497198274%_
                                                           'apply)
                                                          (gxc#runtime-identifier=?
                                                           _%$%g197496198273%_
                                                           'keyword-dispatch)
                                                          (gx#free-identifier=?
                                                           _%$%g197498198275%_
                                                           _%$%g197493198270%_))
                                                     (let* ((_%tab198325%_
                                                             (gx#stx-e
                                                              _%$%g197495198272%_))
                                                            (_%keys198327%_
                                                             (if _%tab198325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter identity (vector->list _%tab198325%_))
                         '#f)))
               (gxc#make-!kw-lambda
                _%keys198327%_
                (gxc#identifier-symbol _%$%g197494198271%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g197488198113%_
                                                      _%$%g197492198116%_)))
                                               _%$%hd197554198265%_
                                               _%$%hd197545198241%_
                                               _%$%hd197536198217%_
                                               _%$%hd197527198193%_
                                               _%$%hd197518198169%_
                                               _%$%hd197503198129%_)
                                              (_%$%g197488198113%_
                                               _%$%g197492198116%_))
                                          (_%$%g197488198113%_
                                           _%$%g197492198116%_))
                                      (_%$%g197488198113%_
                                       _%$%g197492198116%_))))
                              (_%$%g197488198113%_ _%$%g197492198116%_))
                          (_%$%g197488198113%_ _%$%g197492198116%_))
                      (_%$%g197488198113%_ _%$%g197492198116%_))))
              (_%$%g197488198113%_ _%$%g197492198116%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g197488198113%_
                                               _%$%g197492198116%_))
                                          (_%$%g197488198113%_
                                           _%$%g197492198116%_))))
                                  (_%$%g197488198113%_ _%$%g197492198116%_))
                              (_%$%g197488198113%_ _%$%g197492198116%_))
                          (_%$%g197488198113%_ _%$%g197492198116%_))))
                  (_%$%g197488198113%_ _%$%g197492198116%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g197488198113%_
                                                   _%$%g197492198116%_))
                                              (_%$%g197488198113%_
                                               _%$%g197492198116%_))))
                                      (_%$%g197488198113%_
                                       _%$%g197492198116%_))
                                  (_%$%g197488198113%_ _%$%g197492198116%_))
                              (_%$%g197488198113%_ _%$%g197492198116%_))))
                      (_%$%g197488198113%_ _%$%g197492198116%_))))
              (_%$%g197488198113%_ _%$%g197492198116%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g197488198113%_
                                                   _%$%g197492198116%_))))
                                          (_%$%g197488198113%_
                                           _%$%g197492198116%_))
                                      (_%$%g197488198113%_
                                       _%$%g197492198116%_))
                                  (_%$%g197488198113%_ _%$%g197492198116%_))))
                          (_%$%g197488198113%_ _%$%g197492198116%_))))
                  (_%$%g197488198113%_ _%$%g197492198116%_))
              (_%$%g197488198113%_ _%$%g197492198116%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g197488198113%_
                                               _%$%g197492198116%_))
                                          (_%$%g197488198113%_
                                           _%$%g197492198116%_))
                                      (_%$%g197488198113%_
                                       _%$%g197492198116%_))))
                              (_%$%g197488198113%_ _%$%g197492198116%_))))
                      (_%$%g197488198113%_ _%$%g197492198116%_))
                  (_%$%g197488198113%_ _%$%g197492198116%_))
              (_%$%g197488198113%_ _%$%g197492198116%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g197488198113%_
                                               _%$%g197492198116%_))))
                                      (_%$%g197488198113%_
                                       _%$%g197492198116%_))))
                              (_%$%g197488198113%_ _%$%g197492198116%_))))
                      (_%$%g197488198113%_ _%$%g197492198116%_)))))
          (_%$%g197487198330%_ _%stx197486%_))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_%self197356%_ _%stx197357%_)
        (letrec ((_%clause-e197359%_
                  (lambda (_%form197481%_)
                    (let ((_%signature197483%_
                           (gxc#lambda-form-infer-signature _%form197481%_)))
                      (gxc#make-!lambda
                       (gxc#lambda-form-arity _%form197481%_)
                       (if (gxc#dispatch-lambda-form? _%form197481%_)
                           (gxc#dispatch-lambda-form-delegate _%form197481%_)
                           '#f)
                       'signature:
                       _%signature197483%_))))
                 (_%return-type-e197360%_
                  (lambda (_%clauses197409%_)
                    (let _%loop197411%_ ((_%rest197413%_ _%clauses197409%_)
                                         (_%result197414%_ '#f))
                      (let* ((_%$%rest197415197423%_ _%rest197413%_)
                             (_%$%E197418197427%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest197415197423%_
                                       '([clause . rest])
                                       'else)
                                (void)))
                             (_%$%else197417197431%_
                              (lambda () _%result197414%_))
                             (_%$%K197419197469%_
                              (lambda (_%rest197434%_ _%clause197435%_)
                                (let* ((_%clause197437%_ _%clause197435%_)
                                       (_%return197461%_
                                        (let* ((_%signature197450%_
                                                (gxc#&!lambda-signature
                                                 _%clause197437%_))
                                               (_%signature197452%_
                                                _%signature197450%_))
                                          (if _%signature197452%_
                                              (if (gxc#&!signature-return
                                                   _%signature197452%_)
                                                  (gxc#optimizer-resolve-class
                                                   _%stx197357%_
                                                   (gxc#&!signature-return
                                                    _%signature197452%_))
                                                  '#f)
                                              '#f)))
                                       (_%result197466%_
                                        (if (and _%result197414%_
                                                 _%return197461%_)
                                            (gxc#greatest-common-type
                                             _%stx197357%_
                                             _%result197414%_
                                             _%return197461%_)
                                            (let ((_%$e197463%_
                                                   _%result197414%_))
                                              (if _%$e197463%_
                                                  _%$e197463%_
                                                  _%return197461%_)))))
                                  (_%loop197411%_
                                   _%rest197434%_
                                   _%result197466%_)))))
                        (if (pair? _%$%rest197415197423%_)
                            (let ((_%$%hd197420197472%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest197415197423%_)))
                                  (_%$%tl197421197474%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest197415197423%_))))
                              (let* ((_%clause197477%_ _%$%hd197420197472%_)
                                     (_%rest197479%_ _%$%tl197421197474%_))
                                (_%$%K197419197469%_
                                 _%rest197479%_
                                 _%clause197477%_)))
                            (_%$%else197417197431%_)))))))
          (let* ((_%$%g197362197372%_
                  (lambda (_%$%g197363197369%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g197363197369%_)))
                 (_%$%g197361197406%_
                  (lambda (_%$%g197363197375%_)
                    (if (gx#stx-pair? _%$%g197363197375%_)
                        (let ((_%$%e197365197377%_
                               (gx#stx-e _%$%g197363197375%_)))
                          (let ((_%$%hd197366197380%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e197365197377%_)))
                                (_%$%tl197367197382%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e197365197377%_))))
                            ((lambda (_%$%g197364197385%_)
                               (let* ((_%clauses197396%_
                                       (map _%clause-e197359%_
                                            _%$%g197364197385%_))
                                      (_%return197398%_
                                       (_%return-type-e197360%_
                                        _%clauses197396%_)))
                                 (gxc#make-!case-lambda
                                  _%clauses197396%_
                                  'signature:
                                  (if _%return197398%_
                                      (let ((_%$%return-type197400197402%_
                                             (gxc#optimizer-lookup-class-name
                                              _%return197398%_)))
                                        (if _%$%return-type197400197402%_
                                            (let ((_%return-type197404%_
                                                   _%$%return-type197400197402%_))
                                              (gxc#make-!signature
                                               'return:
                                               _%return-type197404%_))
                                            '#f))
                                      '#f))))
                             _%$%tl197367197382%_)))
                        (_%$%g197362197372%_ _%$%g197363197375%_)))))
            (_%$%g197361197406%_ _%stx197357%_)))))
    (define gxc#basic-expression-type-special (make-hash-table-eq))
    (define gxc#basic-expression-type-call%
      (lambda (_%self197216%_ _%stx197217%_)
        (letrec ((_%type-e197219%_
                  (lambda (_%rator197349%_ _%rator-type197350%_ _%args197351%_)
                    (if (not _%rator-type197350%_)
                        '#f
                        (if (gxc#!procedure? _%rator-type197350%_)
                            (call-method
                             _%rator-type197350%_
                             'return-type
                             _%self197216%_
                             _%stx197217%_
                             _%args197351%_)
                            '#f)))))
          (let* ((_%$%g197222197250%_
                  (lambda (_%$%g197223197247%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g197223197247%_)))
                 (_%$%g197221197286%_
                  (lambda (_%$%g197223197253%_)
                    (if (gx#stx-pair? _%$%g197223197253%_)
                        (let ((_%$%e197240197255%_
                               (gx#stx-e _%$%g197223197253%_)))
                          (let ((_%$%hd197241197258%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e197240197255%_)))
                                (_%$%tl197242197260%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e197240197255%_))))
                            (if (gx#stx-pair? _%$%tl197242197260%_)
                                (let ((_%$%e197243197263%_
                                       (gx#stx-e _%$%tl197242197260%_)))
                                  (let ((_%$%hd197244197266%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e197243197263%_)))
                                        (_%$%tl197245197268%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e197243197263%_))))
                                    ((lambda (_%$%g197238197271%_
                                              _%$%g197239197272%_)
                                       (_%type-e197219%_
                                        _%$%g197239197272%_
                                        (gxc#apply-basic-expression-type
                                         _%$%g197239197272%_)
                                        _%$%g197238197271%_))
                                     _%$%tl197245197268%_
                                     _%$%hd197244197266%_)))
                                (_%$%g197222197250%_ _%$%g197223197253%_))))
                        (_%$%g197222197250%_ _%$%g197223197253%_))))
                 (_%$%g197220197346%_
                  (lambda (_%$%g197223197289%_)
                    (if (gx#stx-pair? _%$%g197223197289%_)
                        (let ((_%$%e197226197291%_
                               (gx#stx-e _%$%g197223197289%_)))
                          (let ((_%$%hd197227197294%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e197226197291%_)))
                                (_%$%tl197228197296%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e197226197291%_))))
                            (if (gx#stx-pair? _%$%tl197228197296%_)
                                (let ((_%$%e197229197299%_
                                       (gx#stx-e _%$%tl197228197296%_)))
                                  (let ((_%$%hd197230197302%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e197229197299%_)))
                                        (_%$%tl197231197304%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e197229197299%_))))
                                    (if (gx#stx-pair? _%$%hd197230197302%_)
                                        (let ((_%$%e197232197307%_
                                               (gx#stx-e
                                                _%$%hd197230197302%_)))
                                          (let ((_%$%hd197233197310%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e197232197307%_)))
                                                (_%$%tl197234197312%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e197232197307%_))))
                                            (if (gx#identifier?
                                                 _%$%hd197233197310%_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _%$%hd197233197310%_)
                                                    (if (gx#stx-pair?
                                                         _%$%tl197234197312%_)
                                                        (let ((_%$%e197235197315%_
                                                               (gx#stx-e
                                                                _%$%tl197234197312%_)))
                                                          (let ((_%$%hd197236197318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e197235197315%_)))
                        (_%$%tl197237197320%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e197235197315%_))))
                    (if (gx#stx-null? _%$%tl197237197320%_)
                        ((lambda (_%$%g197224197323%_ _%$%g197225197324%_)
                           (let ((_%$e197340%_
                                  (hash-get
                                   gxc#basic-expression-type-special
                                   (gxc#identifier-symbol
                                    _%$%g197225197324%_))))
                             (if _%$e197340%_
                                 ((lambda (_%type-e197343%_)
                                    (_%type-e197343%_
                                     _%self197216%_
                                     _%stx197217%_))
                                  _%$e197340%_)
                                 (_%type-e197219%_
                                  _%$%g197225197324%_
                                  (gxc#optimizer-resolve-type
                                   (gxc#identifier-symbol _%$%g197225197324%_))
                                  _%$%g197224197323%_))))
                         _%$%tl197231197304%_
                         _%$%hd197236197318%_)
                        (_%$%g197221197286%_ _%$%g197223197289%_))))
                (_%$%g197221197286%_ _%$%g197223197289%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g197221197286%_
                                                     _%$%g197223197289%_))
                                                (_%$%g197221197286%_
                                                 _%$%g197223197289%_))))
                                        (_%$%g197221197286%_
                                         _%$%g197223197289%_))))
                                (_%$%g197221197286%_ _%$%g197223197289%_))))
                        (_%$%g197221197286%_ _%$%g197223197289%_)))))
            (_%$%g197220197346%_ _%stx197217%_)))))
    (define gxc#!procedure::return-type
      (lambda (_%self197200%_ _%ctx197201%_ _%stx197202%_ _%args197203%_)
        (let ((_%self197206%_ _%self197200%_))
          (if (gxc#&!procedure-signature _%self197206%_)
              (gxc#optimizer-resolve-class
               _%stx197202%_
               (gxc#&!signature-return
                (gxc#&!procedure-signature _%self197206%_)))
              '#f))))
    (bind-method!
     gxc#!procedure::t
     'return-type
     gxc#!procedure::return-type
     '#f)
    (define gxc#!procedure::apply-return-type gxc#!procedure::return-type)
    (bind-method!
     gxc#!procedure::t
     'apply-return-type
     gxc#!procedure::apply-return-type
     '#f)
    (define gxc#!lambda::return-type
      (lambda (_%self196935%_ _%ctx196936%_ _%stx196937%_ _%args196938%_)
        (let ((_%self196941%_ _%self196935%_))
          (if (gxc#&!lambda-dispatch _%self196941%_)
              (let ((_%$%dispatch-type196950196952%_
                     (gxc#optimizer-lookup-type
                      (gxc#&!lambda-dispatch _%self196941%_))))
                (if _%$%dispatch-type196950196952%_
                    (let ((_%dispatch-type196954%_
                           _%$%dispatch-type196950196952%_))
                      (if (gxc#!procedure? _%dispatch-type196954%_)
                          (call-method
                           _%dispatch-type196954%_
                           'return-type
                           _%ctx196936%_
                           _%stx196937%_
                           _%args196938%_)
                          '#f))
                    '#f))
              (gxc#!procedure::return-type
               _%self196941%_
               _%ctx196936%_
               _%stx196937%_
               _%args196938%_)))))
    (bind-method! gxc#!lambda::t 'return-type gxc#!lambda::return-type '#f)
    (define gxc#!lambda::apply-return-type gxc#!lambda::return-type)
    (bind-method!
     gxc#!lambda::t
     'apply-return-type
     gxc#!lambda::apply-return-type
     '#f)
    (define gxc#!case-lambda::return-type
      (lambda (_%self196665%_ _%ctx196666%_ _%stx196667%_ _%args196668%_)
        (let* ((_%self196671%_ _%self196665%_)
               (_%$e196685%_
                (find (lambda (_%$%g196680196682%_)
                        (gxc#!lambda-arity-match?
                         _%$%g196680196682%_
                         _%args196668%_))
                      (gxc#&!case-lambda-clauses _%self196671%_))))
          (if _%$e196685%_
              ((lambda (_%clause196688%_)
                 (call-method
                  _%clause196688%_
                  'return-type
                  _%ctx196666%_
                  _%stx196667%_
                  _%args196668%_))
               _%$e196685%_)
              (gxc#!procedure::return-type
               _%self196671%_
               _%ctx196666%_
               _%stx196667%_
               _%args196668%_)))))
    (bind-method!
     gxc#!case-lambda::t
     'return-type
     gxc#!case-lambda::return-type
     '#f)
    (define gxc#!case-lambda::apply-return-type
      (lambda (_%self196513%_ _%ctx196514%_ _%stx196515%_ _%args196516%_)
        (let* ((_%self196519%_ _%self196513%_)
               (_%candidates196533%_
                (filter (lambda (_%$%g196528196530%_)
                          (gxc#!lambda-arity-match-apply?
                           _%$%g196528196530%_
                           _%args196516%_))
                        (gxc#&!case-lambda-clauses _%self196519%_)))
               (_%candidate-types196537%_
                (map (lambda (_%candidate196535%_)
                       (call-method
                        _%candidate196535%_
                        'apply-return-type
                        _%ctx196514%_
                        _%stx196515%_
                        _%args196516%_))
                     _%candidates196533%_)))
          (if (pair? _%candidate-types196537%_)
              (foldl (lambda (_%candidate-type196540%_ _%ret196541%_)
                       (if _%ret196541%_
                           (if _%candidate-type196540%_
                               (gxc#greatest-common-type
                                _%stx196515%_
                                _%candidate-type196540%_
                                _%ret196541%_)
                               '#f)
                           '#f))
                     (car _%candidate-types196537%_)
                     (cdr _%candidate-types196537%_))
              (gxc#!procedure::return-type
               _%self196519%_
               _%ctx196514%_
               _%stx196515%_
               _%args196516%_)))))
    (bind-method!
     gxc#!case-lambda::t
     'apply-return-type
     gxc#!case-lambda::apply-return-type
     '#f)
    (define gxc#!kw-lambda::return-type
      (lambda (_%self196320%_ _%ctx196321%_ _%stx196322%_ _%args196323%_)
        (let* ((_%self196326%_ _%self196320%_)
               (_%$%g196335196346%_
                (gxc#optimizer-lookup-type
                 (gxc#&!kw-lambda-dispatch _%self196326%_)))
               (_%$%E196338196350%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g196335196346%_
                         '((!kw-lambda-primary _ _ keys main))
                         '((? !procedure? proc)))
                  (void)))
               (_%$%try-match196337196361%_
                (lambda ()
                  (let ((_%$%K196339196356%_
                         (lambda (_%proc196354%_)
                           (call-method
                            _%proc196354%_
                            'return-type
                            _%proc196354%_
                            _%ctx196321%_
                            _%stx196322%_
                            (gxc#extract-keyword-args _%args196323%_)))))
                    (if (gxc#!procedure? _%$%g196335196346%_)
                        (let ((_%proc196359%_ _%$%g196335196346%_))
                          (_%$%K196339196356%_ _%proc196359%_))
                        (_%$%E196338196350%_)))))
               (_%$%K196340196372%_
                (lambda (_%main196364%_ _%keys196365%_)
                  (let ((_%$%main-type196366196368%_
                         (gxc#optimizer-lookup-type _%main196364%_)))
                    (if _%$%main-type196366196368%_
                        (let ((_%main-type196370%_
                               _%$%main-type196366196368%_))
                          (call-method
                           _%main-type196370%_
                           'return-type
                           _%ctx196321%_
                           _%stx196322%_
                           (gxc#extract-keyword-args _%args196323%_)))
                        '#f)))))
          (if (gxc#!kw-lambda-primary? _%$%g196335196346%_)
              (let* ((_%$%e196341196375%_ (gxc#&!type-id _%$%g196335196346%_))
                     (_%$%e196342196378%_
                      (gxc#&!procedure-signature _%$%g196335196346%_))
                     (_%$%e196343196381%_
                      (gxc#&!kw-lambda-primary-keys _%$%g196335196346%_))
                     (_%keys196384%_ _%$%e196343196381%_)
                     (_%$%e196344196386%_
                      (gxc#&!kw-lambda-primary-main _%$%g196335196346%_))
                     (_%main196389%_ _%$%e196344196386%_))
                (_%$%K196340196372%_ _%main196389%_ _%keys196384%_))
              (_%$%try-match196337196361%_)))))
    (bind-method!
     gxc#!kw-lambda::t
     'return-type
     gxc#!kw-lambda::return-type
     '#f)
    (define gxc#!kw-lambda::apply-return-type
      (lambda (_%self196127%_ _%ctx196128%_ _%stx196129%_ _%args196130%_)
        (let* ((_%self196133%_ _%self196127%_)
               (_%$%g196142196153%_
                (gxc#optimizer-lookup-type
                 (gxc#&!kw-lambda-dispatch _%self196133%_)))
               (_%$%E196145196157%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g196142196153%_
                         '((!kw-lambda-primary _ _ keys main))
                         '((? !procedure? proc)))
                  (void)))
               (_%$%try-match196144196168%_
                (lambda ()
                  (let ((_%$%K196146196163%_
                         (lambda (_%proc196161%_)
                           (call-method
                            _%proc196161%_
                            'apply-return-type
                            _%proc196161%_
                            _%ctx196128%_
                            _%stx196129%_
                            (gxc#extract-keyword-args _%args196130%_)))))
                    (if (gxc#!procedure? _%$%g196142196153%_)
                        (let ((_%proc196166%_ _%$%g196142196153%_))
                          (_%$%K196146196163%_ _%proc196166%_))
                        (_%$%E196145196157%_)))))
               (_%$%K196147196179%_
                (lambda (_%main196171%_ _%keys196172%_)
                  (let ((_%$%main-type196173196175%_
                         (gxc#optimizer-lookup-type _%main196171%_)))
                    (if _%$%main-type196173196175%_
                        (let ((_%main-type196177%_
                               _%$%main-type196173196175%_))
                          (call-method
                           _%main-type196177%_
                           'apply-return-type
                           _%ctx196128%_
                           _%stx196129%_
                           (gxc#extract-keyword-args _%args196130%_)))
                        '#f)))))
          (if (gxc#!kw-lambda-primary? _%$%g196142196153%_)
              (let* ((_%$%e196148196182%_ (gxc#&!type-id _%$%g196142196153%_))
                     (_%$%e196149196185%_
                      (gxc#&!procedure-signature _%$%g196142196153%_))
                     (_%$%e196150196188%_
                      (gxc#&!kw-lambda-primary-keys _%$%g196142196153%_))
                     (_%keys196191%_ _%$%e196150196188%_)
                     (_%$%e196151196193%_
                      (gxc#&!kw-lambda-primary-main _%$%g196142196153%_))
                     (_%main196196%_ _%$%e196151196193%_))
                (_%$%K196147196179%_ _%main196196%_ _%keys196191%_))
              (_%$%try-match196144196168%_)))))
    (bind-method!
     gxc#!kw-lambda::t
     'apply-return-type
     gxc#!kw-lambda::apply-return-type
     '#f)
    (define gxc#extract-keyword-args
      (lambda (_%args195876%_)
        (let _%loop195878%_ ((_%rest195880%_ _%args195876%_)
                             (_%result195881%_ '()))
          (let* ((_%$%g195885195911%_
                  (lambda (_%$%g195886195908%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g195886195908%_)))
                 (_%$%g195884195918%_
                  (lambda (_%$%g195886195914%_)
                    ((lambda () (reverse! _%result195881%_)))))
                 (_%$%g195883195946%_
                  (lambda (_%$%g195886195921%_)
                    (if (gx#stx-pair? _%$%g195886195921%_)
                        (let ((_%$%e195904195923%_
                               (gx#stx-e _%$%g195886195921%_)))
                          (let ((_%$%hd195905195926%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e195904195923%_)))
                                (_%$%tl195906195928%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e195904195923%_))))
                            ((lambda (_%$%g195902195931%_ _%$%g195903195932%_)
                               (_%loop195878%_
                                _%$%g195902195931%_
                                (cons _%$%g195903195932%_ _%result195881%_)))
                             _%$%tl195906195928%_
                             _%$%hd195905195926%_)))
                        (_%$%g195884195918%_ _%$%g195886195921%_))))
                 (_%$%g195882196002%_
                  (lambda (_%$%g195886195949%_)
                    (if (gx#stx-pair? _%$%g195886195949%_)
                        (let ((_%$%e195890195951%_
                               (gx#stx-e _%$%g195886195949%_)))
                          (let ((_%$%hd195891195954%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e195890195951%_)))
                                (_%$%tl195892195956%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e195890195951%_))))
                            (if (gx#stx-pair? _%$%hd195891195954%_)
                                (let ((_%$%e195893195959%_
                                       (gx#stx-e _%$%hd195891195954%_)))
                                  (let ((_%$%hd195894195962%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e195893195959%_)))
                                        (_%$%tl195895195964%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e195893195959%_))))
                                    (if (gx#identifier? _%$%hd195894195962%_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _%$%hd195894195962%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl195895195964%_)
                                                (let ((_%$%e195896195967%_
                                                       (gx#stx-e
                                                        _%$%tl195895195964%_)))
                                                  (let ((_%$%hd195897195970%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e195896195967%_)))
                                                        (_%$%tl195898195972%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e195896195967%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl195898195972%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl195892195956%_)
                                                            (let ((_%$%e195899195975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _%$%tl195892195956%_)))
                      (let ((_%$%hd195900195978%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e195899195975%_)))
                            (_%$%tl195901195980%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e195899195975%_))))
                        ((lambda (_%$%g195887195983%_
                                  _%$%g195888195984%_
                                  _%$%g195889195985%_)
                           (if (gx#stx-keyword? _%$%g195889195985%_)
                               (_%loop195878%_
                                _%$%g195887195983%_
                                (cons _%$%g195888195984%_ _%result195881%_))
                               (_%$%g195883195946%_ _%$%g195886195949%_)))
                         _%$%tl195901195980%_
                         _%$%hd195900195978%_
                         _%$%hd195897195970%_)))
                    (_%$%g195883195946%_ _%$%g195886195949%_))
                (_%$%g195883195946%_ _%$%g195886195949%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g195883195946%_
                                                 _%$%g195886195949%_))
                                            (_%$%g195883195946%_
                                             _%$%g195886195949%_))
                                        (_%$%g195883195946%_
                                         _%$%g195886195949%_))))
                                (_%$%g195883195946%_ _%$%g195886195949%_))))
                        (_%$%g195883195946%_ _%$%g195886195949%_)))))
            (_%$%g195882196002%_ _%rest195880%_)))))
    (define gxc#!lambda-arity-match?
      (lambda (_%self195809%_ _%args195810%_)
        (let* ((_%$%self195811195819%_ _%self195809%_)
               (_%$%E195813195822%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self195811195819%_
                         '((!lambda _ _ arity)))
                  (void)))
               (_%$%K195814195862%_
                (lambda (_%arity195825%_)
                  (let* ((_%$%arity195826195835%_ _%arity195825%_)
                         (_%$%E195829195839%_
                          (lambda ()
                            (error '"No clause matching"
                                   _%$%arity195826195835%_
                                   '((? fixnum?))
                                   '([arity]))
                            (void)))
                         (_%$%try-match195828195855%_
                          (lambda ()
                            (let ((_%$%K195830195845%_
                                   (lambda (_%arity195843%_)
                                     (fx>= (length _%args195810%_)
                                           _%arity195843%_))))
                              (if (pair? _%$%arity195826195835%_)
                                  (let ((_%$%hd195831195848%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%arity195826195835%_)))
                                        (_%$%tl195832195850%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%arity195826195835%_))))
                                    (let ((_%arity195853%_
                                           _%$%hd195831195848%_))
                                      (if (null? _%$%tl195832195850%_)
                                          (_%$%K195830195845%_ _%arity195853%_)
                                          (_%$%E195829195839%_))))
                                  (_%$%E195829195839%_)))))
                         (_%$%K195833195859%_
                          (lambda ()
                            (fx= (length _%args195810%_) _%arity195825%_))))
                    (if (fixnum? _%$%arity195826195835%_)
                        (_%$%K195833195859%_)
                        (_%$%try-match195828195855%_))))))
          (if (gxc#!lambda? _%$%self195811195819%_)
              (let* ((_%$%e195815195865%_
                      (gxc#&!type-id _%$%self195811195819%_))
                     (_%$%e195816195868%_
                      (gxc#&!procedure-signature _%$%self195811195819%_))
                     (_%$%e195817195871%_
                      (gxc#&!lambda-arity _%$%self195811195819%_))
                     (_%arity195874%_ _%$%e195817195871%_))
                (_%$%K195814195862%_ _%arity195874%_))
              (_%$%E195813195822%_)))))
    (define gxc#!lambda-arity-match-apply?
      (lambda (_%self195742%_ _%args195743%_)
        (let* ((_%$%self195744195752%_ _%self195742%_)
               (_%$%E195746195755%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self195744195752%_
                         '((!lambda _ _ arity)))
                  (void)))
               (_%$%K195747195795%_
                (lambda (_%arity195758%_)
                  (let* ((_%$%arity195759195768%_ _%arity195758%_)
                         (_%$%E195762195772%_
                          (lambda ()
                            (error '"No clause matching"
                                   _%$%arity195759195768%_
                                   '((? fixnum?))
                                   '([arity]))
                            (void)))
                         (_%$%try-match195761195788%_
                          (lambda ()
                            (let ((_%$%K195763195778%_
                                   (lambda (_%arity195776%_) '#t)))
                              (if (pair? _%$%arity195759195768%_)
                                  (let ((_%$%hd195764195781%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%arity195759195768%_)))
                                        (_%$%tl195765195783%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%arity195759195768%_))))
                                    (let ((_%arity195786%_
                                           _%$%hd195764195781%_))
                                      (if (null? _%$%tl195765195783%_)
                                          (_%$%K195763195778%_ _%arity195786%_)
                                          (_%$%E195762195772%_))))
                                  (_%$%E195762195772%_)))))
                         (_%$%K195766195792%_
                          (lambda ()
                            (fx>= _%arity195758%_ (length _%args195743%_)))))
                    (if (fixnum? _%$%arity195759195768%_)
                        (_%$%K195766195792%_)
                        (_%$%try-match195761195788%_))))))
          (if (gxc#!lambda? _%$%self195744195752%_)
              (let* ((_%$%e195748195798%_
                      (gxc#&!type-id _%$%self195744195752%_))
                     (_%$%e195749195801%_
                      (gxc#&!procedure-signature _%$%self195744195752%_))
                     (_%$%e195750195804%_
                      (gxc#&!lambda-arity _%$%self195744195752%_))
                     (_%arity195807%_ _%$%e195750195804%_))
                (_%$%K195747195795%_ _%arity195807%_))
              (_%$%E195746195755%_)))))
    (define gxc#basic-expression-type-special-cast
      (lambda (_%ctx195630%_ _%stx195631%_)
        (let* ((_%$%g195633195659%_
                (lambda (_%$%g195634195656%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g195634195656%_)))
               (_%$%g195632195739%_
                (lambda (_%$%g195634195662%_)
                  (if (gx#stx-pair? _%$%g195634195662%_)
                      (let ((_%$%e195637195664%_
                             (gx#stx-e _%$%g195634195662%_)))
                        (let ((_%$%hd195638195667%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e195637195664%_)))
                              (_%$%tl195639195669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e195637195664%_))))
                          (if (gx#stx-pair? _%$%tl195639195669%_)
                              (let ((_%$%e195640195672%_
                                     (gx#stx-e _%$%tl195639195669%_)))
                                (let ((_%$%hd195641195675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e195640195672%_)))
                                      (_%$%tl195642195677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e195640195672%_))))
                                  (if (gx#stx-pair? _%$%tl195642195677%_)
                                      (let ((_%$%e195643195680%_
                                             (gx#stx-e _%$%tl195642195677%_)))
                                        (let ((_%$%hd195644195683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e195643195680%_)))
                                              (_%$%tl195645195685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e195643195680%_))))
                                          (if (gx#stx-pair?
                                               _%$%hd195644195683%_)
                                              (let ((_%$%e195646195688%_
                                                     (gx#stx-e
                                                      _%$%hd195644195683%_)))
                                                (let ((_%$%hd195647195691%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e195646195688%_)))
                                                      (_%$%tl195648195693%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e195646195688%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd195647195691%_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd195647195691%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl195648195693%_)
                                                              (let ((_%$%e195649195696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl195648195693%_)))
                        (let ((_%$%hd195650195699%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e195649195696%_)))
                              (_%$%tl195651195701%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e195649195696%_))))
                          (if (gx#stx-null? _%$%tl195651195701%_)
                              (if (gx#stx-pair? _%$%tl195645195685%_)
                                  (let ((_%$%e195652195704%_
                                         (gx#stx-e _%$%tl195645195685%_)))
                                    (let ((_%$%hd195653195707%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e195652195704%_)))
                                          (_%$%tl195654195709%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e195652195704%_))))
                                      (if (gx#stx-null? _%$%tl195654195709%_)
                                          ((lambda (_%$%g195635195712%_
                                                    _%$%g195636195713%_)
                                             (let ((_%$%interface-type195733195735%_
                                                    (gxc#optimizer-resolve-type
                                                     (gxc#identifier-symbol
                                                      _%$%g195636195713%_))))
                                               (if _%$%interface-type195733195735%_
                                                   (let ((_%interface-type195737%_
                                                          _%$%interface-type195733195735%_))
                                                     (if (gxc#!interface?
                                                          _%interface-type195737%_)
                                                         (gxc#optimizer-resolve-class
                                                          _%stx195631%_
                                                          (gxc#!type-id
                                                           _%interface-type195737%_))
                                                         (gxc#raise-compile-error
                                                          '"cast to non interface"
                                                          _%stx195631%_
                                                          _%$%g195636195713%_
                                                          _%interface-type195737%_)))
                                                   '#f)))
                                           _%$%hd195653195707%_
                                           _%$%hd195650195699%_)
                                          (_%$%g195633195659%_
                                           _%$%g195634195662%_))))
                                  (_%$%g195633195659%_ _%$%g195634195662%_))
                              (_%$%g195633195659%_ _%$%g195634195662%_))))
                      (_%$%g195633195659%_ _%$%g195634195662%_))
                  (_%$%g195633195659%_ _%$%g195634195662%_))
              (_%$%g195633195659%_ _%$%g195634195662%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g195633195659%_
                                               _%$%g195634195662%_))))
                                      (_%$%g195633195659%_
                                       _%$%g195634195662%_))))
                              (_%$%g195633195659%_ _%$%g195634195662%_))))
                      (_%$%g195633195659%_ _%$%g195634195662%_)))))
          (_%$%g195632195739%_ _%stx195631%_))))
    (define gxc#basic-expression-type-special-apply
      (lambda (_%ctx195422%_ _%stx195423%_)
        (letrec ((_%type-e195425%_
                  (lambda (_%rator195626%_ _%rator-type195627%_ _%args195628%_)
                    (if (gxc#!procedure? _%rator-type195627%_)
                        (call-method
                         _%rator-type195627%_
                         'apply-return-type
                         _%ctx195422%_
                         _%stx195423%_
                         _%args195628%_)
                        '#f))))
          (let* ((_%$%g195429195471%_
                  (lambda (_%$%g195430195468%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g195430195468%_)))
                 (_%$%g195428195478%_
                  (lambda (_%$%g195430195474%_) ((lambda () '#f))))
                 (_%$%g195427195530%_
                  (lambda (_%$%g195430195481%_)
                    (if (gx#stx-pair? _%$%g195430195481%_)
                        (let ((_%$%e195458195483%_
                               (gx#stx-e _%$%g195430195481%_)))
                          (let ((_%$%hd195459195486%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e195458195483%_)))
                                (_%$%tl195460195488%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e195458195483%_))))
                            (if (gx#stx-pair? _%$%tl195460195488%_)
                                (let ((_%$%e195461195491%_
                                       (gx#stx-e _%$%tl195460195488%_)))
                                  (let ((_%$%hd195462195494%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e195461195491%_)))
                                        (_%$%tl195463195496%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e195461195491%_))))
                                    (if (gx#stx-pair? _%$%tl195463195496%_)
                                        (let ((_%$%e195464195499%_
                                               (gx#stx-e
                                                _%$%tl195463195496%_)))
                                          (let ((_%$%hd195465195502%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e195464195499%_)))
                                                (_%$%tl195466195504%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e195464195499%_))))
                                            ((lambda (_%$%g195456195507%_
                                                      _%$%g195457195508%_)
                                               (let ((_%$%rator-type195524195526%_
                                                      (gxc#apply-basic-expression-type
                                                       _%$%g195457195508%_)))
                                                 (if _%$%rator-type195524195526%_
                                                     (let ((_%rator-type195528%_
                                                            _%$%rator-type195524195526%_))
                                                       (_%type-e195425%_
                                                        _%$%g195457195508%_
                                                        _%rator-type195528%_
                                                        _%$%g195456195507%_))
                                                     '#f)))
                                             _%$%tl195466195504%_
                                             _%$%hd195465195502%_)))
                                        (_%$%g195428195478%_
                                         _%$%g195430195481%_))))
                                (_%$%g195428195478%_ _%$%g195430195481%_))))
                        (_%$%g195428195478%_ _%$%g195430195481%_))))
                 (_%$%g195426195623%_
                  (lambda (_%$%g195430195533%_)
                    (if (gx#stx-pair? _%$%g195430195533%_)
                        (let ((_%$%e195435195535%_
                               (gx#stx-e _%$%g195430195533%_)))
                          (let ((_%$%hd195436195538%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e195435195535%_)))
                                (_%$%tl195437195540%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e195435195535%_))))
                            (if (gx#stx-pair? _%$%tl195437195540%_)
                                (let ((_%$%e195438195543%_
                                       (gx#stx-e _%$%tl195437195540%_)))
                                  (let ((_%$%hd195439195546%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e195438195543%_)))
                                        (_%$%tl195440195548%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e195438195543%_))))
                                    (if (gx#stx-pair? _%$%tl195440195548%_)
                                        (let ((_%$%e195441195551%_
                                               (gx#stx-e
                                                _%$%tl195440195548%_)))
                                          (let ((_%$%hd195442195554%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e195441195551%_)))
                                                (_%$%tl195443195556%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e195441195551%_))))
                                            (if (gx#stx-pair?
                                                 _%$%hd195442195554%_)
                                                (let ((_%$%e195444195559%_
                                                       (gx#stx-e
                                                        _%$%hd195442195554%_)))
                                                  (let ((_%$%hd195445195562%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e195444195559%_)))
                                                        (_%$%tl195446195564%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e195444195559%_))))
                                                    (if (gx#identifier?
                                                         _%$%hd195445195562%_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd195445195562%_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl195446195564%_)
                        (let ((_%$%e195447195567%_
                               (gx#stx-e _%$%tl195446195564%_)))
                          (let ((_%$%hd195448195570%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e195447195567%_)))
                                (_%$%tl195449195572%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e195447195567%_))))
                            (if (gx#stx-null? _%$%tl195449195572%_)
                                (if (gx#stx-pair? _%$%tl195443195556%_)
                                    (let ((_%$%e195450195575%_
                                           (gx#stx-e _%$%tl195443195556%_)))
                                      (let ((_%$%hd195451195578%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e195450195575%_)))
                                            (_%$%tl195452195580%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e195450195575%_))))
                                        (if (gx#stx-pair? _%$%tl195452195580%_)
                                            (let ((_%$%e195453195583%_
                                                   (gx#stx-e
                                                    _%$%tl195452195580%_)))
                                              (let ((_%$%hd195454195586%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e195453195583%_)))
                                                    (_%$%tl195455195588%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e195453195583%_))))
                                                ((lambda (_%$%g195431195591%_
                                                          _%$%g195432195592%_
                                                          _%$%g195433195593%_
                                                          _%$%g195434195594%_)
                                                   (if (gx#free-identifier=?
                                                        _%$%g195434195594%_
                                                        'keyword-dispatch)
                                                       (let ((_%$%rator-type195617195619%_
                                                              (gxc#apply-basic-expression-type
                                                               _%$%g195432195592%_)))
                                                         (if _%$%rator-type195617195619%_
                                                             (let ((_%rator-type195621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%rator-type195617195619%_))
                       (_%type-e195425%_
                        _%$%g195432195592%_
                        _%rator-type195621%_
                        (cons _%$%g195433195593%_ _%$%g195431195591%_)))
                     '#f))
               (_%$%g195427195530%_ _%$%g195430195533%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%tl195455195588%_
                                                 _%$%hd195454195586%_
                                                 _%$%hd195451195578%_
                                                 _%$%hd195448195570%_)))
                                            (_%$%g195427195530%_
                                             _%$%g195430195533%_))))
                                    (_%$%g195427195530%_ _%$%g195430195533%_))
                                (_%$%g195427195530%_ _%$%g195430195533%_))))
                        (_%$%g195427195530%_ _%$%g195430195533%_))
                    (_%$%g195427195530%_ _%$%g195430195533%_))
                (_%$%g195427195530%_ _%$%g195430195533%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g195427195530%_
                                                 _%$%g195430195533%_))))
                                        (_%$%g195427195530%_
                                         _%$%g195430195533%_))))
                                (_%$%g195427195530%_ _%$%g195430195533%_))))
                        (_%$%g195427195530%_ _%$%g195430195533%_)))))
            (_%$%g195426195623%_ _%stx195423%_)))))
    (hash-put!
     gxc#basic-expression-type-special
     'cast
     gxc#basic-expression-type-special-cast)
    (hash-put!
     gxc#basic-expression-type-special
     'apply
     gxc#basic-expression-type-special-apply)
    (hash-put!
     gxc#basic-expression-type-special
     '##apply
     gxc#basic-expression-type-special-apply)
    (define gxc#basic-expression-type-ref%
      (lambda (_%self195370%_ _%stx195371%_)
        (let* ((_%$%g195373195386%_
                (lambda (_%$%g195374195383%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g195374195383%_)))
               (_%$%g195372195419%_
                (lambda (_%$%g195374195389%_)
                  (if (gx#stx-pair? _%$%g195374195389%_)
                      (let ((_%$%e195376195391%_
                             (gx#stx-e _%$%g195374195389%_)))
                        (let ((_%$%hd195377195394%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e195376195391%_)))
                              (_%$%tl195378195396%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e195376195391%_))))
                          (if (gx#stx-pair? _%$%tl195378195396%_)
                              (let ((_%$%e195379195399%_
                                     (gx#stx-e _%$%tl195378195396%_)))
                                (let ((_%$%hd195380195402%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e195379195399%_)))
                                      (_%$%tl195381195404%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e195379195399%_))))
                                  (if (gx#stx-null? _%$%tl195381195404%_)
                                      ((lambda (_%$%g195375195407%_)
                                         (gxc#optimizer-resolve-type
                                          (gxc#identifier-symbol
                                           _%$%g195375195407%_)))
                                       _%$%hd195380195402%_)
                                      (_%$%g195373195386%_
                                       _%$%g195374195389%_))))
                              (_%$%g195373195386%_ _%$%g195374195389%_))))
                      (_%$%g195373195386%_ _%$%g195374195389%_)))))
          (_%$%g195372195419%_ _%stx195371%_))))
    (define gxc#basic-expression-type-if%
      (lambda (_%self194949%_ _%stx194950%_)
        (letrec ((_%type-e194952%_
                  (lambda (_%type-K195364%_ _%type-E195365%_)
                    (if (gxc#!abort? _%type-E195365%_)
                        _%type-K195364%_
                        (if (gxc#!abort? _%type-K195364%_)
                            _%type-E195365%_
                            (gxc#greatest-common-type
                             _%stx194950%_
                             _%type-K195364%_
                             _%type-E195365%_)))))
                 (_%basic-type-e194953%_
                  (lambda (_%K195358%_ _%E195359%_)
                    (let ((_%type-K195361%_
                           (gxc#apply-basic-expression-type _%K195358%_))
                          (_%type-E195362%_
                           (gxc#apply-basic-expression-type _%E195359%_)))
                      (_%type-e194952%_ _%type-K195361%_ _%type-E195362%_)))))
          (let* ((_%$%g194957195046%_
                  (lambda (_%$%g194958195043%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g194958195043%_)))
                 (_%$%g194956195104%_
                  (lambda (_%$%g194958195049%_)
                    (if (gx#stx-pair? _%$%g194958195049%_)
                        (let ((_%$%e195030195051%_
                               (gx#stx-e _%$%g194958195049%_)))
                          (let ((_%$%hd195031195054%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e195030195051%_)))
                                (_%$%tl195032195056%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e195030195051%_))))
                            (if (gx#stx-pair? _%$%tl195032195056%_)
                                (let ((_%$%e195033195059%_
                                       (gx#stx-e _%$%tl195032195056%_)))
                                  (let ((_%$%hd195034195062%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e195033195059%_)))
                                        (_%$%tl195035195064%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e195033195059%_))))
                                    (if (gx#stx-pair? _%$%tl195035195064%_)
                                        (let ((_%$%e195036195067%_
                                               (gx#stx-e
                                                _%$%tl195035195064%_)))
                                          (let ((_%$%hd195037195070%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e195036195067%_)))
                                                (_%$%tl195038195072%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e195036195067%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl195038195072%_)
                                                (let ((_%$%e195039195075%_
                                                       (gx#stx-e
                                                        _%$%tl195038195072%_)))
                                                  (let ((_%$%hd195040195078%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e195039195075%_)))
                                                        (_%$%tl195041195080%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e195039195075%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl195041195080%_)
                                                        ((lambda (_%$%g195027195083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g195028195084%_
                          _%$%g195029195085%_)
                   (_%basic-type-e194953%_
                    _%$%g195028195084%_
                    _%$%g195027195083%_))
                 _%$%hd195040195078%_
                 _%$%hd195037195070%_
                 _%$%hd195034195062%_)
                (_%$%g194957195046%_ _%$%g194958195049%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g194957195046%_
                                                 _%$%g194958195049%_))))
                                        (_%$%g194957195046%_
                                         _%$%g194958195049%_))))
                                (_%$%g194957195046%_ _%$%g194958195049%_))))
                        (_%$%g194957195046%_ _%$%g194958195049%_))))
                 (_%$%g194955195212%_
                  (lambda (_%$%g194958195107%_)
                    (if (gx#stx-pair? _%$%g194958195107%_)
                        (let ((_%$%e195000195109%_
                               (gx#stx-e _%$%g194958195107%_)))
                          (let ((_%$%hd195001195112%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e195000195109%_)))
                                (_%$%tl195002195114%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e195000195109%_))))
                            (if (gx#stx-pair? _%$%tl195002195114%_)
                                (let ((_%$%e195003195117%_
                                       (gx#stx-e _%$%tl195002195114%_)))
                                  (let ((_%$%hd195004195120%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e195003195117%_)))
                                        (_%$%tl195005195122%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e195003195117%_))))
                                    (if (gx#stx-pair? _%$%hd195004195120%_)
                                        (let ((_%$%e195006195125%_
                                               (gx#stx-e
                                                _%$%hd195004195120%_)))
                                          (let ((_%$%hd195007195128%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e195006195125%_)))
                                                (_%$%tl195008195130%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e195006195125%_))))
                                            (if (gx#identifier?
                                                 _%$%hd195007195128%_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _%$%hd195007195128%_)
                                                    (if (gx#stx-pair?
                                                         _%$%tl195008195130%_)
                                                        (let ((_%$%e195009195133%_
                                                               (gx#stx-e
                                                                _%$%tl195008195130%_)))
                                                          (let ((_%$%hd195010195136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e195009195133%_)))
                        (_%$%tl195011195138%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e195009195133%_))))
                    (if (gx#stx-pair? _%$%hd195010195136%_)
                        (let ((_%$%e195012195141%_
                               (gx#stx-e _%$%hd195010195136%_)))
                          (let ((_%$%hd195013195144%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e195012195141%_)))
                                (_%$%tl195014195146%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e195012195141%_))))
                            (if (gx#identifier? _%$%hd195013195144%_)
                                (if (gx#stx-eq? '%#ref _%$%hd195013195144%_)
                                    (if (gx#stx-pair? _%$%tl195014195146%_)
                                        (let ((_%$%e195015195149%_
                                               (gx#stx-e
                                                _%$%tl195014195146%_)))
                                          (let ((_%$%hd195016195152%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e195015195149%_)))
                                                (_%$%tl195017195154%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e195015195149%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl195017195154%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl195011195138%_)
                                                    (let ((_%$%e195018195157%_
                                                           (gx#stx-e
                                                            _%$%tl195011195138%_)))
                                                      (let ((_%$%hd195019195160%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e195018195157%_)))
                    (_%$%tl195020195162%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e195018195157%_))))
                (if (gx#stx-null? _%$%tl195020195162%_)
                    (if (gx#stx-pair? _%$%tl195005195122%_)
                        (let ((_%$%e195021195165%_
                               (gx#stx-e _%$%tl195005195122%_)))
                          (let ((_%$%hd195022195168%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e195021195165%_)))
                                (_%$%tl195023195170%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e195021195165%_))))
                            (if (gx#stx-pair? _%$%tl195023195170%_)
                                (let ((_%$%e195024195173%_
                                       (gx#stx-e _%$%tl195023195170%_)))
                                  (let ((_%$%hd195025195176%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e195024195173%_)))
                                        (_%$%tl195026195178%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e195024195173%_))))
                                    (if (gx#stx-null? _%$%tl195026195178%_)
                                        ((lambda (_%$%g194996195181%_
                                                  _%$%g194997195182%_
                                                  _%$%g194998195183%_
                                                  _%$%g194999195184%_)
                                           (if (gxc#runtime-identifier=?
                                                _%$%g194999195184%_
                                                'not)
                                               (gxc#basic-expression-type-if%
                                                _%self194949%_
                                                (gxc#xform-wrap-source
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '%#if)
                                                       (cons _%$%g194998195183%_
                                                             (cons _%$%g194996195181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g194997195182%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx194950%_))
                                               (_%$%g194956195104%_
                                                _%$%g194958195107%_)))
                                         _%$%hd195025195176%_
                                         _%$%hd195022195168%_
                                         _%$%hd195019195160%_
                                         _%$%hd195016195152%_)
                                        (_%$%g194956195104%_
                                         _%$%g194958195107%_))))
                                (_%$%g194956195104%_ _%$%g194958195107%_))))
                        (_%$%g194956195104%_ _%$%g194958195107%_))
                    (_%$%g194956195104%_ _%$%g194958195107%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g194956195104%_
                                                     _%$%g194958195107%_))
                                                (_%$%g194956195104%_
                                                 _%$%g194958195107%_))))
                                        (_%$%g194956195104%_
                                         _%$%g194958195107%_))
                                    (_%$%g194956195104%_ _%$%g194958195107%_))
                                (_%$%g194956195104%_ _%$%g194958195107%_))))
                        (_%$%g194956195104%_ _%$%g194958195107%_))))
                (_%$%g194956195104%_ _%$%g194958195107%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g194956195104%_
                                                     _%$%g194958195107%_))
                                                (_%$%g194956195104%_
                                                 _%$%g194958195107%_))))
                                        (_%$%g194956195104%_
                                         _%$%g194958195107%_))))
                                (_%$%g194956195104%_ _%$%g194958195107%_))))
                        (_%$%g194956195104%_ _%$%g194958195107%_))))
                 (_%$%g194954195355%_
                  (lambda (_%$%g194958195215%_)
                    (if (gx#stx-pair? _%$%g194958195215%_)
                        (let ((_%$%e194963195217%_
                               (gx#stx-e _%$%g194958195215%_)))
                          (let ((_%$%hd194964195220%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e194963195217%_)))
                                (_%$%tl194965195222%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e194963195217%_))))
                            (if (gx#stx-pair? _%$%tl194965195222%_)
                                (let ((_%$%e194966195225%_
                                       (gx#stx-e _%$%tl194965195222%_)))
                                  (let ((_%$%hd194967195228%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e194966195225%_)))
                                        (_%$%tl194968195230%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e194966195225%_))))
                                    (if (gx#stx-pair? _%$%hd194967195228%_)
                                        (let ((_%$%e194969195233%_
                                               (gx#stx-e
                                                _%$%hd194967195228%_)))
                                          (let ((_%$%hd194970195236%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e194969195233%_)))
                                                (_%$%tl194971195238%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e194969195233%_))))
                                            (if (gx#identifier?
                                                 _%$%hd194970195236%_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _%$%hd194970195236%_)
                                                    (if (gx#stx-pair?
                                                         _%$%tl194971195238%_)
                                                        (let ((_%$%e194972195241%_
                                                               (gx#stx-e
                                                                _%$%tl194971195238%_)))
                                                          (let ((_%$%hd194973195244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e194972195241%_)))
                        (_%$%tl194974195246%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e194972195241%_))))
                    (if (gx#stx-pair? _%$%hd194973195244%_)
                        (let ((_%$%e194975195249%_
                               (gx#stx-e _%$%hd194973195244%_)))
                          (let ((_%$%hd194976195252%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e194975195249%_)))
                                (_%$%tl194977195254%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e194975195249%_))))
                            (if (gx#identifier? _%$%hd194976195252%_)
                                (if (gx#stx-eq? '%#ref _%$%hd194976195252%_)
                                    (if (gx#stx-pair? _%$%tl194977195254%_)
                                        (let ((_%$%e194978195257%_
                                               (gx#stx-e
                                                _%$%tl194977195254%_)))
                                          (let ((_%$%hd194979195260%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e194978195257%_)))
                                                (_%$%tl194980195262%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e194978195257%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl194980195262%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl194974195246%_)
                                                    (let ((_%$%e194981195265%_
                                                           (gx#stx-e
                                                            _%$%tl194974195246%_)))
                                                      (let ((_%$%hd194982195268%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e194981195265%_)))
                    (_%$%tl194983195270%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e194981195265%_))))
                (if (gx#stx-pair? _%$%hd194982195268%_)
                    (let ((_%$%e194984195273%_
                           (gx#stx-e _%$%hd194982195268%_)))
                      (let ((_%$%hd194985195276%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e194984195273%_)))
                            (_%$%tl194986195278%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e194984195273%_))))
                        (if (gx#identifier? _%$%hd194985195276%_)
                            (if (gx#stx-eq? '%#ref _%$%hd194985195276%_)
                                (if (gx#stx-pair? _%$%tl194986195278%_)
                                    (let ((_%$%e194987195281%_
                                           (gx#stx-e _%$%tl194986195278%_)))
                                      (let ((_%$%hd194988195284%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e194987195281%_)))
                                            (_%$%tl194989195286%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e194987195281%_))))
                                        (if (gx#stx-null? _%$%tl194989195286%_)
                                            (if (gx#stx-null?
                                                 _%$%tl194983195270%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl194968195230%_)
                                                    (let ((_%$%e194990195289%_
                                                           (gx#stx-e
                                                            _%$%tl194968195230%_)))
                                                      (let ((_%$%hd194991195292%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e194990195289%_)))
                    (_%$%tl194992195294%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e194990195289%_))))
                (if (gx#stx-pair? _%$%tl194992195294%_)
                    (let ((_%$%e194993195297%_
                           (gx#stx-e _%$%tl194992195294%_)))
                      (let ((_%$%hd194994195300%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e194993195297%_)))
                            (_%$%tl194995195302%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e194993195297%_))))
                        (if (gx#stx-null? _%$%tl194995195302%_)
                            ((lambda (_%$%g194959195305%_
                                      _%$%g194960195306%_
                                      _%$%g194961195307%_
                                      _%$%g194962195308%_)
                               (let ((_%$e195340%_
                                      (gxc#optimizer-lookup-type
                                       (gxc#identifier-symbol
                                        _%$%g194962195308%_))))
                                 (if _%$e195340%_
                                     ((lambda (_%pred-type195343%_)
                                        (if (or (gxc#!predicate?
                                                 _%pred-type195343%_)
                                                (gxc#!primitive-predicate?
                                                 _%pred-type195343%_))
                                            (let* ((_%type-K195349%_
                                                    (call-with-parameters
                                                     (lambda ()
                                                       (gxc#apply-basic-expression-type
                                                        _%$%g194960195306%_))
                                                     gxc#current-compile-path-type
                                                     (cons (cons (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g194961195307%_)
                         (gxc#optimizer-resolve-class
                          _%stx194950%_
                          (gxc#!type-id _%pred-type195343%_)))
                   (gxc#current-compile-path-type))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%type-E195351%_
                                                    (gxc#apply-basic-expression-type
                                                     _%$%g194959195305%_)))
                                              (_%type-e194952%_
                                               _%type-K195349%_
                                               _%type-E195351%_))
                                            (_%basic-type-e194953%_
                                             _%$%g194960195306%_
                                             _%$%g194959195305%_)))
                                      _%$e195340%_)
                                     (_%basic-type-e194953%_
                                      _%$%g194960195306%_
                                      _%$%g194959195305%_))))
                             _%$%hd194994195300%_
                             _%$%hd194991195292%_
                             _%$%hd194988195284%_
                             _%$%hd194979195260%_)
                            (_%$%g194955195212%_ _%$%g194958195215%_))))
                    (_%$%g194955195212%_ _%$%g194958195215%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g194955195212%_
                                                     _%$%g194958195215%_))
                                                (_%$%g194955195212%_
                                                 _%$%g194958195215%_))
                                            (_%$%g194955195212%_
                                             _%$%g194958195215%_))))
                                    (_%$%g194955195212%_ _%$%g194958195215%_))
                                (_%$%g194955195212%_ _%$%g194958195215%_))
                            (_%$%g194955195212%_ _%$%g194958195215%_))))
                    (_%$%g194955195212%_ _%$%g194958195215%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g194955195212%_
                                                     _%$%g194958195215%_))
                                                (_%$%g194955195212%_
                                                 _%$%g194958195215%_))))
                                        (_%$%g194955195212%_
                                         _%$%g194958195215%_))
                                    (_%$%g194955195212%_ _%$%g194958195215%_))
                                (_%$%g194955195212%_ _%$%g194958195215%_))))
                        (_%$%g194955195212%_ _%$%g194958195215%_))))
                (_%$%g194955195212%_ _%$%g194958195215%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g194955195212%_
                                                     _%$%g194958195215%_))
                                                (_%$%g194955195212%_
                                                 _%$%g194958195215%_))))
                                        (_%$%g194955195212%_
                                         _%$%g194958195215%_))))
                                (_%$%g194955195212%_ _%$%g194958195215%_))))
                        (_%$%g194955195212%_ _%$%g194958195215%_)))))
            (_%$%g194954195355%_ _%stx194950%_)))))
    (define gxc#greatest-common-type
      (lambda (_%stx194805%_ _%type-a194806%_ _%type-b194807%_)
        (letrec ((_%common-e194809%_
                  (lambda (_%left194909%_ _%right194910%_)
                    (let _%loop194912%_ ((_%rest194914%_ _%left194909%_))
                      (let* ((_%$%rest194915194923%_ _%rest194914%_)
                             (_%$%E194918194927%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest194915194923%_
                                       '([klass-name . rest])
                                       'else)
                                (void)))
                             (_%$%else194917194931%_
                              (lambda ()
                                (gxc#optimizer-resolve-class
                                 _%stx194805%_
                                 't::t)))
                             (_%$%K194919194937%_
                              (lambda (_%rest194934%_ _%klass-name194935%_)
                                (if (memq _%klass-name194935%_ _%right194910%_)
                                    (gxc#optimizer-resolve-class
                                     _%stx194805%_
                                     _%klass-name194935%_)
                                    (_%loop194912%_ _%rest194934%_)))))
                        (if (pair? _%$%rest194915194923%_)
                            (let ((_%$%hd194920194940%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest194915194923%_)))
                                  (_%$%tl194921194942%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest194915194923%_))))
                              (let* ((_%klass-name194945%_
                                      _%$%hd194920194940%_)
                                     (_%rest194947%_ _%$%tl194921194942%_))
                                (_%$%K194919194937%_
                                 _%rest194947%_
                                 _%klass-name194945%_)))
                            (_%$%else194917194931%_))))))
                 (_%common-tail194810%_
                  (lambda (_%precedence-list-a194829%_
                           _%precedence-list-b194830%_)
                    (let* ((_%rev-precedence-list-a194832%_
                            (reverse _%precedence-list-a194829%_))
                           (_%rev-precedence-list-b194834%_
                            (reverse _%precedence-list-b194830%_)))
                      (let _%loop194837%_ ((_%rest-a194839%_
                                            _%rev-precedence-list-a194832%_)
                                           (_%rest-b194840%_
                                            _%rev-precedence-list-b194834%_)
                                           (_%result194841%_ '#f))
                        (let* ((_%$%rest-a194842194850%_ _%rest-a194839%_)
                               (_%$%E194845194854%_
                                (lambda ()
                                  (error '"No clause matching"
                                         _%$%rest-a194842194850%_
                                         '([super-a . rest-a])
                                         'else)
                                  (void)))
                               (_%$%else194844194858%_
                                (lambda ()
                                  (if _%result194841%_
                                      (gxc#optimizer-resolve-class
                                       _%stx194805%_
                                       _%result194841%_)
                                      '#f)))
                               (_%$%K194846194897%_
                                (lambda (_%rest-a194861%_ _%super-a194862%_)
                                  (let* ((_%$%rest-b194863194871%_
                                          _%rest-b194840%_)
                                         (_%$%E194866194875%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%$%rest-b194863194871%_
                                                   '([super-b . rest-b])
                                                   'else)
                                            (void)))
                                         (_%$%else194865194879%_
                                          (lambda ()
                                            (if _%result194841%_
                                                (gxc#optimizer-resolve-class
                                                 _%stx194805%_
                                                 _%result194841%_)
                                                '#f)))
                                         (_%$%K194867194885%_
                                          (lambda (_%rest-b194882%_
                                                   _%super-b194883%_)
                                            (if (eq? _%super-a194862%_
                                                     _%super-b194883%_)
                                                (_%loop194837%_
                                                 _%rest-a194861%_
                                                 _%rest-b194882%_
                                                 _%super-a194862%_)
                                                (if _%result194841%_
                                                    (gxc#optimizer-resolve-class
                                                     _%stx194805%_
                                                     _%result194841%_)
                                                    '#f)))))
                                    (if (pair? _%$%rest-b194863194871%_)
                                        (let ((_%$%hd194868194888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%rest-b194863194871%_)))
                                              (_%$%tl194869194890%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%rest-b194863194871%_))))
                                          (let* ((_%super-b194893%_
                                                  _%$%hd194868194888%_)
                                                 (_%rest-b194895%_
                                                  _%$%tl194869194890%_))
                                            (_%$%K194867194885%_
                                             _%rest-b194895%_
                                             _%super-b194893%_)))
                                        (_%$%else194865194879%_))))))
                          (if (pair? _%$%rest-a194842194850%_)
                              (let ((_%$%hd194847194900%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest-a194842194850%_)))
                                    (_%$%tl194848194902%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest-a194842194850%_))))
                                (let* ((_%super-a194905%_ _%$%hd194847194900%_)
                                       (_%rest-a194907%_ _%$%tl194848194902%_))
                                  (_%$%K194846194897%_
                                   _%rest-a194907%_
                                   _%super-a194905%_)))
                              (_%$%else194844194858%_))))))))
          (if (or (not _%type-a194806%_) (not _%type-b194807%_))
              (gxc#optimizer-resolve-class _%stx194805%_ 't::t)
              (if (gxc#!type-subtype? _%type-a194806%_ _%type-b194807%_)
                  _%type-b194807%_
                  (if (gxc#!type-subtype? _%type-b194807%_ _%type-a194806%_)
                      _%type-a194806%_
                      (if (and (gxc#!class? _%type-a194806%_)
                               (gxc#!class? _%type-b194807%_))
                          (let* ((_%precedence-list-a194819%_
                                  (gxc#!class-precedence-list
                                   _%type-a194806%_))
                                 (_%precedence-list-b194821%_
                                  (gxc#!class-precedence-list
                                   _%type-b194807%_)))
                            (if (> (length _%precedence-list-a194819%_)
                                   (length _%precedence-list-b194821%_))
                                (_%common-e194809%_
                                 _%precedence-list-b194821%_
                                 _%precedence-list-a194819%_)
                                (if (< (length _%precedence-list-a194819%_)
                                       (length _%precedence-list-b194821%_))
                                    (_%common-e194809%_
                                     _%precedence-list-a194819%_
                                     _%precedence-list-b194821%_)
                                    (_%common-tail194810%_
                                     _%precedence-list-a194819%_
                                     _%precedence-list-b194821%_))))
                          (if (and (eq? (gxc#!type-id _%type-a194806%_)
                                        'procedure)
                                   (eq? (gxc#!type-id _%type-b194807%_)
                                        'procedure))
                              (gxc#optimizer-resolve-class
                               _%stx194805%_
                               'procedure::t)
                              '#f))))))))
    (define gxc#basic-expression-type-quote%
      (lambda (_%self194716%_ _%stx194717%_)
        (let* ((_%$%g194719194732%_
                (lambda (_%$%g194720194729%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g194720194729%_)))
               (_%$%g194718194802%_
                (lambda (_%$%g194720194735%_)
                  (if (gx#stx-pair? _%$%g194720194735%_)
                      (let ((_%$%e194722194737%_
                             (gx#stx-e _%$%g194720194735%_)))
                        (let ((_%$%hd194723194740%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e194722194737%_)))
                              (_%$%tl194724194742%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e194722194737%_))))
                          (if (gx#stx-pair? _%$%tl194724194742%_)
                              (let ((_%$%e194725194745%_
                                     (gx#stx-e _%$%tl194724194742%_)))
                                (let ((_%$%hd194726194748%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e194725194745%_)))
                                      (_%$%tl194727194750%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e194725194745%_))))
                                  (if (gx#stx-null? _%$%tl194727194750%_)
                                      ((lambda (_%$%g194721194753%_)
                                         (let ((_%obj194765%_
                                                (gx#stx-e
                                                 _%$%g194721194753%_)))
                                           (if (immediate? _%obj194765%_)
                                               (if (char? _%obj194765%_)
                                                   (gxc#optimizer-resolve-class
                                                    _%stx194717%_
                                                    'char::t)
                                                   (if (true? _%obj194765%_)
                                                       (gxc#optimizer-resolve-class
                                                        _%stx194717%_
                                                        'true::t)
                                                       (if (not _%obj194765%_)
                                                           (gxc#optimizer-resolve-class
                                                            _%stx194717%_
                                                            'false::t)
                                                           (if (void? _%obj194765%_)
                                                               (gxc#optimizer-resolve-class
                                                                _%stx194717%_
                                                                'void::t)
                                                               (if (eof-object?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%obj194765%_)
                           (gxc#optimizer-resolve-class _%stx194717%_ 'eof::t)
                           (if (fixnum? _%obj194765%_)
                               (gxc#optimizer-resolve-class
                                _%stx194717%_
                                'fixnum::t)
                               (if (flonum? _%obj194765%_)
                                   (gxc#optimizer-resolve-class
                                    _%stx194717%_
                                    'flonum::t)
                                   (if (null? _%obj194765%_)
                                       (gxc#optimizer-resolve-class
                                        _%stx194717%_
                                        'null::t)
                                       (gxc#optimizer-resolve-class
                                        _%stx194717%_
                                        'special::t)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (number? _%obj194765%_)
                                                   (if (flonum? _%obj194765%_)
                                                       (gxc#optimizer-resolve-class
                                                        _%stx194717%_
                                                        'flonum::t)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##bignum?
                                                              _%obj194765%_))
                                                           (gxc#optimizer-resolve-class
                                                            _%stx194717%_
                                                            'bignum::t)
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##ratnum? _%obj194765%_))
                       (gxc#optimizer-resolve-class _%stx194717%_ 'ratnum::t)
                       (if (let ()
                             (declare (not safe))
                             (##cpxnum? _%obj194765%_))
                           (gxc#optimizer-resolve-class
                            _%stx194717%_
                            'cpxnum::t)
                           '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (symbol? _%obj194765%_)
                                                       (gxc#optimizer-resolve-class
                                                        _%stx194717%_
                                                        'symbol::t)
                                                       (if (keyword?
                                                            _%obj194765%_)
                                                           (gxc#optimizer-resolve-class
                                                            _%stx194717%_
                                                            'keyword::t)
                                                           (if (pair? _%obj194765%_)
                                                               (gxc#optimizer-resolve-class
                                                                _%stx194717%_
                                                                'pair::t)
                                                               (if (sequence?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%obj194765%_)
                           (if (vector? _%obj194765%_)
                               (gxc#optimizer-resolve-class
                                _%stx194717%_
                                'vector::t)
                               (if (string? _%obj194765%_)
                                   (gxc#optimizer-resolve-class
                                    _%stx194717%_
                                    'string::t)
                                   (if (u8vector? _%obj194765%_)
                                       (gxc#optimizer-resolve-class
                                        _%stx194717%_
                                        'u8vector::t)
                                       (if (s8vector? _%obj194765%_)
                                           (gxc#optimizer-resolve-class
                                            _%stx194717%_
                                            's8vector::t)
                                           (if (u16vector? _%obj194765%_)
                                               (gxc#optimizer-resolve-class
                                                _%stx194717%_
                                                'u16vector::t)
                                               (if (s16vector? _%obj194765%_)
                                                   (gxc#optimizer-resolve-class
                                                    _%stx194717%_
                                                    's16vector::t)
                                                   (if (u32vector?
                                                        _%obj194765%_)
                                                       (gxc#optimizer-resolve-class
                                                        _%stx194717%_
                                                        'u32vector::t)
                                                       (if (s32vector?
                                                            _%obj194765%_)
                                                           (gxc#optimizer-resolve-class
                                                            _%stx194717%_
                                                            's32vector::t)
                                                           (if (u64vector?
                                                                _%obj194765%_)
                                                               (gxc#optimizer-resolve-class
                                                                _%stx194717%_
                                                                'u64vector::t)
                                                               (if (s64vector?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%obj194765%_)
                           (gxc#optimizer-resolve-class
                            _%stx194717%_
                            's64vector::t)
                           (if (f32vector? _%obj194765%_)
                               (gxc#optimizer-resolve-class
                                _%stx194717%_
                                'f32vector::t)
                               (if (f64vector? _%obj194765%_)
                                   (gxc#optimizer-resolve-class
                                    _%stx194717%_
                                    'f64vector::t)
                                   '#f))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (if (box? _%obj194765%_)
                               (gxc#optimizer-resolve-class
                                _%stx194717%_
                                'box::t)
                               '#f)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%$%hd194726194748%_)
                                      (_%$%g194719194732%_
                                       _%$%g194720194735%_))))
                              (_%$%g194719194732%_ _%$%g194720194735%_))))
                      (_%$%g194719194732%_ _%$%g194720194735%_)))))
          (_%$%g194718194802%_ _%stx194717%_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_%form193958%_)
        (let* ((_%$%g193963194120%_
                (lambda (_%$%g193964194117%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g193964194117%_)))
               (_%$%g193962194127%_
                (lambda (_%$%g193964194123%_) ((lambda () '#f))))
               (_%$%g193961194267%_
                (lambda (_%$%g193964194130%_)
                  (if (gx#stx-pair? _%$%g193964194130%_)
                      (let ((_%$%e194080194132%_
                             (gx#stx-e _%$%g193964194130%_)))
                        (let ((_%$%hd194081194135%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e194080194132%_)))
                              (_%$%tl194082194137%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e194080194132%_))))
                          (if (gx#stx-pair? _%$%tl194082194137%_)
                              (let ((_%$%e194083194140%_
                                     (gx#stx-e _%$%tl194082194137%_)))
                                (let ((_%$%hd194084194143%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e194083194140%_)))
                                      (_%$%tl194085194145%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e194083194140%_))))
                                  (if (gx#stx-pair? _%$%hd194084194143%_)
                                      (let ((_%$%e194086194148%_
                                             (gx#stx-e _%$%hd194084194143%_)))
                                        (let ((_%$%hd194087194151%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e194086194148%_)))
                                              (_%$%tl194088194153%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e194086194148%_))))
                                          (if (gx#identifier?
                                               _%$%hd194087194151%_)
                                              (if (gx#stx-eq?
                                                   '%#call
                                                   _%$%hd194087194151%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl194088194153%_)
                                                      (let ((_%$%e194089194156%_
                                                             (gx#stx-e
                                                              _%$%tl194088194153%_)))
                                                        (let ((_%$%hd194090194159%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e194089194156%_)))
                      (_%$%tl194091194161%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e194089194156%_))))
                  (if (gx#stx-pair? _%$%hd194090194159%_)
                      (let ((_%$%e194092194164%_
                             (gx#stx-e _%$%hd194090194159%_)))
                        (let ((_%$%hd194093194167%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e194092194164%_)))
                              (_%$%tl194094194169%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e194092194164%_))))
                          (if (gx#identifier? _%$%hd194093194167%_)
                              (if (gx#stx-eq? '%#ref _%$%hd194093194167%_)
                                  (if (gx#stx-pair? _%$%tl194094194169%_)
                                      (let ((_%$%e194095194172%_
                                             (gx#stx-e _%$%tl194094194169%_)))
                                        (let ((_%$%hd194096194175%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e194095194172%_)))
                                              (_%$%tl194097194177%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e194095194172%_))))
                                          (if (gx#stx-null?
                                               _%$%tl194097194177%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl194091194161%_)
                                                  (let ((_%$%e194098194180%_
                                                         (gx#stx-e
                                                          _%$%tl194091194161%_)))
                                                    (let ((_%$%hd194099194183%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e194098194180%_)))
                                                          (_%$%tl194100194185%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e194098194180%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%hd194099194183%_)
                                                          (let ((_%$%e194101194188%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd194099194183%_)))
                    (let ((_%$%hd194102194191%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e194101194188%_)))
                          (_%$%tl194103194193%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e194101194188%_))))
                      (if (gx#identifier? _%$%hd194102194191%_)
                          (if (gx#stx-eq? '%#ref _%$%hd194102194191%_)
                              (if (gx#stx-pair? _%$%tl194103194193%_)
                                  (let ((_%$%e194104194196%_
                                         (gx#stx-e _%$%tl194103194193%_)))
                                    (let ((_%$%hd194105194199%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e194104194196%_)))
                                          (_%$%tl194106194201%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e194104194196%_))))
                                      (if (gx#stx-null? _%$%tl194106194201%_)
                                          (if (gx#stx-pair?
                                               _%$%tl194100194185%_)
                                              (let ((_%$%e194107194204%_
                                                     (gx#stx-e
                                                      _%$%tl194100194185%_)))
                                                (let ((_%$%hd194108194207%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e194107194204%_)))
                                                      (_%$%tl194109194209%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e194107194204%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%hd194108194207%_)
                                                      (let ((_%$%e194110194212%_
                                                             (gx#stx-e
                                                              _%$%hd194108194207%_)))
                                                        (let ((_%$%hd194111194215%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e194110194212%_)))
                      (_%$%tl194112194217%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e194110194212%_))))
                  (if (gx#identifier? _%$%hd194111194215%_)
                      (if (gx#stx-eq? '%#ref _%$%hd194111194215%_)
                          (if (gx#stx-pair? _%$%tl194112194217%_)
                              (let ((_%$%e194113194220%_
                                     (gx#stx-e _%$%tl194112194217%_)))
                                (let ((_%$%hd194114194223%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e194113194220%_)))
                                      (_%$%tl194115194225%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e194113194220%_))))
                                  (if (gx#stx-null? _%$%tl194115194225%_)
                                      (if (gx#stx-null? _%$%tl194109194209%_)
                                          (if (gx#stx-null?
                                               _%$%tl194085194145%_)
                                              ((lambda (_%$%g194076194228%_
                                                        _%$%g194077194229%_
                                                        _%$%g194078194230%_
                                                        _%$%g194079194231%_)
                                                 (if (and (gx#identifier?
                                                           _%$%g194079194231%_)
                                                          (gxc#runtime-identifier=?
                                                           _%$%g194078194230%_
                                                           'apply)
                                                          (gx#free-identifier=?
                                                           _%$%g194079194231%_
                                                           _%$%g194076194228%_)
                                                          (not (gx#free-identifier=?
                                                                _%$%g194077194229%_
                                                                _%$%g194079194231%_)))
                                                     '#t
                                                     (_%$%g193962194127%_
                                                      _%$%g193964194130%_)))
                                               _%$%hd194114194223%_
                                               _%$%hd194105194199%_
                                               _%$%hd194096194175%_
                                               _%$%hd194081194135%_)
                                              (_%$%g193962194127%_
                                               _%$%g193964194130%_))
                                          (_%$%g193962194127%_
                                           _%$%g193964194130%_))
                                      (_%$%g193962194127%_
                                       _%$%g193964194130%_))))
                              (_%$%g193962194127%_ _%$%g193964194130%_))
                          (_%$%g193962194127%_ _%$%g193964194130%_))
                      (_%$%g193962194127%_ _%$%g193964194130%_))))
              (_%$%g193962194127%_ _%$%g193964194130%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g193962194127%_
                                               _%$%g193964194130%_))
                                          (_%$%g193962194127%_
                                           _%$%g193964194130%_))))
                                  (_%$%g193962194127%_ _%$%g193964194130%_))
                              (_%$%g193962194127%_ _%$%g193964194130%_))
                          (_%$%g193962194127%_ _%$%g193964194130%_))))
                  (_%$%g193962194127%_ _%$%g193964194130%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g193962194127%_
                                                   _%$%g193964194130%_))
                                              (_%$%g193962194127%_
                                               _%$%g193964194130%_))))
                                      (_%$%g193962194127%_
                                       _%$%g193964194130%_))
                                  (_%$%g193962194127%_ _%$%g193964194130%_))
                              (_%$%g193962194127%_ _%$%g193964194130%_))))
                      (_%$%g193962194127%_ _%$%g193964194130%_))))
              (_%$%g193962194127%_ _%$%g193964194130%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g193962194127%_
                                                   _%$%g193964194130%_))
                                              (_%$%g193962194127%_
                                               _%$%g193964194130%_))))
                                      (_%$%g193962194127%_
                                       _%$%g193964194130%_))))
                              (_%$%g193962194127%_ _%$%g193964194130%_))))
                      (_%$%g193962194127%_ _%$%g193964194130%_))))
               (_%$%g193960194523%_
                (lambda (_%$%g193964194270%_)
                  (if (gx#stx-pair? _%$%g193964194270%_)
                      (let ((_%$%e194016194272%_
                             (gx#stx-e _%$%g193964194270%_)))
                        (let ((_%$%hd194017194275%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e194016194272%_)))
                              (_%$%tl194018194277%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e194016194272%_))))
                          (if (gx#stx-pair/null? _%$%hd194017194275%_)
                              (let ((_g202627_
                                     (gx#syntax-split-splice
                                      _%$%hd194017194275%_
                                      '0)))
                                (begin
                                  (let ((_g202628_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202627_)
                                               (##values-length _g202627_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202628_ 2)))
                                        (error "Context expects 2 values"
                                               _g202628_)))
                                  (let ((_%$%target194019194280%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g202627_ 0)))
                                        (_%$%tl194021194282%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g202627_ 1))))
                                    (letrec ((_%$%loop194022194285%_
                                              (lambda (_%$%hd194020194288%_
                                                       _%$%arg194026194290%_)
                                                (if (gx#stx-pair?
                                                     _%$%hd194020194288%_)
                                                    (let ((_%$%e194023194292%_
                                                           (gx#stx-e
                                                            _%$%hd194020194288%_)))
                                                      (let ((_%$%lp-hd194024194295%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e194023194292%_)))
                    (_%$%lp-tl194025194297%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e194023194292%_))))
                (_%$%loop194022194285%_
                 _%$%lp-tl194025194297%_
                 (cons _%$%lp-hd194024194295%_ _%$%arg194026194290%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%arg194027194300%_
                                                           (reverse _%$%arg194026194290%_)))
                                                      (if (gx#stx-pair?
                                                           _%$%tl194018194277%_)
                                                          (let ((_%$%e194028194302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl194018194277%_)))
                    (let ((_%$%hd194029194305%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e194028194302%_)))
                          (_%$%tl194030194307%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e194028194302%_))))
                      (if (gx#stx-pair? _%$%hd194029194305%_)
                          (let ((_%$%e194031194310%_
                                 (gx#stx-e _%$%hd194029194305%_)))
                            (let ((_%$%hd194032194313%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e194031194310%_)))
                                  (_%$%tl194033194315%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e194031194310%_))))
                              (if (gx#identifier? _%$%hd194032194313%_)
                                  (if (gx#stx-eq? '%#call _%$%hd194032194313%_)
                                      (if (gx#stx-pair? _%$%tl194033194315%_)
                                          (let ((_%$%e194034194318%_
                                                 (gx#stx-e
                                                  _%$%tl194033194315%_)))
                                            (let ((_%$%hd194035194321%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e194034194318%_)))
                                                  (_%$%tl194036194323%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e194034194318%_))))
                                              (if (gx#stx-pair?
                                                   _%$%hd194035194321%_)
                                                  (let ((_%$%e194037194326%_
                                                         (gx#stx-e
                                                          _%$%hd194035194321%_)))
                                                    (let ((_%$%hd194038194329%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e194037194326%_)))
                                                          (_%$%tl194039194331%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e194037194326%_))))
                                                      (if (gx#identifier?
                                                           _%$%hd194038194329%_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd194038194329%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%tl194039194331%_)
                          (let ((_%$%e194040194334%_
                                 (gx#stx-e _%$%tl194039194331%_)))
                            (let ((_%$%hd194041194337%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e194040194334%_)))
                                  (_%$%tl194042194339%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e194040194334%_))))
                              (if (gx#stx-null? _%$%tl194042194339%_)
                                  (if (gx#stx-pair? _%$%tl194036194323%_)
                                      (let ((_%$%e194043194342%_
                                             (gx#stx-e _%$%tl194036194323%_)))
                                        (let ((_%$%hd194044194345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e194043194342%_)))
                                              (_%$%tl194045194347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e194043194342%_))))
                                          (if (gx#stx-pair?
                                               _%$%hd194044194345%_)
                                              (let ((_%$%e194046194350%_
                                                     (gx#stx-e
                                                      _%$%hd194044194345%_)))
                                                (let ((_%$%hd194047194353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e194046194350%_)))
                                                      (_%$%tl194048194355%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e194046194350%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd194047194353%_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd194047194353%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl194048194355%_)
                                                              (let ((_%$%e194049194358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl194048194355%_)))
                        (let ((_%$%hd194050194361%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e194049194358%_)))
                              (_%$%tl194051194363%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e194049194358%_))))
                          (if (gx#stx-null? _%$%tl194051194363%_)
                              (if (gx#stx-pair/null? _%$%tl194045194347%_)
                                  (if (fx>= (gx#stx-length
                                             _%$%tl194045194347%_)
                                            '1)
                                      (let ((_g202629_
                                             (gx#syntax-split-splice
                                              _%$%tl194045194347%_
                                              '1)))
                                        (begin
                                          (let ((_g202630_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202629_)
                                                       (##values-length
                                                        _g202629_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202630_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202630_)))
                                          (let ((_%$%target194052194366%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g202629_ 0)))
                                                (_%$%tl194054194368%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g202629_
                                                    1))))
                                            (if (gx#stx-pair?
                                                 _%$%tl194054194368%_)
                                                (let ((_%$%e194061194371%_
                                                       (gx#stx-e
                                                        _%$%tl194054194368%_)))
                                                  (let ((_%$%hd194062194374%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e194061194371%_)))
                                                        (_%$%tl194063194376%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e194061194371%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%hd194062194374%_)
                                                        (let ((_%$%e194064194379%_
                                                               (gx#stx-e
                                                                _%$%hd194062194374%_)))
                                                          (let ((_%$%hd194065194382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e194064194379%_)))
                        (_%$%tl194066194384%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e194064194379%_))))
                    (if (gx#identifier? _%$%hd194065194382%_)
                        (if (gx#stx-eq? '%#ref _%$%hd194065194382%_)
                            (if (gx#stx-pair? _%$%tl194066194384%_)
                                (let ((_%$%e194067194387%_
                                       (gx#stx-e _%$%tl194066194384%_)))
                                  (let ((_%$%hd194068194390%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e194067194387%_)))
                                        (_%$%tl194069194392%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e194067194387%_))))
                                    (if (gx#stx-null? _%$%tl194069194392%_)
                                        (if (gx#stx-null? _%$%tl194063194376%_)
                                            (letrec ((_%$%loop194055194395%_
                                                      (lambda (_%$%hd194053194398%_
                                                               _%$%xarg194059194400%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd194053194398%_)
                                                            (let ((_%$%e194056194402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _%$%hd194053194398%_)))
                      (let ((_%$%lp-hd194057194405%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e194056194402%_)))
                            (_%$%lp-tl194058194407%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e194056194402%_))))
                        (if (gx#stx-pair? _%$%lp-hd194057194405%_)
                            (let ((_%$%e194070194410%_
                                   (gx#stx-e _%$%lp-hd194057194405%_)))
                              (let ((_%$%hd194071194413%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e194070194410%_)))
                                    (_%$%tl194072194415%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e194070194410%_))))
                                (if (gx#identifier? _%$%hd194071194413%_)
                                    (if (gx#stx-eq?
                                         '%#ref
                                         _%$%hd194071194413%_)
                                        (if (gx#stx-pair? _%$%tl194072194415%_)
                                            (let ((_%$%e194073194418%_
                                                   (gx#stx-e
                                                    _%$%tl194072194415%_)))
                                              (let ((_%$%hd194074194421%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e194073194418%_)))
                                                    (_%$%tl194075194423%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e194073194418%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl194075194423%_)
                                                    (_%$%loop194055194395%_
                                                     _%$%lp-tl194058194407%_
                                                     (cons _%$%hd194074194421%_
                                                           _%$%xarg194059194400%_))
                                                    (_%$%g193961194267%_
                                                     _%$%g193964194270%_))))
                                            (_%$%g193961194267%_
                                             _%$%g193964194270%_))
                                        (_%$%g193961194267%_
                                         _%$%g193964194270%_))
                                    (_%$%g193961194267%_
                                     _%$%g193964194270%_))))
                            (_%$%g193961194267%_ _%$%g193964194270%_))))
                    (let ((_%$%xarg194060194426%_
                           (reverse _%$%xarg194059194400%_)))
                      (if (gx#stx-null? _%$%tl194030194307%_)
                          ((lambda (_%$%g194010194428%_
                                    _%$%g194011194429%_
                                    _%$%g194012194430%_
                                    _%$%g194013194431%_
                                    _%$%g194014194432%_
                                    _%$%g194015194433%_)
                             (if (and (gx#identifier-list?
                                       (foldr (lambda (_%$%g194476194479%_
                                                       _%$%g194477194481%_)
                                                (cons _%$%g194476194479%_
                                                      _%$%g194477194481%_))
                                              '()
                                              _%$%g194015194433%_))
                                      (gx#identifier? _%$%g194014194432%_)
                                      (gxc#runtime-identifier=?
                                       _%$%g194013194431%_
                                       'apply)
                                      (fx= (length (foldr (lambda (_%$%g194483194486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g194484194488%_)
                    (cons _%$%g194483194486%_ _%$%g194484194488%_))
                  '()
                  _%$%g194015194433%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (length (foldr (lambda (_%$%g194490194493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g194491194495%_)
                    (cons _%$%g194490194493%_ _%$%g194491194495%_))
                  '()
                  _%$%g194011194429%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (andmap gx#free-identifier=?
                                              (foldr (lambda (_%$%g194497194500%_
                                                              _%$%g194498194502%_)
                                                       (cons _%$%g194497194500%_
                                                             _%$%g194498194502%_))
                                                     '()
                                                     _%$%g194015194433%_)
                                              (foldr (lambda (_%$%g194504194507%_
                                                              _%$%g194505194509%_)
                                                       (cons _%$%g194504194507%_
                                                             _%$%g194505194509%_))
                                                     '()
                                                     _%$%g194011194429%_))
                                      (gx#free-identifier=?
                                       _%$%g194014194432%_
                                       _%$%g194010194428%_)
                                      (not (find (lambda (_%$%g194511194513%_)
                                                   (gx#free-identifier=?
                                                    _%$%g194511194513%_
                                                    _%$%g194012194430%_))
                                                 (foldr (lambda (_%$%g194515194518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g194516194520%_)
                  (cons _%$%g194515194518%_ _%$%g194516194520%_))
                (cons _%$%g194014194432%_ '())
                _%$%g194015194433%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '#t
                                 (_%$%g193961194267%_ _%$%g193964194270%_)))
                           _%$%hd194068194390%_
                           _%$%xarg194060194426%_
                           _%$%hd194050194361%_
                           _%$%hd194041194337%_
                           _%$%tl194021194282%_
                           _%$%arg194027194300%_)
                          (_%$%g193961194267%_ _%$%g193964194270%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop194055194395%_
                                               _%$%target194052194366%_
                                               '()))
                                            (_%$%g193961194267%_
                                             _%$%g193964194270%_))
                                        (_%$%g193961194267%_
                                         _%$%g193964194270%_))))
                                (_%$%g193961194267%_ _%$%g193964194270%_))
                            (_%$%g193961194267%_ _%$%g193964194270%_))
                        (_%$%g193961194267%_ _%$%g193964194270%_))))
                (_%$%g193961194267%_ _%$%g193964194270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g193961194267%_
                                                 _%$%g193964194270%_)))))
                                      (_%$%g193961194267%_
                                       _%$%g193964194270%_))
                                  (_%$%g193961194267%_ _%$%g193964194270%_))
                              (_%$%g193961194267%_ _%$%g193964194270%_))))
                      (_%$%g193961194267%_ _%$%g193964194270%_))
                  (_%$%g193961194267%_ _%$%g193964194270%_))
              (_%$%g193961194267%_ _%$%g193964194270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g193961194267%_
                                               _%$%g193964194270%_))))
                                      (_%$%g193961194267%_
                                       _%$%g193964194270%_))
                                  (_%$%g193961194267%_ _%$%g193964194270%_))))
                          (_%$%g193961194267%_ _%$%g193964194270%_))
                      (_%$%g193961194267%_ _%$%g193964194270%_))
                  (_%$%g193961194267%_ _%$%g193964194270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g193961194267%_
                                                   _%$%g193964194270%_))))
                                          (_%$%g193961194267%_
                                           _%$%g193964194270%_))
                                      (_%$%g193961194267%_
                                       _%$%g193964194270%_))
                                  (_%$%g193961194267%_ _%$%g193964194270%_))))
                          (_%$%g193961194267%_ _%$%g193964194270%_))))
                  (_%$%g193961194267%_ _%$%g193964194270%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%loop194022194285%_
                                       _%$%target194019194280%_
                                       '())))))
                              (_%$%g193961194267%_ _%$%g193964194270%_))))
                      (_%$%g193961194267%_ _%$%g193964194270%_))))
               (_%$%g193959194713%_
                (lambda (_%$%g193964194526%_)
                  (if (gx#stx-pair? _%$%g193964194526%_)
                      (let ((_%$%e193968194528%_
                             (gx#stx-e _%$%g193964194526%_)))
                        (let ((_%$%hd193969194531%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e193968194528%_)))
                              (_%$%tl193970194533%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e193968194528%_))))
                          (if (gx#stx-pair/null? _%$%hd193969194531%_)
                              (let ((_g202631_
                                     (gx#syntax-split-splice
                                      _%$%hd193969194531%_
                                      '0)))
                                (begin
                                  (let ((_g202632_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202631_)
                                               (##values-length _g202631_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202632_ 2)))
                                        (error "Context expects 2 values"
                                               _g202632_)))
                                  (let ((_%$%target193971194536%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g202631_ 0)))
                                        (_%$%tl193973194538%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g202631_ 1))))
                                    (if (gx#stx-null? _%$%tl193973194538%_)
                                        (letrec ((_%$%loop193974194541%_
                                                  (lambda (_%$%hd193972194544%_
                                                           _%$%arg193978194546%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd193972194544%_)
                                                        (let ((_%$%e193975194548%_
                                                               (gx#stx-e
                                                                _%$%hd193972194544%_)))
                                                          (let ((_%$%lp-hd193976194551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e193975194548%_)))
                        (_%$%lp-tl193977194553%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e193975194548%_))))
                    (_%$%loop193974194541%_
                     _%$%lp-tl193977194553%_
                     (cons _%$%lp-hd193976194551%_ _%$%arg193978194546%_))))
                (let ((_%$%arg193979194556%_ (reverse _%$%arg193978194546%_)))
                  (if (gx#stx-pair? _%$%tl193970194533%_)
                      (let ((_%$%e193980194558%_
                             (gx#stx-e _%$%tl193970194533%_)))
                        (let ((_%$%hd193981194561%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e193980194558%_)))
                              (_%$%tl193982194563%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e193980194558%_))))
                          (if (gx#stx-pair? _%$%hd193981194561%_)
                              (let ((_%$%e193983194566%_
                                     (gx#stx-e _%$%hd193981194561%_)))
                                (let ((_%$%hd193984194569%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e193983194566%_)))
                                      (_%$%tl193985194571%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e193983194566%_))))
                                  (if (gx#identifier? _%$%hd193984194569%_)
                                      (if (gx#stx-eq?
                                           '%#call
                                           _%$%hd193984194569%_)
                                          (if (gx#stx-pair?
                                               _%$%tl193985194571%_)
                                              (let ((_%$%e193986194574%_
                                                     (gx#stx-e
                                                      _%$%tl193985194571%_)))
                                                (let ((_%$%hd193987194577%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e193986194574%_)))
                                                      (_%$%tl193988194579%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e193986194574%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%hd193987194577%_)
                                                      (let ((_%$%e193989194582%_
                                                             (gx#stx-e
                                                              _%$%hd193987194577%_)))
                                                        (let ((_%$%hd193990194585%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e193989194582%_)))
                      (_%$%tl193991194587%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e193989194582%_))))
                  (if (gx#identifier? _%$%hd193990194585%_)
                      (if (gx#stx-eq? '%#ref _%$%hd193990194585%_)
                          (if (gx#stx-pair? _%$%tl193991194587%_)
                              (let ((_%$%e193992194590%_
                                     (gx#stx-e _%$%tl193991194587%_)))
                                (let ((_%$%hd193993194593%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e193992194590%_)))
                                      (_%$%tl193994194595%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e193992194590%_))))
                                  (if (gx#stx-null? _%$%tl193994194595%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl193988194579%_)
                                          (let ((_g202633_
                                                 (gx#syntax-split-splice
                                                  _%$%tl193988194579%_
                                                  '0)))
                                            (begin
                                              (let ((_g202634_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g202633_)
                                                           (##values-length
                                                            _g202633_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g202634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g202634_)))
                                              (let ((_%$%target193995194598%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g202633_
                                                        0)))
                                                    (_%$%tl193997194600%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g202633_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl193997194600%_)
                                                    (letrec ((_%$%loop193998194603%_
                                                              (lambda (_%$%hd193996194606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%xarg194002194608%_)
                        (if (gx#stx-pair? _%$%hd193996194606%_)
                            (let ((_%$%e193999194610%_
                                   (gx#stx-e _%$%hd193996194606%_)))
                              (let ((_%$%lp-hd194000194613%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e193999194610%_)))
                                    (_%$%lp-tl194001194615%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e193999194610%_))))
                                (if (gx#stx-pair? _%$%lp-hd194000194613%_)
                                    (let ((_%$%e194004194618%_
                                           (gx#stx-e _%$%lp-hd194000194613%_)))
                                      (let ((_%$%hd194005194621%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e194004194618%_)))
                                            (_%$%tl194006194623%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e194004194618%_))))
                                        (if (gx#identifier?
                                             _%$%hd194005194621%_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd194005194621%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl194006194623%_)
                                                    (let ((_%$%e194007194626%_
                                                           (gx#stx-e
                                                            _%$%tl194006194623%_)))
                                                      (let ((_%$%hd194008194629%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e194007194626%_)))
                    (_%$%tl194009194631%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e194007194626%_))))
                (if (gx#stx-null? _%$%tl194009194631%_)
                    (_%$%loop193998194603%_
                     _%$%lp-tl194001194615%_
                     (cons _%$%hd194008194629%_ _%$%xarg194002194608%_))
                    (_%$%g193960194523%_ _%$%g193964194526%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g193960194523%_
                                                     _%$%g193964194526%_))
                                                (_%$%g193960194523%_
                                                 _%$%g193964194526%_))
                                            (_%$%g193960194523%_
                                             _%$%g193964194526%_))))
                                    (_%$%g193960194523%_
                                     _%$%g193964194526%_))))
                            (let ((_%$%xarg194003194634%_
                                   (reverse _%$%xarg194002194608%_)))
                              (if (gx#stx-null? _%$%tl193982194563%_)
                                  ((lambda (_%$%g193965194636%_
                                            _%$%g193966194637%_
                                            _%$%g193967194638%_)
                                     (if (and (gx#identifier-list?
                                               (foldr (lambda (_%$%g194666194669%_
                                                               _%$%g194667194671%_)
                                                        (cons _%$%g194666194669%_
                                                              _%$%g194667194671%_))
                                                      '()
                                                      _%$%g193967194638%_))
                                              (fx= (length (foldr (lambda (_%$%g194673194676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%$%g194674194678%_)
                            (cons _%$%g194673194676%_ _%$%g194674194678%_))
                          '()
                          _%$%g193967194638%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (length (foldr (lambda (_%$%g194680194683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%$%g194681194685%_)
                            (cons _%$%g194680194683%_ _%$%g194681194685%_))
                          '()
                          _%$%g193965194636%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (andmap gx#free-identifier=?
                                                      (foldr (lambda (_%$%g194687194690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g194688194692%_)
                       (cons _%$%g194687194690%_ _%$%g194688194692%_))
                     '()
                     _%$%g193967194638%_)
              (foldr (lambda (_%$%g194694194697%_ _%$%g194695194699%_)
                       (cons _%$%g194694194697%_ _%$%g194695194699%_))
                     '()
                     _%$%g193965194636%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (not (find (lambda (_%$%g194701194703%_)
                                                           (gx#free-identifier=?
                                                            _%$%g194701194703%_
                                                            _%$%g193966194637%_))
                                                         (foldr (lambda (_%$%g194705194708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g194706194710%_)
                          (cons _%$%g194705194708%_ _%$%g194706194710%_))
                        '()
                        _%$%g193967194638%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '#t
                                         (_%$%g193960194523%_
                                          _%$%g193964194526%_)))
                                   _%$%xarg194003194634%_
                                   _%$%hd193993194593%_
                                   _%$%arg193979194556%_)
                                  (_%$%g193960194523%_
                                   _%$%g193964194526%_)))))))
              (_%$%loop193998194603%_ _%$%target193995194598%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g193960194523%_
                                                     _%$%g193964194526%_)))))
                                          (_%$%g193960194523%_
                                           _%$%g193964194526%_))
                                      (_%$%g193960194523%_
                                       _%$%g193964194526%_))))
                              (_%$%g193960194523%_ _%$%g193964194526%_))
                          (_%$%g193960194523%_ _%$%g193964194526%_))
                      (_%$%g193960194523%_ _%$%g193964194526%_))))
              (_%$%g193960194523%_ _%$%g193964194526%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g193960194523%_
                                               _%$%g193964194526%_))
                                          (_%$%g193960194523%_
                                           _%$%g193964194526%_))
                                      (_%$%g193960194523%_
                                       _%$%g193964194526%_))))
                              (_%$%g193960194523%_ _%$%g193964194526%_))))
                      (_%$%g193960194523%_ _%$%g193964194526%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop193974194541%_
                                           _%$%target193971194536%_
                                           '()))
                                        (_%$%g193960194523%_
                                         _%$%g193964194526%_)))))
                              (_%$%g193960194523%_ _%$%g193964194526%_))))
                      (_%$%g193960194523%_ _%$%g193964194526%_)))))
          (_%$%g193959194713%_ _%form193958%_))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_%form193432%_)
        (let* ((_%$%g193436193560%_
                (lambda (_%$%g193437193557%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g193437193557%_)))
               (_%$%g193435193677%_
                (lambda (_%$%g193437193563%_)
                  (if (gx#stx-pair? _%$%g193437193563%_)
                      (let ((_%$%e193526193565%_
                             (gx#stx-e _%$%g193437193563%_)))
                        (let ((_%$%hd193527193568%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e193526193565%_)))
                              (_%$%tl193528193570%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e193526193565%_))))
                          (if (gx#stx-pair? _%$%tl193528193570%_)
                              (let ((_%$%e193529193573%_
                                     (gx#stx-e _%$%tl193528193570%_)))
                                (let ((_%$%hd193530193576%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e193529193573%_)))
                                      (_%$%tl193531193578%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e193529193573%_))))
                                  (if (gx#stx-pair? _%$%hd193530193576%_)
                                      (let ((_%$%e193532193581%_
                                             (gx#stx-e _%$%hd193530193576%_)))
                                        (let ((_%$%hd193533193584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e193532193581%_)))
                                              (_%$%tl193534193586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e193532193581%_))))
                                          (if (gx#identifier?
                                               _%$%hd193533193584%_)
                                              (if (gx#stx-eq?
                                                   '%#call
                                                   _%$%hd193533193584%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl193534193586%_)
                                                      (let ((_%$%e193535193589%_
                                                             (gx#stx-e
                                                              _%$%tl193534193586%_)))
                                                        (let ((_%$%hd193536193592%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e193535193589%_)))
                      (_%$%tl193537193594%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e193535193589%_))))
                  (if (gx#stx-pair? _%$%hd193536193592%_)
                      (let ((_%$%e193538193597%_
                             (gx#stx-e _%$%hd193536193592%_)))
                        (let ((_%$%hd193539193600%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e193538193597%_)))
                              (_%$%tl193540193602%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e193538193597%_))))
                          (if (gx#identifier? _%$%hd193539193600%_)
                              (if (gx#stx-eq? '%#ref _%$%hd193539193600%_)
                                  (if (gx#stx-pair? _%$%tl193540193602%_)
                                      (let ((_%$%e193541193605%_
                                             (gx#stx-e _%$%tl193540193602%_)))
                                        (let ((_%$%hd193542193608%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e193541193605%_)))
                                              (_%$%tl193543193610%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e193541193605%_))))
                                          (if (gx#stx-null?
                                               _%$%tl193543193610%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl193537193594%_)
                                                  (let ((_%$%e193544193613%_
                                                         (gx#stx-e
                                                          _%$%tl193537193594%_)))
                                                    (let ((_%$%hd193545193616%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e193544193613%_)))
                                                          (_%$%tl193546193618%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e193544193613%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%hd193545193616%_)
                                                          (let ((_%$%e193547193621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd193545193616%_)))
                    (let ((_%$%hd193548193624%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e193547193621%_)))
                          (_%$%tl193549193626%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e193547193621%_))))
                      (if (gx#identifier? _%$%hd193548193624%_)
                          (if (gx#stx-eq? '%#ref _%$%hd193548193624%_)
                              (if (gx#stx-pair? _%$%tl193549193626%_)
                                  (let ((_%$%e193550193629%_
                                         (gx#stx-e _%$%tl193549193626%_)))
                                    (let ((_%$%hd193551193632%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e193550193629%_)))
                                          (_%$%tl193552193634%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e193550193629%_))))
                                      (if (gx#stx-null? _%$%tl193552193634%_)
                                          (if (gx#stx-pair?
                                               _%$%tl193546193618%_)
                                              (let ((_%$%e193553193637%_
                                                     (gx#stx-e
                                                      _%$%tl193546193618%_)))
                                                (let ((_%$%hd193554193640%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e193553193637%_)))
                                                      (_%$%tl193555193642%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e193553193637%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl193555193642%_)
                                                      (if (gx#stx-null?
                                                           _%$%tl193531193578%_)
                                                          ((lambda (_%$%g193523193645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g193524193646%_
                            _%$%g193525193647%_)
                     (gxc#identifier-symbol _%$%g193523193645%_))
                   _%$%hd193551193632%_
                   _%$%hd193542193608%_
                   _%$%hd193527193568%_)
                  (_%$%g193436193560%_ _%$%g193437193563%_))
              (_%$%g193436193560%_ _%$%g193437193563%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g193436193560%_
                                               _%$%g193437193563%_))
                                          (_%$%g193436193560%_
                                           _%$%g193437193563%_))))
                                  (_%$%g193436193560%_ _%$%g193437193563%_))
                              (_%$%g193436193560%_ _%$%g193437193563%_))
                          (_%$%g193436193560%_ _%$%g193437193563%_))))
                  (_%$%g193436193560%_ _%$%g193437193563%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g193436193560%_
                                                   _%$%g193437193563%_))
                                              (_%$%g193436193560%_
                                               _%$%g193437193563%_))))
                                      (_%$%g193436193560%_
                                       _%$%g193437193563%_))
                                  (_%$%g193436193560%_ _%$%g193437193563%_))
                              (_%$%g193436193560%_ _%$%g193437193563%_))))
                      (_%$%g193436193560%_ _%$%g193437193563%_))))
              (_%$%g193436193560%_ _%$%g193437193563%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g193436193560%_
                                                   _%$%g193437193563%_))
                                              (_%$%g193436193560%_
                                               _%$%g193437193563%_))))
                                      (_%$%g193436193560%_
                                       _%$%g193437193563%_))))
                              (_%$%g193436193560%_ _%$%g193437193563%_))))
                      (_%$%g193436193560%_ _%$%g193437193563%_))))
               (_%$%g193434193811%_
                (lambda (_%$%g193437193680%_)
                  (if (gx#stx-pair? _%$%g193437193680%_)
                      (let ((_%$%e193487193682%_
                             (gx#stx-e _%$%g193437193680%_)))
                        (let ((_%$%hd193488193685%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e193487193682%_)))
                              (_%$%tl193489193687%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e193487193682%_))))
                          (if (gx#stx-pair/null? _%$%hd193488193685%_)
                              (let ((_g202635_
                                     (gx#syntax-split-splice
                                      _%$%hd193488193685%_
                                      '0)))
                                (begin
                                  (let ((_g202636_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202635_)
                                               (##values-length _g202635_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202636_ 2)))
                                        (error "Context expects 2 values"
                                               _g202636_)))
                                  (let ((_%$%target193490193690%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g202635_ 0)))
                                        (_%$%tl193492193692%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g202635_ 1))))
                                    (letrec ((_%$%loop193493193695%_
                                              (lambda (_%$%hd193491193698%_
                                                       _%$%arg193497193700%_)
                                                (if (gx#stx-pair?
                                                     _%$%hd193491193698%_)
                                                    (let ((_%$%e193494193702%_
                                                           (gx#stx-e
                                                            _%$%hd193491193698%_)))
                                                      (let ((_%$%lp-hd193495193705%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e193494193702%_)))
                    (_%$%lp-tl193496193707%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e193494193702%_))))
                (_%$%loop193493193695%_
                 _%$%lp-tl193496193707%_
                 (cons _%$%lp-hd193495193705%_ _%$%arg193497193700%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%arg193498193710%_
                                                           (reverse _%$%arg193497193700%_)))
                                                      (if (gx#stx-pair?
                                                           _%$%tl193489193687%_)
                                                          (let ((_%$%e193499193712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl193489193687%_)))
                    (let ((_%$%hd193500193715%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e193499193712%_)))
                          (_%$%tl193501193717%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e193499193712%_))))
                      (if (gx#stx-pair? _%$%hd193500193715%_)
                          (let ((_%$%e193502193720%_
                                 (gx#stx-e _%$%hd193500193715%_)))
                            (let ((_%$%hd193503193723%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e193502193720%_)))
                                  (_%$%tl193504193725%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e193502193720%_))))
                              (if (gx#identifier? _%$%hd193503193723%_)
                                  (if (gx#stx-eq? '%#call _%$%hd193503193723%_)
                                      (if (gx#stx-pair? _%$%tl193504193725%_)
                                          (let ((_%$%e193505193728%_
                                                 (gx#stx-e
                                                  _%$%tl193504193725%_)))
                                            (let ((_%$%hd193506193731%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e193505193728%_)))
                                                  (_%$%tl193507193733%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e193505193728%_))))
                                              (if (gx#stx-pair?
                                                   _%$%hd193506193731%_)
                                                  (let ((_%$%e193508193736%_
                                                         (gx#stx-e
                                                          _%$%hd193506193731%_)))
                                                    (let ((_%$%hd193509193739%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e193508193736%_)))
                                                          (_%$%tl193510193741%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e193508193736%_))))
                                                      (if (gx#identifier?
                                                           _%$%hd193509193739%_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd193509193739%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%tl193510193741%_)
                          (let ((_%$%e193511193744%_
                                 (gx#stx-e _%$%tl193510193741%_)))
                            (let ((_%$%hd193512193747%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e193511193744%_)))
                                  (_%$%tl193513193749%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e193511193744%_))))
                              (if (gx#stx-null? _%$%tl193513193749%_)
                                  (if (gx#stx-pair? _%$%tl193507193733%_)
                                      (let ((_%$%e193514193752%_
                                             (gx#stx-e _%$%tl193507193733%_)))
                                        (let ((_%$%hd193515193755%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e193514193752%_)))
                                              (_%$%tl193516193757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e193514193752%_))))
                                          (if (gx#stx-pair?
                                               _%$%hd193515193755%_)
                                              (let ((_%$%e193517193760%_
                                                     (gx#stx-e
                                                      _%$%hd193515193755%_)))
                                                (let ((_%$%hd193518193763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e193517193760%_)))
                                                      (_%$%tl193519193765%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e193517193760%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd193518193763%_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd193518193763%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl193519193765%_)
                                                              (let ((_%$%e193520193768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl193519193765%_)))
                        (let ((_%$%hd193521193771%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e193520193768%_)))
                              (_%$%tl193522193773%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e193520193768%_))))
                          (if (gx#stx-null? _%$%tl193522193773%_)
                              (if (gx#stx-null? _%$%tl193501193717%_)
                                  ((lambda (_%$%g193483193776%_
                                            _%$%g193484193777%_
                                            _%$%g193485193778%_
                                            _%$%g193486193779%_)
                                     (gxc#identifier-symbol
                                      _%$%g193483193776%_))
                                   _%$%hd193521193771%_
                                   _%$%hd193512193747%_
                                   _%$%tl193492193692%_
                                   _%$%arg193498193710%_)
                                  (_%$%g193435193677%_ _%$%g193437193680%_))
                              (_%$%g193435193677%_ _%$%g193437193680%_))))
                      (_%$%g193435193677%_ _%$%g193437193680%_))
                  (_%$%g193435193677%_ _%$%g193437193680%_))
              (_%$%g193435193677%_ _%$%g193437193680%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g193435193677%_
                                               _%$%g193437193680%_))))
                                      (_%$%g193435193677%_
                                       _%$%g193437193680%_))
                                  (_%$%g193435193677%_ _%$%g193437193680%_))))
                          (_%$%g193435193677%_ _%$%g193437193680%_))
                      (_%$%g193435193677%_ _%$%g193437193680%_))
                  (_%$%g193435193677%_ _%$%g193437193680%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g193435193677%_
                                                   _%$%g193437193680%_))))
                                          (_%$%g193435193677%_
                                           _%$%g193437193680%_))
                                      (_%$%g193435193677%_
                                       _%$%g193437193680%_))
                                  (_%$%g193435193677%_ _%$%g193437193680%_))))
                          (_%$%g193435193677%_ _%$%g193437193680%_))))
                  (_%$%g193435193677%_ _%$%g193437193680%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%loop193493193695%_
                                       _%$%target193490193690%_
                                       '())))))
                              (_%$%g193435193677%_ _%$%g193437193680%_))))
                      (_%$%g193435193677%_ _%$%g193437193680%_))))
               (_%$%g193433193955%_
                (lambda (_%$%g193437193814%_)
                  (if (gx#stx-pair? _%$%g193437193814%_)
                      (let ((_%$%e193441193816%_
                             (gx#stx-e _%$%g193437193814%_)))
                        (let ((_%$%hd193442193819%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e193441193816%_)))
                              (_%$%tl193443193821%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e193441193816%_))))
                          (if (gx#stx-pair/null? _%$%hd193442193819%_)
                              (let ((_g202637_
                                     (gx#syntax-split-splice
                                      _%$%hd193442193819%_
                                      '0)))
                                (begin
                                  (let ((_g202638_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202637_)
                                               (##values-length _g202637_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202638_ 2)))
                                        (error "Context expects 2 values"
                                               _g202638_)))
                                  (let ((_%$%target193444193824%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g202637_ 0)))
                                        (_%$%tl193446193826%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g202637_ 1))))
                                    (if (gx#stx-null? _%$%tl193446193826%_)
                                        (letrec ((_%$%loop193447193829%_
                                                  (lambda (_%$%hd193445193832%_
                                                           _%$%arg193451193834%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd193445193832%_)
                                                        (let ((_%$%e193448193836%_
                                                               (gx#stx-e
                                                                _%$%hd193445193832%_)))
                                                          (let ((_%$%lp-hd193449193839%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e193448193836%_)))
                        (_%$%lp-tl193450193841%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e193448193836%_))))
                    (_%$%loop193447193829%_
                     _%$%lp-tl193450193841%_
                     (cons _%$%lp-hd193449193839%_ _%$%arg193451193834%_))))
                (let ((_%$%arg193452193844%_ (reverse _%$%arg193451193834%_)))
                  (if (gx#stx-pair? _%$%tl193443193821%_)
                      (let ((_%$%e193453193846%_
                             (gx#stx-e _%$%tl193443193821%_)))
                        (let ((_%$%hd193454193849%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e193453193846%_)))
                              (_%$%tl193455193851%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e193453193846%_))))
                          (if (gx#stx-pair? _%$%hd193454193849%_)
                              (let ((_%$%e193456193854%_
                                     (gx#stx-e _%$%hd193454193849%_)))
                                (let ((_%$%hd193457193857%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e193456193854%_)))
                                      (_%$%tl193458193859%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e193456193854%_))))
                                  (if (gx#identifier? _%$%hd193457193857%_)
                                      (if (gx#stx-eq?
                                           '%#call
                                           _%$%hd193457193857%_)
                                          (if (gx#stx-pair?
                                               _%$%tl193458193859%_)
                                              (let ((_%$%e193459193862%_
                                                     (gx#stx-e
                                                      _%$%tl193458193859%_)))
                                                (let ((_%$%hd193460193865%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e193459193862%_)))
                                                      (_%$%tl193461193867%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e193459193862%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%hd193460193865%_)
                                                      (let ((_%$%e193462193870%_
                                                             (gx#stx-e
                                                              _%$%hd193460193865%_)))
                                                        (let ((_%$%hd193463193873%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e193462193870%_)))
                      (_%$%tl193464193875%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e193462193870%_))))
                  (if (gx#identifier? _%$%hd193463193873%_)
                      (if (gx#stx-eq? '%#ref _%$%hd193463193873%_)
                          (if (gx#stx-pair? _%$%tl193464193875%_)
                              (let ((_%$%e193465193878%_
                                     (gx#stx-e _%$%tl193464193875%_)))
                                (let ((_%$%hd193466193881%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e193465193878%_)))
                                      (_%$%tl193467193883%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e193465193878%_))))
                                  (if (gx#stx-null? _%$%tl193467193883%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl193461193867%_)
                                          (let ((_g202639_
                                                 (gx#syntax-split-splice
                                                  _%$%tl193461193867%_
                                                  '0)))
                                            (begin
                                              (let ((_g202640_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g202639_)
                                                           (##values-length
                                                            _g202639_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g202640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g202640_)))
                                              (let ((_%$%target193468193886%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g202639_
                                                        0)))
                                                    (_%$%tl193470193888%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g202639_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl193470193888%_)
                                                    (letrec ((_%$%loop193471193891%_
                                                              (lambda (_%$%hd193469193894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%xarg193475193896%_)
                        (if (gx#stx-pair? _%$%hd193469193894%_)
                            (let ((_%$%e193472193898%_
                                   (gx#stx-e _%$%hd193469193894%_)))
                              (let ((_%$%lp-hd193473193901%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e193472193898%_)))
                                    (_%$%lp-tl193474193903%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e193472193898%_))))
                                (if (gx#stx-pair? _%$%lp-hd193473193901%_)
                                    (let ((_%$%e193477193906%_
                                           (gx#stx-e _%$%lp-hd193473193901%_)))
                                      (let ((_%$%hd193478193909%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e193477193906%_)))
                                            (_%$%tl193479193911%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e193477193906%_))))
                                        (if (gx#identifier?
                                             _%$%hd193478193909%_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd193478193909%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl193479193911%_)
                                                    (let ((_%$%e193480193914%_
                                                           (gx#stx-e
                                                            _%$%tl193479193911%_)))
                                                      (let ((_%$%hd193481193917%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e193480193914%_)))
                    (_%$%tl193482193919%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e193480193914%_))))
                (if (gx#stx-null? _%$%tl193482193919%_)
                    (_%$%loop193471193891%_
                     _%$%lp-tl193474193903%_
                     (cons _%$%hd193481193917%_ _%$%xarg193475193896%_))
                    (_%$%g193434193811%_ _%$%g193437193814%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g193434193811%_
                                                     _%$%g193437193814%_))
                                                (_%$%g193434193811%_
                                                 _%$%g193437193814%_))
                                            (_%$%g193434193811%_
                                             _%$%g193437193814%_))))
                                    (_%$%g193434193811%_
                                     _%$%g193437193814%_))))
                            (let ((_%$%xarg193476193922%_
                                   (reverse _%$%xarg193475193896%_)))
                              (if (gx#stx-null? _%$%tl193455193851%_)
                                  ((lambda (_%$%g193438193924%_
                                            _%$%g193439193925%_
                                            _%$%g193440193926%_)
                                     (gxc#identifier-symbol
                                      _%$%g193439193925%_))
                                   _%$%xarg193476193922%_
                                   _%$%hd193466193881%_
                                   _%$%arg193452193844%_)
                                  (_%$%g193434193811%_
                                   _%$%g193437193814%_)))))))
              (_%$%loop193471193891%_ _%$%target193468193886%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g193434193811%_
                                                     _%$%g193437193814%_)))))
                                          (_%$%g193434193811%_
                                           _%$%g193437193814%_))
                                      (_%$%g193434193811%_
                                       _%$%g193437193814%_))))
                              (_%$%g193434193811%_ _%$%g193437193814%_))
                          (_%$%g193434193811%_ _%$%g193437193814%_))
                      (_%$%g193434193811%_ _%$%g193437193814%_))))
              (_%$%g193434193811%_ _%$%g193437193814%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g193434193811%_
                                               _%$%g193437193814%_))
                                          (_%$%g193434193811%_
                                           _%$%g193437193814%_))
                                      (_%$%g193434193811%_
                                       _%$%g193437193814%_))))
                              (_%$%g193434193811%_ _%$%g193437193814%_))))
                      (_%$%g193434193811%_ _%$%g193437193814%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop193447193829%_
                                           _%$%target193444193824%_
                                           '()))
                                        (_%$%g193434193811%_
                                         _%$%g193437193814%_)))))
                              (_%$%g193434193811%_ _%$%g193437193814%_))))
                      (_%$%g193434193811%_ _%$%g193437193814%_)))))
          (_%$%g193433193955%_ _%form193432%_))))
    (define gxc#lambda-form-arity
      (lambda (_%form193240%_)
        (let* ((_%$%g193242193256%_
                (lambda (_%$%g193243193253%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g193243193253%_)))
               (_%$%g193241193429%_
                (lambda (_%$%g193243193259%_)
                  (if (gx#stx-pair? _%$%g193243193259%_)
                      (let ((_%$%e193246193261%_
                             (gx#stx-e _%$%g193243193259%_)))
                        (let ((_%$%hd193247193264%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e193246193261%_)))
                              (_%$%tl193248193266%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e193246193261%_))))
                          (if (gx#stx-pair? _%$%tl193248193266%_)
                              (let ((_%$%e193249193269%_
                                     (gx#stx-e _%$%tl193248193266%_)))
                                (let ((_%$%hd193250193272%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e193249193269%_)))
                                      (_%$%tl193251193274%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e193249193269%_))))
                                  (if (gx#stx-null? _%$%tl193251193274%_)
                                      ((lambda (_%$%g193244193277%_
                                                _%$%g193245193278%_)
                                         (let* ((_%$%g193293193321%_
                                                 (lambda (_%$%g193294193318%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g193294193318%_)))
                                                (_%$%g193292193334%_
                                                 (lambda (_%$%g193294193324%_)
                                                   ((lambda (_%$%g193316193326%_)
                                                      (cons '0 '()))
                                                    _%$%g193294193324%_)))
                                                (_%$%g193291193381%_
                                                 (lambda (_%$%g193294193337%_)
                                                   (if (gx#stx-pair/null?
                                                        _%$%g193294193337%_)
                                                       (let ((_g202641_
                                                              (gx#syntax-split-splice
                                                               _%$%g193294193337%_
                                                               '0)))
                                                         (begin
                                                           (let ((_g202642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (if (##values? _g202641_)
                                (##values-length _g202641_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g202642_ 2)))
                         (error "Context expects 2 values" _g202642_)))
                   (let ((_%$%target193307193339%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g202641_ 0)))
                         (_%$%tl193309193341%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g202641_ 1))))
                     (letrec ((_%$%loop193310193344%_
                               (lambda (_%$%hd193308193347%_
                                        _%$%arg193314193349%_)
                                 (if (gx#stx-pair? _%$%hd193308193347%_)
                                     (let ((_%$%e193311193351%_
                                            (gx#stx-e _%$%hd193308193347%_)))
                                       (let ((_%$%lp-hd193312193354%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e193311193351%_)))
                                             (_%$%lp-tl193313193356%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e193311193351%_))))
                                         (_%$%loop193310193344%_
                                          _%$%lp-tl193313193356%_
                                          (cons _%$%lp-hd193312193354%_
                                                _%$%arg193314193349%_))))
                                     (let ((_%$%arg193315193359%_
                                            (reverse _%$%arg193314193349%_)))
                                       ((lambda (_%$%g193305193361%_
                                                 _%$%g193306193362%_)
                                          (cons (length (foldr (lambda (_%$%g193373193376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g193374193378%_)
                         (cons _%$%g193373193376%_ _%$%g193374193378%_))
                       '()
                       _%$%g193306193362%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                        _%$%tl193309193341%_
                                        _%$%arg193315193359%_))))))
                       (_%$%loop193310193344%_
                        _%$%target193307193339%_
                        '())))))
               (_%$%g193292193334%_ _%$%g193294193337%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g193290193426%_
                                                 (lambda (_%$%g193294193384%_)
                                                   (if (gx#stx-pair/null?
                                                        _%$%g193294193384%_)
                                                       (let ((_g202643_
                                                              (gx#syntax-split-splice
                                                               _%$%g193294193384%_
                                                               '0)))
                                                         (begin
                                                           (let ((_g202644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (if (##values? _g202643_)
                                (##values-length _g202643_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g202644_ 2)))
                         (error "Context expects 2 values" _g202644_)))
                   (let ((_%$%target193296193386%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g202643_ 0)))
                         (_%$%tl193298193388%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g202643_ 1))))
                     (if (gx#stx-null? _%$%tl193298193388%_)
                         (letrec ((_%$%loop193299193391%_
                                   (lambda (_%$%hd193297193394%_
                                            _%$%arg193303193396%_)
                                     (if (gx#stx-pair? _%$%hd193297193394%_)
                                         (let ((_%$%e193300193398%_
                                                (gx#stx-e
                                                 _%$%hd193297193394%_)))
                                           (let ((_%$%lp-hd193301193401%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e193300193398%_)))
                                                 (_%$%lp-tl193302193403%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e193300193398%_))))
                                             (_%$%loop193299193391%_
                                              _%$%lp-tl193302193403%_
                                              (cons _%$%lp-hd193301193401%_
                                                    _%$%arg193303193396%_))))
                                         (let ((_%$%arg193304193406%_
                                                (reverse _%$%arg193303193396%_)))
                                           ((lambda (_%$%g193295193408%_)
                                              (length (foldr (lambda (_%$%g193418193421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g193419193423%_)
                       (cons _%$%g193418193421%_ _%$%g193419193423%_))
                     '()
                     _%$%g193295193408%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%$%arg193304193406%_))))))
                           (_%$%loop193299193391%_
                            _%$%target193296193386%_
                            '()))
                         (_%$%g193291193381%_ _%$%g193294193384%_)))))
               (_%$%g193291193381%_ _%$%g193294193384%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g193290193426%_
                                            _%$%g193245193278%_)))
                                       _%$%hd193250193272%_
                                       _%$%hd193247193264%_)
                                      (_%$%g193242193256%_
                                       _%$%g193243193259%_))))
                              (_%$%g193242193256%_ _%$%g193243193259%_))))
                      (_%$%g193242193256%_ _%$%g193243193259%_)))))
          (_%$%g193241193429%_ _%form193240%_))))
    (define gxc#lambda-form-infer-signature
      (lambda (_%form193166%_)
        (letrec ((_%default-signature193168%_
                  (lambda ()
                    (gxc#make-!signature
                     'return:
                     't::t
                     'origin:
                     (gx#expander-context-id (gx#current-expander-context))))))
          (let* ((_%$%g193170193184%_
                  (lambda (_%$%g193171193181%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g193171193181%_)))
                 (_%$%g193169193236%_
                  (lambda (_%$%g193171193187%_)
                    (if (gx#stx-pair? _%$%g193171193187%_)
                        (let ((_%$%e193174193189%_
                               (gx#stx-e _%$%g193171193187%_)))
                          (let ((_%$%hd193175193192%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e193174193189%_)))
                                (_%$%tl193176193194%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e193174193189%_))))
                            (if (gx#stx-pair? _%$%tl193176193194%_)
                                (let ((_%$%e193177193197%_
                                       (gx#stx-e _%$%tl193176193194%_)))
                                  (let ((_%$%hd193178193200%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e193177193197%_)))
                                        (_%$%tl193179193202%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e193177193197%_))))
                                    (if (gx#stx-null? _%$%tl193179193202%_)
                                        ((lambda (_%$%g193172193205%_
                                                  _%$%g193173193206%_)
                                           (let ((_%$e193220%_
                                                  (gxc#apply-extract-lambda-signature
                                                   _%$%g193172193205%_)))
                                             (if _%$e193220%_
                                                 _%$e193220%_
                                                 (let ((_%$e193223%_
                                                        (gxc#apply-basic-expression-type
                                                         _%$%g193172193205%_)))
                                                   (if _%$e193223%_
                                                       ((lambda (_%return-type193226%_)
                                                          (if (gxc#!procedure?
                                                               _%return-type193226%_)
                                                              (gxc#make-!signature
                                                               'return:
                                                               'procedure::t
                                                               'origin:
                                                               (gx#expander-context-id
                                                                (gx#current-expander-context)))
                                                              (let ((_%$e193229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#optimizer-lookup-class-name
                              _%return-type193226%_)))
                        (if _%$e193229%_
                            ((lambda (_%return-type-name193232%_)
                               (gxc#make-!signature
                                'return:
                                _%return-type-name193232%_
                                'origin:
                                (gx#expander-context-id
                                 (gx#current-expander-context))))
                             _%$e193229%_)
                            (_%default-signature193168%_)))))
                _%$e193223%_)
               (_%default-signature193168%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%$%hd193178193200%_
                                         _%$%hd193175193192%_)
                                        (_%$%g193170193184%_
                                         _%$%g193171193187%_))))
                                (_%$%g193170193184%_ _%$%g193171193187%_))))
                        (_%$%g193170193184%_ _%$%g193171193187%_)))))
            (_%$%g193169193236%_ _%form193166%_)))))
    (define gxc#extract-lambda-signature-begin-annotation%
      (lambda (_%self192907%_ _%stx192908%_)
        (let* ((_%$%g192911192951%_
                (lambda (_%$%g192912192948%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g192912192948%_)))
               (_%$%g192910192996%_
                (lambda (_%$%g192912192954%_)
                  (if (gx#stx-pair? _%$%g192912192954%_)
                      (let ((_%$%e192938192956%_
                             (gx#stx-e _%$%g192912192954%_)))
                        (let ((_%$%hd192939192959%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e192938192956%_)))
                              (_%$%tl192940192961%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e192938192956%_))))
                          (if (gx#stx-pair? _%$%tl192940192961%_)
                              (let ((_%$%e192941192964%_
                                     (gx#stx-e _%$%tl192940192961%_)))
                                (let ((_%$%hd192942192967%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e192941192964%_)))
                                      (_%$%tl192943192969%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e192941192964%_))))
                                  (if (gx#stx-pair? _%$%tl192943192969%_)
                                      (let ((_%$%e192944192972%_
                                             (gx#stx-e _%$%tl192943192969%_)))
                                        (let ((_%$%hd192945192975%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e192944192972%_)))
                                              (_%$%tl192946192977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e192944192972%_))))
                                          (if (gx#stx-null?
                                               _%$%tl192946192977%_)
                                              ((lambda (_%$%g192936192980%_
                                                        _%$%g192937192981%_)
                                                 (gxc#compile-e
                                                  _%self192907%_
                                                  _%$%g192936192980%_))
                                               _%$%hd192945192975%_
                                               _%$%hd192942192967%_)
                                              (_%$%g192911192951%_
                                               _%$%g192912192954%_))))
                                      (_%$%g192911192951%_
                                       _%$%g192912192954%_))))
                              (_%$%g192911192951%_ _%$%g192912192954%_))))
                      (_%$%g192911192951%_ _%$%g192912192954%_))))
               (_%$%g192909193163%_
                (lambda (_%$%g192912192999%_)
                  (if (gx#stx-pair? _%$%g192912192999%_)
                      (let ((_%$%e192915193001%_
                             (gx#stx-e _%$%g192912192999%_)))
                        (let ((_%$%hd192916193004%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e192915193001%_)))
                              (_%$%tl192917193006%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e192915193001%_))))
                          (if (gx#stx-pair? _%$%tl192917193006%_)
                              (let ((_%$%e192918193009%_
                                     (gx#stx-e _%$%tl192917193006%_)))
                                (let ((_%$%hd192919193012%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e192918193009%_)))
                                      (_%$%tl192920193014%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e192918193009%_))))
                                  (if (gx#stx-pair? _%$%hd192919193012%_)
                                      (let ((_%$%e192921193017%_
                                             (gx#stx-e _%$%hd192919193012%_)))
                                        (let ((_%$%hd192922193020%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e192921193017%_)))
                                              (_%$%tl192923193022%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e192921193017%_))))
                                          (if (gx#identifier?
                                               _%$%hd192922193020%_)
                                              (if (gx#stx-eq?
                                                   '@type.signature
                                                   _%$%hd192922193020%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl192923193022%_)
                                                      (let ((_g202645_
                                                             (gx#syntax-split-splice
                                                              _%$%tl192923193022%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g202646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g202645_)
                               (##values-length _g202645_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g202646_ 2)))
                        (error "Context expects 2 values" _g202646_)))
                  (let ((_%$%target192924193025%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g202645_ 0)))
                        (_%$%tl192926193027%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g202645_ 1))))
                    (if (gx#stx-null? _%$%tl192926193027%_)
                        (letrec ((_%$%loop192927193030%_
                                  (lambda (_%$%hd192925193033%_
                                           _%$%signature192931193035%_)
                                    (if (gx#stx-pair? _%$%hd192925193033%_)
                                        (let ((_%$%e192928193037%_
                                               (gx#stx-e
                                                _%$%hd192925193033%_)))
                                          (let ((_%$%lp-hd192929193040%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e192928193037%_)))
                                                (_%$%lp-tl192930193042%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e192928193037%_))))
                                            (_%$%loop192927193030%_
                                             _%$%lp-tl192930193042%_
                                             (cons _%$%lp-hd192929193040%_
                                                   _%$%signature192931193035%_))))
                                        (let ((_%$%signature192932193045%_
                                               (reverse _%$%signature192931193035%_)))
                                          (if (gx#stx-pair?
                                               _%$%tl192920193014%_)
                                              (let ((_%$%e192933193047%_
                                                     (gx#stx-e
                                                      _%$%tl192920193014%_)))
                                                (let ((_%$%hd192934193050%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e192933193047%_)))
                                                      (_%$%tl192935193052%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e192933193047%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl192935193052%_)
                                                      ((lambda (_%$%g192913193055%_
                                                                _%$%g192914193056%_)
                                                         (let _%loop193076%_ ((_%rest193078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       (foldr (lambda (_%$%g193155193158%_
                                                       _%$%g193156193160%_)
                                                (cons _%$%g193155193158%_
                                                      _%$%g193156193160%_))
                                              '()
                                              _%$%g192914193056%_))
                                      (_%result193079%_ '()))
                   (let* ((_%$%rest193080193093%_ _%rest193078%_)
                          (_%$%E193084193097%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%$%rest193080193093%_
                                    '([(? stx-keyword? key) arg . rest])
                                    '([])
                                    '(_))
                             (void)))
                          (_%$%try-match193083193112%_
                           (lambda ()
                             (let ((_%$%K193085193109%_
                                    (lambda ()
                                      (gxc#raise-compile-error
                                       '"bad lambda signature"
                                       _%stx192908%_
                                       (foldr (lambda (_%$%g193101193104%_
                                                       _%$%g193102193106%_)
                                                (cons _%$%g193101193104%_
                                                      _%$%g193102193106%_))
                                              '()
                                              _%$%g192914193056%_)))))
                               (_%$%K193085193109%_))))
                          (_%$%try-match193082193120%_
                           (lambda ()
                             (let ((_%$%K193086193117%_
                                    (lambda ()
                                      (apply gxc#make-!signature
                                             'origin:
                                             (gx#expander-context-id
                                              (gx#current-expander-context))
                                             _%result193079%_))))
                               (if (null? _%$%rest193080193093%_)
                                   (_%$%K193086193117%_)
                                   (_%$%try-match193083193112%_)))))
                          (_%$%K193087193137%_
                           (lambda (_%rest193123%_ _%arg193124%_ _%key193125%_)
                             (let ((_%$e193127%_ (gx#stx-e _%key193125%_)))
                               (if (eq? 'return: _%$e193127%_)
                                   (_%loop193076%_
                                    _%rest193123%_
                                    (cons* 'return:
                                           (gxc#identifier-symbol
                                            _%arg193124%_)
                                           _%result193079%_))
                                   (if (eq? 'effect: _%$e193127%_)
                                       (_%loop193076%_
                                        _%rest193123%_
                                        (cons* 'effect:
                                               (if _%arg193124%_
                                                   (map gx#stx-e _%arg193124%_)
                                                   '#f)
                                               _%result193079%_))
                                       (if (eq? 'arguments: _%$e193127%_)
                                           (_%loop193076%_
                                            _%rest193123%_
                                            (cons* 'arguments:
                                                   (gxc#map*
                                                    gxc#identifier-symbol
                                                    _%arg193124%_)
                                                   _%result193079%_))
                                           (if (eq? 'unchecked: _%$e193127%_)
                                               (_%loop193076%_
                                                _%rest193123%_
                                                (cons* 'unchecked:
                                                       (gxc#identifier-symbol
                                                        _%arg193124%_)
                                                       _%result193079%_))
                                               (gxc#raise-compile-error
                                                '"bad lambda signature"
                                                _%stx192908%_
                                                (foldr (lambda (_%$%g193129193132%_
                                                                _%$%g193130193134%_)
                                                         (cons _%$%g193129193132%_
                                                               _%$%g193130193134%_))
                                                       '()
                                                       _%$%g192914193056%_)
                                                _%key193125%_)))))))))
                     (if (pair? _%$%rest193080193093%_)
                         (let ((_%$%hd193088193140%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%rest193080193093%_)))
                               (_%$%tl193089193142%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%rest193080193093%_))))
                           (if (gx#stx-keyword? _%$%hd193088193140%_)
                               (let ((_%key193145%_ _%$%hd193088193140%_))
                                 (if (pair? _%$%tl193089193142%_)
                                     (let ((_%$%hd193090193147%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%tl193089193142%_)))
                                           (_%$%tl193091193149%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%tl193089193142%_))))
                                       (let* ((_%arg193152%_
                                               _%$%hd193090193147%_)
                                              (_%rest193154%_
                                               _%$%tl193091193149%_))
                                         (_%$%K193087193137%_
                                          _%rest193154%_
                                          _%arg193152%_
                                          _%key193145%_)))
                                     (_%$%try-match193082193120%_)))
                               (_%$%try-match193082193120%_)))
                         (_%$%try-match193082193120%_)))))
               _%$%hd192934193050%_
               _%$%signature192932193045%_)
              (_%$%g192910192996%_ _%$%g192912192999%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g192910192996%_
                                               _%$%g192912192999%_)))))))
                          (_%$%loop192927193030%_
                           _%$%target192924193025%_
                           '()))
                        (_%$%g192910192996%_ _%$%g192912192999%_)))))
              (_%$%g192910192996%_ _%$%g192912192999%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g192910192996%_
                                                   _%$%g192912192999%_))
                                              (_%$%g192910192996%_
                                               _%$%g192912192999%_))))
                                      (_%$%g192910192996%_
                                       _%$%g192912192999%_))))
                              (_%$%g192910192996%_ _%$%g192912192999%_))))
                      (_%$%g192910192996%_ _%$%g192912192999%_)))))
          (_%$%g192909193163%_ _%stx192908%_))))
    (define gxc#lambda-expr?
      (lambda (_%expr192860%_)
        (let* ((_%$%g192863192873%_
                (lambda (_%$%g192864192870%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g192864192870%_)))
               (_%$%g192862192880%_
                (lambda (_%$%g192864192876%_) ((lambda () '#f))))
               (_%$%g192861192904%_
                (lambda (_%$%g192864192883%_)
                  (if (gx#stx-pair? _%$%g192864192883%_)
                      (let ((_%$%e192866192885%_
                             (gx#stx-e _%$%g192864192883%_)))
                        (let ((_%$%hd192867192888%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e192866192885%_)))
                              (_%$%tl192868192890%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e192866192885%_))))
                          (if (gx#identifier? _%$%hd192867192888%_)
                              (if (gx#stx-eq? '%#lambda _%$%hd192867192888%_)
                                  ((lambda (_%$%g192865192893%_) '#t)
                                   _%$%tl192868192890%_)
                                  (_%$%g192862192880%_ _%$%g192864192883%_))
                              (_%$%g192862192880%_ _%$%g192864192883%_))))
                      (_%$%g192862192880%_ _%$%g192864192883%_)))))
          (_%$%g192861192904%_ _%expr192860%_))))
    (define gxc#case-lambda-expr?
      (lambda (_%expr192813%_)
        (let* ((_%$%g192816192826%_
                (lambda (_%$%g192817192823%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g192817192823%_)))
               (_%$%g192815192833%_
                (lambda (_%$%g192817192829%_) ((lambda () '#f))))
               (_%$%g192814192857%_
                (lambda (_%$%g192817192836%_)
                  (if (gx#stx-pair? _%$%g192817192836%_)
                      (let ((_%$%e192819192838%_
                             (gx#stx-e _%$%g192817192836%_)))
                        (let ((_%$%hd192820192841%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e192819192838%_)))
                              (_%$%tl192821192843%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e192819192838%_))))
                          (if (gx#identifier? _%$%hd192820192841%_)
                              (if (gx#stx-eq?
                                   '%#case-lambda
                                   _%$%hd192820192841%_)
                                  ((lambda (_%$%g192818192846%_) '#t)
                                   _%$%tl192821192843%_)
                                  (_%$%g192815192833%_ _%$%g192817192836%_))
                              (_%$%g192815192833%_ _%$%g192817192836%_))))
                      (_%$%g192815192833%_ _%$%g192817192836%_)))))
          (_%$%g192814192857%_ _%expr192813%_))))
    (define gxc#opt-lambda-expr?
      (lambda (_%expr192682%_)
        (let* ((_%$%g192685192715%_
                (lambda (_%$%g192686192712%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g192686192712%_)))
               (_%$%g192684192722%_
                (lambda (_%$%g192686192718%_) ((lambda () '#f))))
               (_%$%g192683192810%_
                (lambda (_%$%g192686192725%_)
                  (if (gx#stx-pair? _%$%g192686192725%_)
                      (let ((_%$%e192690192727%_
                             (gx#stx-e _%$%g192686192725%_)))
                        (let ((_%$%hd192691192730%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e192690192727%_)))
                              (_%$%tl192692192732%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e192690192727%_))))
                          (if (gx#identifier? _%$%hd192691192730%_)
                              (if (gx#stx-eq?
                                   '%#let-values
                                   _%$%hd192691192730%_)
                                  (if (gx#stx-pair? _%$%tl192692192732%_)
                                      (let ((_%$%e192693192735%_
                                             (gx#stx-e _%$%tl192692192732%_)))
                                        (let ((_%$%hd192694192738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e192693192735%_)))
                                              (_%$%tl192695192740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e192693192735%_))))
                                          (if (gx#stx-pair?
                                               _%$%hd192694192738%_)
                                              (let ((_%$%e192696192743%_
                                                     (gx#stx-e
                                                      _%$%hd192694192738%_)))
                                                (let ((_%$%hd192697192746%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e192696192743%_)))
                                                      (_%$%tl192698192748%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e192696192743%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%hd192697192746%_)
                                                      (let ((_%$%e192699192751%_
                                                             (gx#stx-e
                                                              _%$%hd192697192746%_)))
                                                        (let ((_%$%hd192700192754%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e192699192751%_)))
                      (_%$%tl192701192756%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e192699192751%_))))
                  (if (gx#stx-pair? _%$%hd192700192754%_)
                      (let ((_%$%e192702192759%_
                             (gx#stx-e _%$%hd192700192754%_)))
                        (let ((_%$%hd192703192762%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e192702192759%_)))
                              (_%$%tl192704192764%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e192702192759%_))))
                          (if (gx#stx-null? _%$%tl192704192764%_)
                              (if (gx#stx-pair? _%$%tl192701192756%_)
                                  (let ((_%$%e192705192767%_
                                         (gx#stx-e _%$%tl192701192756%_)))
                                    (let ((_%$%hd192706192770%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e192705192767%_)))
                                          (_%$%tl192707192772%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e192705192767%_))))
                                      (if (gx#stx-null? _%$%tl192707192772%_)
                                          (if (gx#stx-null?
                                               _%$%tl192698192748%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl192695192740%_)
                                                  (let ((_%$%e192708192775%_
                                                         (gx#stx-e
                                                          _%$%tl192695192740%_)))
                                                    (let ((_%$%hd192709192778%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e192708192775%_)))
                                                          (_%$%tl192710192780%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e192708192775%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl192710192780%_)
                                                          ((lambda (_%$%g192687192783%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g192688192784%_
                            _%$%g192689192785%_)
                     (if (gx#identifier? _%$%g192689192785%_)
                         (if (gxc#lambda-expr? _%$%g192688192784%_)
                             (gxc#case-lambda-expr? _%$%g192687192783%_)
                             '#f)
                         '#f))
                   _%$%hd192709192778%_
                   _%$%hd192706192770%_
                   _%$%hd192703192762%_)
                  (_%$%g192684192722%_ _%$%g192686192725%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g192684192722%_
                                                   _%$%g192686192725%_))
                                              (_%$%g192684192722%_
                                               _%$%g192686192725%_))
                                          (_%$%g192684192722%_
                                           _%$%g192686192725%_))))
                                  (_%$%g192684192722%_ _%$%g192686192725%_))
                              (_%$%g192684192722%_ _%$%g192686192725%_))))
                      (_%$%g192684192722%_ _%$%g192686192725%_))))
              (_%$%g192684192722%_ _%$%g192686192725%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g192684192722%_
                                               _%$%g192686192725%_))))
                                      (_%$%g192684192722%_
                                       _%$%g192686192725%_))
                                  (_%$%g192684192722%_ _%$%g192686192725%_))
                              (_%$%g192684192722%_ _%$%g192686192725%_))))
                      (_%$%g192684192722%_ _%$%g192686192725%_)))))
          (_%$%g192683192810%_ _%expr192682%_))))
    (define gxc#kw-lambda-expr?
      (lambda (_%expr192007%_)
        (let* ((_%$%g192010192168%_
                (lambda (_%$%g192011192165%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g192011192165%_)))
               (_%$%g192009192175%_
                (lambda (_%$%g192011192171%_) ((lambda () '#f))))
               (_%$%g192008192679%_
                (lambda (_%$%g192011192178%_)
                  (if (gx#stx-pair? _%$%g192011192178%_)
                      (let ((_%$%e192023192180%_
                             (gx#stx-e _%$%g192011192178%_)))
                        (let ((_%$%hd192024192183%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e192023192180%_)))
                              (_%$%tl192025192185%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e192023192180%_))))
                          (if (gx#identifier? _%$%hd192024192183%_)
                              (if (gx#stx-eq?
                                   '%#let-values
                                   _%$%hd192024192183%_)
                                  (if (gx#stx-pair? _%$%tl192025192185%_)
                                      (let ((_%$%e192026192188%_
                                             (gx#stx-e _%$%tl192025192185%_)))
                                        (let ((_%$%hd192027192191%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e192026192188%_)))
                                              (_%$%tl192028192193%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e192026192188%_))))
                                          (if (gx#stx-pair?
                                               _%$%hd192027192191%_)
                                              (let ((_%$%e192029192196%_
                                                     (gx#stx-e
                                                      _%$%hd192027192191%_)))
                                                (let ((_%$%hd192030192199%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e192029192196%_)))
                                                      (_%$%tl192031192201%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e192029192196%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%hd192030192199%_)
                                                      (let ((_%$%e192032192204%_
                                                             (gx#stx-e
                                                              _%$%hd192030192199%_)))
                                                        (let ((_%$%hd192033192207%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e192032192204%_)))
                      (_%$%tl192034192209%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e192032192204%_))))
                  (if (gx#stx-pair? _%$%hd192033192207%_)
                      (let ((_%$%e192035192212%_
                             (gx#stx-e _%$%hd192033192207%_)))
                        (let ((_%$%hd192036192215%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e192035192212%_)))
                              (_%$%tl192037192217%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e192035192212%_))))
                          (if (gx#stx-null? _%$%tl192037192217%_)
                              (if (gx#stx-pair? _%$%tl192034192209%_)
                                  (let ((_%$%e192038192220%_
                                         (gx#stx-e _%$%tl192034192209%_)))
                                    (let ((_%$%hd192039192223%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e192038192220%_)))
                                          (_%$%tl192040192225%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e192038192220%_))))
                                      (if (gx#stx-pair? _%$%hd192039192223%_)
                                          (let ((_%$%e192041192228%_
                                                 (gx#stx-e
                                                  _%$%hd192039192223%_)))
                                            (let ((_%$%hd192042192231%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e192041192228%_)))
                                                  (_%$%tl192043192233%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e192041192228%_))))
                                              (if (gx#identifier?
                                                   _%$%hd192042192231%_)
                                                  (if (gx#stx-eq?
                                                       '%#let-values
                                                       _%$%hd192042192231%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl192043192233%_)
                                                          (let ((_%$%e192044192236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl192043192233%_)))
                    (let ((_%$%hd192045192239%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e192044192236%_)))
                          (_%$%tl192046192241%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e192044192236%_))))
                      (if (gx#stx-pair? _%$%hd192045192239%_)
                          (let ((_%$%e192047192244%_
                                 (gx#stx-e _%$%hd192045192239%_)))
                            (let ((_%$%hd192048192247%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e192047192244%_)))
                                  (_%$%tl192049192249%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e192047192244%_))))
                              (if (gx#stx-pair? _%$%hd192048192247%_)
                                  (let ((_%$%e192050192252%_
                                         (gx#stx-e _%$%hd192048192247%_)))
                                    (let ((_%$%hd192051192255%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e192050192252%_)))
                                          (_%$%tl192052192257%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e192050192252%_))))
                                      (if (gx#stx-pair? _%$%hd192051192255%_)
                                          (let ((_%$%e192053192260%_
                                                 (gx#stx-e
                                                  _%$%hd192051192255%_)))
                                            (let ((_%$%hd192054192263%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e192053192260%_)))
                                                  (_%$%tl192055192265%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e192053192260%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl192055192265%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl192052192257%_)
                                                      (let ((_%$%e192056192268%_
                                                             (gx#stx-e
                                                              _%$%tl192052192257%_)))
                                                        (let ((_%$%hd192057192271%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e192056192268%_)))
                      (_%$%tl192058192273%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e192056192268%_))))
                  (if (gx#stx-null? _%$%tl192058192273%_)
                      (if (gx#stx-null? _%$%tl192049192249%_)
                          (if (gx#stx-pair? _%$%tl192046192241%_)
                              (let ((_%$%e192059192276%_
                                     (gx#stx-e _%$%tl192046192241%_)))
                                (let ((_%$%hd192060192279%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e192059192276%_)))
                                      (_%$%tl192061192281%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e192059192276%_))))
                                  (if (gx#stx-pair? _%$%hd192060192279%_)
                                      (let ((_%$%e192062192284%_
                                             (gx#stx-e _%$%hd192060192279%_)))
                                        (let ((_%$%hd192063192287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e192062192284%_)))
                                              (_%$%tl192064192289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e192062192284%_))))
                                          (if (gx#identifier?
                                               _%$%hd192063192287%_)
                                              (if (gx#stx-eq?
                                                   '%#lambda
                                                   _%$%hd192063192287%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl192064192289%_)
                                                      (let ((_%$%e192065192292%_
                                                             (gx#stx-e
                                                              _%$%tl192064192289%_)))
                                                        (let ((_%$%hd192066192295%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e192065192292%_)))
                      (_%$%tl192067192297%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e192065192292%_))))
                  (if (gx#stx-pair? _%$%hd192066192295%_)
                      (let ((_%$%e192068192300%_
                             (gx#stx-e _%$%hd192066192295%_)))
                        (let ((_%$%hd192069192303%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e192068192300%_)))
                              (_%$%tl192070192305%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e192068192300%_))))
                          (if (gx#stx-pair? _%$%tl192067192297%_)
                              (let ((_%$%e192071192308%_
                                     (gx#stx-e _%$%tl192067192297%_)))
                                (let ((_%$%hd192072192311%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e192071192308%_)))
                                      (_%$%tl192073192313%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e192071192308%_))))
                                  (if (gx#stx-pair? _%$%hd192072192311%_)
                                      (let ((_%$%e192074192316%_
                                             (gx#stx-e _%$%hd192072192311%_)))
                                        (let ((_%$%hd192075192319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e192074192316%_)))
                                              (_%$%tl192076192321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e192074192316%_))))
                                          (if (gx#identifier?
                                               _%$%hd192075192319%_)
                                              (if (gx#stx-eq?
                                                   '%#call
                                                   _%$%hd192075192319%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl192076192321%_)
                                                      (let ((_%$%e192077192324%_
                                                             (gx#stx-e
                                                              _%$%tl192076192321%_)))
                                                        (let ((_%$%hd192078192327%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e192077192324%_)))
                      (_%$%tl192079192329%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e192077192324%_))))
                  (if (gx#stx-pair? _%$%hd192078192327%_)
                      (let ((_%$%e192080192332%_
                             (gx#stx-e _%$%hd192078192327%_)))
                        (let ((_%$%hd192081192335%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e192080192332%_)))
                              (_%$%tl192082192337%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e192080192332%_))))
                          (if (gx#identifier? _%$%hd192081192335%_)
                              (if (gx#stx-eq? '%#ref _%$%hd192081192335%_)
                                  (if (gx#stx-pair? _%$%tl192082192337%_)
                                      (let ((_%$%e192083192340%_
                                             (gx#stx-e _%$%tl192082192337%_)))
                                        (let ((_%$%hd192084192343%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e192083192340%_)))
                                              (_%$%tl192085192345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e192083192340%_))))
                                          (if (gx#stx-null?
                                               _%$%tl192085192345%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl192079192329%_)
                                                  (let ((_%$%e192086192348%_
                                                         (gx#stx-e
                                                          _%$%tl192079192329%_)))
                                                    (let ((_%$%hd192087192351%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e192086192348%_)))
                                                          (_%$%tl192088192353%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e192086192348%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%hd192087192351%_)
                                                          (let ((_%$%e192089192356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd192087192351%_)))
                    (let ((_%$%hd192090192359%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e192089192356%_)))
                          (_%$%tl192091192361%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e192089192356%_))))
                      (if (gx#identifier? _%$%hd192090192359%_)
                          (if (gx#stx-eq? '%#ref _%$%hd192090192359%_)
                              (if (gx#stx-pair? _%$%tl192091192361%_)
                                  (let ((_%$%e192092192364%_
                                         (gx#stx-e _%$%tl192091192361%_)))
                                    (let ((_%$%hd192093192367%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e192092192364%_)))
                                          (_%$%tl192094192369%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e192092192364%_))))
                                      (if (gx#stx-null? _%$%tl192094192369%_)
                                          (if (gx#stx-pair?
                                               _%$%tl192088192353%_)
                                              (let ((_%$%e192095192372%_
                                                     (gx#stx-e
                                                      _%$%tl192088192353%_)))
                                                (let ((_%$%hd192096192375%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e192095192372%_)))
                                                      (_%$%tl192097192377%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e192095192372%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%hd192096192375%_)
                                                      (let ((_%$%e192098192380%_
                                                             (gx#stx-e
                                                              _%$%hd192096192375%_)))
                                                        (let ((_%$%hd192099192383%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e192098192380%_)))
                      (_%$%tl192100192385%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e192098192380%_))))
                  (if (gx#identifier? _%$%hd192099192383%_)
                      (if (gx#stx-eq? '%#ref _%$%hd192099192383%_)
                          (if (gx#stx-pair? _%$%tl192100192385%_)
                              (let ((_%$%e192101192388%_
                                     (gx#stx-e _%$%tl192100192385%_)))
                                (let ((_%$%hd192102192391%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e192101192388%_)))
                                      (_%$%tl192103192393%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e192101192388%_))))
                                  (if (gx#stx-null? _%$%tl192103192393%_)
                                      (if (gx#stx-null? _%$%tl192073192313%_)
                                          (if (gx#stx-null?
                                               _%$%tl192061192281%_)
                                              (if (gx#stx-null?
                                                   _%$%tl192040192225%_)
                                                  (if (gx#stx-null?
                                                       _%$%tl192031192201%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl192028192193%_)
                                                          (let ((_%$%e192104192396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl192028192193%_)))
                    (let ((_%$%hd192105192399%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e192104192396%_)))
                          (_%$%tl192106192401%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e192104192396%_))))
                      (if (gx#stx-pair? _%$%hd192105192399%_)
                          (let ((_%$%e192107192404%_
                                 (gx#stx-e _%$%hd192105192399%_)))
                            (let ((_%$%hd192108192407%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e192107192404%_)))
                                  (_%$%tl192109192409%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e192107192404%_))))
                              (if (gx#identifier? _%$%hd192108192407%_)
                                  (if (gx#stx-eq?
                                       '%#lambda
                                       _%$%hd192108192407%_)
                                      (if (gx#stx-pair? _%$%tl192109192409%_)
                                          (let ((_%$%e192110192412%_
                                                 (gx#stx-e
                                                  _%$%tl192109192409%_)))
                                            (let ((_%$%hd192111192415%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e192110192412%_)))
                                                  (_%$%tl192112192417%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e192110192412%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl192112192417%_)
                                                  (let ((_%$%e192113192420%_
                                                         (gx#stx-e
                                                          _%$%tl192112192417%_)))
                                                    (let ((_%$%hd192114192423%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e192113192420%_)))
                                                          (_%$%tl192115192425%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e192113192420%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%hd192114192423%_)
                                                          (let ((_%$%e192116192428%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd192114192423%_)))
                    (let ((_%$%hd192117192431%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e192116192428%_)))
                          (_%$%tl192118192433%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e192116192428%_))))
                      (if (gx#identifier? _%$%hd192117192431%_)
                          (if (gx#stx-eq? '%#call _%$%hd192117192431%_)
                              (if (gx#stx-pair? _%$%tl192118192433%_)
                                  (let ((_%$%e192119192436%_
                                         (gx#stx-e _%$%tl192118192433%_)))
                                    (let ((_%$%hd192120192439%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e192119192436%_)))
                                          (_%$%tl192121192441%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e192119192436%_))))
                                      (if (gx#stx-pair? _%$%hd192120192439%_)
                                          (let ((_%$%e192122192444%_
                                                 (gx#stx-e
                                                  _%$%hd192120192439%_)))
                                            (let ((_%$%hd192123192447%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e192122192444%_)))
                                                  (_%$%tl192124192449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e192122192444%_))))
                                              (if (gx#identifier?
                                                   _%$%hd192123192447%_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _%$%hd192123192447%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl192124192449%_)
                                                          (let ((_%$%e192125192452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl192124192449%_)))
                    (let ((_%$%hd192126192455%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e192125192452%_)))
                          (_%$%tl192127192457%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e192125192452%_))))
                      (if (gx#stx-null? _%$%tl192127192457%_)
                          (if (gx#stx-pair? _%$%tl192121192441%_)
                              (let ((_%$%e192128192460%_
                                     (gx#stx-e _%$%tl192121192441%_)))
                                (let ((_%$%hd192129192463%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e192128192460%_)))
                                      (_%$%tl192130192465%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e192128192460%_))))
                                  (if (gx#stx-pair? _%$%hd192129192463%_)
                                      (let ((_%$%e192131192468%_
                                             (gx#stx-e _%$%hd192129192463%_)))
                                        (let ((_%$%hd192132192471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e192131192468%_)))
                                              (_%$%tl192133192473%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e192131192468%_))))
                                          (if (gx#identifier?
                                               _%$%hd192132192471%_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd192132192471%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl192133192473%_)
                                                      (let ((_%$%e192134192476%_
                                                             (gx#stx-e
                                                              _%$%tl192133192473%_)))
                                                        (let ((_%$%hd192135192479%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e192134192476%_)))
                      (_%$%tl192136192481%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e192134192476%_))))
                  (if (gx#stx-null? _%$%tl192136192481%_)
                      (if (gx#stx-pair? _%$%tl192130192465%_)
                          (let ((_%$%e192137192484%_
                                 (gx#stx-e _%$%tl192130192465%_)))
                            (let ((_%$%hd192138192487%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e192137192484%_)))
                                  (_%$%tl192139192489%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e192137192484%_))))
                              (if (gx#stx-pair? _%$%hd192138192487%_)
                                  (let ((_%$%e192140192492%_
                                         (gx#stx-e _%$%hd192138192487%_)))
                                    (let ((_%$%hd192141192495%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e192140192492%_)))
                                          (_%$%tl192142192497%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e192140192492%_))))
                                      (if (gx#identifier? _%$%hd192141192495%_)
                                          (if (gx#stx-eq?
                                               '%#quote
                                               _%$%hd192141192495%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl192142192497%_)
                                                  (let ((_%$%e192143192500%_
                                                         (gx#stx-e
                                                          _%$%tl192142192497%_)))
                                                    (let ((_%$%hd192144192503%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e192143192500%_)))
                                                          (_%$%tl192145192505%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e192143192500%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl192145192505%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl192139192489%_)
                                                              (let ((_%$%e192146192508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl192139192489%_)))
                        (let ((_%$%hd192147192511%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e192146192508%_)))
                              (_%$%tl192148192513%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e192146192508%_))))
                          (if (gx#stx-pair? _%$%hd192147192511%_)
                              (let ((_%$%e192149192516%_
                                     (gx#stx-e _%$%hd192147192511%_)))
                                (let ((_%$%hd192150192519%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e192149192516%_)))
                                      (_%$%tl192151192521%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e192149192516%_))))
                                  (if (gx#identifier? _%$%hd192150192519%_)
                                      (if (gx#stx-eq?
                                           '%#ref
                                           _%$%hd192150192519%_)
                                          (if (gx#stx-pair?
                                               _%$%tl192151192521%_)
                                              (let ((_%$%e192152192524%_
                                                     (gx#stx-e
                                                      _%$%tl192151192521%_)))
                                                (let ((_%$%hd192153192527%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e192152192524%_)))
                                                      (_%$%tl192154192529%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e192152192524%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl192154192529%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl192148192513%_)
                                                          (let ((_%$%e192155192532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl192148192513%_)))
                    (let ((_%$%hd192156192535%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e192155192532%_)))
                          (_%$%tl192157192537%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e192155192532%_))))
                      (if (gx#stx-pair? _%$%hd192156192535%_)
                          (let ((_%$%e192158192540%_
                                 (gx#stx-e _%$%hd192156192535%_)))
                            (let ((_%$%hd192159192543%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e192158192540%_)))
                                  (_%$%tl192160192545%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e192158192540%_))))
                              (if (gx#identifier? _%$%hd192159192543%_)
                                  (if (gx#stx-eq? '%#ref _%$%hd192159192543%_)
                                      (if (gx#stx-pair? _%$%tl192160192545%_)
                                          (let ((_%$%e192161192548%_
                                                 (gx#stx-e
                                                  _%$%tl192160192545%_)))
                                            (let ((_%$%hd192162192551%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e192161192548%_)))
                                                  (_%$%tl192163192553%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e192161192548%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl192163192553%_)
                                                  (if (gx#stx-null?
                                                       _%$%tl192157192537%_)
                                                      (if (gx#stx-null?
                                                           _%$%tl192115192425%_)
                                                          (if (gx#stx-null?
                                                               _%$%tl192106192401%_)
                                                              ((lambda (_%$%g192012192556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g192013192557%_
                                _%$%g192014192558%_
                                _%$%g192015192559%_
                                _%$%g192016192560%_
                                _%$%g192017192561%_
                                _%$%g192018192562%_
                                _%$%g192019192563%_
                                _%$%g192020192564%_
                                _%$%g192021192565%_
                                _%$%g192022192566%_)
                         (if (gxc#runtime-identifier=?
                              _%$%g192019192563%_
                              'apply)
                             (if (gxc#runtime-identifier=?
                                  _%$%g192015192559%_
                                  'apply)
                                 (if (gxc#runtime-identifier=?
                                      _%$%g192014192558%_
                                      'keyword-dispatch)
                                     (if (gx#free-identifier=?
                                          _%$%g192022192566%_
                                          _%$%g192013192557%_)
                                         (if (gx#free-identifier=?
                                              _%$%g192021192565%_
                                              _%$%g192018192562%_)
                                             (if (gx#free-identifier=?
                                                  _%$%g192016192560%_
                                                  _%$%g192012192556%_)
                                                 (gx#free-identifier=?
                                                  _%$%g192020192564%_
                                                  _%$%g192017192561%_)
                                                 '#f)
                                             '#f)
                                         '#f)
                                     '#f)
                                 '#f)
                             '#f))
                       _%$%hd192162192551%_
                       _%$%hd192153192527%_
                       _%$%hd192135192479%_
                       _%$%hd192126192455%_
                       _%$%hd192111192415%_
                       _%$%hd192102192391%_
                       _%$%hd192093192367%_
                       _%$%hd192084192343%_
                       _%$%hd192069192303%_
                       _%$%hd192054192263%_
                       _%$%hd192036192215%_)
                      (_%$%g192009192175%_ _%$%g192011192178%_))
                  (_%$%g192009192175%_ _%$%g192011192178%_))
              (_%$%g192009192175%_ _%$%g192011192178%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g192009192175%_
                                                   _%$%g192011192178%_))))
                                          (_%$%g192009192175%_
                                           _%$%g192011192178%_))
                                      (_%$%g192009192175%_
                                       _%$%g192011192178%_))
                                  (_%$%g192009192175%_ _%$%g192011192178%_))))
                          (_%$%g192009192175%_ _%$%g192011192178%_))))
                  (_%$%g192009192175%_ _%$%g192011192178%_))
              (_%$%g192009192175%_ _%$%g192011192178%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g192009192175%_
                                               _%$%g192011192178%_))
                                          (_%$%g192009192175%_
                                           _%$%g192011192178%_))
                                      (_%$%g192009192175%_
                                       _%$%g192011192178%_))))
                              (_%$%g192009192175%_ _%$%g192011192178%_))))
                      (_%$%g192009192175%_ _%$%g192011192178%_))
                  (_%$%g192009192175%_ _%$%g192011192178%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g192009192175%_
                                                   _%$%g192011192178%_))
                                              (_%$%g192009192175%_
                                               _%$%g192011192178%_))
                                          (_%$%g192009192175%_
                                           _%$%g192011192178%_))))
                                  (_%$%g192009192175%_ _%$%g192011192178%_))))
                          (_%$%g192009192175%_ _%$%g192011192178%_))
                      (_%$%g192009192175%_ _%$%g192011192178%_))))
              (_%$%g192009192175%_ _%$%g192011192178%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g192009192175%_
                                                   _%$%g192011192178%_))
                                              (_%$%g192009192175%_
                                               _%$%g192011192178%_))))
                                      (_%$%g192009192175%_
                                       _%$%g192011192178%_))))
                              (_%$%g192009192175%_ _%$%g192011192178%_))
                          (_%$%g192009192175%_ _%$%g192011192178%_))))
                  (_%$%g192009192175%_ _%$%g192011192178%_))
              (_%$%g192009192175%_ _%$%g192011192178%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g192009192175%_
                                                   _%$%g192011192178%_))))
                                          (_%$%g192009192175%_
                                           _%$%g192011192178%_))))
                                  (_%$%g192009192175%_ _%$%g192011192178%_))
                              (_%$%g192009192175%_ _%$%g192011192178%_))
                          (_%$%g192009192175%_ _%$%g192011192178%_))))
                  (_%$%g192009192175%_ _%$%g192011192178%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g192009192175%_
                                                   _%$%g192011192178%_))))
                                          (_%$%g192009192175%_
                                           _%$%g192011192178%_))
                                      (_%$%g192009192175%_
                                       _%$%g192011192178%_))
                                  (_%$%g192009192175%_ _%$%g192011192178%_))))
                          (_%$%g192009192175%_ _%$%g192011192178%_))))
                  (_%$%g192009192175%_ _%$%g192011192178%_))
              (_%$%g192009192175%_ _%$%g192011192178%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g192009192175%_
                                                   _%$%g192011192178%_))
                                              (_%$%g192009192175%_
                                               _%$%g192011192178%_))
                                          (_%$%g192009192175%_
                                           _%$%g192011192178%_))
                                      (_%$%g192009192175%_
                                       _%$%g192011192178%_))))
                              (_%$%g192009192175%_ _%$%g192011192178%_))
                          (_%$%g192009192175%_ _%$%g192011192178%_))
                      (_%$%g192009192175%_ _%$%g192011192178%_))))
              (_%$%g192009192175%_ _%$%g192011192178%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g192009192175%_
                                               _%$%g192011192178%_))
                                          (_%$%g192009192175%_
                                           _%$%g192011192178%_))))
                                  (_%$%g192009192175%_ _%$%g192011192178%_))
                              (_%$%g192009192175%_ _%$%g192011192178%_))
                          (_%$%g192009192175%_ _%$%g192011192178%_))))
                  (_%$%g192009192175%_ _%$%g192011192178%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g192009192175%_
                                                   _%$%g192011192178%_))
                                              (_%$%g192009192175%_
                                               _%$%g192011192178%_))))
                                      (_%$%g192009192175%_
                                       _%$%g192011192178%_))
                                  (_%$%g192009192175%_ _%$%g192011192178%_))
                              (_%$%g192009192175%_ _%$%g192011192178%_))))
                      (_%$%g192009192175%_ _%$%g192011192178%_))))
              (_%$%g192009192175%_ _%$%g192011192178%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g192009192175%_
                                                   _%$%g192011192178%_))
                                              (_%$%g192009192175%_
                                               _%$%g192011192178%_))))
                                      (_%$%g192009192175%_
                                       _%$%g192011192178%_))))
                              (_%$%g192009192175%_ _%$%g192011192178%_))))
                      (_%$%g192009192175%_ _%$%g192011192178%_))))
              (_%$%g192009192175%_ _%$%g192011192178%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g192009192175%_
                                                   _%$%g192011192178%_))
                                              (_%$%g192009192175%_
                                               _%$%g192011192178%_))))
                                      (_%$%g192009192175%_
                                       _%$%g192011192178%_))))
                              (_%$%g192009192175%_ _%$%g192011192178%_))
                          (_%$%g192009192175%_ _%$%g192011192178%_))
                      (_%$%g192009192175%_ _%$%g192011192178%_))))
              (_%$%g192009192175%_ _%$%g192011192178%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g192009192175%_
                                                   _%$%g192011192178%_))))
                                          (_%$%g192009192175%_
                                           _%$%g192011192178%_))))
                                  (_%$%g192009192175%_ _%$%g192011192178%_))))
                          (_%$%g192009192175%_ _%$%g192011192178%_))))
                  (_%$%g192009192175%_ _%$%g192011192178%_))
              (_%$%g192009192175%_ _%$%g192011192178%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g192009192175%_
                                                   _%$%g192011192178%_))))
                                          (_%$%g192009192175%_
                                           _%$%g192011192178%_))))
                                  (_%$%g192009192175%_ _%$%g192011192178%_))
                              (_%$%g192009192175%_ _%$%g192011192178%_))))
                      (_%$%g192009192175%_ _%$%g192011192178%_))))
              (_%$%g192009192175%_ _%$%g192011192178%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g192009192175%_
                                               _%$%g192011192178%_))))
                                      (_%$%g192009192175%_
                                       _%$%g192011192178%_))
                                  (_%$%g192009192175%_ _%$%g192011192178%_))
                              (_%$%g192009192175%_ _%$%g192011192178%_))))
                      (_%$%g192009192175%_ _%$%g192011192178%_)))))
          (_%$%g192008192679%_ _%expr192007%_))))
    (define gxc#lift-case-lambda-clauses
      (let ((_%$%opt-lambda191751191993%_
             (lambda (_%stx191753%_
                      _%id191754%_
                      _%clauses191755%_
                      _%gensym?191756%_)
               (let _%lp191758%_ ((_%rest191760%_ _%clauses191755%_)
                                  (_%ids191761%_ '())
                                  (_%impls191762%_ '())
                                  (_%clauses191763%_ '()))
                 (let* ((_%$%rest191764191772%_ _%rest191760%_)
                        (_%$%E191767191776%_
                         (lambda ()
                           (error '"No clause matching"
                                  _%$%rest191764191772%_
                                  '([clause . rest])
                                  'else)
                           (void)))
                        (_%$%else191766191780%_
                         (lambda ()
                           (values (reverse _%ids191761%_)
                                   (reverse _%impls191762%_)
                                   (reverse _%clauses191763%_))))
                        (_%$%K191768191981%_
                         (lambda (_%rest191783%_ _%clause191784%_)
                           (if (gxc#dispatch-lambda-form? _%clause191784%_)
                               (_%lp191758%_
                                _%rest191783%_
                                _%ids191761%_
                                _%impls191762%_
                                (cons _%clause191784%_ _%clauses191763%_))
                               (let* ((_%$%g191786191797%_
                                       (lambda (_%$%g191787191794%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%$%g191787191794%_)))
                                      (_%$%g191785191978%_
                                       (lambda (_%$%g191787191800%_)
                                         (if (gx#stx-pair? _%$%g191787191800%_)
                                             (let ((_%$%e191790191802%_
                                                    (gx#stx-e
                                                     _%$%g191787191800%_)))
                                               (let ((_%$%hd191791191805%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e191790191802%_)))
                                                     (_%$%tl191792191807%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e191790191802%_))))
                                                 ((lambda (_%$%g191788191810%_
                                                           _%$%g191789191811%_)
                                                    (let* ((_%id191828%_
                                                            (make-symbol
                                                             (gx#stx-e
                                                              _%id191754%_)
                                                             '"__"
                                                             (length _%clauses191763%_)
                                                             (if _%gensym?191756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gensym '__)
                         '"")))
                   (_%id191830%_
                    (gx#core-quote-syntax
                     _%id191828%_
                     (gx#stx-source _%stx191753%_)))
                   (_%impl191832%_
                    (gxc#xform-wrap-source
                     (cons (gx#datum->syntax '#f '%#lambda)
                           (cons _%$%g191789191811%_ _%$%g191788191810%_))
                     _%stx191753%_))
                   (_%clause191975%_
                    (let* ((_%$%g191836191864%_
                            (lambda (_%$%g191837191861%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g191837191861%_)))
                           (_%$%g191835191880%_
                            (lambda (_%$%g191837191867%_)
                              ((lambda (_%$%g191859191869%_)
                                 (cons _%$%g191789191811%_
                                       (cons (gxc#xform-wrap-source
                                              (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons 'apply
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#ref (cons _%id191830%_ '()))
                        (cons (cons (gx#datum->syntax '#f '%#ref)
                                    (cons _%$%g191859191869%_ '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%stx191753%_)
                                             '())))
                               _%$%g191837191867%_)))
                           (_%$%g191834191927%_
                            (lambda (_%$%g191837191883%_)
                              (if (gx#stx-pair/null? _%$%g191837191883%_)
                                  (let ((_g202647_
                                         (gx#syntax-split-splice
                                          _%$%g191837191883%_
                                          '0)))
                                    (begin
                                      (let ((_g202648_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g202647_)
                                                   (##values-length _g202647_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g202648_ 2)))
                                            (error "Context expects 2 values"
                                                   _g202648_)))
                                      (let ((_%$%target191850191885%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g202647_ 0)))
                                            (_%$%tl191852191887%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g202647_ 1))))
                                        (letrec ((_%$%loop191853191890%_
                                                  (lambda (_%$%hd191851191893%_
                                                           _%$%arg191857191895%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd191851191893%_)
                                                        (let ((_%$%e191854191897%_
                                                               (gx#stx-e
                                                                _%$%hd191851191893%_)))
                                                          (let ((_%$%lp-hd191855191900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e191854191897%_)))
                        (_%$%lp-tl191856191902%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e191854191897%_))))
                    (_%$%loop191853191890%_
                     _%$%lp-tl191856191902%_
                     (cons _%$%lp-hd191855191900%_ _%$%arg191857191895%_))))
                (let ((_%$%arg191858191905%_ (reverse _%$%arg191857191895%_)))
                  ((lambda (_%$%g191848191907%_ _%$%g191849191908%_)
                     (cons _%$%g191789191811%_
                           (cons (gxc#xform-wrap-source
                                  (cons '%#call
                                        (cons (cons '%#ref (cons 'apply '()))
                                              (cons (cons '%#ref
                                                          (cons _%id191830%_
                                                                '()))
                                                    (foldr cons
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '%#ref)
                               (cons _%$%g191848191907%_ '()))
                         '())
                   (foldr (lambda (_%$%g191919191922%_ _%$%g191920191924%_)
                            (cons (cons (gx#datum->syntax '#f '%#ref)
                                        (cons _%$%g191919191922%_ '()))
                                  _%$%g191920191924%_))
                          '()
                          _%$%g191849191908%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%stx191753%_)
                                 '())))
                   _%$%tl191852191887%_
                   _%$%arg191858191905%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop191853191890%_
                                           _%$%target191850191885%_
                                           '())))))
                                  (_%$%g191835191880%_ _%$%g191837191883%_))))
                           (_%$%g191833191972%_
                            (lambda (_%$%g191837191930%_)
                              (if (gx#stx-pair/null? _%$%g191837191930%_)
                                  (let ((_g202649_
                                         (gx#syntax-split-splice
                                          _%$%g191837191930%_
                                          '0)))
                                    (begin
                                      (let ((_g202650_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g202649_)
                                                   (##values-length _g202649_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g202650_ 2)))
                                            (error "Context expects 2 values"
                                                   _g202650_)))
                                      (let ((_%$%target191839191932%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g202649_ 0)))
                                            (_%$%tl191841191934%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g202649_ 1))))
                                        (if (gx#stx-null? _%$%tl191841191934%_)
                                            (letrec ((_%$%loop191842191937%_
                                                      (lambda (_%$%hd191840191940%_
                                                               _%$%arg191846191942%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd191840191940%_)
                                                            (let ((_%$%e191843191944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _%$%hd191840191940%_)))
                      (let ((_%$%lp-hd191844191947%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e191843191944%_)))
                            (_%$%lp-tl191845191949%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e191843191944%_))))
                        (_%$%loop191842191937%_
                         _%$%lp-tl191845191949%_
                         (cons _%$%lp-hd191844191947%_
                               _%$%arg191846191942%_))))
                    (let ((_%$%arg191847191952%_
                           (reverse _%$%arg191846191942%_)))
                      ((lambda (_%$%g191838191954%_)
                         (cons _%$%g191789191811%_
                               (cons (gxc#xform-wrap-source
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%id191830%_
                                                              '()))
                                                  (foldr (lambda (_%$%g191964191967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g191965191969%_)
                   (cons (cons (gx#datum->syntax '#f '%#ref)
                               (cons _%$%g191964191967%_ '()))
                         _%$%g191965191969%_))
                 '()
                 _%$%g191838191954%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _%stx191753%_)
                                     '())))
                       _%$%arg191847191952%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop191842191937%_
                                               _%$%target191839191932%_
                                               '()))
                                            (_%$%g191834191927%_
                                             _%$%g191837191930%_)))))
                                  (_%$%g191834191927%_ _%$%g191837191930%_)))))
                      (_%$%g191833191972%_ _%$%g191789191811%_))))
              (_%lp191758%_
               _%rest191783%_
               (cons _%id191830%_ _%ids191761%_)
               (cons _%impl191832%_ _%impls191762%_)
               (cons _%clause191975%_ _%clauses191763%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$%tl191792191807%_
                                                  _%$%hd191791191805%_)))
                                             (_%$%g191786191797%_
                                              _%$%g191787191800%_)))))
                                 (_%$%g191785191978%_ _%clause191784%_))))))
                   (if (pair? _%$%rest191764191772%_)
                       (let ((_%$%hd191769191984%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%rest191764191772%_)))
                             (_%$%tl191770191986%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%rest191764191772%_))))
                         (let* ((_%clause191989%_ _%$%hd191769191984%_)
                                (_%rest191991%_ _%$%tl191770191986%_))
                           (_%$%K191768191981%_
                            _%rest191991%_
                            _%clause191989%_)))
                       (_%$%else191766191780%_)))))))
        (lambda _g202651_
          (let ((_g202652_ (let () (declare (not safe)) (##length _g202651_))))
            (cond ((let () (declare (not safe)) (##fx= _g202652_ 3))
                   (apply (lambda (_%stx191996%_
                                   _%id191997%_
                                   _%clauses191998%_)
                            (let ((_%gensym?192000%_ '#f))
                              (_%$%opt-lambda191751191993%_
                               _%stx191996%_
                               _%id191997%_
                               _%clauses191998%_
                               _%gensym?192000%_)))
                          _g202651_))
                  ((let () (declare (not safe)) (##fx= _g202652_ 4))
                   (apply _%$%opt-lambda191751191993%_ _g202651_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g202651_)))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_%self191019%_ _%stx191020%_)
        (letrec ((_%case-lambda-clause-def191022%_
                  (lambda (_%id191749%_ _%impl191750%_)
                    (gxc#xform-wrap-source
                     (cons '%#define-values
                           (cons (cons _%id191749%_ '())
                                 (cons (gxc#compile-e
                                        _%self191019%_
                                        _%impl191750%_)
                                       '())))
                     _%stx191020%_)))
                 (_%opt-lambda-dispatch-name191023%_
                  (lambda (_%id191742%_)
                    (let ((_%str191744%_ (symbol->string _%id191742%_)))
                      (if (or (string-prefix? '"opt-lambda" _%str191744%_)
                              (string-prefix? '"$%opt-lambda" _%str191744%_))
                          '"%"
                          _%id191742%_))))
                 (_%kw-lambda-dispatch-name191024%_
                  (lambda (_%id191734%_ _%name191735%_)
                    (let ((_%str191737%_ (symbol->string _%id191734%_)))
                      (if (or (string-prefix? '"kw-lambda" _%str191737%_)
                              (string-prefix? '"$%kw-lambda" _%str191737%_))
                          _%name191735%_
                          _%id191734%_)))))
          (let* ((_%$%g191029191088%_
                  (lambda (_%$%g191030191085%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g191030191085%_)))
                 (_%$%g191028191134%_
                  (lambda (_%$%g191030191091%_)
                    (if (gx#stx-pair? _%$%g191030191091%_)
                        (let ((_%$%e191075191093%_
                               (gx#stx-e _%$%g191030191091%_)))
                          (let ((_%$%hd191076191096%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e191075191093%_)))
                                (_%$%tl191077191098%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e191075191093%_))))
                            (if (gx#stx-pair? _%$%tl191077191098%_)
                                (let ((_%$%e191078191101%_
                                       (gx#stx-e _%$%tl191077191098%_)))
                                  (let ((_%$%hd191079191104%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e191078191101%_)))
                                        (_%$%tl191080191106%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e191078191101%_))))
                                    (if (gx#stx-pair? _%$%tl191080191106%_)
                                        (let ((_%$%e191081191109%_
                                               (gx#stx-e
                                                _%$%tl191080191106%_)))
                                          (let ((_%$%hd191082191112%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e191081191109%_)))
                                                (_%$%tl191083191114%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e191081191109%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl191083191114%_)
                                                ((lambda (_%$%g191073191117%_
                                                          _%$%g191074191118%_)
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%$%g191074191118%_
                                                                (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%self191019%_
                               _%$%g191073191117%_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx191020%_))
                                                 _%$%hd191082191112%_
                                                 _%$%hd191079191104%_)
                                                (_%$%g191029191088%_
                                                 _%$%g191030191091%_))))
                                        (_%$%g191029191088%_
                                         _%$%g191030191091%_))))
                                (_%$%g191029191088%_ _%$%g191030191091%_))))
                        (_%$%g191029191088%_ _%$%g191030191091%_))))
                 (_%$%g191027191422%_
                  (lambda (_%$%g191030191137%_)
                    (if (gx#stx-pair? _%$%g191030191137%_)
                        (let ((_%$%e191061191139%_
                               (gx#stx-e _%$%g191030191137%_)))
                          (let ((_%$%hd191062191142%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e191061191139%_)))
                                (_%$%tl191063191144%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e191061191139%_))))
                            (if (gx#stx-pair? _%$%tl191063191144%_)
                                (let ((_%$%e191064191147%_
                                       (gx#stx-e _%$%tl191063191144%_)))
                                  (let ((_%$%hd191065191150%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e191064191147%_)))
                                        (_%$%tl191066191152%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e191064191147%_))))
                                    (if (gx#stx-pair? _%$%hd191065191150%_)
                                        (let ((_%$%e191067191155%_
                                               (gx#stx-e
                                                _%$%hd191065191150%_)))
                                          (let ((_%$%hd191068191158%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e191067191155%_)))
                                                (_%$%tl191069191160%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e191067191155%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl191069191160%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl191066191152%_)
                                                    (let ((_%$%e191070191163%_
                                                           (gx#stx-e
                                                            _%$%tl191066191152%_)))
                                                      (let ((_%$%hd191071191166%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e191070191163%_)))
                    (_%$%tl191072191168%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e191070191163%_))))
                (if (gx#stx-null? _%$%tl191072191168%_)
                    ((lambda (_%$%g191059191171%_ _%$%g191060191172%_)
                       (if (and (gx#identifier? _%$%g191060191172%_)
                                (gxc#kw-lambda-expr? _%$%g191059191171%_))
                           (let* ((_%$%g191188191241%_
                                   (lambda (_%$%g191189191238%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g191189191238%_)))
                                  (_%$%g191187191419%_
                                   (lambda (_%$%g191189191244%_)
                                     (if (gx#stx-pair? _%$%g191189191244%_)
                                         (let ((_%$%e191195191246%_
                                                (gx#stx-e
                                                 _%$%g191189191244%_)))
                                           (let ((_%$%hd191196191249%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e191195191246%_)))
                                                 (_%$%tl191197191251%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e191195191246%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl191197191251%_)
                                                 (let ((_%$%e191198191254%_
                                                        (gx#stx-e
                                                         _%$%tl191197191251%_)))
                                                   (let ((_%$%hd191199191257%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e191198191254%_)))
                                                         (_%$%tl191200191259%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e191198191254%_))))
                                                     (if (gx#stx-pair?
                                                          _%$%hd191199191257%_)
                                                         (let ((_%$%e191201191262%_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd191199191257%_)))
                   (let ((_%$%hd191202191265%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e191201191262%_)))
                         (_%$%tl191203191267%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e191201191262%_))))
                     (if (gx#stx-pair? _%$%hd191202191265%_)
                         (let ((_%$%e191204191270%_
                                (gx#stx-e _%$%hd191202191265%_)))
                           (let ((_%$%hd191205191273%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e191204191270%_)))
                                 (_%$%tl191206191275%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e191204191270%_))))
                             (if (gx#stx-pair? _%$%hd191205191273%_)
                                 (let ((_%$%e191207191278%_
                                        (gx#stx-e _%$%hd191205191273%_)))
                                   (let ((_%$%hd191208191281%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e191207191278%_)))
                                         (_%$%tl191209191283%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e191207191278%_))))
                                     (if (gx#stx-null? _%$%tl191209191283%_)
                                         (if (gx#stx-pair?
                                              _%$%tl191206191275%_)
                                             (let ((_%$%e191210191286%_
                                                    (gx#stx-e
                                                     _%$%tl191206191275%_)))
                                               (let ((_%$%hd191211191289%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e191210191286%_)))
                                                     (_%$%tl191212191291%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e191210191286%_))))
                                                 (if (gx#stx-pair?
                                                      _%$%hd191211191289%_)
                                                     (let ((_%$%e191213191294%_
                                                            (gx#stx-e
                                                             _%$%hd191211191289%_)))
                                                       (let ((_%$%hd191214191297%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e191213191294%_)))
                     (_%$%tl191215191299%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e191213191294%_))))
                 (if (gx#stx-pair? _%$%tl191215191299%_)
                     (let ((_%$%e191216191302%_
                            (gx#stx-e _%$%tl191215191299%_)))
                       (let ((_%$%hd191217191305%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e191216191302%_)))
                             (_%$%tl191218191307%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e191216191302%_))))
                         (if (gx#stx-pair? _%$%hd191217191305%_)
                             (let ((_%$%e191219191310%_
                                    (gx#stx-e _%$%hd191217191305%_)))
                               (let ((_%$%hd191220191313%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e191219191310%_)))
                                     (_%$%tl191221191315%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e191219191310%_))))
                                 (if (gx#stx-pair? _%$%hd191220191313%_)
                                     (let ((_%$%e191222191318%_
                                            (gx#stx-e _%$%hd191220191313%_)))
                                       (let ((_%$%hd191223191321%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e191222191318%_)))
                                             (_%$%tl191224191323%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e191222191318%_))))
                                         (if (gx#stx-pair?
                                              _%$%hd191223191321%_)
                                             (let ((_%$%e191225191326%_
                                                    (gx#stx-e
                                                     _%$%hd191223191321%_)))
                                               (let ((_%$%hd191226191329%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e191225191326%_)))
                                                     (_%$%tl191227191331%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e191225191326%_))))
                                                 (if (gx#stx-null?
                                                      _%$%tl191227191331%_)
                                                     (if (gx#stx-pair?
                                                          _%$%tl191224191323%_)
                                                         (let ((_%$%e191228191334%_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl191224191323%_)))
                   (let ((_%$%hd191229191337%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e191228191334%_)))
                         (_%$%tl191230191339%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e191228191334%_))))
                     (if (gx#stx-null? _%$%tl191230191339%_)
                         (if (gx#stx-null? _%$%tl191221191315%_)
                             (if (gx#stx-pair? _%$%tl191218191307%_)
                                 (let ((_%$%e191231191342%_
                                        (gx#stx-e _%$%tl191218191307%_)))
                                   (let ((_%$%hd191232191345%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e191231191342%_)))
                                         (_%$%tl191233191347%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e191231191342%_))))
                                     (if (gx#stx-null? _%$%tl191233191347%_)
                                         (if (gx#stx-null?
                                              _%$%tl191212191291%_)
                                             (if (gx#stx-null?
                                                  _%$%tl191203191267%_)
                                                 (if (gx#stx-pair?
                                                      _%$%tl191200191259%_)
                                                     (let ((_%$%e191234191350%_
                                                            (gx#stx-e
                                                             _%$%tl191200191259%_)))
                                                       (let ((_%$%hd191235191353%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e191234191350%_)))
                     (_%$%tl191236191355%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e191234191350%_))))
                 (if (gx#stx-null? _%$%tl191236191355%_)
                     ((lambda (_%$%g191190191358%_
                               _%$%g191191191359%_
                               _%$%g191192191360%_
                               _%$%g191193191361%_
                               _%$%g191194191362%_)
                        (let* ((_%get-kws-id191402%_
                                (make-symbol
                                 (gx#stx-e _%$%g191060191172%_)
                                 '"__"
                                 (_%kw-lambda-dispatch-name191024%_
                                  (gx#stx-e _%$%g191194191362%_)
                                  '"@")))
                               (_%get-kws-id191404%_
                                (gx#core-quote-syntax
                                 _%get-kws-id191402%_
                                 (gx#stx-source _%stx191020%_)))
                               (_%main-id191406%_
                                (make-symbol
                                 (gx#stx-e _%$%g191060191172%_)
                                 '"__"
                                 (_%kw-lambda-dispatch-name191024%_
                                  (gx#stx-e _%$%g191193191361%_)
                                  '"%")))
                               (_%main-id191408%_
                                (gx#core-quote-syntax
                                 _%main-id191406%_
                                 (gx#stx-source _%stx191020%_)))
                               (_%_191410%_
                                (gx#core-bind-runtime! _%get-kws-id191404%_))
                               (_%_191412%_
                                (gx#core-bind-runtime! _%main-id191408%_))
                               (_%new-kw-dispatch191414%_
                                (gxc#apply-expression-subst
                                 _%$%g191190191358%_
                                 'id:
                                 _%$%g191194191362%_
                                 'new-id:
                                 _%get-kws-id191404%_))
                               (_%new-get-kws191416%_
                                (gxc#apply-expression-subst
                                 _%$%g191191191359%_
                                 'id:
                                 _%$%g191193191361%_
                                 'new-id:
                                 _%main-id191408%_)))
                          (gxc#verbose
                           '"lift kw-lambda dispatch "
                           (gxc#identifier-symbol _%$%g191060191172%_)
                           '" => "
                           (gxc#identifier-symbol _%get-kws-id191404%_)
                           '" => "
                           (gxc#identifier-symbol _%main-id191408%_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (cons (gxc#lift-top-lambda-define-values%
                                        _%self191019%_
                                        (gxc#xform-wrap-source
                                         (cons '%#define-values
                                               (cons (cons _%main-id191408%_
                                                           '())
                                                     (cons _%$%g191192191360%_
                                                           '())))
                                         _%stx191020%_))
                                       (cons (gxc#xform-wrap-source
                                              (cons '%#define-values
                                                    (cons (cons _%get-kws-id191404%_
                                                                '())
                                                          (cons _%new-get-kws191416%_
                                                                '())))
                                              _%stx191020%_)
                                             (cons (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons (cons _%$%g191060191172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%new-kw-dispatch191414%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx191020%_)
                                                   '()))))
                           _%stx191020%_)))
                      _%$%hd191235191353%_
                      _%$%hd191232191345%_
                      _%$%hd191229191337%_
                      _%$%hd191226191329%_
                      _%$%hd191208191281%_)
                     (_%$%g191188191241%_ _%$%g191189191244%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g191188191241%_
                                                      _%$%g191189191244%_))
                                                 (_%$%g191188191241%_
                                                  _%$%g191189191244%_))
                                             (_%$%g191188191241%_
                                              _%$%g191189191244%_))
                                         (_%$%g191188191241%_
                                          _%$%g191189191244%_))))
                                 (_%$%g191188191241%_ _%$%g191189191244%_))
                             (_%$%g191188191241%_ _%$%g191189191244%_))
                         (_%$%g191188191241%_ _%$%g191189191244%_))))
                 (_%$%g191188191241%_ _%$%g191189191244%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g191188191241%_
                                                      _%$%g191189191244%_))))
                                             (_%$%g191188191241%_
                                              _%$%g191189191244%_))))
                                     (_%$%g191188191241%_
                                      _%$%g191189191244%_))))
                             (_%$%g191188191241%_ _%$%g191189191244%_))))
                     (_%$%g191188191241%_ _%$%g191189191244%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g191188191241%_
                                                      _%$%g191189191244%_))))
                                             (_%$%g191188191241%_
                                              _%$%g191189191244%_))
                                         (_%$%g191188191241%_
                                          _%$%g191189191244%_))))
                                 (_%$%g191188191241%_ _%$%g191189191244%_))))
                         (_%$%g191188191241%_ _%$%g191189191244%_))))
                 (_%$%g191188191241%_ _%$%g191189191244%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g191188191241%_
                                                  _%$%g191189191244%_))))
                                         (_%$%g191188191241%_
                                          _%$%g191189191244%_)))))
                             (_%$%g191187191419%_ _%$%g191059191171%_))
                           (_%$%g191028191134%_ _%$%g191030191137%_)))
                     _%$%hd191071191166%_
                     _%$%hd191068191158%_)
                    (_%$%g191028191134%_ _%$%g191030191137%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g191028191134%_
                                                     _%$%g191030191137%_))
                                                (_%$%g191028191134%_
                                                 _%$%g191030191137%_))))
                                        (_%$%g191028191134%_
                                         _%$%g191030191137%_))))
                                (_%$%g191028191134%_ _%$%g191030191137%_))))
                        (_%$%g191028191134%_ _%$%g191030191137%_))))
                 (_%$%g191026191605%_
                  (lambda (_%$%g191030191425%_)
                    (if (gx#stx-pair? _%$%g191030191425%_)
                        (let ((_%$%e191047191427%_
                               (gx#stx-e _%$%g191030191425%_)))
                          (let ((_%$%hd191048191430%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e191047191427%_)))
                                (_%$%tl191049191432%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e191047191427%_))))
                            (if (gx#stx-pair? _%$%tl191049191432%_)
                                (let ((_%$%e191050191435%_
                                       (gx#stx-e _%$%tl191049191432%_)))
                                  (let ((_%$%hd191051191438%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e191050191435%_)))
                                        (_%$%tl191052191440%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e191050191435%_))))
                                    (if (gx#stx-pair? _%$%hd191051191438%_)
                                        (let ((_%$%e191053191443%_
                                               (gx#stx-e
                                                _%$%hd191051191438%_)))
                                          (let ((_%$%hd191054191446%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e191053191443%_)))
                                                (_%$%tl191055191448%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e191053191443%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl191055191448%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl191052191440%_)
                                                    (let ((_%$%e191056191451%_
                                                           (gx#stx-e
                                                            _%$%tl191052191440%_)))
                                                      (let ((_%$%hd191057191454%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e191056191451%_)))
                    (_%$%tl191058191456%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e191056191451%_))))
                (if (gx#stx-null? _%$%tl191058191456%_)
                    ((lambda (_%$%g191045191459%_ _%$%g191046191460%_)
                       (if (and (gx#identifier? _%$%g191046191460%_)
                                (gxc#opt-lambda-expr? _%$%g191045191459%_))
                           (let* ((_%$%g191476191506%_
                                   (lambda (_%$%g191477191503%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g191477191503%_)))
                                  (_%$%g191475191602%_
                                   (lambda (_%$%g191477191509%_)
                                     (if (gx#stx-pair? _%$%g191477191509%_)
                                         (let ((_%$%e191481191511%_
                                                (gx#stx-e
                                                 _%$%g191477191509%_)))
                                           (let ((_%$%hd191482191514%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e191481191511%_)))
                                                 (_%$%tl191483191516%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e191481191511%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl191483191516%_)
                                                 (let ((_%$%e191484191519%_
                                                        (gx#stx-e
                                                         _%$%tl191483191516%_)))
                                                   (let ((_%$%hd191485191522%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e191484191519%_)))
                                                         (_%$%tl191486191524%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e191484191519%_))))
                                                     (if (gx#stx-pair?
                                                          _%$%hd191485191522%_)
                                                         (let ((_%$%e191487191527%_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd191485191522%_)))
                   (let ((_%$%hd191488191530%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e191487191527%_)))
                         (_%$%tl191489191532%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e191487191527%_))))
                     (if (gx#stx-pair? _%$%hd191488191530%_)
                         (let ((_%$%e191490191535%_
                                (gx#stx-e _%$%hd191488191530%_)))
                           (let ((_%$%hd191491191538%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e191490191535%_)))
                                 (_%$%tl191492191540%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e191490191535%_))))
                             (if (gx#stx-pair? _%$%hd191491191538%_)
                                 (let ((_%$%e191493191543%_
                                        (gx#stx-e _%$%hd191491191538%_)))
                                   (let ((_%$%hd191494191546%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e191493191543%_)))
                                         (_%$%tl191495191548%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e191493191543%_))))
                                     (if (gx#stx-null? _%$%tl191495191548%_)
                                         (if (gx#stx-pair?
                                              _%$%tl191492191540%_)
                                             (let ((_%$%e191496191551%_
                                                    (gx#stx-e
                                                     _%$%tl191492191540%_)))
                                               (let ((_%$%hd191497191554%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e191496191551%_)))
                                                     (_%$%tl191498191556%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e191496191551%_))))
                                                 (if (gx#stx-null?
                                                      _%$%tl191498191556%_)
                                                     (if (gx#stx-null?
                                                          _%$%tl191489191532%_)
                                                         (if (gx#stx-pair?
                                                              _%$%tl191486191524%_)
                                                             (let ((_%$%e191499191559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _%$%tl191486191524%_)))
                       (let ((_%$%hd191500191562%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e191499191559%_)))
                             (_%$%tl191501191564%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e191499191559%_))))
                         (if (gx#stx-null? _%$%tl191501191564%_)
                             ((lambda (_%$%g191478191567%_
                                       _%$%g191479191568%_
                                       _%$%g191480191569%_)
                                (let* ((_%lambda-id191593%_
                                        (make-symbol
                                         (gx#stx-e _%$%g191046191460%_)
                                         '"__"
                                         (_%opt-lambda-dispatch-name191023%_
                                          (gx#stx-e _%$%g191480191569%_))))
                                       (_%lambda-id191595%_
                                        (gx#core-quote-syntax
                                         _%lambda-id191593%_
                                         (gx#stx-source _%stx191020%_)))
                                       (_%_191597%_
                                        (gx#core-bind-runtime!
                                         _%lambda-id191595%_))
                                       (_%new-case-lambda-expr191599%_
                                        (gxc#apply-expression-subst
                                         _%$%g191478191567%_
                                         'id:
                                         _%$%g191480191569%_
                                         'new-id:
                                         _%lambda-id191595%_)))
                                  (gxc#verbose
                                   '"lift opt-lambda dispatch "
                                   (gxc#identifier-symbol _%$%g191046191460%_)
                                   '" => "
                                   (gxc#identifier-symbol _%lambda-id191595%_))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _%lambda-id191595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gxc#compile-e _%self191019%_ _%$%g191479191568%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%stx191020%_)
                                               (cons (gxc#lift-top-lambda-define-values%
                                                      _%self191019%_
                                                      (gxc#xform-wrap-source
                                                       (cons '%#define-values
                                                             (cons (cons _%$%g191046191460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons _%new-case-lambda-expr191599%_ '())))
               _%stx191020%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _%stx191020%_)))
                              _%$%hd191500191562%_
                              _%$%hd191497191554%_
                              _%$%hd191494191546%_)
                             (_%$%g191476191506%_ _%$%g191477191509%_))))
                     (_%$%g191476191506%_ _%$%g191477191509%_))
                 (_%$%g191476191506%_ _%$%g191477191509%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g191476191506%_
                                                      _%$%g191477191509%_))))
                                             (_%$%g191476191506%_
                                              _%$%g191477191509%_))
                                         (_%$%g191476191506%_
                                          _%$%g191477191509%_))))
                                 (_%$%g191476191506%_ _%$%g191477191509%_))))
                         (_%$%g191476191506%_ _%$%g191477191509%_))))
                 (_%$%g191476191506%_ _%$%g191477191509%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g191476191506%_
                                                  _%$%g191477191509%_))))
                                         (_%$%g191476191506%_
                                          _%$%g191477191509%_)))))
                             (_%$%g191475191602%_ _%$%g191045191459%_))
                           (_%$%g191027191422%_ _%$%g191030191425%_)))
                     _%$%hd191057191454%_
                     _%$%hd191054191446%_)
                    (_%$%g191027191422%_ _%$%g191030191425%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g191027191422%_
                                                     _%$%g191030191425%_))
                                                (_%$%g191027191422%_
                                                 _%$%g191030191425%_))))
                                        (_%$%g191027191422%_
                                         _%$%g191030191425%_))))
                                (_%$%g191027191422%_ _%$%g191030191425%_))))
                        (_%$%g191027191422%_ _%$%g191030191425%_))))
                 (_%$%g191025191731%_
                  (lambda (_%$%g191030191608%_)
                    (if (gx#stx-pair? _%$%g191030191608%_)
                        (let ((_%$%e191033191610%_
                               (gx#stx-e _%$%g191030191608%_)))
                          (let ((_%$%hd191034191613%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e191033191610%_)))
                                (_%$%tl191035191615%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e191033191610%_))))
                            (if (gx#stx-pair? _%$%tl191035191615%_)
                                (let ((_%$%e191036191618%_
                                       (gx#stx-e _%$%tl191035191615%_)))
                                  (let ((_%$%hd191037191621%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e191036191618%_)))
                                        (_%$%tl191038191623%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e191036191618%_))))
                                    (if (gx#stx-pair? _%$%hd191037191621%_)
                                        (let ((_%$%e191039191626%_
                                               (gx#stx-e
                                                _%$%hd191037191621%_)))
                                          (let ((_%$%hd191040191629%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e191039191626%_)))
                                                (_%$%tl191041191631%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e191039191626%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl191041191631%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl191038191623%_)
                                                    (let ((_%$%e191042191634%_
                                                           (gx#stx-e
                                                            _%$%tl191038191623%_)))
                                                      (let ((_%$%hd191043191637%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e191042191634%_)))
                    (_%$%tl191044191639%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e191042191634%_))))
                (if (gx#stx-null? _%$%tl191044191639%_)
                    ((lambda (_%$%g191031191642%_ _%$%g191032191643%_)
                       (if (and (gx#identifier? _%$%g191032191643%_)
                                (gxc#case-lambda-expr? _%$%g191031191642%_))
                           (let* ((_%$%g191660191674%_
                                   (lambda (_%$%g191661191671%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g191661191671%_)))
                                  (_%$%g191659191706%_
                                   (lambda (_%$%g191661191677%_)
                                     (if (gx#stx-pair? _%$%g191661191677%_)
                                         (let ((_%$%e191667191679%_
                                                (gx#stx-e
                                                 _%$%g191661191677%_)))
                                           (let ((_%$%hd191668191682%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e191667191679%_)))
                                                 (_%$%tl191669191684%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e191667191679%_))))
                                             ((lambda (_%$%g191666191687%_)
                                                (let ((_g202653_
                                                       (gxc#lift-case-lambda-clauses
                                                        _%stx191020%_
                                                        _%$%g191032191643%_
                                                        _%$%g191666191687%_)))
                                                  (begin
                                                    (let ((_g202654_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g202653_)
                         (##values-length _g202653_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g202654_ 3)))
                  (error "Context expects 3 values" _g202654_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%ids191697%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g202653_
                                                              0)))
                                                          (_%impls191698%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g202653_
                                                              1)))
                                                          (_%clauses191699%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g202653_
                                                              2))))
                                                      (let* ((_%_191701%_
                                                              (for-each
                                                               gx#core-bind-runtime!
                                                               _%ids191697%_))
                                                             (_%defs191703%_
                                                              (map _%case-lambda-clause-def191022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%ids191697%_
                           _%impls191698%_)))
                (gxc#verbose
                 '"lift case-lambda clauses "
                 (gxc#identifier-symbol _%$%g191032191643%_)
                 '" => "
                 (map gxc#identifier-symbol _%ids191697%_))
                (gxc#xform-wrap-source
                 (cons '%#begin
                       (foldr cons
                              (cons (gxc#xform-wrap-source
                                     (cons '%#define-values
                                           (cons (cons _%$%g191032191643%_ '())
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#case-lambda
                                                              _%clauses191699%_)
                                                        (gx#datum->syntax
                                                         '#f
                                                         'case-lambda-expr))
                                                       '())))
                                     _%stx191020%_)
                                    '())
                              _%defs191703%_))
                 _%stx191020%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%$%tl191669191684%_)))
                                         (_%$%g191660191674%_
                                          _%$%g191661191677%_))))
                                  (_%$%g191658191728%_
                                   (lambda (_%$%g191661191709%_)
                                     (if (gx#stx-pair? _%$%g191661191709%_)
                                         (let ((_%$%e191663191711%_
                                                (gx#stx-e
                                                 _%$%g191661191709%_)))
                                           (let ((_%$%hd191664191714%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e191663191711%_)))
                                                 (_%$%tl191665191716%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e191663191711%_))))
                                             ((lambda (_%$%g191662191719%_)
                                                (if (andmap gxc#dispatch-lambda-form?
                                                            _%$%g191662191719%_)
                                                    _%stx191020%_
                                                    (_%$%g191659191706%_
                                                     _%$%g191661191709%_)))
                                              _%$%tl191665191716%_)))
                                         (_%$%g191659191706%_
                                          _%$%g191661191709%_)))))
                             (_%$%g191658191728%_ _%$%g191031191642%_))
                           (_%$%g191026191605%_ _%$%g191030191608%_)))
                     _%$%hd191043191637%_
                     _%$%hd191040191629%_)
                    (_%$%g191026191605%_ _%$%g191030191608%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g191026191605%_
                                                     _%$%g191030191608%_))
                                                (_%$%g191026191605%_
                                                 _%$%g191030191608%_))))
                                        (_%$%g191026191605%_
                                         _%$%g191030191608%_))))
                                (_%$%g191026191605%_ _%$%g191030191608%_))))
                        (_%$%g191026191605%_ _%$%g191030191608%_)))))
            (_%$%g191025191731%_ _%stx191020%_)))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_%self189948%_ _%stx189949%_)
        (letrec* ((_%bind-e189951%_
                   (let ((_%$%opt-lambda191001191007%_
                          (lambda (_%id191003%_
                                   _%expr191004%_
                                   _%compile?191005%_)
                            (cons (cons _%id191003%_ '())
                                  (cons (if _%compile?191005%_
                                            (gxc#compile-e
                                             _%self189948%_
                                             _%expr191004%_)
                                            _%expr191004%_)
                                        '())))))
                     (lambda _g202655_
                       (let ((_g202656_
                              (let ()
                                (declare (not safe))
                                (##length _g202655_))))
                         (cond ((let ()
                                  (declare (not safe))
                                  (##fx= _g202656_ 2))
                                (apply (lambda (_%id191010%_ _%expr191011%_)
                                         (let ((_%compile?191013%_ '#t))
                                           (_%$%opt-lambda191001191007%_
                                            _%id191010%_
                                            _%expr191011%_
                                            _%compile?191013%_)))
                                       _g202655_))
                               ((let ()
                                  (declare (not safe))
                                  (##fx= _g202656_ 3))
                                (apply _%$%opt-lambda191001191007%_ _g202655_))
                               (else
                                (##raise-wrong-number-of-arguments-exception
                                 'case-lambda-dispatch
                                 _g202655_)))))))
                  (_%compile-bindings189952%_
                   (lambda (_%bindings190585%_)
                     (let _%lp190587%_ ((_%rest190589%_ _%bindings190585%_)
                                        (_%lift1190590%_ '())
                                        (_%lift2190591%_ '())
                                        (_%bind190592%_ '()))
                       (let* ((_%$%rest190593190601%_ _%rest190589%_)
                              (_%$%E190596190605%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%$%rest190593190601%_
                                        '([hd . rest])
                                        'else)
                                 (void)))
                              (_%$%else190595190609%_
                               (lambda ()
                                 (values (reverse _%lift1190590%_)
                                         (reverse _%lift2190591%_)
                                         (reverse _%bind190592%_))))
                              (_%$%K190597190990%_
                               (lambda (_%rest190612%_ _%hd190613%_)
                                 (let* ((_%$%g190617190653%_
                                         (lambda (_%$%g190618190650%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g190618190650%_)))
                                        (_%$%g190616190694%_
                                         (lambda (_%$%g190618190656%_)
                                           (if (gx#stx-pair?
                                                _%$%g190618190656%_)
                                               (let ((_%$%e190643190658%_
                                                      (gx#stx-e
                                                       _%$%g190618190656%_)))
                                                 (let ((_%$%hd190644190661%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e190643190658%_)))
                                                       (_%$%tl190645190663%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e190643190658%_))))
                                                   (if (gx#stx-pair?
                                                        _%$%tl190645190663%_)
                                                       (let ((_%$%e190646190666%_
                                                              (gx#stx-e
                                                               _%$%tl190645190663%_)))
                                                         (let ((_%$%hd190647190669%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e190646190666%_)))
                       (_%$%tl190648190671%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e190646190666%_))))
                   (if (gx#stx-null? _%$%tl190648190671%_)
                       ((lambda (_%$%g190641190674%_ _%$%g190642190675%_)
                          (_%lp190587%_
                           _%rest190612%_
                           _%lift1190590%_
                           _%lift2190591%_
                           (cons (cons _%$%g190642190675%_
                                       (cons (gxc#compile-e
                                              _%self189948%_
                                              _%$%g190641190674%_)
                                             '()))
                                 _%bind190592%_)))
                        _%$%hd190647190669%_
                        _%$%hd190644190661%_)
                       (_%$%g190617190653%_ _%$%g190618190656%_))))
               (_%$%g190617190653%_ _%$%g190618190656%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g190617190653%_
                                                _%$%g190618190656%_))))
                                        (_%$%g190615190867%_
                                         (lambda (_%$%g190618190697%_)
                                           (if (gx#stx-pair?
                                                _%$%g190618190697%_)
                                               (let ((_%$%e190632190699%_
                                                      (gx#stx-e
                                                       _%$%g190618190697%_)))
                                                 (let ((_%$%hd190633190702%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e190632190699%_)))
                                                       (_%$%tl190634190704%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e190632190699%_))))
                                                   (if (gx#stx-pair?
                                                        _%$%hd190633190702%_)
                                                       (let ((_%$%e190635190707%_
                                                              (gx#stx-e
                                                               _%$%hd190633190702%_)))
                                                         (let ((_%$%hd190636190710%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e190635190707%_)))
                       (_%$%tl190637190712%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e190635190707%_))))
                   (if (gx#stx-null? _%$%tl190637190712%_)
                       (if (gx#stx-pair? _%$%tl190634190704%_)
                           (let ((_%$%e190638190715%_
                                  (gx#stx-e _%$%tl190634190704%_)))
                             (let ((_%$%hd190639190718%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e190638190715%_)))
                                   (_%$%tl190640190720%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e190638190715%_))))
                               (if (gx#stx-null? _%$%tl190640190720%_)
                                   ((lambda (_%$%g190630190723%_
                                             _%$%g190631190724%_)
                                      (if (and (gx#identifier?
                                                _%$%g190631190724%_)
                                               (gxc#opt-lambda-expr?
                                                _%$%g190630190723%_))
                                          (let* ((_%$%g190738190768%_
                                                  (lambda (_%$%g190739190765%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g190739190765%_)))
                                                 (_%$%g190737190864%_
                                                  (lambda (_%$%g190739190771%_)
                                                    (if (gx#stx-pair?
                                                         _%$%g190739190771%_)
                                                        (let ((_%$%e190743190773%_
                                                               (gx#stx-e
                                                                _%$%g190739190771%_)))
                                                          (let ((_%$%hd190744190776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e190743190773%_)))
                        (_%$%tl190745190778%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e190743190773%_))))
                    (if (gx#stx-pair? _%$%tl190745190778%_)
                        (let ((_%$%e190746190781%_
                               (gx#stx-e _%$%tl190745190778%_)))
                          (let ((_%$%hd190747190784%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e190746190781%_)))
                                (_%$%tl190748190786%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e190746190781%_))))
                            (if (gx#stx-pair? _%$%hd190747190784%_)
                                (let ((_%$%e190749190789%_
                                       (gx#stx-e _%$%hd190747190784%_)))
                                  (let ((_%$%hd190750190792%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e190749190789%_)))
                                        (_%$%tl190751190794%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e190749190789%_))))
                                    (if (gx#stx-pair? _%$%hd190750190792%_)
                                        (let ((_%$%e190752190797%_
                                               (gx#stx-e
                                                _%$%hd190750190792%_)))
                                          (let ((_%$%hd190753190800%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e190752190797%_)))
                                                (_%$%tl190754190802%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e190752190797%_))))
                                            (if (gx#stx-pair?
                                                 _%$%hd190753190800%_)
                                                (let ((_%$%e190755190805%_
                                                       (gx#stx-e
                                                        _%$%hd190753190800%_)))
                                                  (let ((_%$%hd190756190808%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e190755190805%_)))
                                                        (_%$%tl190757190810%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e190755190805%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl190757190810%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl190754190802%_)
                                                            (let ((_%$%e190758190813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _%$%tl190754190802%_)))
                      (let ((_%$%hd190759190816%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e190758190813%_)))
                            (_%$%tl190760190818%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e190758190813%_))))
                        (if (gx#stx-null? _%$%tl190760190818%_)
                            (if (gx#stx-null? _%$%tl190751190794%_)
                                (if (gx#stx-pair? _%$%tl190748190786%_)
                                    (let ((_%$%e190761190821%_
                                           (gx#stx-e _%$%tl190748190786%_)))
                                      (let ((_%$%hd190762190824%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e190761190821%_)))
                                            (_%$%tl190763190826%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e190761190821%_))))
                                        (if (gx#stx-null? _%$%tl190763190826%_)
                                            ((lambda (_%$%g190740190829%_
                                                      _%$%g190741190830%_
                                                      _%$%g190742190831%_)
                                               (let* ((_%lambda-id190855%_
                                                       (make-symbol
                                                        (gx#stx-e
                                                         _%$%g190631190724%_)
                                                        (gensym '__)))
                                                      (_%lambda-id190857%_
                                                       (gx#core-quote-syntax
                                                        _%lambda-id190855%_
                                                        (gx#stx-source
                                                         _%stx189949%_)))
                                                      (_%_190859%_
                                                       (gx#core-bind-runtime!
                                                        _%lambda-id190857%_))
                                                      (_%new-case-lambda-expr190861%_
                                                       (gxc#apply-expression-subst
                                                        _%$%g190740190829%_
                                                        'id:
                                                        _%$%g190742190831%_
                                                        'new-id:
                                                        _%lambda-id190857%_)))
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#identifier-symbol
                                                   _%$%g190631190724%_)
                                                  '" => "
                                                  (gxc#identifier-symbol
                                                   _%lambda-id190857%_))
                                                 (_%lp190587%_
                                                  (cons (_%bind-e189951%_
                                                         _%$%g190631190724%_
                                                         _%new-case-lambda-expr190861%_
                                                         '#f)
                                                        _%rest190612%_)
                                                  (cons (_%bind-e189951%_
                                                         _%lambda-id190857%_
                                                         _%$%g190741190830%_)
                                                        _%lift1190590%_)
                                                  _%lift2190591%_
                                                  _%bind190592%_)))
                                             _%$%hd190762190824%_
                                             _%$%hd190759190816%_
                                             _%$%hd190756190808%_)
                                            (_%$%g190738190768%_
                                             _%$%g190739190771%_))))
                                    (_%$%g190738190768%_ _%$%g190739190771%_))
                                (_%$%g190738190768%_ _%$%g190739190771%_))
                            (_%$%g190738190768%_ _%$%g190739190771%_))))
                    (_%$%g190738190768%_ _%$%g190739190771%_))
                (_%$%g190738190768%_ _%$%g190739190771%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g190738190768%_
                                                 _%$%g190739190771%_))))
                                        (_%$%g190738190768%_
                                         _%$%g190739190771%_))))
                                (_%$%g190738190768%_ _%$%g190739190771%_))))
                        (_%$%g190738190768%_ _%$%g190739190771%_))))
                (_%$%g190738190768%_ _%$%g190739190771%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g190737190864%_
                                             _%$%g190630190723%_))
                                          (_%$%g190616190694%_
                                           _%$%g190618190697%_)))
                                    _%$%hd190639190718%_
                                    _%$%hd190636190710%_)
                                   (_%$%g190616190694%_ _%$%g190618190697%_))))
                           (_%$%g190616190694%_ _%$%g190618190697%_))
                       (_%$%g190616190694%_ _%$%g190618190697%_))))
               (_%$%g190616190694%_ _%$%g190618190697%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g190616190694%_
                                                _%$%g190618190697%_))))
                                        (_%$%g190614190987%_
                                         (lambda (_%$%g190618190870%_)
                                           (if (gx#stx-pair?
                                                _%$%g190618190870%_)
                                               (let ((_%$%e190621190872%_
                                                      (gx#stx-e
                                                       _%$%g190618190870%_)))
                                                 (let ((_%$%hd190622190875%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e190621190872%_)))
                                                       (_%$%tl190623190877%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e190621190872%_))))
                                                   (if (gx#stx-pair?
                                                        _%$%hd190622190875%_)
                                                       (let ((_%$%e190624190880%_
                                                              (gx#stx-e
                                                               _%$%hd190622190875%_)))
                                                         (let ((_%$%hd190625190883%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e190624190880%_)))
                       (_%$%tl190626190885%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e190624190880%_))))
                   (if (gx#stx-null? _%$%tl190626190885%_)
                       (if (gx#stx-pair? _%$%tl190623190877%_)
                           (let ((_%$%e190627190888%_
                                  (gx#stx-e _%$%tl190623190877%_)))
                             (let ((_%$%hd190628190891%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e190627190888%_)))
                                   (_%$%tl190629190893%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e190627190888%_))))
                               (if (gx#stx-null? _%$%tl190629190893%_)
                                   ((lambda (_%$%g190619190896%_
                                             _%$%g190620190897%_)
                                      (if (and (gx#identifier?
                                                _%$%g190620190897%_)
                                               (gxc#case-lambda-expr?
                                                _%$%g190619190896%_))
                                          (let* ((_%$%g190912190926%_
                                                  (lambda (_%$%g190913190923%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g190913190923%_)))
                                                 (_%$%g190911190962%_
                                                  (lambda (_%$%g190913190929%_)
                                                    (if (gx#stx-pair?
                                                         _%$%g190913190929%_)
                                                        (let ((_%$%e190919190931%_
                                                               (gx#stx-e
                                                                _%$%g190913190929%_)))
                                                          (let ((_%$%hd190920190934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e190919190931%_)))
                        (_%$%tl190921190936%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e190919190931%_))))
                    ((lambda (_%$%g190918190939%_)
                       (let ((_g202657_
                              (gxc#lift-case-lambda-clauses
                               _%stx189949%_
                               _%$%g190620190897%_
                               _%$%g190918190939%_
                               '#t)))
                         (begin
                           (let ((_g202658_
                                  (let ()
                                    (declare (not safe))
                                    (if (##values? _g202657_)
                                        (##values-length _g202657_)
                                        1))))
                             (if (not (let ()
                                        (declare (not safe))
                                        (##fx= _g202658_ 3)))
                                 (error "Context expects 3 values" _g202658_)))
                           (let ((_%ids190949%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g202657_ 0)))
                                 (_%impls190950%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g202657_ 1)))
                                 (_%clauses190951%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g202657_ 2))))
                             (let* ((_%_190953%_
                                     (for-each
                                      gx#core-bind-runtime!
                                      _%ids190949%_))
                                    (_%xbind190955%_
                                     (map _%bind-e189951%_
                                          _%ids190949%_
                                          _%impls190950%_))
                                    (_%expr*190957%_
                                     (gxc#xform-wrap-source
                                      (cons '%#case-lambda _%clauses190951%_)
                                      (gx#datum->syntax
                                       '#f
                                       'case-lambda-expr)))
                                    (_%bind*190959%_
                                     (_%bind-e189951%_
                                      _%$%g190620190897%_
                                      _%expr*190957%_
                                      '#f)))
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#identifier-symbol _%$%g190620190897%_)
                                '" => "
                                (map gxc#identifier-symbol _%ids190949%_))
                               (_%lp190587%_
                                _%rest190612%_
                                _%lift1190590%_
                                (foldl cons _%lift2190591%_ _%xbind190955%_)
                                (cons _%bind*190959%_ _%bind190592%_)))))))
                     _%$%tl190921190936%_)))
                (_%$%g190912190926%_ _%$%g190913190929%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g190910190984%_
                                                  (lambda (_%$%g190913190965%_)
                                                    (if (gx#stx-pair?
                                                         _%$%g190913190965%_)
                                                        (let ((_%$%e190915190967%_
                                                               (gx#stx-e
                                                                _%$%g190913190965%_)))
                                                          (let ((_%$%hd190916190970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e190915190967%_)))
                        (_%$%tl190917190972%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e190915190967%_))))
                    ((lambda (_%$%g190914190975%_)
                       (if (andmap gxc#dispatch-lambda-form?
                                   _%$%g190914190975%_)
                           (_%lp190587%_
                            _%rest190612%_
                            _%lift1190590%_
                            _%lift2190591%_
                            (cons (_%bind-e189951%_
                                   _%$%g190620190897%_
                                   _%$%g190619190896%_
                                   '#f)
                                  _%bind190592%_))
                           (_%$%g190911190962%_ _%$%g190913190965%_)))
                     _%$%tl190917190972%_)))
                (_%$%g190911190962%_ _%$%g190913190965%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g190910190984%_
                                             _%$%g190619190896%_))
                                          (_%$%g190615190867%_
                                           _%$%g190618190870%_)))
                                    _%$%hd190628190891%_
                                    _%$%hd190625190883%_)
                                   (_%$%g190615190867%_ _%$%g190618190870%_))))
                           (_%$%g190615190867%_ _%$%g190618190870%_))
                       (_%$%g190615190867%_ _%$%g190618190870%_))))
               (_%$%g190615190867%_ _%$%g190618190870%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g190615190867%_
                                                _%$%g190618190870%_)))))
                                   (_%$%g190614190987%_ _%hd190613%_)))))
                         (if (pair? _%$%rest190593190601%_)
                             (let ((_%$%hd190598190993%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%rest190593190601%_)))
                                   (_%$%tl190599190995%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%rest190593190601%_))))
                               (let* ((_%hd190998%_ _%$%hd190598190993%_)
                                      (_%rest191000%_ _%$%tl190599190995%_))
                                 (_%$%K190597190990%_
                                  _%rest191000%_
                                  _%hd190998%_)))
                             (_%$%else190595190609%_))))))
                  (_%lift-kw-lambda?189953%_
                   (lambda (_%bind190509%_)
                     (let* ((_%$%g190512190529%_
                             (lambda (_%$%g190513190526%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g190513190526%_)))
                            (_%$%g190511190536%_
                             (lambda (_%$%g190513190532%_) ((lambda () '#f))))
                            (_%$%g190510190582%_
                             (lambda (_%$%g190513190539%_)
                               (if (gx#stx-pair? _%$%g190513190539%_)
                                   (let ((_%$%e190516190541%_
                                          (gx#stx-e _%$%g190513190539%_)))
                                     (let ((_%$%hd190517190544%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e190516190541%_)))
                                           (_%$%tl190518190546%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e190516190541%_))))
                                       (if (gx#stx-pair? _%$%hd190517190544%_)
                                           (let ((_%$%e190519190549%_
                                                  (gx#stx-e
                                                   _%$%hd190517190544%_)))
                                             (let ((_%$%hd190520190552%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e190519190549%_)))
                                                   (_%$%tl190521190554%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e190519190549%_))))
                                               (if (gx#stx-null?
                                                    _%$%tl190521190554%_)
                                                   (if (gx#stx-pair?
                                                        _%$%tl190518190546%_)
                                                       (let ((_%$%e190522190557%_
                                                              (gx#stx-e
                                                               _%$%tl190518190546%_)))
                                                         (let ((_%$%hd190523190560%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e190522190557%_)))
                       (_%$%tl190524190562%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e190522190557%_))))
                   (if (gx#stx-null? _%$%tl190524190562%_)
                       ((lambda (_%$%g190514190565%_ _%$%g190515190566%_)
                          (if (gx#identifier? _%$%g190515190566%_)
                              (gxc#kw-lambda-expr? _%$%g190514190565%_)
                              '#f))
                        _%$%hd190523190560%_
                        _%$%hd190520190552%_)
                       (_%$%g190511190536%_ _%$%g190513190539%_))))
               (_%$%g190511190536%_ _%$%g190513190539%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g190511190536%_
                                                    _%$%g190513190539%_))))
                                           (_%$%g190511190536%_
                                            _%$%g190513190539%_))))
                                   (_%$%g190511190536%_
                                    _%$%g190513190539%_)))))
                       (_%$%g190510190582%_ _%bind190509%_))))
                  (_%lift-kw-lambda-bindings189954%_
                   (lambda (_%bindings190119%_)
                     (let _%lp190121%_ ((_%rest190123%_ _%bindings190119%_)
                                        (_%lift1190124%_ '())
                                        (_%lift2190125%_ '())
                                        (_%bind190126%_ '()))
                       (let* ((_%$%rest190127190135%_ _%rest190123%_)
                              (_%$%E190130190139%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%$%rest190127190135%_
                                        '([hd . rest])
                                        'else)
                                 (void)))
                              (_%$%else190129190143%_
                               (lambda ()
                                 (values (reverse _%lift1190124%_)
                                         (reverse _%lift2190125%_)
                                         (reverse _%bind190126%_))))
                              (_%$%K190131190497%_
                               (lambda (_%rest190146%_ _%hd190147%_)
                                 (let* ((_%$%g190150190175%_
                                         (lambda (_%$%g190151190172%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g190151190172%_)))
                                        (_%$%g190149190216%_
                                         (lambda (_%$%g190151190178%_)
                                           (if (gx#stx-pair?
                                                _%$%g190151190178%_)
                                               (let ((_%$%e190165190180%_
                                                      (gx#stx-e
                                                       _%$%g190151190178%_)))
                                                 (let ((_%$%hd190166190183%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e190165190180%_)))
                                                       (_%$%tl190167190185%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e190165190180%_))))
                                                   (if (gx#stx-pair?
                                                        _%$%tl190167190185%_)
                                                       (let ((_%$%e190168190188%_
                                                              (gx#stx-e
                                                               _%$%tl190167190185%_)))
                                                         (let ((_%$%hd190169190191%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e190168190188%_)))
                       (_%$%tl190170190193%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e190168190188%_))))
                   (if (gx#stx-null? _%$%tl190170190193%_)
                       ((lambda (_%$%g190163190196%_ _%$%g190164190197%_)
                          (_%lp190121%_
                           _%rest190146%_
                           _%lift1190124%_
                           _%lift2190125%_
                           (cons (cons _%$%g190164190197%_
                                       (cons _%$%g190163190196%_ '()))
                                 _%bind190126%_)))
                        _%$%hd190169190191%_
                        _%$%hd190166190183%_)
                       (_%$%g190150190175%_ _%$%g190151190178%_))))
               (_%$%g190150190175%_ _%$%g190151190178%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g190150190175%_
                                                _%$%g190151190178%_))))
                                        (_%$%g190148190494%_
                                         (lambda (_%$%g190151190219%_)
                                           (if (gx#stx-pair?
                                                _%$%g190151190219%_)
                                               (let ((_%$%e190154190221%_
                                                      (gx#stx-e
                                                       _%$%g190151190219%_)))
                                                 (let ((_%$%hd190155190224%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e190154190221%_)))
                                                       (_%$%tl190156190226%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e190154190221%_))))
                                                   (if (gx#stx-pair?
                                                        _%$%hd190155190224%_)
                                                       (let ((_%$%e190157190229%_
                                                              (gx#stx-e
                                                               _%$%hd190155190224%_)))
                                                         (let ((_%$%hd190158190232%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e190157190229%_)))
                       (_%$%tl190159190234%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e190157190229%_))))
                   (if (gx#stx-null? _%$%tl190159190234%_)
                       (if (gx#stx-pair? _%$%tl190156190226%_)
                           (let ((_%$%e190160190237%_
                                  (gx#stx-e _%$%tl190156190226%_)))
                             (let ((_%$%hd190161190240%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e190160190237%_)))
                                   (_%$%tl190162190242%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e190160190237%_))))
                               (if (gx#stx-null? _%$%tl190162190242%_)
                                   ((lambda (_%$%g190152190245%_
                                             _%$%g190153190246%_)
                                      (if (and (gx#identifier?
                                                _%$%g190153190246%_)
                                               (gxc#kw-lambda-expr?
                                                _%$%g190152190245%_))
                                          (let* ((_%$%g190260190313%_
                                                  (lambda (_%$%g190261190310%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g190261190310%_)))
                                                 (_%$%g190259190491%_
                                                  (lambda (_%$%g190261190316%_)
                                                    (if (gx#stx-pair?
                                                         _%$%g190261190316%_)
                                                        (let ((_%$%e190267190318%_
                                                               (gx#stx-e
                                                                _%$%g190261190316%_)))
                                                          (let ((_%$%hd190268190321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e190267190318%_)))
                        (_%$%tl190269190323%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e190267190318%_))))
                    (if (gx#stx-pair? _%$%tl190269190323%_)
                        (let ((_%$%e190270190326%_
                               (gx#stx-e _%$%tl190269190323%_)))
                          (let ((_%$%hd190271190329%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e190270190326%_)))
                                (_%$%tl190272190331%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e190270190326%_))))
                            (if (gx#stx-pair? _%$%hd190271190329%_)
                                (let ((_%$%e190273190334%_
                                       (gx#stx-e _%$%hd190271190329%_)))
                                  (let ((_%$%hd190274190337%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e190273190334%_)))
                                        (_%$%tl190275190339%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e190273190334%_))))
                                    (if (gx#stx-pair? _%$%hd190274190337%_)
                                        (let ((_%$%e190276190342%_
                                               (gx#stx-e
                                                _%$%hd190274190337%_)))
                                          (let ((_%$%hd190277190345%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e190276190342%_)))
                                                (_%$%tl190278190347%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e190276190342%_))))
                                            (if (gx#stx-pair?
                                                 _%$%hd190277190345%_)
                                                (let ((_%$%e190279190350%_
                                                       (gx#stx-e
                                                        _%$%hd190277190345%_)))
                                                  (let ((_%$%hd190280190353%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e190279190350%_)))
                                                        (_%$%tl190281190355%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e190279190350%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl190281190355%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl190278190347%_)
                                                            (let ((_%$%e190282190358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _%$%tl190278190347%_)))
                      (let ((_%$%hd190283190361%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e190282190358%_)))
                            (_%$%tl190284190363%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e190282190358%_))))
                        (if (gx#stx-pair? _%$%hd190283190361%_)
                            (let ((_%$%e190285190366%_
                                   (gx#stx-e _%$%hd190283190361%_)))
                              (let ((_%$%hd190286190369%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e190285190366%_)))
                                    (_%$%tl190287190371%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e190285190366%_))))
                                (if (gx#stx-pair? _%$%tl190287190371%_)
                                    (let ((_%$%e190288190374%_
                                           (gx#stx-e _%$%tl190287190371%_)))
                                      (let ((_%$%hd190289190377%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e190288190374%_)))
                                            (_%$%tl190290190379%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e190288190374%_))))
                                        (if (gx#stx-pair? _%$%hd190289190377%_)
                                            (let ((_%$%e190291190382%_
                                                   (gx#stx-e
                                                    _%$%hd190289190377%_)))
                                              (let ((_%$%hd190292190385%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e190291190382%_)))
                                                    (_%$%tl190293190387%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e190291190382%_))))
                                                (if (gx#stx-pair?
                                                     _%$%hd190292190385%_)
                                                    (let ((_%$%e190294190390%_
                                                           (gx#stx-e
                                                            _%$%hd190292190385%_)))
                                                      (let ((_%$%hd190295190393%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e190294190390%_)))
                    (_%$%tl190296190395%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e190294190390%_))))
                (if (gx#stx-pair? _%$%hd190295190393%_)
                    (let ((_%$%e190297190398%_
                           (gx#stx-e _%$%hd190295190393%_)))
                      (let ((_%$%hd190298190401%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e190297190398%_)))
                            (_%$%tl190299190403%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e190297190398%_))))
                        (if (gx#stx-null? _%$%tl190299190403%_)
                            (if (gx#stx-pair? _%$%tl190296190395%_)
                                (let ((_%$%e190300190406%_
                                       (gx#stx-e _%$%tl190296190395%_)))
                                  (let ((_%$%hd190301190409%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e190300190406%_)))
                                        (_%$%tl190302190411%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e190300190406%_))))
                                    (if (gx#stx-null? _%$%tl190302190411%_)
                                        (if (gx#stx-null? _%$%tl190293190387%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl190290190379%_)
                                                (let ((_%$%e190303190414%_
                                                       (gx#stx-e
                                                        _%$%tl190290190379%_)))
                                                  (let ((_%$%hd190304190417%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e190303190414%_)))
                                                        (_%$%tl190305190419%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e190303190414%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl190305190419%_)
                                                        (if (gx#stx-null?
                                                             _%$%tl190284190363%_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl190275190339%_)
                        (if (gx#stx-pair? _%$%tl190272190331%_)
                            (let ((_%$%e190306190422%_
                                   (gx#stx-e _%$%tl190272190331%_)))
                              (let ((_%$%hd190307190425%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e190306190422%_)))
                                    (_%$%tl190308190427%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e190306190422%_))))
                                (if (gx#stx-null? _%$%tl190308190427%_)
                                    ((lambda (_%$%g190262190430%_
                                              _%$%g190263190431%_
                                              _%$%g190264190432%_
                                              _%$%g190265190433%_
                                              _%$%g190266190434%_)
                                       (let* ((_%get-kws-id190474%_
                                               (make-symbol
                                                (gx#stx-e _%$%g190153190246%_)
                                                (gensym '__)))
                                              (_%get-kws-id190476%_
                                               (gx#core-quote-syntax
                                                _%get-kws-id190474%_
                                                (gx#stx-source _%stx189949%_)))
                                              (_%main-id190478%_
                                               (make-symbol
                                                (gx#stx-e _%$%g190153190246%_)
                                                (gensym '__)))
                                              (_%main-id190480%_
                                               (gx#core-quote-syntax
                                                _%main-id190478%_
                                                (gx#stx-source _%stx189949%_)))
                                              (_%_190482%_
                                               (gx#core-bind-runtime!
                                                _%get-kws-id190476%_))
                                              (_%_190484%_
                                               (gx#core-bind-runtime!
                                                _%main-id190480%_))
                                              (_%new-kw-dispatch190486%_
                                               (gxc#apply-expression-subst
                                                _%$%g190262190430%_
                                                'id:
                                                _%$%g190266190434%_
                                                'new-id:
                                                _%get-kws-id190476%_))
                                              (_%new-get-kws190488%_
                                               (gxc#apply-expression-subst
                                                _%$%g190263190431%_
                                                'id:
                                                _%$%g190265190433%_
                                                'new-id:
                                                _%main-id190480%_)))
                                         (gxc#verbose
                                          '"lift kw-lambda dispatch "
                                          (gxc#identifier-symbol
                                           _%$%g190153190246%_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _%get-kws-id190476%_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _%main-id190480%_))
                                         (_%lp190121%_
                                          _%rest190146%_
                                          (cons (_%bind-e189951%_
                                                 _%main-id190480%_
                                                 _%$%g190264190432%_
                                                 '#f)
                                                _%lift1190124%_)
                                          (cons (_%bind-e189951%_
                                                 _%get-kws-id190476%_
                                                 _%new-get-kws190488%_
                                                 '#f)
                                                _%lift2190125%_)
                                          (cons (_%bind-e189951%_
                                                 _%$%g190153190246%_
                                                 _%new-kw-dispatch190486%_
                                                 '#f)
                                                _%bind190126%_))))
                                     _%$%hd190307190425%_
                                     _%$%hd190304190417%_
                                     _%$%hd190301190409%_
                                     _%$%hd190298190401%_
                                     _%$%hd190280190353%_)
                                    (_%$%g190260190313%_
                                     _%$%g190261190316%_))))
                            (_%$%g190260190313%_ _%$%g190261190316%_))
                        (_%$%g190260190313%_ _%$%g190261190316%_))
                    (_%$%g190260190313%_ _%$%g190261190316%_))
                (_%$%g190260190313%_ _%$%g190261190316%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g190260190313%_
                                                 _%$%g190261190316%_))
                                            (_%$%g190260190313%_
                                             _%$%g190261190316%_))
                                        (_%$%g190260190313%_
                                         _%$%g190261190316%_))))
                                (_%$%g190260190313%_ _%$%g190261190316%_))
                            (_%$%g190260190313%_ _%$%g190261190316%_))))
                    (_%$%g190260190313%_ _%$%g190261190316%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g190260190313%_
                                                     _%$%g190261190316%_))))
                                            (_%$%g190260190313%_
                                             _%$%g190261190316%_))))
                                    (_%$%g190260190313%_
                                     _%$%g190261190316%_))))
                            (_%$%g190260190313%_ _%$%g190261190316%_))))
                    (_%$%g190260190313%_ _%$%g190261190316%_))
                (_%$%g190260190313%_ _%$%g190261190316%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g190260190313%_
                                                 _%$%g190261190316%_))))
                                        (_%$%g190260190313%_
                                         _%$%g190261190316%_))))
                                (_%$%g190260190313%_ _%$%g190261190316%_))))
                        (_%$%g190260190313%_ _%$%g190261190316%_))))
                (_%$%g190260190313%_ _%$%g190261190316%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g190259190491%_
                                             _%$%g190152190245%_))
                                          (_%$%g190149190216%_
                                           _%$%g190151190219%_)))
                                    _%$%hd190161190240%_
                                    _%$%hd190158190232%_)
                                   (_%$%g190149190216%_ _%$%g190151190219%_))))
                           (_%$%g190149190216%_ _%$%g190151190219%_))
                       (_%$%g190149190216%_ _%$%g190151190219%_))))
               (_%$%g190149190216%_ _%$%g190151190219%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g190149190216%_
                                                _%$%g190151190219%_)))))
                                   (_%$%g190148190494%_ _%hd190147%_)))))
                         (if (pair? _%$%rest190127190135%_)
                             (let ((_%$%hd190132190500%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%rest190127190135%_)))
                                   (_%$%tl190133190502%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%rest190127190135%_))))
                               (let* ((_%hd190505%_ _%$%hd190132190500%_)
                                      (_%rest190507%_ _%$%tl190133190502%_))
                                 (_%$%K190131190497%_
                                  _%rest190507%_
                                  _%hd190505%_)))
                             (_%$%else190129190143%_)))))))
          (let* ((_%$%g189957189983%_
                  (lambda (_%$%g189958189980%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g189958189980%_)))
                 (_%$%g189956189990%_
                  (lambda (_%$%g189958189986%_)
                    ((lambda ()
                       (gxc#xform-let-values% _%self189948%_ _%stx189949%_)))))
                 (_%$%g189955190116%_
                  (lambda (_%$%g189958189993%_)
                    (if (gx#stx-pair? _%$%g189958189993%_)
                        (let ((_%$%e189961189995%_
                               (gx#stx-e _%$%g189958189993%_)))
                          (let ((_%$%hd189962189998%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e189961189995%_)))
                                (_%$%tl189963190000%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e189961189995%_))))
                            (if (gx#stx-pair? _%$%tl189963190000%_)
                                (let ((_%$%e189964190003%_
                                       (gx#stx-e _%$%tl189963190000%_)))
                                  (let ((_%$%hd189965190006%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e189964190003%_)))
                                        (_%$%tl189966190008%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e189964190003%_))))
                                    (if (gx#stx-pair/null?
                                         _%$%hd189965190006%_)
                                        (let ((_g202659_
                                               (gx#syntax-split-splice
                                                _%$%hd189965190006%_
                                                '0)))
                                          (begin
                                            (let ((_g202660_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g202659_)
                                                         (##values-length
                                                          _g202659_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g202660_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g202660_)))
                                            (let ((_%$%target189967190011%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g202659_
                                                      0)))
                                                  (_%$%tl189969190013%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g202659_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%$%tl189969190013%_)
                                                  (letrec ((_%$%loop189970190016%_
                                                            (lambda (_%$%hd189968190019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%bind189974190021%_)
                      (if (gx#stx-pair? _%$%hd189968190019%_)
                          (let ((_%$%e189971190023%_
                                 (gx#stx-e _%$%hd189968190019%_)))
                            (let ((_%$%lp-hd189972190026%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e189971190023%_)))
                                  (_%$%lp-tl189973190028%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e189971190023%_))))
                              (_%$%loop189970190016%_
                               _%$%lp-tl189973190028%_
                               (cons _%$%lp-hd189972190026%_
                                     _%$%bind189974190021%_))))
                          (let ((_%$%bind189975190031%_
                                 (reverse _%$%bind189974190021%_)))
                            (if (gx#stx-pair? _%$%tl189966190008%_)
                                (let ((_%$%e189976190033%_
                                       (gx#stx-e _%$%tl189966190008%_)))
                                  (let ((_%$%hd189977190036%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e189976190033%_)))
                                        (_%$%tl189978190038%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e189976190033%_))))
                                    (if (gx#stx-null? _%$%tl189978190038%_)
                                        ((lambda (_%$%g189959190041%_
                                                  _%$%g189960190042%_)
                                           (if (ormap gxc#lift-top-lambda-binding?
                                                      (foldr (lambda (_%$%g190062190065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g190063190067%_)
                       (cons _%$%g190062190065%_ _%$%g190063190067%_))
                     '()
                     _%$%g189960190042%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (call-with-parameters
                                                (lambda ()
                                                  (if (ormap _%lift-kw-lambda?189953%_
                                                             (foldr (lambda (_%$%g190070190073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g190071190075%_)
                              (cons _%$%g190070190073%_ _%$%g190071190075%_))
                            '()
                            _%$%g189960190042%_))
              (let ((_g202661_
                     (_%lift-kw-lambda-bindings189954%_
                      (foldr (lambda (_%$%g190077190080%_ _%$%g190078190082%_)
                               (cons _%$%g190077190080%_ _%$%g190078190082%_))
                             '()
                             _%$%g189960190042%_))))
                (begin
                  (let ((_g202662_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g202661_)
                               (##values-length _g202661_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g202662_ 3)))
                        (error "Context expects 3 values" _g202662_)))
                  (let ((_%lift1190085%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g202661_ 0)))
                        (_%lift2190086%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g202661_ 1)))
                        (_%hd190087%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g202661_ 2))))
                    (let* ((_%expr190089%_
                            (gxc#xform-wrap-source
                             (cons '%#let-values
                                   (cons _%hd190087%_
                                         (cons _%$%g189959190041%_ '())))
                             _%stx189949%_))
                           (_%expr190091%_
                            (gxc#xform-wrap-source
                             (cons '%#let-values
                                   (cons _%lift2190086%_
                                         (cons _%expr190089%_ '())))
                             _%stx189949%_))
                           (_%expr190093%_
                            (gxc#xform-wrap-source
                             (cons '%#let-values
                                   (cons _%lift1190085%_
                                         (cons _%expr190091%_ '())))
                             _%stx189949%_)))
                      (gxc#lift-top-lambda-let-values%
                       _%self189948%_
                       _%expr190093%_)))))
              (let ((_g202663_
                     (_%compile-bindings189952%_
                      (foldr (lambda (_%$%g190095190098%_ _%$%g190096190100%_)
                               (cons _%$%g190095190098%_ _%$%g190096190100%_))
                             '()
                             _%$%g189960190042%_))))
                (begin
                  (let ((_g202664_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g202663_)
                               (##values-length _g202663_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g202664_ 3)))
                        (error "Context expects 3 values" _g202664_)))
                  (let ((_%lift1190103%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g202663_ 0)))
                        (_%lift2190104%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g202663_ 1)))
                        (_%hd190105%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g202663_ 2))))
                    (let* ((_%body190107%_
                            (gxc#compile-e _%self189948%_ _%$%g189959190041%_))
                           (_%expr190109%_
                            (gxc#xform-wrap-source
                             (cons '%#let-values
                                   (cons _%hd190105%_
                                         (cons _%body190107%_ '())))
                             _%stx189949%_))
                           (_%expr190111%_
                            (if (null? _%lift2190104%_)
                                _%expr190109%_
                                (gxc#xform-wrap-source
                                 (cons '%#let-values
                                       (cons _%lift2190104%_
                                             (cons _%expr190109%_ '())))
                                 _%stx189949%_)))
                           (_%expr190113%_
                            (if (null? _%lift1190103%_)
                                _%expr190111%_
                                (gxc#xform-wrap-source
                                 (cons '%#let-values
                                       (cons _%lift1190103%_
                                             (cons _%expr190111%_ '())))
                                 _%stx189949%_))))
                      _%expr190113%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                gx#current-expander-context
                                                (gx#make-local-context))
                                               (_%$%g189956189990%_
                                                _%$%g189958189993%_)))
                                         _%$%hd189977190036%_
                                         _%$%bind189975190031%_)
                                        (_%$%g189956189990%_
                                         _%$%g189958189993%_))))
                                (_%$%g189956189990%_ _%$%g189958189993%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop189970190016%_
                                                     _%$%target189967190011%_
                                                     '()))
                                                  (_%$%g189956189990%_
                                                   _%$%g189958189993%_)))))
                                        (_%$%g189956189990%_
                                         _%$%g189958189993%_))))
                                (_%$%g189956189990%_ _%$%g189958189993%_))))
                        (_%$%g189956189990%_ _%$%g189958189993%_)))))
            (_%$%g189955190116%_ _%stx189949%_)))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_%self189089%_ _%stx189090%_)
        (letrec* ((_%bind-e189092%_
                   (let ((_%$%opt-lambda189930189936%_
                          (lambda (_%id189932%_
                                   _%expr189933%_
                                   _%compile?189934%_)
                            (cons (cons _%id189932%_ '())
                                  (cons (if _%compile?189934%_
                                            (gxc#compile-e
                                             _%self189089%_
                                             _%expr189933%_)
                                            _%expr189933%_)
                                        '())))))
                     (lambda _g202665_
                       (let ((_g202666_
                              (let ()
                                (declare (not safe))
                                (##length _g202665_))))
                         (cond ((let ()
                                  (declare (not safe))
                                  (##fx= _g202666_ 2))
                                (apply (lambda (_%id189939%_ _%expr189940%_)
                                         (let ((_%compile?189942%_ '#t))
                                           (_%$%opt-lambda189930189936%_
                                            _%id189939%_
                                            _%expr189940%_
                                            _%compile?189942%_)))
                                       _g202665_))
                               ((let ()
                                  (declare (not safe))
                                  (##fx= _g202666_ 3))
                                (apply _%$%opt-lambda189930189936%_ _g202665_))
                               (else
                                (##raise-wrong-number-of-arguments-exception
                                 'case-lambda-dispatch
                                 _g202665_)))))))
                  (_%compile-bindings189093%_
                   (lambda (_%rest189226%_)
                     (let _%lp189228%_ ((_%rest189230%_ _%rest189226%_)
                                        (_%bind189231%_ '()))
                       (let* ((_%$%rest189232189240%_ _%rest189230%_)
                              (_%$%E189235189244%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%$%rest189232189240%_
                                        '([hd . rest])
                                        'else)
                                 (void)))
                              (_%$%else189234189248%_
                               (lambda () (reverse _%bind189231%_)))
                              (_%$%K189236189919%_
                               (lambda (_%rest189251%_ _%hd189252%_)
                                 (let* ((_%$%g189257189304%_
                                         (lambda (_%$%g189258189301%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g189258189301%_)))
                                        (_%$%g189256189345%_
                                         (lambda (_%$%g189258189307%_)
                                           (if (gx#stx-pair?
                                                _%$%g189258189307%_)
                                               (let ((_%$%e189294189309%_
                                                      (gx#stx-e
                                                       _%$%g189258189307%_)))
                                                 (let ((_%$%hd189295189312%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e189294189309%_)))
                                                       (_%$%tl189296189314%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e189294189309%_))))
                                                   (if (gx#stx-pair?
                                                        _%$%tl189296189314%_)
                                                       (let ((_%$%e189297189317%_
                                                              (gx#stx-e
                                                               _%$%tl189296189314%_)))
                                                         (let ((_%$%hd189298189320%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e189297189317%_)))
                       (_%$%tl189299189322%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e189297189317%_))))
                   (if (gx#stx-null? _%$%tl189299189322%_)
                       ((lambda (_%$%g189292189325%_ _%$%g189293189326%_)
                          (_%lp189228%_
                           _%rest189251%_
                           (cons (cons _%$%g189293189326%_
                                       (cons (gxc#compile-e
                                              _%self189089%_
                                              _%$%g189292189325%_)
                                             '()))
                                 _%bind189231%_)))
                        _%$%hd189298189320%_
                        _%$%hd189295189312%_)
                       (_%$%g189257189304%_ _%$%g189258189307%_))))
               (_%$%g189257189304%_ _%$%g189258189307%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g189257189304%_
                                                _%$%g189258189307%_))))
                                        (_%$%g189255189623%_
                                         (lambda (_%$%g189258189348%_)
                                           (if (gx#stx-pair?
                                                _%$%g189258189348%_)
                                               (let ((_%$%e189283189350%_
                                                      (gx#stx-e
                                                       _%$%g189258189348%_)))
                                                 (let ((_%$%hd189284189353%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e189283189350%_)))
                                                       (_%$%tl189285189355%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e189283189350%_))))
                                                   (if (gx#stx-pair?
                                                        _%$%hd189284189353%_)
                                                       (let ((_%$%e189286189358%_
                                                              (gx#stx-e
                                                               _%$%hd189284189353%_)))
                                                         (let ((_%$%hd189287189361%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e189286189358%_)))
                       (_%$%tl189288189363%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e189286189358%_))))
                   (if (gx#stx-null? _%$%tl189288189363%_)
                       (if (gx#stx-pair? _%$%tl189285189355%_)
                           (let ((_%$%e189289189366%_
                                  (gx#stx-e _%$%tl189285189355%_)))
                             (let ((_%$%hd189290189369%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e189289189366%_)))
                                   (_%$%tl189291189371%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e189289189366%_))))
                               (if (gx#stx-null? _%$%tl189291189371%_)
                                   ((lambda (_%$%g189281189374%_
                                             _%$%g189282189375%_)
                                      (if (and (gx#identifier?
                                                _%$%g189282189375%_)
                                               (gxc#kw-lambda-expr?
                                                _%$%g189281189374%_))
                                          (let* ((_%$%g189389189442%_
                                                  (lambda (_%$%g189390189439%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g189390189439%_)))
                                                 (_%$%g189388189620%_
                                                  (lambda (_%$%g189390189445%_)
                                                    (if (gx#stx-pair?
                                                         _%$%g189390189445%_)
                                                        (let ((_%$%e189396189447%_
                                                               (gx#stx-e
                                                                _%$%g189390189445%_)))
                                                          (let ((_%$%hd189397189450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e189396189447%_)))
                        (_%$%tl189398189452%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e189396189447%_))))
                    (if (gx#stx-pair? _%$%tl189398189452%_)
                        (let ((_%$%e189399189455%_
                               (gx#stx-e _%$%tl189398189452%_)))
                          (let ((_%$%hd189400189458%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e189399189455%_)))
                                (_%$%tl189401189460%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e189399189455%_))))
                            (if (gx#stx-pair? _%$%hd189400189458%_)
                                (let ((_%$%e189402189463%_
                                       (gx#stx-e _%$%hd189400189458%_)))
                                  (let ((_%$%hd189403189466%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e189402189463%_)))
                                        (_%$%tl189404189468%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e189402189463%_))))
                                    (if (gx#stx-pair? _%$%hd189403189466%_)
                                        (let ((_%$%e189405189471%_
                                               (gx#stx-e
                                                _%$%hd189403189466%_)))
                                          (let ((_%$%hd189406189474%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e189405189471%_)))
                                                (_%$%tl189407189476%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e189405189471%_))))
                                            (if (gx#stx-pair?
                                                 _%$%hd189406189474%_)
                                                (let ((_%$%e189408189479%_
                                                       (gx#stx-e
                                                        _%$%hd189406189474%_)))
                                                  (let ((_%$%hd189409189482%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e189408189479%_)))
                                                        (_%$%tl189410189484%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e189408189479%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl189410189484%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl189407189476%_)
                                                            (let ((_%$%e189411189487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _%$%tl189407189476%_)))
                      (let ((_%$%hd189412189490%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e189411189487%_)))
                            (_%$%tl189413189492%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e189411189487%_))))
                        (if (gx#stx-pair? _%$%hd189412189490%_)
                            (let ((_%$%e189414189495%_
                                   (gx#stx-e _%$%hd189412189490%_)))
                              (let ((_%$%hd189415189498%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e189414189495%_)))
                                    (_%$%tl189416189500%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e189414189495%_))))
                                (if (gx#stx-pair? _%$%tl189416189500%_)
                                    (let ((_%$%e189417189503%_
                                           (gx#stx-e _%$%tl189416189500%_)))
                                      (let ((_%$%hd189418189506%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e189417189503%_)))
                                            (_%$%tl189419189508%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e189417189503%_))))
                                        (if (gx#stx-pair? _%$%hd189418189506%_)
                                            (let ((_%$%e189420189511%_
                                                   (gx#stx-e
                                                    _%$%hd189418189506%_)))
                                              (let ((_%$%hd189421189514%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e189420189511%_)))
                                                    (_%$%tl189422189516%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e189420189511%_))))
                                                (if (gx#stx-pair?
                                                     _%$%hd189421189514%_)
                                                    (let ((_%$%e189423189519%_
                                                           (gx#stx-e
                                                            _%$%hd189421189514%_)))
                                                      (let ((_%$%hd189424189522%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e189423189519%_)))
                    (_%$%tl189425189524%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e189423189519%_))))
                (if (gx#stx-pair? _%$%hd189424189522%_)
                    (let ((_%$%e189426189527%_
                           (gx#stx-e _%$%hd189424189522%_)))
                      (let ((_%$%hd189427189530%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e189426189527%_)))
                            (_%$%tl189428189532%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e189426189527%_))))
                        (if (gx#stx-null? _%$%tl189428189532%_)
                            (if (gx#stx-pair? _%$%tl189425189524%_)
                                (let ((_%$%e189429189535%_
                                       (gx#stx-e _%$%tl189425189524%_)))
                                  (let ((_%$%hd189430189538%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e189429189535%_)))
                                        (_%$%tl189431189540%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e189429189535%_))))
                                    (if (gx#stx-null? _%$%tl189431189540%_)
                                        (if (gx#stx-null? _%$%tl189422189516%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl189419189508%_)
                                                (let ((_%$%e189432189543%_
                                                       (gx#stx-e
                                                        _%$%tl189419189508%_)))
                                                  (let ((_%$%hd189433189546%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e189432189543%_)))
                                                        (_%$%tl189434189548%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e189432189543%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl189434189548%_)
                                                        (if (gx#stx-null?
                                                             _%$%tl189413189492%_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl189404189468%_)
                        (if (gx#stx-pair? _%$%tl189401189460%_)
                            (let ((_%$%e189435189551%_
                                   (gx#stx-e _%$%tl189401189460%_)))
                              (let ((_%$%hd189436189554%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e189435189551%_)))
                                    (_%$%tl189437189556%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e189435189551%_))))
                                (if (gx#stx-null? _%$%tl189437189556%_)
                                    ((lambda (_%$%g189391189559%_
                                              _%$%g189392189560%_
                                              _%$%g189393189561%_
                                              _%$%g189394189562%_
                                              _%$%g189395189563%_)
                                       (let* ((_%get-kws-id189603%_
                                               (make-symbol
                                                (gx#stx-e _%$%g189282189375%_)
                                                (gensym '__)))
                                              (_%get-kws-id189605%_
                                               (gx#core-quote-syntax
                                                _%get-kws-id189603%_
                                                (gx#stx-source _%stx189090%_)))
                                              (_%main-id189607%_
                                               (make-symbol
                                                (gx#stx-e _%$%g189282189375%_)
                                                (gensym '__)))
                                              (_%main-id189609%_
                                               (gx#core-quote-syntax
                                                _%main-id189607%_
                                                (gx#stx-source _%stx189090%_)))
                                              (_%_189611%_
                                               (gx#core-bind-runtime!
                                                _%get-kws-id189605%_))
                                              (_%_189613%_
                                               (gx#core-bind-runtime!
                                                _%main-id189609%_))
                                              (_%new-kw-dispatch189615%_
                                               (gxc#apply-expression-subst
                                                _%$%g189391189559%_
                                                'id:
                                                _%$%g189395189563%_
                                                'new-id:
                                                _%get-kws-id189605%_))
                                              (_%new-get-kws189617%_
                                               (gxc#apply-expression-subst
                                                _%$%g189392189560%_
                                                'id:
                                                _%$%g189394189562%_
                                                'new-id:
                                                _%main-id189609%_)))
                                         (gxc#verbose
                                          '"lift kw-lambda dispatch "
                                          (gxc#identifier-symbol
                                           _%$%g189282189375%_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _%get-kws-id189605%_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _%main-id189609%_))
                                         (_%lp189228%_
                                          (cons* (_%bind-e189092%_
                                                  _%main-id189609%_
                                                  _%$%g189393189561%_
                                                  '#f)
                                                 (_%bind-e189092%_
                                                  _%get-kws-id189605%_
                                                  _%new-get-kws189617%_
                                                  '#f)
                                                 (_%bind-e189092%_
                                                  _%$%g189282189375%_
                                                  _%new-kw-dispatch189615%_
                                                  '#f)
                                                 _%rest189251%_)
                                          _%bind189231%_)))
                                     _%$%hd189436189554%_
                                     _%$%hd189433189546%_
                                     _%$%hd189430189538%_
                                     _%$%hd189427189530%_
                                     _%$%hd189409189482%_)
                                    (_%$%g189389189442%_
                                     _%$%g189390189445%_))))
                            (_%$%g189389189442%_ _%$%g189390189445%_))
                        (_%$%g189389189442%_ _%$%g189390189445%_))
                    (_%$%g189389189442%_ _%$%g189390189445%_))
                (_%$%g189389189442%_ _%$%g189390189445%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g189389189442%_
                                                 _%$%g189390189445%_))
                                            (_%$%g189389189442%_
                                             _%$%g189390189445%_))
                                        (_%$%g189389189442%_
                                         _%$%g189390189445%_))))
                                (_%$%g189389189442%_ _%$%g189390189445%_))
                            (_%$%g189389189442%_ _%$%g189390189445%_))))
                    (_%$%g189389189442%_ _%$%g189390189445%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g189389189442%_
                                                     _%$%g189390189445%_))))
                                            (_%$%g189389189442%_
                                             _%$%g189390189445%_))))
                                    (_%$%g189389189442%_
                                     _%$%g189390189445%_))))
                            (_%$%g189389189442%_ _%$%g189390189445%_))))
                    (_%$%g189389189442%_ _%$%g189390189445%_))
                (_%$%g189389189442%_ _%$%g189390189445%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g189389189442%_
                                                 _%$%g189390189445%_))))
                                        (_%$%g189389189442%_
                                         _%$%g189390189445%_))))
                                (_%$%g189389189442%_ _%$%g189390189445%_))))
                        (_%$%g189389189442%_ _%$%g189390189445%_))))
                (_%$%g189389189442%_ _%$%g189390189445%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g189388189620%_
                                             _%$%g189281189374%_))
                                          (_%$%g189256189345%_
                                           _%$%g189258189348%_)))
                                    _%$%hd189290189369%_
                                    _%$%hd189287189361%_)
                                   (_%$%g189256189345%_ _%$%g189258189348%_))))
                           (_%$%g189256189345%_ _%$%g189258189348%_))
                       (_%$%g189256189345%_ _%$%g189258189348%_))))
               (_%$%g189256189345%_ _%$%g189258189348%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g189256189345%_
                                                _%$%g189258189348%_))))
                                        (_%$%g189254189796%_
                                         (lambda (_%$%g189258189626%_)
                                           (if (gx#stx-pair?
                                                _%$%g189258189626%_)
                                               (let ((_%$%e189272189628%_
                                                      (gx#stx-e
                                                       _%$%g189258189626%_)))
                                                 (let ((_%$%hd189273189631%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e189272189628%_)))
                                                       (_%$%tl189274189633%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e189272189628%_))))
                                                   (if (gx#stx-pair?
                                                        _%$%hd189273189631%_)
                                                       (let ((_%$%e189275189636%_
                                                              (gx#stx-e
                                                               _%$%hd189273189631%_)))
                                                         (let ((_%$%hd189276189639%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e189275189636%_)))
                       (_%$%tl189277189641%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e189275189636%_))))
                   (if (gx#stx-null? _%$%tl189277189641%_)
                       (if (gx#stx-pair? _%$%tl189274189633%_)
                           (let ((_%$%e189278189644%_
                                  (gx#stx-e _%$%tl189274189633%_)))
                             (let ((_%$%hd189279189647%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e189278189644%_)))
                                   (_%$%tl189280189649%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e189278189644%_))))
                               (if (gx#stx-null? _%$%tl189280189649%_)
                                   ((lambda (_%$%g189270189652%_
                                             _%$%g189271189653%_)
                                      (if (and (gx#identifier?
                                                _%$%g189271189653%_)
                                               (gxc#opt-lambda-expr?
                                                _%$%g189270189652%_))
                                          (let* ((_%$%g189667189697%_
                                                  (lambda (_%$%g189668189694%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g189668189694%_)))
                                                 (_%$%g189666189793%_
                                                  (lambda (_%$%g189668189700%_)
                                                    (if (gx#stx-pair?
                                                         _%$%g189668189700%_)
                                                        (let ((_%$%e189672189702%_
                                                               (gx#stx-e
                                                                _%$%g189668189700%_)))
                                                          (let ((_%$%hd189673189705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e189672189702%_)))
                        (_%$%tl189674189707%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e189672189702%_))))
                    (if (gx#stx-pair? _%$%tl189674189707%_)
                        (let ((_%$%e189675189710%_
                               (gx#stx-e _%$%tl189674189707%_)))
                          (let ((_%$%hd189676189713%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e189675189710%_)))
                                (_%$%tl189677189715%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e189675189710%_))))
                            (if (gx#stx-pair? _%$%hd189676189713%_)
                                (let ((_%$%e189678189718%_
                                       (gx#stx-e _%$%hd189676189713%_)))
                                  (let ((_%$%hd189679189721%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e189678189718%_)))
                                        (_%$%tl189680189723%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e189678189718%_))))
                                    (if (gx#stx-pair? _%$%hd189679189721%_)
                                        (let ((_%$%e189681189726%_
                                               (gx#stx-e
                                                _%$%hd189679189721%_)))
                                          (let ((_%$%hd189682189729%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e189681189726%_)))
                                                (_%$%tl189683189731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e189681189726%_))))
                                            (if (gx#stx-pair?
                                                 _%$%hd189682189729%_)
                                                (let ((_%$%e189684189734%_
                                                       (gx#stx-e
                                                        _%$%hd189682189729%_)))
                                                  (let ((_%$%hd189685189737%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e189684189734%_)))
                                                        (_%$%tl189686189739%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e189684189734%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl189686189739%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl189683189731%_)
                                                            (let ((_%$%e189687189742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _%$%tl189683189731%_)))
                      (let ((_%$%hd189688189745%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e189687189742%_)))
                            (_%$%tl189689189747%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e189687189742%_))))
                        (if (gx#stx-null? _%$%tl189689189747%_)
                            (if (gx#stx-null? _%$%tl189680189723%_)
                                (if (gx#stx-pair? _%$%tl189677189715%_)
                                    (let ((_%$%e189690189750%_
                                           (gx#stx-e _%$%tl189677189715%_)))
                                      (let ((_%$%hd189691189753%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e189690189750%_)))
                                            (_%$%tl189692189755%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e189690189750%_))))
                                        (if (gx#stx-null? _%$%tl189692189755%_)
                                            ((lambda (_%$%g189669189758%_
                                                      _%$%g189670189759%_
                                                      _%$%g189671189760%_)
                                               (let* ((_%lambda-id189784%_
                                                       (make-symbol
                                                        (gx#stx-e
                                                         _%$%g189271189653%_)
                                                        (gensym '__)))
                                                      (_%lambda-id189786%_
                                                       (gx#core-quote-syntax
                                                        _%lambda-id189784%_
                                                        (gx#stx-source
                                                         _%stx189090%_)))
                                                      (_%_189788%_
                                                       (gx#core-bind-runtime!
                                                        _%lambda-id189786%_))
                                                      (_%new-case-lambda-expr189790%_
                                                       (gxc#apply-expression-subst
                                                        _%$%g189669189758%_
                                                        'id:
                                                        _%$%g189671189760%_
                                                        'new-id:
                                                        _%lambda-id189786%_)))
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#identifier-symbol
                                                   _%$%g189271189653%_)
                                                  '" => "
                                                  (gxc#identifier-symbol
                                                   _%lambda-id189786%_))
                                                 (_%lp189228%_
                                                  (cons (_%bind-e189092%_
                                                         _%$%g189271189653%_
                                                         _%new-case-lambda-expr189790%_
                                                         '#f)
                                                        _%rest189251%_)
                                                  (cons (_%bind-e189092%_
                                                         _%lambda-id189786%_
                                                         _%$%g189670189759%_)
                                                        _%bind189231%_))))
                                             _%$%hd189691189753%_
                                             _%$%hd189688189745%_
                                             _%$%hd189685189737%_)
                                            (_%$%g189667189697%_
                                             _%$%g189668189700%_))))
                                    (_%$%g189667189697%_ _%$%g189668189700%_))
                                (_%$%g189667189697%_ _%$%g189668189700%_))
                            (_%$%g189667189697%_ _%$%g189668189700%_))))
                    (_%$%g189667189697%_ _%$%g189668189700%_))
                (_%$%g189667189697%_ _%$%g189668189700%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g189667189697%_
                                                 _%$%g189668189700%_))))
                                        (_%$%g189667189697%_
                                         _%$%g189668189700%_))))
                                (_%$%g189667189697%_ _%$%g189668189700%_))))
                        (_%$%g189667189697%_ _%$%g189668189700%_))))
                (_%$%g189667189697%_ _%$%g189668189700%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g189666189793%_
                                             _%$%g189270189652%_))
                                          (_%$%g189255189623%_
                                           _%$%g189258189626%_)))
                                    _%$%hd189279189647%_
                                    _%$%hd189276189639%_)
                                   (_%$%g189255189623%_ _%$%g189258189626%_))))
                           (_%$%g189255189623%_ _%$%g189258189626%_))
                       (_%$%g189255189623%_ _%$%g189258189626%_))))
               (_%$%g189255189623%_ _%$%g189258189626%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g189255189623%_
                                                _%$%g189258189626%_))))
                                        (_%$%g189253189916%_
                                         (lambda (_%$%g189258189799%_)
                                           (if (gx#stx-pair?
                                                _%$%g189258189799%_)
                                               (let ((_%$%e189261189801%_
                                                      (gx#stx-e
                                                       _%$%g189258189799%_)))
                                                 (let ((_%$%hd189262189804%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e189261189801%_)))
                                                       (_%$%tl189263189806%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e189261189801%_))))
                                                   (if (gx#stx-pair?
                                                        _%$%hd189262189804%_)
                                                       (let ((_%$%e189264189809%_
                                                              (gx#stx-e
                                                               _%$%hd189262189804%_)))
                                                         (let ((_%$%hd189265189812%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e189264189809%_)))
                       (_%$%tl189266189814%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e189264189809%_))))
                   (if (gx#stx-null? _%$%tl189266189814%_)
                       (if (gx#stx-pair? _%$%tl189263189806%_)
                           (let ((_%$%e189267189817%_
                                  (gx#stx-e _%$%tl189263189806%_)))
                             (let ((_%$%hd189268189820%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e189267189817%_)))
                                   (_%$%tl189269189822%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e189267189817%_))))
                               (if (gx#stx-null? _%$%tl189269189822%_)
                                   ((lambda (_%$%g189259189825%_
                                             _%$%g189260189826%_)
                                      (if (and (gx#identifier?
                                                _%$%g189260189826%_)
                                               (gxc#case-lambda-expr?
                                                _%$%g189259189825%_))
                                          (let* ((_%$%g189841189855%_
                                                  (lambda (_%$%g189842189852%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g189842189852%_)))
                                                 (_%$%g189840189891%_
                                                  (lambda (_%$%g189842189858%_)
                                                    (if (gx#stx-pair?
                                                         _%$%g189842189858%_)
                                                        (let ((_%$%e189848189860%_
                                                               (gx#stx-e
                                                                _%$%g189842189858%_)))
                                                          (let ((_%$%hd189849189863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e189848189860%_)))
                        (_%$%tl189850189865%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e189848189860%_))))
                    ((lambda (_%$%g189847189868%_)
                       (let ((_g202667_
                              (gxc#lift-case-lambda-clauses
                               _%stx189090%_
                               _%$%g189260189826%_
                               _%$%g189847189868%_
                               '#t)))
                         (begin
                           (let ((_g202668_
                                  (let ()
                                    (declare (not safe))
                                    (if (##values? _g202667_)
                                        (##values-length _g202667_)
                                        1))))
                             (if (not (let ()
                                        (declare (not safe))
                                        (##fx= _g202668_ 3)))
                                 (error "Context expects 3 values" _g202668_)))
                           (let ((_%ids189878%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g202667_ 0)))
                                 (_%impls189879%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g202667_ 1)))
                                 (_%clauses189880%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g202667_ 2))))
                             (let* ((_%_189882%_
                                     (for-each
                                      gx#core-bind-runtime!
                                      _%ids189878%_))
                                    (_%xbind189884%_
                                     (map _%bind-e189092%_
                                          _%ids189878%_
                                          _%impls189879%_))
                                    (_%expr*189886%_
                                     (gxc#xform-wrap-source
                                      (cons '%#case-lambda _%clauses189880%_)
                                      (gx#datum->syntax
                                       '#f
                                       'case-lambda-expr)))
                                    (_%bind*189888%_
                                     (_%bind-e189092%_
                                      _%$%g189260189826%_
                                      _%expr*189886%_
                                      '#f)))
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#identifier-symbol _%$%g189260189826%_)
                                '" => "
                                (map gxc#identifier-symbol _%ids189878%_))
                               (_%lp189228%_
                                _%rest189251%_
                                (cons _%bind*189888%_
                                      (foldl cons
                                             _%bind189231%_
                                             _%xbind189884%_))))))))
                     _%$%tl189850189865%_)))
                (_%$%g189841189855%_ _%$%g189842189858%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g189839189913%_
                                                  (lambda (_%$%g189842189894%_)
                                                    (if (gx#stx-pair?
                                                         _%$%g189842189894%_)
                                                        (let ((_%$%e189844189896%_
                                                               (gx#stx-e
                                                                _%$%g189842189894%_)))
                                                          (let ((_%$%hd189845189899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e189844189896%_)))
                        (_%$%tl189846189901%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e189844189896%_))))
                    ((lambda (_%$%g189843189904%_)
                       (if (andmap gxc#dispatch-lambda-form?
                                   _%$%g189843189904%_)
                           (_%lp189228%_
                            _%rest189251%_
                            (cons (_%bind-e189092%_
                                   _%$%g189260189826%_
                                   _%$%g189259189825%_
                                   '#f)
                                  _%bind189231%_))
                           (_%$%g189840189891%_ _%$%g189842189894%_)))
                     _%$%tl189846189901%_)))
                (_%$%g189840189891%_ _%$%g189842189894%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g189839189913%_
                                             _%$%g189259189825%_))
                                          (_%$%g189254189796%_
                                           _%$%g189258189799%_)))
                                    _%$%hd189268189820%_
                                    _%$%hd189265189812%_)
                                   (_%$%g189254189796%_ _%$%g189258189799%_))))
                           (_%$%g189254189796%_ _%$%g189258189799%_))
                       (_%$%g189254189796%_ _%$%g189258189799%_))))
               (_%$%g189254189796%_ _%$%g189258189799%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g189254189796%_
                                                _%$%g189258189799%_)))))
                                   (_%$%g189253189916%_ _%hd189252%_)))))
                         (if (pair? _%$%rest189232189240%_)
                             (let ((_%$%hd189237189922%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%rest189232189240%_)))
                                   (_%$%tl189238189924%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%rest189232189240%_))))
                               (let* ((_%hd189927%_ _%$%hd189237189922%_)
                                      (_%rest189929%_ _%$%tl189238189924%_))
                                 (_%$%K189236189919%_
                                  _%rest189929%_
                                  _%hd189927%_)))
                             (_%$%else189234189248%_)))))))
          (let* ((_%$%g189096189123%_
                  (lambda (_%$%g189097189120%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g189097189120%_)))
                 (_%$%g189095189130%_
                  (lambda (_%$%g189097189126%_)
                    ((lambda ()
                       (gxc#xform-let-values% _%self189089%_ _%stx189090%_)))))
                 (_%$%g189094189223%_
                  (lambda (_%$%g189097189133%_)
                    (if (gx#stx-pair? _%$%g189097189133%_)
                        (let ((_%$%e189101189135%_
                               (gx#stx-e _%$%g189097189133%_)))
                          (let ((_%$%hd189102189138%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e189101189135%_)))
                                (_%$%tl189103189140%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e189101189135%_))))
                            (if (gx#stx-pair? _%$%tl189103189140%_)
                                (let ((_%$%e189104189143%_
                                       (gx#stx-e _%$%tl189103189140%_)))
                                  (let ((_%$%hd189105189146%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e189104189143%_)))
                                        (_%$%tl189106189148%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e189104189143%_))))
                                    (if (gx#stx-pair/null?
                                         _%$%hd189105189146%_)
                                        (let ((_g202669_
                                               (gx#syntax-split-splice
                                                _%$%hd189105189146%_
                                                '0)))
                                          (begin
                                            (let ((_g202670_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g202669_)
                                                         (##values-length
                                                          _g202669_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g202670_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g202670_)))
                                            (let ((_%$%target189107189151%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g202669_
                                                      0)))
                                                  (_%$%tl189109189153%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g202669_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%$%tl189109189153%_)
                                                  (letrec ((_%$%loop189110189156%_
                                                            (lambda (_%$%hd189108189159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%bind189114189161%_)
                      (if (gx#stx-pair? _%$%hd189108189159%_)
                          (let ((_%$%e189111189163%_
                                 (gx#stx-e _%$%hd189108189159%_)))
                            (let ((_%$%lp-hd189112189166%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e189111189163%_)))
                                  (_%$%lp-tl189113189168%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e189111189163%_))))
                              (_%$%loop189110189156%_
                               _%$%lp-tl189113189168%_
                               (cons _%$%lp-hd189112189166%_
                                     _%$%bind189114189161%_))))
                          (let ((_%$%bind189115189171%_
                                 (reverse _%$%bind189114189161%_)))
                            (if (gx#stx-pair? _%$%tl189106189148%_)
                                (let ((_%$%e189116189173%_
                                       (gx#stx-e _%$%tl189106189148%_)))
                                  (let ((_%$%hd189117189176%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e189116189173%_)))
                                        (_%$%tl189118189178%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e189116189173%_))))
                                    (if (gx#stx-null? _%$%tl189118189178%_)
                                        ((lambda (_%$%g189098189181%_
                                                  _%$%g189099189182%_
                                                  _%$%g189100189183%_)
                                           (if (ormap gxc#lift-top-lambda-binding?
                                                      (foldr (lambda (_%$%g189204189207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g189205189209%_)
                       (cons _%$%g189204189207%_ _%$%g189205189209%_))
                     '()
                     _%$%g189099189182%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (call-with-parameters
                                                (lambda ()
                                                  (let ((_%hd189220%_
                                                         (_%compile-bindings189093%_
                                                          (foldr (lambda (_%$%g189212189215%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%$%g189213189217%_)
                           (cons _%$%g189212189215%_ _%$%g189213189217%_))
                         '()
                         _%$%g189099189182%_)))
                (_%body189221%_
                 (gxc#compile-e _%self189089%_ _%$%g189098189181%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#xform-wrap-source
                                                     (cons _%$%g189100189183%_
                                                           (cons _%hd189220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body189221%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx189090%_)))
                                                gx#current-expander-context
                                                (gx#make-local-context))
                                               (_%$%g189095189130%_
                                                _%$%g189097189133%_)))
                                         _%$%hd189117189176%_
                                         _%$%bind189115189171%_
                                         _%$%hd189102189138%_)
                                        (_%$%g189095189130%_
                                         _%$%g189097189133%_))))
                                (_%$%g189095189130%_ _%$%g189097189133%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop189110189156%_
                                                     _%$%target189107189151%_
                                                     '()))
                                                  (_%$%g189095189130%_
                                                   _%$%g189097189133%_)))))
                                        (_%$%g189095189130%_
                                         _%$%g189097189133%_))))
                                (_%$%g189095189130%_ _%$%g189097189133%_))))
                        (_%$%g189095189130%_ _%$%g189097189133%_)))))
            (_%$%g189094189223%_ _%stx189090%_)))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_%bind189007%_)
        (let* ((_%$%g189010189027%_
                (lambda (_%$%g189011189024%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g189011189024%_)))
               (_%$%g189009189034%_
                (lambda (_%$%g189011189030%_) ((lambda () '#f))))
               (_%$%g189008189086%_
                (lambda (_%$%g189011189037%_)
                  (if (gx#stx-pair? _%$%g189011189037%_)
                      (let ((_%$%e189014189039%_
                             (gx#stx-e _%$%g189011189037%_)))
                        (let ((_%$%hd189015189042%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e189014189039%_)))
                              (_%$%tl189016189044%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e189014189039%_))))
                          (if (gx#stx-pair? _%$%hd189015189042%_)
                              (let ((_%$%e189017189047%_
                                     (gx#stx-e _%$%hd189015189042%_)))
                                (let ((_%$%hd189018189050%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e189017189047%_)))
                                      (_%$%tl189019189052%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e189017189047%_))))
                                  (if (gx#stx-null? _%$%tl189019189052%_)
                                      (if (gx#stx-pair? _%$%tl189016189044%_)
                                          (let ((_%$%e189020189055%_
                                                 (gx#stx-e
                                                  _%$%tl189016189044%_)))
                                            (let ((_%$%hd189021189058%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e189020189055%_)))
                                                  (_%$%tl189022189060%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e189020189055%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl189022189060%_)
                                                  ((lambda (_%$%g189012189063%_
                                                            _%$%g189013189064%_)
                                                     (if (gx#identifier?
                                                          _%$%g189013189064%_)
                                                         (let ((_%$e189080%_
                                                                (gxc#case-lambda-expr?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g189012189063%_)))
                   (if _%$e189080%_
                       _%$e189080%_
                       (let ((_%$e189083%_
                              (gxc#opt-lambda-expr? _%$%g189012189063%_)))
                         (if _%$e189083%_
                             _%$e189083%_
                             (gxc#kw-lambda-expr? _%$%g189012189063%_)))))
                 '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$%hd189021189058%_
                                                   _%$%hd189018189050%_)
                                                  (_%$%g189009189034%_
                                                   _%$%g189011189037%_))))
                                          (_%$%g189009189034%_
                                           _%$%g189011189037%_))
                                      (_%$%g189009189034%_
                                       _%$%g189011189037%_))))
                              (_%$%g189009189034%_ _%$%g189011189037%_))))
                      (_%$%g189009189034%_ _%$%g189011189037%_)))))
          (_%$%g189008189086%_ _%bind189007%_))))))
