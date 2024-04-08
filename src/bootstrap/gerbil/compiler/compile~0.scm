(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1712602656)
  (begin
    (define gxc#gambit-annotations
      '(not gambit-scheme
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
    (define gxc#checked-primitives
      '(##direct-structure-ref
        ##direct-structure-set!
        ##structure-ref
        ##structure-set!))
    (define gxc#current-compile-lift (make-parameter '#f))
    (define gxc#current-compile-marks (make-parameter '#f))
    (define gxc#current-compile-identifiers (make-parameter '#f))
    (define gxc#current-compile-boolean-context (make-parameter '#f))
    (define gxc#make-bound-identifier-table
      (lambda ()
        (letrec ((_%hash-e143500%_
                  (lambda (_%id143502%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id143502%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e143500%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp144887 (list gxc#::void::t))
            (__tmp144886 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp144887
         '()
         __tmp144886
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args143496%_
        (apply make-instance gxc#::collect-bindings::t _%$args143496%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp144888
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-bindings::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-bindings::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-bindings::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-bindings::t
                  '%#define-values
                  gxc#collect-bindings-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-bindings::t
                  '%#define-syntax
                  gxc#collect-bindings-define-syntax%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::collect-bindings::t)))))
        (declare (not safe))
        (__make-promise __tmp144888)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx143488%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self143491%_
                (let ((__obj144862
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj144862))
               (__tmp144889
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143491%_ _%stx143488%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144889
           gxc#current-compile-method
           _%self143491%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp144891 (list gxc#::void::t))
            (__tmp144890 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp144891
         '(modules)
         __tmp144890
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args143485%_
        (apply make-instance gxc#::lift-modules::t _%$args143485%_)))
    (define gxc#::lift-modules-modules
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::lift-modules::t 'modules)))
    (define gxc#::lift-modules-modules-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::lift-modules::t 'modules)))
    (define gxc#&::lift-modules-modules
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#::lift-modules::t 'modules)))
    (define gxc#&::lift-modules-modules-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#::lift-modules::t 'modules)))
    (define gxc#::lift-modules-bind-methods!
      (let ((__tmp144892
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::lift-modules::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::lift-modules::t
                  '%#module
                  gxc#lift-modules-module%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::lift-modules::t)))))
        (declare (not safe))
        (__make-promise __tmp144892)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords143459%_ _%modules143456143460%_ _%stx143462%_)
        (let ((_%modules143465%_
               (if (eq? _%modules143456143460%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules143456143460%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self143467%_
                  (let ((__obj144864
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj144864
                       _%modules143465%_
                       '1
                       '#f
                       '#f))
                    __obj144864))
                 (__tmp144893
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143467%_ _%stx143462%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp144893
             gxc#current-compile-method
             _%self143467%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords143474%_ . _%args143475%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords143474%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143474%_
                  'modules:
                  absent-value))
               _%args143475%_)))
    (define gxc#apply-lift-modules
      (lambda _%args143457143481%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args143457143481%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp144895 (list)) (__tmp144894 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp144895
         '()
         __tmp144894
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args143452%_
        (apply make-instance gxc#::find-runtime-code::t _%$args143452%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp144896
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#begin
                  gxc#find-runtime-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#begin-syntax
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#begin-foreign
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#begin-annotation
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#module
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#import
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#export
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#provide
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#extern
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#define-values
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#define-syntax
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#define-alias
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#declare
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#lambda
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#case-lambda
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#let-values
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#letrec-values
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#letrec*-values
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#quote
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#call
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#call-unchecked
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#if
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#ref
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#set!
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#struct-instance?
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#struct-direct-instance?
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#struct-ref
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#struct-set!
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#struct-direct-ref
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#struct-direct-set!
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#struct-unchecked-ref
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#struct-unchecked-set!
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::find-runtime-code::t)))))
        (declare (not safe))
        (__make-promise __tmp144896)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx143444%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self143447%_
                (let ((__obj144866
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj144866))
               (__tmp144897
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143447%_ _%stx143444%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144897
           gxc#current-compile-method
           _%self143447%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp144899 (list gxc#::false::t))
            (__tmp144898 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp144899
         '()
         __tmp144898
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args143441%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args143441%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp144900
             (lambda ()
               (force gxc#::false-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-lambda-expression::t
                  '%#begin
                  gxc#apply-last-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-lambda-expression::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-lambda-expression::t
                  '%#lambda
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-lambda-expression::t
                  '%#case-lambda
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-lambda-expression::t
                  '%#let-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-lambda-expression::t
                  '%#letrec-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-lambda-expression::t
                  '%#letrec*-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::find-lambda-expression::t)))))
        (declare (not safe))
        (__make-promise __tmp144900)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx143433%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self143436%_
                (let ((__obj144868
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj144868))
               (__tmp144901
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143436%_ _%stx143433%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144901
           gxc#current-compile-method
           _%self143436%_))))
    (define gxc#::count-values::t
      (let ((__tmp144903 (list gxc#::false-expression::t))
            (__tmp144902 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp144903
         '()
         __tmp144902
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args143430%_
        (apply make-instance gxc#::count-values::t _%$args143430%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp144904
             (lambda ()
               (force gxc#::false-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#begin
                  gxc#apply-last-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#lambda
                  gxc#count-values-single%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#case-lambda
                  gxc#count-values-single%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#let-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#letrec-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#letrec*-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#quote
                  gxc#count-values-single%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#call
                  gxc#count-values-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#call-unchecked
                  gxc#count-values-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#if
                  gxc#count-values-if%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::count-values::t)))))
        (declare (not safe))
        (__make-promise __tmp144904)))
    (define gxc#apply-count-values
      (lambda (_%stx143422%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self143425%_
                (let ((__obj144870
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj144870))
               (__tmp144905
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143425%_ _%stx143422%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144905
           gxc#current-compile-method
           _%self143425%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp144906 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp144906
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args143419%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args143419%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp144907
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#begin
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#begin-syntax
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#begin-foreign
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#begin-annotation
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#module
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#import
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#export
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#provide
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#extern
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#define-values
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#define-syntax
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#define-alias
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#declare
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#lambda
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#case-lambda
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#let-values
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#letrec-values
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#letrec*-values
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#quote
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#call
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#call-unchecked
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#if
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#ref
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#set!
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#struct-instance?
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#struct-direct-instance?
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#struct-ref
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#struct-set!
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#struct-direct-ref
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#struct-direct-set!
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#struct-unchecked-ref
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#struct-unchecked-set!
                  gxc#generate-runtime-empty)))))
        (declare (not safe))
        (__make-promise __tmp144907)))
    (define gxc#::generate-loader::t
      (let ((__tmp144909 (list gxc#::generate-runtime-empty::t))
            (__tmp144908 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp144909
         '()
         __tmp144908
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args143415%_
        (apply make-instance gxc#::generate-loader::t _%$args143415%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp144910
             (lambda ()
               (force gxc#::generate-runtime-empty-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-loader::t
                  '%#begin
                  gxc#generate-runtime-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-loader::t
                  '%#import
                  gxc#generate-runtime-loader-import%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::generate-loader::t)))))
        (declare (not safe))
        (__make-promise __tmp144910)))
    (define gxc#apply-generate-loader
      (lambda (_%stx143407%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self143410%_
                (let ((__obj144873
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj144873))
               (__tmp144911
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143410%_ _%stx143407%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144911
           gxc#current-compile-method
           _%self143410%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp144912 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp144912
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args143404%_
        (apply make-instance gxc#::generate-runtime::t _%$args143404%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp144913
             (lambda ()
               (force gxc#::generate-runtime-empty-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#begin
                  gxc#generate-runtime-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#begin-foreign
                  gxc#generate-runtime-begin-foreign%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#begin-annotation
                  gxc#generate-runtime-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#define-values
                  gxc#generate-runtime-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#declare
                  gxc#generate-runtime-declare%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#lambda
                  gxc#generate-runtime-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#case-lambda
                  gxc#generate-runtime-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#let-values
                  gxc#generate-runtime-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#letrec-values
                  gxc#generate-runtime-letrec-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#letrec*-values
                  gxc#generate-runtime-letrec*-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#quote
                  gxc#generate-runtime-quote%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#quote-syntax
                  gxc#generate-runtime-quote-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#call
                  gxc#generate-runtime-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#call-unchecked
                  gxc#generate-runtime-call-unchecked%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#if
                  gxc#generate-runtime-if%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#ref
                  gxc#generate-runtime-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#set!
                  gxc#generate-runtime-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#struct-instance?
                  gxc#generate-runtime-struct-instancep%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#struct-direct-instance?
                  gxc#generate-runtime-struct-direct-instancep%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#struct-ref
                  gxc#generate-runtime-struct-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#struct-set!
                  gxc#generate-runtime-struct-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#struct-direct-ref
                  gxc#generate-runtime-struct-direct-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#struct-direct-set!
                  gxc#generate-runtime-struct-direct-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#struct-unchecked-ref
                  gxc#generate-runtime-struct-unchecked-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#struct-unchecked-set!
                  gxc#generate-runtime-struct-unchecked-setq%)))))
        (declare (not safe))
        (__make-promise __tmp144913)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx143396%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self143399%_
                (let ((__obj144875
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj144875))
               (__tmp144914
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143399%_ _%stx143396%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144914
           gxc#current-compile-method
           _%self143399%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp144916 (list gxc#::generate-runtime::t))
            (__tmp144915 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp144916
         '()
         __tmp144915
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args143393%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args143393%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp144917
             (lambda ()
               (force gxc#::generate-runtime-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-phi::t
                  '%#define-runtime
                  gxc#generate-runtime-phi-define-runtime%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::generate-runtime-phi::t)))))
        (declare (not safe))
        (__make-promise __tmp144917)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx143385%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self143388%_
                (let ((__obj144877
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj144877))
               (__tmp144918
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143388%_ _%stx143385%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144918
           gxc#current-compile-method
           _%self143388%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp144919 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp144919
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args143382%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args143382%_)))
    (define gxc#::collect-expression-refs-table
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::collect-expression-refs::t 'table)))
    (define gxc#::collect-expression-refs-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::collect-expression-refs::t 'table)))
    (define gxc#&::collect-expression-refs-table
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::collect-expression-refs::t
         'table)))
    (define gxc#&::collect-expression-refs-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::collect-expression-refs::t
         'table)))
    (define gxc#::collect-expression-refs-bind-methods!
      (let ((__tmp144920
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#let-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#letrec-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#letrec*-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#quote
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#quote-syntax
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#call
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#call-unchecked
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#if
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#ref
                  gxc#collect-refs-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#set!
                  gxc#collect-refs-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#struct-instance?
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#struct-direct-instance?
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#struct-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#struct-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#struct-direct-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#struct-direct-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#struct-unchecked-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#struct-unchecked-set!
                  gxc#apply-operands)))))
        (declare (not safe))
        (__make-promise __tmp144920)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords143356%_ _%table143353143357%_ _%stx143359%_)
        (let ((_%table143362%_
               (if (eq? _%table143353143357%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table143353143357%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self143364%_
                  (let ((__obj144879
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj144879
                       _%table143362%_
                       '1
                       '#f
                       '#f))
                    __obj144879))
                 (__tmp144921
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143364%_ _%stx143359%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp144921
             gxc#current-compile-method
             _%self143364%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords143371%_ . _%args143372%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords143371%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143371%_
                  'table:
                  absent-value))
               _%args143372%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args143354143378%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args143354143378%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp144923 (list gxc#::void-expression::t))
            (__tmp144922 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp144923
         '(state)
         __tmp144922
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args143349%_
        (apply make-instance gxc#::generate-meta::t _%$args143349%_)))
    (define gxc#::generate-meta-state
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::generate-meta::t 'state)))
    (define gxc#::generate-meta-state-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::generate-meta::t 'state)))
    (define gxc#&::generate-meta-state
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#::generate-meta::t 'state)))
    (define gxc#&::generate-meta-state-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#::generate-meta::t 'state)))
    (define gxc#::generate-meta-bind-methods!
      (let ((__tmp144924
             (lambda ()
               (force gxc#::void-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#begin
                  gxc#generate-meta-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#begin-syntax
                  gxc#generate-meta-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#module
                  gxc#generate-meta-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#import
                  gxc#generate-meta-import%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#export
                  gxc#generate-meta-export%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#provide
                  gxc#generate-meta-provide%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#extern
                  gxc#generate-meta-extern%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#define-values
                  gxc#generate-meta-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#define-syntax
                  gxc#generate-meta-define-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#define-alias
                  gxc#generate-meta-define-alias%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#begin-foreign
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#declare
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::generate-meta::t)))))
        (declare (not safe))
        (__make-promise __tmp144924)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords143323%_ _%state143320143324%_ _%stx143326%_)
        (let ((_%state143329%_
               (if (eq? _%state143320143324%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state143320143324%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self143331%_
                  (let ((__obj144881
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj144881
                       _%state143329%_
                       '1
                       '#f
                       '#f))
                    __obj144881))
                 (__tmp144925
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143331%_ _%stx143326%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp144925
             gxc#current-compile-method
             _%self143331%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords143338%_ . _%args143339%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords143338%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143338%_
                  'state:
                  absent-value))
               _%args143339%_)))
    (define gxc#apply-generate-meta
      (lambda _%args143321143345%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args143321143345%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp144927 (list)) (__tmp144926 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp144927
         '(state)
         __tmp144926
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args143316%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args143316%_)))
    (define gxc#::generate-meta-phi-state
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::generate-meta-phi::t 'state)))
    (define gxc#::generate-meta-phi-state-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::generate-meta-phi::t 'state)))
    (define gxc#&::generate-meta-phi-state
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::generate-meta-phi::t
         'state)))
    (define gxc#&::generate-meta-phi-state-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::generate-meta-phi::t
         'state)))
    (define gxc#::generate-meta-phi-bind-methods!
      (let ((__tmp144928
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#begin
                  gxc#generate-meta-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#begin-syntax
                  gxc#generate-meta-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#define-syntax
                  gxc#generate-meta-define-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#define-alias
                  gxc#generate-meta-define-alias%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#define-values
                  gxc#generate-meta-phi-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#begin-annotation
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#lambda
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#case-lambda
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#let-values
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#letrec-values
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#letrec*-values
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#quote
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#quote-syntax
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#call
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#call-unchecked
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#if
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#ref
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#set!
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#struct-instance?
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#struct-direct-instance?
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#struct-ref
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#struct-set!
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#struct-direct-ref
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#struct-direct-set!
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#struct-unchecked-ref
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#struct-unchecked-set!
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#declare
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::generate-meta-phi::t)))))
        (declare (not safe))
        (__make-promise __tmp144928)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords143290%_ _%state143287143291%_ _%stx143293%_)
        (let ((_%state143296%_
               (if (eq? _%state143287143291%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state143287143291%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self143298%_
                  (let ((__obj144883
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj144883
                       _%state143296%_
                       '1
                       '#f
                       '#f))
                    __obj144883))
                 (__tmp144929
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143298%_ _%stx143293%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp144929
             gxc#current-compile-method
             _%self143298%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords143305%_ . _%args143306%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords143305%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143305%_
                  'state:
                  absent-value))
               _%args143306%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args143288143312%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args143288143312%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self143216%_ _%stx143217%_)
        (let* ((_%g143219143236%_
                (lambda (_%g143220143233%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143220143233%_))))
               (_%g143218143283%_
                (lambda (_%g143220143239%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143220143239%_))
                      (let ((_%e143223143241%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143220143239%_))))
                        (let ((_%hd143224143244%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143223143241%_)))
                              (_%tl143225143246%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143223143241%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143225143246%_))
                              (let ((_%e143226143249%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143225143246%_))))
                                (let ((_%hd143227143252%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143226143249%_)))
                                      (_%tl143228143254%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143226143249%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143228143254%_))
                                      (let ((_%e143229143257%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143228143254%_))))
                                        (let ((_%hd143230143260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143229143257%_)))
                                              (_%tl143231143262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143229143257%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143231143262%_))
                                              ((lambda (_%L143265%_
                                                        _%L143266%_)
                                                 (let ((__tmp144930
                                                        (lambda (_%bind143281%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind143281%_))
                      (gxc#add-module-binding! _%bind143281%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp144930
                                                    _%L143266%_)))
                                               _%hd143230143260%_
                                               _%hd143227143252%_)
                                              (_%g143219143236%_
                                               _%g143220143239%_))))
                                      (_%g143219143236%_ _%g143220143239%_))))
                              (_%g143219143236%_ _%g143220143239%_))))
                      (_%g143219143236%_ _%g143220143239%_)))))
          (_%g143218143283%_ _%stx143217%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self143148%_ _%stx143149%_)
        (let* ((_%g143151143168%_
                (lambda (_%g143152143165%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143152143165%_))))
               (_%g143150143213%_
                (lambda (_%g143152143171%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143152143171%_))
                      (let ((_%e143155143173%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143152143171%_))))
                        (let ((_%hd143156143176%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143155143173%_)))
                              (_%tl143157143178%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143155143173%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143157143178%_))
                              (let ((_%e143158143181%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143157143178%_))))
                                (let ((_%hd143159143184%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143158143181%_)))
                                      (_%tl143160143186%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143158143181%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143160143186%_))
                                      (let ((_%e143161143189%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143160143186%_))))
                                        (let ((_%hd143162143192%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143161143189%_)))
                                              (_%tl143163143194%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143161143189%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143163143194%_))
                                              ((lambda (_%L143197%_
                                                        _%L143198%_)
                                                 (gxc#add-module-binding!
                                                  _%L143198%_
                                                  '#t))
                                               _%hd143162143192%_
                                               _%hd143159143184%_)
                                              (_%g143151143168%_
                                               _%g143152143171%_))))
                                      (_%g143151143168%_ _%g143152143171%_))))
                              (_%g143151143168%_ _%g143152143171%_))))
                      (_%g143151143168%_ _%g143152143171%_)))))
          (_%g143150143213%_ _%stx143149%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self143090%_ _%stx143091%_)
        (let* ((_%g143093143107%_
                (lambda (_%g143094143104%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143094143104%_))))
               (_%g143092143145%_
                (lambda (_%g143094143110%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143094143110%_))
                      (let ((_%e143097143112%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143094143110%_))))
                        (let ((_%hd143098143115%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143097143112%_)))
                              (_%tl143099143117%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143097143112%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143099143117%_))
                              (let ((_%e143100143120%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143099143117%_))))
                                (let ((_%hd143101143123%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143100143120%_)))
                                      (_%tl143102143125%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143100143120%_))))
                                  ((lambda (_%L143128%_ _%L143129%_)
                                     (let ((_%ctx143142%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L143129%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self143090%_
                                           'modules))
                                        (cons _%ctx143142%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self143090%_
                                                        'modules)))))
                                       (let ((__tmp144931
                                              (lambda ()
                                                (let ((__tmp144932
                                                       (##structure-ref
                                                        _%ctx143142%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143090%_
                                                   __tmp144932)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp144931
                                          gx#current-expander-context
                                          _%ctx143142%_))))
                                   _%tl143102143125%_
                                   _%hd143101143123%_)))
                              (_%g143093143107%_ _%g143094143110%_))))
                      (_%g143093143107%_ _%g143094143110%_)))))
          (_%g143092143145%_ _%stx143091%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls143043143045%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls143043143045%_
              (let ((_%decls143048%_ _%decls143043143045%_))
                (let _%lp143050%_ ((_%rest143052%_ _%decls143048%_))
                  (let* ((_%rest143053143061%_ _%rest143052%_)
                         (_%else143055143069%_ (lambda () '#f))
                         (_%K143057143078%_
                          (lambda (_%decls143072%_ _%decl143073%_)
                            (if (equal? _%decl143073%_ '(not safe))
                                '#t
                                (if (equal? _%decl143073%_ '(safe))
                                    '#f
                                    (_%lp143050%_ _%decls143072%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest143053143061%_))
                        (let ((_%hd143058143081%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest143053143061%_)))
                              (_%tl143059143083%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest143053143061%_))))
                          (let* ((_%decl143086%_ _%hd143058143081%_)
                                 (_%decls143088%_ _%tl143059143083%_))
                            (_%K143057143078%_
                             _%decls143088%_
                             _%decl143086%_)))
                        (_%else143055143069%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id143037%_ _%syntax?143038%_)
        (let ((_%eid143040%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id143037%_))
                '1
                gx#binding::t
                '#f))
              (_%ht143041%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid143040%_))
              '#!void
              (let ((__tmp144933
                     (let ((__tmp144934
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid143040%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp144934 _%syntax?143038%_))))
                (declare (not safe))
                (hash-put! _%ht143041%_ _%eid143040%_ __tmp144933))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id143035%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id143035%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key142990%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key142990%_))
            _%key142990%_
            (if (uninterned-symbol? _%key142990%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key142990%_))
                (let* ((_%key142994143001%_ _%key142990%_)
                       (_%E142996143005%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key142994143001%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K142997143023%_
                        (lambda (_%mark143008%_ _%eid143009%_)
                          (let ((_%$e143011%_
                                 (##structure-ref
                                  _%mark143008%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e143011%_
                                ((lambda (_%ht143014%_)
                                   (let ((_%$e143016%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht143014%_
                                             _%eid143009%_))))
                                     (if _%$e143016%_
                                         ((lambda (_%id143019%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id143019%_))
                                                _%id143019%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id143019%_))))
                                          _%$e143016%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid143009%_))))
                                 _%$e143011%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid143009%_))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%key142994143001%_))
                      (let ((_%hd142998143026%_
                             (let ()
                               (declare (not safe))
                               (##car _%key142994143001%_)))
                            (_%tl142999143028%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key142994143001%_))))
                        (let* ((_%eid143031%_ _%hd142998143026%_)
                               (_%mark143033%_ _%tl142999143028%_))
                          (_%K142997143023%_ _%mark143033%_ _%eid143031%_)))
                      (_%E142996143005%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self142987%_ _%stx142988%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self142834%_ _%stx142835%_)
        (letrec ((_%simplify142837%_
                  (lambda (_%body142885%_)
                    (let _%lp142887%_ ((_%rest142889%_ _%body142885%_)
                                       (_%r142890%_ '()))
                      (let* ((_%rest142891142899%_ _%rest142889%_)
                             (_%else142893142907%_
                              (lambda () (reverse _%r142890%_)))
                             (_%K142895142975%_
                              (lambda (_%rest142910%_ _%hd142911%_)
                                (let* ((_%hd142912142928%_ _%hd142911%_)
                                       (_%else142916142936%_
                                        (lambda ()
                                          (_%lp142887%_
                                           _%rest142910%_
                                           (cons _%hd142911%_ _%r142890%_)))))
                                  (let ((_%K142924142965%_
                                         (lambda (_%exprs142963%_)
                                           (_%lp142887%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest142910%_
                                               _%exprs142963%_))
                                            _%r142890%_)))
                                        (_%K142919142949%_
                                         (lambda ()
                                           (if (null? _%rest142910%_)
                                               (_%lp142887%_
                                                _%rest142910%_
                                                (cons _%hd142911%_
                                                      _%r142890%_))
                                               (_%lp142887%_
                                                _%rest142910%_
                                                _%r142890%_))))
                                        (_%K142918142941%_
                                         (lambda ()
                                           (if (null? _%rest142910%_)
                                               (_%lp142887%_
                                                _%rest142910%_
                                                (cons _%hd142911%_
                                                      _%r142890%_))
                                               (_%lp142887%_
                                                _%rest142910%_
                                                _%r142890%_)))))
                                    (let ((_%try-match142915142944%_
                                           (lambda ()
                                             (if (symbol? _%hd142912142928%_)
                                                 (_%K142918142941%_)
                                                 (_%else142916142936%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd142912142928%_))
                                          (let ((_%tl142926142970%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd142912142928%_)))
                                                (_%hd142925142968%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd142912142928%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd142925142968%_
                                                         'begin))
                                                (let ((_%exprs142973%_
                                                       _%tl142926142970%_))
                                                  (_%K142924142965%_
                                                   _%exprs142973%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd142925142968%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl142926142970%_))
                                                        (let ((_%tl142923142957%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl142926142970%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl142923142957%_))
                      (_%K142919142949%_)
                      (_%try-match142915142944%_)))
                (_%try-match142915142944%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match142915142944%_))))
                                          (_%try-match142915142944%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest142891142899%_))
                            (let ((_%hd142896142978%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest142891142899%_)))
                                  (_%tl142897142980%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest142891142899%_))))
                              (let* ((_%hd142983%_ _%hd142896142978%_)
                                     (_%rest142985%_ _%tl142897142980%_))
                                (_%K142895142975%_
                                 _%rest142985%_
                                 _%hd142983%_)))
                            (_%else142893142907%_)))))))
          (let* ((_%g142839142849%_
                  (lambda (_%g142840142846%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142840142846%_))))
                 (_%g142838142882%_
                  (lambda (_%g142840142852%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142840142852%_))
                        (let ((_%e142842142854%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142840142852%_))))
                          (let ((_%hd142843142857%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142842142854%_)))
                                (_%tl142844142859%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142842142854%_))))
                            ((lambda (_%L142862%_)
                               (let* ((_%body142877%_
                                       (map (lambda (_%g142872142874%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self142834%_
                                                 _%g142872142874%_)))
                                            _%L142862%_))
                                      (_%body142879%_
                                       (_%simplify142837%_ _%body142877%_)))
                                 (if (let ((__tmp144935
                                            (length _%body142879%_)))
                                       (declare (not safe))
                                       (##fx= __tmp144935 '1))
                                     (car _%body142879%_)
                                     (cons 'begin _%body142879%_))))
                             _%tl142844142859%_)))
                        (_%g142839142849%_ _%g142840142852%_)))))
            (_%g142838142882%_ _%stx142835%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self142795%_ _%stx142796%_)
        (let* ((_%g142798142808%_
                (lambda (_%g142799142805%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142799142805%_))))
               (_%g142797142831%_
                (lambda (_%g142799142811%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142799142811%_))
                      (let ((_%e142801142813%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142799142811%_))))
                        (let ((_%hd142802142816%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142801142813%_)))
                              (_%tl142803142818%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142801142813%_))))
                          ((lambda (_%L142821%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L142821%_))))
                           _%tl142803142818%_)))
                      (_%g142798142808%_ _%g142799142811%_)))))
          (_%g142797142831%_ _%stx142796%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self142559%_ _%stx142560%_)
        (let* ((_%__stx143525143526%_ _%stx142560%_)
               (_%g142564142616%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx143525143526%_)))))
          (let ((_%__kont143527143528%_
                 (lambda (_%L142777%_ _%L142778%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self142559%_ _%L142777%_))))
                (_%__kont143529143530%_
                 (lambda (_%L142725%_ _%L142726%_ _%L142727%_)
                   (if (let ((__tmp144936
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L142727%_))))
                         (declare (not safe))
                         (##memq __tmp144936 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self142559%_ _%L142725%_)))))
                (_%__kont143533143534%_
                 (lambda (_%L142645%_ _%L142646%_)
                   (let ((_%decls142661%_ (map gx#syntax->datum _%L142646%_)))
                     (let ((__tmp144939
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls142661%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self142559%_
                                                   _%L142645%_))
                                                '())))))
                           (__tmp144937
                            (let ((__tmp144938
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp144938 _%decls142661%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp144939
                        gxc#current-compile-decls
                        __tmp144937))))))
            (let* ((_%__match143580143581%_
                    (lambda (_%e142580142669%_
                             _%hd142581142672%_
                             _%tl142582142674%_
                             _%e142583142677%_
                             _%hd142584142680%_
                             _%tl142585142682%_
                             _%e142586142685%_
                             _%hd142587142688%_
                             _%tl142588142690%_
                             _%__splice143531143532%_
                             _%target142589142693%_
                             _%tl142591142695%_)
                      (letrec ((_%loop142592142698%_
                                (lambda (_%hd142590142701%_
                                         _%param142596142703%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd142590142701%_))
                                      (let ((_%e142593142706%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd142590142701%_))))
                                        (let ((_%lp-tl142595142711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142593142706%_)))
                                              (_%lp-hd142594142709%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142593142706%_))))
                                          (_%loop142592142698%_
                                           _%lp-tl142595142711%_
                                           (cons _%lp-hd142594142709%_
                                                 _%param142596142703%_))))
                                      (let ((_%param142597142714%_
                                             (reverse _%param142596142703%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142585142682%_))
                                            (let ((_%e142598142717%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142585142682%_))))
                                              (let ((_%tl142600142722%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142598142717%_)))
                                                    (_%hd142599142720%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142598142717%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl142600142722%_))
                                                    (let ((_%L142725%_
                                                           _%hd142599142720%_)
                                                          (_%L142726%_
                                                           _%param142597142714%_)
                                                          (_%L142727%_
                                                           _%hd142587142688%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L142727%_))
                       (not (let ((__tmp144940
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L142727%_))))
                              (declare (not safe))
                              (##memq __tmp144940 gxc#gambit-annotations))))
                  (_%__kont143529143530%_ _%L142725%_ _%L142726%_ _%L142727%_)
                  (_%__kont143533143534%_
                   _%hd142599142720%_
                   _%hd142584142680%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g142564142616%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g142564142616%_))))))))
                        (_%loop142592142698%_ _%target142589142693%_ '()))))
                   (_%__match143554143555%_
                    (lambda (_%e142568142753%_
                             _%hd142569142756%_
                             _%tl142570142758%_
                             _%e142571142761%_
                             _%hd142572142764%_
                             _%tl142573142766%_
                             _%e142574142769%_
                             _%hd142575142772%_
                             _%tl142576142774%_)
                      (let ((_%L142777%_ _%hd142575142772%_)
                            (_%L142778%_ _%hd142572142764%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L142778%_))
                            (_%__kont143527143528%_ _%L142777%_ _%L142778%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd142572142764%_))
                                (let ((_%e142586142685%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd142572142764%_))))
                                  (let ((_%tl142588142690%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142586142685%_)))
                                        (_%hd142587142688%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142586142685%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl142588142690%_))
                                        (let ((_%__splice143531143532%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl142588142690%_
                                                  '0))))
                                          (let ((_%tl142591142695%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice143531143532%_
                                                    '1)))
                                                (_%target142589142693%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice143531143532%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142591142695%_))
                                                (_%__match143580143581%_
                                                 _%e142568142753%_
                                                 _%hd142569142756%_
                                                 _%tl142570142758%_
                                                 _%e142571142761%_
                                                 _%hd142572142764%_
                                                 _%tl142573142766%_
                                                 _%e142586142685%_
                                                 _%hd142587142688%_
                                                 _%tl142588142690%_
                                                 _%__splice143531143532%_
                                                 _%target142589142693%_
                                                 _%tl142591142695%_)
                                                (_%__kont143533143534%_
                                                 _%hd142575142772%_
                                                 _%hd142572142764%_))))
                                        (_%__kont143533143534%_
                                         _%hd142575142772%_
                                         _%hd142572142764%_))))
                                (_%__kont143533143534%_
                                 _%hd142575142772%_
                                 _%hd142572142764%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx143525143526%_))
                  (let ((_%e142568142753%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx143525143526%_))))
                    (let ((_%tl142570142758%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142568142753%_)))
                          (_%hd142569142756%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142568142753%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142570142758%_))
                          (let ((_%e142571142761%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142570142758%_))))
                            (let ((_%tl142573142766%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142571142761%_)))
                                  (_%hd142572142764%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142571142761%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl142573142766%_))
                                  (let ((_%e142574142769%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl142573142766%_))))
                                    (let ((_%tl142576142774%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142574142769%_)))
                                          (_%hd142575142772%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142574142769%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl142576142774%_))
                                          (_%__match143554143555%_
                                           _%e142568142753%_
                                           _%hd142569142756%_
                                           _%tl142570142758%_
                                           _%e142571142761%_
                                           _%hd142572142764%_
                                           _%tl142573142766%_
                                           _%e142574142769%_
                                           _%hd142575142772%_
                                           _%tl142576142774%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd142572142764%_))
                                              (let ((_%e142586142685%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd142572142764%_))))
                                                (let ((_%tl142588142690%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142586142685%_)))
                                                      (_%hd142587142688%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142586142685%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl142588142690%_))
                                                      (let ((_%__splice143531143532%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl142588142690%_ '0))))
                (let ((_%tl142591142695%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice143531143532%_ '1)))
                      (_%target142589142693%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice143531143532%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142591142695%_))
                      (_%__match143580143581%_
                       _%e142568142753%_
                       _%hd142569142756%_
                       _%tl142570142758%_
                       _%e142571142761%_
                       _%hd142572142764%_
                       _%tl142573142766%_
                       _%e142586142685%_
                       _%hd142587142688%_
                       _%tl142588142690%_
                       _%__splice143531143532%_
                       _%target142589142693%_
                       _%tl142591142695%_)
                      (let () (declare (not safe)) (_%g142564142616%_)))))
              (let () (declare (not safe)) (_%g142564142616%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g142564142616%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd142572142764%_))
                                      (let ((_%e142586142685%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd142572142764%_))))
                                        (let ((_%tl142588142690%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142586142685%_)))
                                              (_%hd142587142688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142586142685%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl142588142690%_))
                                              (let ((_%__splice143531143532%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl142588142690%_
                                                        '0))))
                                                (let ((_%tl142591142695%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice143531143532%_
                                                          '1)))
                                                      (_%target142589142693%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice143531143532%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142591142695%_))
                                                      (_%__match143580143581%_
                                                       _%e142568142753%_
                                                       _%hd142569142756%_
                                                       _%tl142570142758%_
                                                       _%e142571142761%_
                                                       _%hd142572142764%_
                                                       _%tl142573142766%_
                                                       _%e142586142685%_
                                                       _%hd142587142688%_
                                                       _%tl142588142690%_
                                                       _%__splice143531143532%_
                                                       _%target142589142693%_
                                                       _%tl142591142695%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g142564142616%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g142564142616%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142564142616%_))))))
                          (let () (declare (not safe)) (_%g142564142616%_)))))
                  (let () (declare (not safe)) (_%g142564142616%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self142518%_ _%stx142519%_)
        (let* ((_%g142521142531%_
                (lambda (_%g142522142528%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142522142528%_))))
               (_%g142520142556%_
                (lambda (_%g142522142534%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142522142534%_))
                      (let ((_%e142524142536%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142522142534%_))))
                        (let ((_%hd142525142539%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142524142536%_)))
                              (_%tl142526142541%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142524142536%_))))
                          ((lambda (_%L142544%_)
                             (let ((_%decls142554%_
                                    (map gx#syntax->datum _%L142544%_)))
                               (let ((__tmp144941
                                      (let ((__tmp144942
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp144942
                                         _%decls142554%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp144941))
                               (cons 'declare _%decls142554%_)))
                           _%tl142526142541%_)))
                      (_%g142521142531%_ _%g142522142534%_)))))
          (_%g142520142556%_ _%stx142519%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self142264%_ _%stx142265%_)
        (let* ((_%g142267142284%_
                (lambda (_%g142268142281%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142268142281%_))))
               (_%g142266142515%_
                (lambda (_%g142268142287%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142268142287%_))
                      (let ((_%e142271142289%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142268142287%_))))
                        (let ((_%hd142272142292%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142271142289%_)))
                              (_%tl142273142294%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142271142289%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142273142294%_))
                              (let ((_%e142274142297%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142273142294%_))))
                                (let ((_%hd142275142300%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142274142297%_)))
                                      (_%tl142276142302%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142274142297%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142276142302%_))
                                      (let ((_%e142277142305%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142276142302%_))))
                                        (let ((_%hd142278142308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142277142305%_)))
                                              (_%tl142279142310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142277142305%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142279142310%_))
                                              ((lambda (_%L142313%_
                                                        _%L142314%_)
                                                 (let* ((_%__stx143633143634%_
                                                         _%L142314%_)
                                                        (_%g142331142345%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx143633143634%_)))))
                                                   (let ((_%__kont143635143636%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self142264%_
                                                               _%L142313%_))))
                                                         (_%__kont143637143638%_
                                                          (lambda (_%L142477%_)
                                                            (let ((_%eid142486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L142477%_))))
                      (let ((_%lambda-expr142487142489%_
                             (gxc#apply-find-lambda-expression _%L142313%_)))
                        (if _%lambda-expr142487142489%_
                            (let* ((_%lambda-expr142492%_
                                    _%lambda-expr142487142489%_)
                                   (__tmp144943
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp144943
                               _%lambda-expr142492%_
                               _%eid142486%_))
                            '#f))
                      (cons 'define
                            (cons _%eid142486%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self142264%_
                                           _%L142313%_))
                                        '()))))))
                 (_%__kont143639143640%_
                  (lambda ()
                    (let* ((_%tmp142352%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body142461%_
                            (let _%lp142354%_ ((_%rest142356%_ _%L142314%_)
                                               (_%k142357%_ '0)
                                               (_%r142358%_ '()))
                              (let* ((_%__stx143603143604%_ _%rest142356%_)
                                     (_%g142363142380%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx143603143604%_)))))
                                (let ((_%__kont143605143606%_
                                       (lambda (_%L142448%_)
                                         (_%lp142354%_
                                          _%L142448%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k142357%_ '1))
                                          _%r142358%_)))
                                      (_%__kont143607143608%_
                                       (lambda (_%L142421%_ _%L142422%_)
                                         (_%lp142354%_
                                          _%L142421%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k142357%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L142422%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp142352%_
                           _%k142357%_
                           _%L142421%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r142358%_))))
                                      (_%__kont143609143610%_
                                       (lambda (_%L142392%_)
                                         (let ((__tmp144944
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L142392%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp142352%_
                                 _%k142357%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp144944
                                            _%r142358%_))))
                                      (_%__kont143611143612%_
                                       (lambda () (reverse _%r142358%_))))
                                  (let ((_%g142361142408%_
                                         (lambda ()
                                           (let ((_%L142392%_
                                                  _%__stx143603143604%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L142392%_))
                                                 (_%__kont143609143610%_
                                                  _%L142392%_)
                                                 (_%__kont143611143612%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx143603143604%_))
                                        (let ((_%e142366142437%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx143603143604%_))))
                                          (let ((_%tl142368142442%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142366142437%_)))
                                                (_%hd142367142440%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142366142437%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd142367142440%_))
                                                (let ((_%e142369142445%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142367142440%_))))
                                                  (if (equal? _%e142369142445%_
                                                              '#f)
                                                      (_%__kont143605143606%_
                                                       _%tl142368142442%_)
                                                      (_%__kont143607143608%_
                                                       _%tl142368142442%_
                                                       _%hd142367142440%_)))
                                                (_%__kont143607143608%_
                                                 _%tl142368142442%_
                                                 _%hd142367142440%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g142361142408%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp142352%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self142264%_
                                                       _%L142313%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp142352%_
                                         _%L142314%_
                                         _%L142313%_)
                                        _%body142461%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx143633143634%_))
                                                         (let ((_%e142333142499%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx143633143634%_))))
                   (let ((_%tl142335142504%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e142333142499%_)))
                         (_%hd142334142502%_
                          (let ()
                            (declare (not safe))
                            (##car _%e142333142499%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd142334142502%_))
                         (let ((_%e142336142507%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd142334142502%_))))
                           (if (equal? _%e142336142507%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl142335142504%_))
                                   (_%__kont143635143636%_)
                                   (_%__kont143639143640%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl142335142504%_))
                                   (_%__kont143637143638%_ _%hd142334142502%_)
                                   (_%__kont143639143640%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142335142504%_))
                             (_%__kont143637143638%_ _%hd142334142502%_)
                             (_%__kont143639143640%_)))))
                 (_%__kont143639143640%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142278142308%_
                                               _%hd142275142300%_)
                                              (_%g142267142284%_
                                               _%g142268142287%_))))
                                      (_%g142267142284%_ _%g142268142287%_))))
                              (_%g142267142284%_ _%g142268142287%_))))
                      (_%g142267142284%_ _%g142268142287%_)))))
          (_%g142266142515%_ _%stx142265%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals142239%_ _%hd142240%_ _%expr142241%_)
        (let ((_%$e142243%_ (gxc#apply-count-values _%expr142241%_)))
          (if _%$e142243%_
              ((lambda (_%count142246%_)
                 (let ((_%len142248%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd142240%_)))
                       (_%cmp142249%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd142240%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len142248%_ '0))
                           (_%cmp142249%_ _%count142246%_ _%len142248%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr142241%_
                          _%hd142240%_)))))
               _%$e142243%_)
              (let* ((_%len142255%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd142240%_)))
                     (_%cmp142257%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd142240%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg142259%_
                      (let ((__tmp144946
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd142240%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp144945 (number->string _%len142255%_)))
                        (declare (not safe))
                        (##string-append __tmp144946 __tmp144945 '" values")))
                     (_%count142261%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (not (let ()
                                (declare (not safe))
                                (gx#stx-list? _%hd142240%_)))
                         (let ()
                           (declare (not safe))
                           (##fx= _%len142255%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count142261%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals142239%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp142257%_
                                (cons _%count142261%_
                                      (cons _%len142255%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp142257%_
                                                        (cons _%count142261%_
                                                              (cons _%len142255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg142259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count142261%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var142234%_)
        (letrec ((_%generate-inline142236%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var142234%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var142234%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline142236%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline142236%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var142227%_ _%i142228%_ _%rest142229%_)
        (letrec ((_%generate-inline142231%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i142228%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest142229%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var142227%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var142227%_
                                                      (cons '0 '())))
                                          (cons _%var142227%_ '()))))
                        (cons '##vector-ref
                              (cons _%var142227%_ (cons _%i142228%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline142231%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline142231%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var142221%_ _%i142222%_)
        (if (let () (declare (not safe)) (##fx= _%i142222%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var142221%_ '()))
                            (cons (cons '##vector->list
                                        (cons _%var142221%_ '()))
                                  (cons (cons 'list (cons _%var142221%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var142221%_
                                                                '()))
                                                    (cons (cons '##vector->list
                                                                (cons _%var142221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var142221%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i142222%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var142221%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##vector->list
                                                        (cons _%var142221%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var142221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##vector->list
                                        (cons _%var142221%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##vector->list (cons _%var142221%_ '()))
                                (cons _%i142222%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##vector->list
                                                              (cons _%var142221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i142222%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self142153%_ _%stx142154%_)
        (let* ((_%g142156142173%_
                (lambda (_%g142157142170%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142157142170%_))))
               (_%g142155142218%_
                (lambda (_%g142157142176%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142157142176%_))
                      (let ((_%e142160142178%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142157142176%_))))
                        (let ((_%hd142161142181%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142160142178%_)))
                              (_%tl142162142183%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142160142178%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142162142183%_))
                              (let ((_%e142163142186%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142162142183%_))))
                                (let ((_%hd142164142189%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142163142186%_)))
                                      (_%tl142165142191%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142163142186%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142165142191%_))
                                      (let ((_%e142166142194%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142165142191%_))))
                                        (let ((_%hd142167142197%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142166142194%_)))
                                              (_%tl142168142199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142166142194%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142168142199%_))
                                              ((lambda (_%L142202%_
                                                        _%L142203%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self142153%_
                                                  _%L142203%_
                                                  _%L142202%_))
                                               _%hd142167142197%_
                                               _%hd142164142189%_)
                                              (_%g142156142173%_
                                               _%g142157142176%_))))
                                      (_%g142156142173%_ _%g142157142176%_))))
                              (_%g142156142173%_ _%g142157142176%_))))
                      (_%g142156142173%_ _%g142157142176%_)))))
          (_%g142155142218%_ _%stx142154%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self142112%_ _%hd142113%_ _%body142114%_)
        (let* ((_%hd142116%_ (gxc#generate-runtime-lambda-head _%hd142113%_))
               (_%body142118%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self142112%_ _%body142114%_)))
               (_%body142150%_
                (let* ((_%body142119142127%_ _%body142118%_)
                       (_%else142121142135%_
                        (lambda () (cons _%body142118%_ '())))
                       (_%K142123142140%_
                        (lambda (_%exprs142138%_) _%exprs142138%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body142119142127%_))
                      (let ((_%hd142124142143%_
                             (let ()
                               (declare (not safe))
                               (##car _%body142119142127%_)))
                            (_%tl142125142145%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body142119142127%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd142124142143%_ 'begin))
                            (let ((_%exprs142148%_ _%tl142125142145%_))
                              (_%K142123142140%_ _%exprs142148%_))
                            (_%else142121142135%_)))
                      (_%else142121142135%_)))))
          (cons 'lambda (cons _%hd142116%_ _%body142150%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd142110%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd142110%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self140649%_ _%stx140650%_)
        (letrec ((_%dispatch-case?140652%_
                  (lambda (_%hd141340%_ _%body141341%_)
                    (let* ((_%form141343%_
                            (cons _%hd141340%_ (cons _%body141341%_ '())))
                           (_%__stx143665143666%_ _%form141343%_)
                           (_%g141348141505%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx143665143666%_)))))
                      (let ((_%__kont143667143668%_
                             (lambda (_%L142030%_ _%L142031%_ _%L142032%_)
                               '#t))
                            (_%__kont143673143674%_
                             (lambda (_%L141818%_
                                      _%L141819%_
                                      _%L141820%_
                                      _%L141821%_
                                      _%L141822%_
                                      _%L141823%_)
                               '#t))
                            (_%__kont143679143680%_
                             (lambda (_%L141613%_
                                      _%L141614%_
                                      _%L141615%_
                                      _%L141616%_)
                               '#t))
                            (_%__kont143681143682%_ (lambda () '#f)))
                        (let* ((_%__match143806143807%_
                                (lambda (_%e141465141517%_
                                         _%hd141466141520%_
                                         _%tl141467141522%_
                                         _%e141468141525%_
                                         _%hd141469141528%_
                                         _%tl141470141530%_
                                         _%e141471141533%_
                                         _%hd141472141536%_
                                         _%tl141473141538%_
                                         _%e141474141541%_
                                         _%hd141475141544%_
                                         _%tl141476141546%_
                                         _%e141477141549%_
                                         _%hd141478141552%_
                                         _%tl141479141554%_
                                         _%e141480141557%_
                                         _%hd141481141560%_
                                         _%tl141482141562%_
                                         _%e141483141565%_
                                         _%hd141484141568%_
                                         _%tl141485141570%_
                                         _%e141486141573%_
                                         _%hd141487141576%_
                                         _%tl141488141578%_
                                         _%e141489141581%_
                                         _%hd141490141584%_
                                         _%tl141491141586%_
                                         _%e141492141589%_
                                         _%hd141493141592%_
                                         _%tl141494141594%_
                                         _%e141495141597%_
                                         _%hd141496141600%_
                                         _%tl141497141602%_
                                         _%e141498141605%_
                                         _%hd141499141608%_
                                         _%tl141500141610%_)
                                  (let ((_%L141613%_ _%hd141499141608%_)
                                        (_%L141614%_ _%hd141490141584%_)
                                        (_%L141615%_ _%hd141481141560%_)
                                        (_%L141616%_ _%hd141466141520%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L141616%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L141615%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L141616%_
                                                _%L141613%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L141614%_
                                                     _%L141616%_))))
                                        (_%__kont143679143680%_
                                         _%L141613%_
                                         _%L141614%_
                                         _%L141615%_
                                         _%L141616%_)
                                        (_%__kont143681143682%_)))))
                               (_%__match143778143779%_
                                (lambda (_%e141465141517%_
                                         _%hd141466141520%_
                                         _%tl141467141522%_
                                         _%e141468141525%_
                                         _%hd141469141528%_
                                         _%tl141470141530%_
                                         _%e141471141533%_
                                         _%hd141472141536%_
                                         _%tl141473141538%_
                                         _%e141474141541%_
                                         _%hd141475141544%_
                                         _%tl141476141546%_
                                         _%e141477141549%_
                                         _%hd141478141552%_
                                         _%tl141479141554%_
                                         _%e141480141557%_
                                         _%hd141481141560%_
                                         _%tl141482141562%_
                                         _%e141483141565%_
                                         _%hd141484141568%_
                                         _%tl141485141570%_
                                         _%e141486141573%_
                                         _%hd141487141576%_
                                         _%tl141488141578%_
                                         _%e141489141581%_
                                         _%hd141490141584%_
                                         _%tl141491141586%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141485141570%_))
                                      (let ((_%e141492141589%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141485141570%_))))
                                        (let ((_%tl141494141594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141492141589%_)))
                                              (_%hd141493141592%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141492141589%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd141493141592%_))
                                              (let ((_%e141495141597%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd141493141592%_))))
                                                (let ((_%tl141497141602%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141495141597%_)))
                                                      (_%hd141496141600%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141495141597%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd141496141600%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd141496141600%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141497141602%_))
                      (let ((_%e141498141605%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141497141602%_))))
                        (let ((_%tl141500141610%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141498141605%_)))
                              (_%hd141499141608%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141498141605%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl141500141610%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl141494141594%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl141470141530%_))
                                      (_%__match143806143807%_
                                       _%e141465141517%_
                                       _%hd141466141520%_
                                       _%tl141467141522%_
                                       _%e141468141525%_
                                       _%hd141469141528%_
                                       _%tl141470141530%_
                                       _%e141471141533%_
                                       _%hd141472141536%_
                                       _%tl141473141538%_
                                       _%e141474141541%_
                                       _%hd141475141544%_
                                       _%tl141476141546%_
                                       _%e141477141549%_
                                       _%hd141478141552%_
                                       _%tl141479141554%_
                                       _%e141480141557%_
                                       _%hd141481141560%_
                                       _%tl141482141562%_
                                       _%e141483141565%_
                                       _%hd141484141568%_
                                       _%tl141485141570%_
                                       _%e141486141573%_
                                       _%hd141487141576%_
                                       _%tl141488141578%_
                                       _%e141489141581%_
                                       _%hd141490141584%_
                                       _%tl141491141586%_
                                       _%e141492141589%_
                                       _%hd141493141592%_
                                       _%tl141494141594%_
                                       _%e141495141597%_
                                       _%hd141496141600%_
                                       _%tl141497141602%_
                                       _%e141498141605%_
                                       _%hd141499141608%_
                                       _%tl141500141610%_)
                                      (_%__kont143681143682%_))
                                  (_%__kont143681143682%_))
                              (_%__kont143681143682%_))))
                      (_%__kont143681143682%_))
                  (_%__kont143681143682%_))
              (_%__kont143681143682%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont143681143682%_))))
                                      (_%__kont143681143682%_))))
                               (_%__match143708143709%_
                                (lambda (_%e141401141658%_
                                         _%hd141402141661%_
                                         _%tl141403141663%_
                                         _%__splice143675143676%_
                                         _%target141404141666%_
                                         _%tl141406141668%_)
                                  (letrec ((_%loop141407141671%_
                                            (lambda (_%hd141405141674%_
                                                     _%arg141411141676%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141405141674%_))
                                                  (let ((_%e141408141679%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141405141674%_))))
                                                    (let ((_%lp-tl141410141684%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141408141679%_)))
                                                          (_%lp-hd141409141682%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141408141679%_))))
                                                      (_%loop141407141671%_
                                                       _%lp-tl141410141684%_
                                                       (cons _%lp-hd141409141682%_
                                                             _%arg141411141676%_))))
                                                  (let ((_%arg141412141687%_
                                                         (reverse _%arg141411141676%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141403141663%_))
                                                        (let ((_%e141413141690%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141403141663%_))))
                  (let ((_%tl141415141695%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141413141690%_)))
                        (_%hd141414141693%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141413141690%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141414141693%_))
                        (let ((_%e141416141698%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141414141693%_))))
                          (let ((_%tl141418141703%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141416141698%_)))
                                (_%hd141417141701%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141416141698%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141417141701%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141417141701%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141418141703%_))
                                        (let ((_%e141419141706%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141418141703%_))))
                                          (let ((_%tl141421141711%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141419141706%_)))
                                                (_%hd141420141709%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141419141706%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141420141709%_))
                                                (let ((_%e141422141714%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141420141709%_))))
                                                  (let ((_%tl141424141719%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141422141714%_)))
                                                        (_%hd141423141717%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141422141714%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141423141717%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141423141717%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141424141719%_))
                        (let ((_%e141425141722%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141424141719%_))))
                          (let ((_%tl141427141727%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141425141722%_)))
                                (_%hd141426141725%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141425141722%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141427141727%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl141421141711%_))
                                    (let ((_%e141428141730%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl141421141711%_))))
                                      (let ((_%tl141430141735%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e141428141730%_)))
                                            (_%hd141429141733%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e141428141730%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd141429141733%_))
                                            (let ((_%e141431141738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd141429141733%_))))
                                              (let ((_%tl141433141743%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141431141738%_)))
                                                    (_%hd141432141741%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141431141738%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd141432141741%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd141432141741%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141433141743%_))
                                                            (let ((_%e141434141746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141433141743%_))))
                      (let ((_%tl141436141751%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141434141746%_)))
                            (_%hd141435141749%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141434141746%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141436141751%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl141430141735%_))
                                (if (let ((__tmp144947
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl141430141735%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp144947 '1))
                                    (let ((_%__splice143677143678%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141430141735%_
                                              '1))))
                                      (let ((_%tl141439141756%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143677143678%_
                                                '1)))
                                            (_%target141437141754%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143677143678%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141439141756%_))
                                            (let ((_%e141446141759%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141439141756%_))))
                                              (let ((_%tl141448141764%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141446141759%_)))
                                                    (_%hd141447141762%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141446141759%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd141447141762%_))
                                                    (let ((_%e141449141767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd141447141762%_))))
                                                      (let ((_%tl141451141772%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e141449141767%_)))
                    (_%hd141450141770%_
                     (let () (declare (not safe)) (##car _%e141449141767%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd141450141770%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd141450141770%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl141451141772%_))
                            (let ((_%e141452141775%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl141451141772%_))))
                              (let ((_%tl141454141780%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141452141775%_)))
                                    (_%hd141453141778%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141452141775%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl141454141780%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl141448141764%_))
                                        (letrec ((_%loop141440141783%_
                                                  (lambda (_%hd141438141786%_
                                                           _%xarg141444141788%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd141438141786%_))
                                                        (let ((_%e141441141791%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd141438141786%_))))
                  (let ((_%lp-tl141443141796%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141441141791%_)))
                        (_%lp-hd141442141794%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141441141791%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd141442141794%_))
                        (let ((_%e141455141799%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd141442141794%_))))
                          (let ((_%tl141457141804%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141455141799%_)))
                                (_%hd141456141802%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141455141799%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141456141802%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd141456141802%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141457141804%_))
                                        (let ((_%e141458141807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141457141804%_))))
                                          (let ((_%tl141460141812%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141458141807%_)))
                                                (_%hd141459141810%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141458141807%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141460141812%_))
                                                (_%loop141440141783%_
                                                 _%lp-tl141443141796%_
                                                 (cons _%hd141459141810%_
                                                       _%xarg141444141788%_))
                                                (_%__match143778143779%_
                                                 _%e141401141658%_
                                                 _%hd141402141661%_
                                                 _%tl141403141663%_
                                                 _%e141413141690%_
                                                 _%hd141414141693%_
                                                 _%tl141415141695%_
                                                 _%e141416141698%_
                                                 _%hd141417141701%_
                                                 _%tl141418141703%_
                                                 _%e141419141706%_
                                                 _%hd141420141709%_
                                                 _%tl141421141711%_
                                                 _%e141422141714%_
                                                 _%hd141423141717%_
                                                 _%tl141424141719%_
                                                 _%e141425141722%_
                                                 _%hd141426141725%_
                                                 _%tl141427141727%_
                                                 _%e141428141730%_
                                                 _%hd141429141733%_
                                                 _%tl141430141735%_
                                                 _%e141431141738%_
                                                 _%hd141432141741%_
                                                 _%tl141433141743%_
                                                 _%e141434141746%_
                                                 _%hd141435141749%_
                                                 _%tl141436141751%_))))
                                        (_%__match143778143779%_
                                         _%e141401141658%_
                                         _%hd141402141661%_
                                         _%tl141403141663%_
                                         _%e141413141690%_
                                         _%hd141414141693%_
                                         _%tl141415141695%_
                                         _%e141416141698%_
                                         _%hd141417141701%_
                                         _%tl141418141703%_
                                         _%e141419141706%_
                                         _%hd141420141709%_
                                         _%tl141421141711%_
                                         _%e141422141714%_
                                         _%hd141423141717%_
                                         _%tl141424141719%_
                                         _%e141425141722%_
                                         _%hd141426141725%_
                                         _%tl141427141727%_
                                         _%e141428141730%_
                                         _%hd141429141733%_
                                         _%tl141430141735%_
                                         _%e141431141738%_
                                         _%hd141432141741%_
                                         _%tl141433141743%_
                                         _%e141434141746%_
                                         _%hd141435141749%_
                                         _%tl141436141751%_))
                                    (_%__match143778143779%_
                                     _%e141401141658%_
                                     _%hd141402141661%_
                                     _%tl141403141663%_
                                     _%e141413141690%_
                                     _%hd141414141693%_
                                     _%tl141415141695%_
                                     _%e141416141698%_
                                     _%hd141417141701%_
                                     _%tl141418141703%_
                                     _%e141419141706%_
                                     _%hd141420141709%_
                                     _%tl141421141711%_
                                     _%e141422141714%_
                                     _%hd141423141717%_
                                     _%tl141424141719%_
                                     _%e141425141722%_
                                     _%hd141426141725%_
                                     _%tl141427141727%_
                                     _%e141428141730%_
                                     _%hd141429141733%_
                                     _%tl141430141735%_
                                     _%e141431141738%_
                                     _%hd141432141741%_
                                     _%tl141433141743%_
                                     _%e141434141746%_
                                     _%hd141435141749%_
                                     _%tl141436141751%_))
                                (_%__match143778143779%_
                                 _%e141401141658%_
                                 _%hd141402141661%_
                                 _%tl141403141663%_
                                 _%e141413141690%_
                                 _%hd141414141693%_
                                 _%tl141415141695%_
                                 _%e141416141698%_
                                 _%hd141417141701%_
                                 _%tl141418141703%_
                                 _%e141419141706%_
                                 _%hd141420141709%_
                                 _%tl141421141711%_
                                 _%e141422141714%_
                                 _%hd141423141717%_
                                 _%tl141424141719%_
                                 _%e141425141722%_
                                 _%hd141426141725%_
                                 _%tl141427141727%_
                                 _%e141428141730%_
                                 _%hd141429141733%_
                                 _%tl141430141735%_
                                 _%e141431141738%_
                                 _%hd141432141741%_
                                 _%tl141433141743%_
                                 _%e141434141746%_
                                 _%hd141435141749%_
                                 _%tl141436141751%_))))
                        (_%__match143778143779%_
                         _%e141401141658%_
                         _%hd141402141661%_
                         _%tl141403141663%_
                         _%e141413141690%_
                         _%hd141414141693%_
                         _%tl141415141695%_
                         _%e141416141698%_
                         _%hd141417141701%_
                         _%tl141418141703%_
                         _%e141419141706%_
                         _%hd141420141709%_
                         _%tl141421141711%_
                         _%e141422141714%_
                         _%hd141423141717%_
                         _%tl141424141719%_
                         _%e141425141722%_
                         _%hd141426141725%_
                         _%tl141427141727%_
                         _%e141428141730%_
                         _%hd141429141733%_
                         _%tl141430141735%_
                         _%e141431141738%_
                         _%hd141432141741%_
                         _%tl141433141743%_
                         _%e141434141746%_
                         _%hd141435141749%_
                         _%tl141436141751%_))))
                (let ((_%xarg141445141815%_ (reverse _%xarg141444141788%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141415141695%_))
                      (let ((_%L141818%_ _%hd141453141778%_)
                            (_%L141819%_ _%xarg141445141815%_)
                            (_%L141820%_ _%hd141435141749%_)
                            (_%L141821%_ _%hd141426141725%_)
                            (_%L141822%_ _%tl141406141668%_)
                            (_%L141823%_ _%arg141412141687%_))
                        (if (and (let ((__tmp144948
                                        (let ((__tmp144949
                                               (lambda (_%g141866141869%_
                                                        _%g141867141871%_)
                                                 (cons _%g141866141869%_
                                                       _%g141867141871%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp144949
                                           '()
                                           _%L141823%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp144948))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L141822%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L141821%_
                                    'apply))
                                 (let ((__tmp144952
                                        (length (let ((__tmp144953
                                                       (lambda (_%g141873141876%_
                                                                _%g141874141878%_)
                                                         (cons _%g141873141876%_
                                                               _%g141874141878%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp144953
                                                   '()
                                                   _%L141823%_))))
                                       (__tmp144950
                                        (length (let ((__tmp144951
                                                       (lambda (_%g141880141883%_
                                                                _%g141881141885%_)
                                                         (cons _%g141880141883%_
                                                               _%g141881141885%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp144951
                                                   '()
                                                   _%L141819%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp144952 __tmp144950))
                                 (let ((__tmp144956
                                        (let ((__tmp144957
                                               (lambda (_%g141887141890%_
                                                        _%g141888141892%_)
                                                 (cons _%g141887141890%_
                                                       _%g141888141892%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp144957
                                           '()
                                           _%L141823%_)))
                                       (__tmp144954
                                        (let ((__tmp144955
                                               (lambda (_%g141894141897%_
                                                        _%g141895141899%_)
                                                 (cons _%g141894141897%_
                                                       _%g141895141899%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp144955
                                           '()
                                           _%L141819%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp144956
                                    __tmp144954))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L141822%_
                                    _%L141818%_))
                                 (not (let ((__tmp144961
                                             (lambda (_%g141901141903%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g141901141903%_
                                                  _%L141820%_))))
                                            (__tmp144958
                                             (let ((__tmp144960
                                                    (lambda (_%g141905141908%_
                                                             _%g141906141910%_)
                                                      (cons _%g141905141908%_
                                                            _%g141906141910%_)))
                                                   (__tmp144959
                                                    (cons _%L141822%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp144960
                                                __tmp144959
                                                _%L141823%_))))
                                        (declare (not safe))
                                        (__find __tmp144961 __tmp144958))))
                            (_%__kont143673143674%_
                             _%L141818%_
                             _%L141819%_
                             _%L141820%_
                             _%L141821%_
                             _%L141822%_
                             _%L141823%_)
                            (_%__match143778143779%_
                             _%e141401141658%_
                             _%hd141402141661%_
                             _%tl141403141663%_
                             _%e141413141690%_
                             _%hd141414141693%_
                             _%tl141415141695%_
                             _%e141416141698%_
                             _%hd141417141701%_
                             _%tl141418141703%_
                             _%e141419141706%_
                             _%hd141420141709%_
                             _%tl141421141711%_
                             _%e141422141714%_
                             _%hd141423141717%_
                             _%tl141424141719%_
                             _%e141425141722%_
                             _%hd141426141725%_
                             _%tl141427141727%_
                             _%e141428141730%_
                             _%hd141429141733%_
                             _%tl141430141735%_
                             _%e141431141738%_
                             _%hd141432141741%_
                             _%tl141433141743%_
                             _%e141434141746%_
                             _%hd141435141749%_
                             _%tl141436141751%_)))
                      (_%__match143778143779%_
                       _%e141401141658%_
                       _%hd141402141661%_
                       _%tl141403141663%_
                       _%e141413141690%_
                       _%hd141414141693%_
                       _%tl141415141695%_
                       _%e141416141698%_
                       _%hd141417141701%_
                       _%tl141418141703%_
                       _%e141419141706%_
                       _%hd141420141709%_
                       _%tl141421141711%_
                       _%e141422141714%_
                       _%hd141423141717%_
                       _%tl141424141719%_
                       _%e141425141722%_
                       _%hd141426141725%_
                       _%tl141427141727%_
                       _%e141428141730%_
                       _%hd141429141733%_
                       _%tl141430141735%_
                       _%e141431141738%_
                       _%hd141432141741%_
                       _%tl141433141743%_
                       _%e141434141746%_
                       _%hd141435141749%_
                       _%tl141436141751%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop141440141783%_
                                           _%target141437141754%_
                                           '()))
                                        (_%__match143778143779%_
                                         _%e141401141658%_
                                         _%hd141402141661%_
                                         _%tl141403141663%_
                                         _%e141413141690%_
                                         _%hd141414141693%_
                                         _%tl141415141695%_
                                         _%e141416141698%_
                                         _%hd141417141701%_
                                         _%tl141418141703%_
                                         _%e141419141706%_
                                         _%hd141420141709%_
                                         _%tl141421141711%_
                                         _%e141422141714%_
                                         _%hd141423141717%_
                                         _%tl141424141719%_
                                         _%e141425141722%_
                                         _%hd141426141725%_
                                         _%tl141427141727%_
                                         _%e141428141730%_
                                         _%hd141429141733%_
                                         _%tl141430141735%_
                                         _%e141431141738%_
                                         _%hd141432141741%_
                                         _%tl141433141743%_
                                         _%e141434141746%_
                                         _%hd141435141749%_
                                         _%tl141436141751%_))
                                    (_%__match143778143779%_
                                     _%e141401141658%_
                                     _%hd141402141661%_
                                     _%tl141403141663%_
                                     _%e141413141690%_
                                     _%hd141414141693%_
                                     _%tl141415141695%_
                                     _%e141416141698%_
                                     _%hd141417141701%_
                                     _%tl141418141703%_
                                     _%e141419141706%_
                                     _%hd141420141709%_
                                     _%tl141421141711%_
                                     _%e141422141714%_
                                     _%hd141423141717%_
                                     _%tl141424141719%_
                                     _%e141425141722%_
                                     _%hd141426141725%_
                                     _%tl141427141727%_
                                     _%e141428141730%_
                                     _%hd141429141733%_
                                     _%tl141430141735%_
                                     _%e141431141738%_
                                     _%hd141432141741%_
                                     _%tl141433141743%_
                                     _%e141434141746%_
                                     _%hd141435141749%_
                                     _%tl141436141751%_))))
                            (_%__match143778143779%_
                             _%e141401141658%_
                             _%hd141402141661%_
                             _%tl141403141663%_
                             _%e141413141690%_
                             _%hd141414141693%_
                             _%tl141415141695%_
                             _%e141416141698%_
                             _%hd141417141701%_
                             _%tl141418141703%_
                             _%e141419141706%_
                             _%hd141420141709%_
                             _%tl141421141711%_
                             _%e141422141714%_
                             _%hd141423141717%_
                             _%tl141424141719%_
                             _%e141425141722%_
                             _%hd141426141725%_
                             _%tl141427141727%_
                             _%e141428141730%_
                             _%hd141429141733%_
                             _%tl141430141735%_
                             _%e141431141738%_
                             _%hd141432141741%_
                             _%tl141433141743%_
                             _%e141434141746%_
                             _%hd141435141749%_
                             _%tl141436141751%_))
                        (_%__match143778143779%_
                         _%e141401141658%_
                         _%hd141402141661%_
                         _%tl141403141663%_
                         _%e141413141690%_
                         _%hd141414141693%_
                         _%tl141415141695%_
                         _%e141416141698%_
                         _%hd141417141701%_
                         _%tl141418141703%_
                         _%e141419141706%_
                         _%hd141420141709%_
                         _%tl141421141711%_
                         _%e141422141714%_
                         _%hd141423141717%_
                         _%tl141424141719%_
                         _%e141425141722%_
                         _%hd141426141725%_
                         _%tl141427141727%_
                         _%e141428141730%_
                         _%hd141429141733%_
                         _%tl141430141735%_
                         _%e141431141738%_
                         _%hd141432141741%_
                         _%tl141433141743%_
                         _%e141434141746%_
                         _%hd141435141749%_
                         _%tl141436141751%_))
                    (_%__match143778143779%_
                     _%e141401141658%_
                     _%hd141402141661%_
                     _%tl141403141663%_
                     _%e141413141690%_
                     _%hd141414141693%_
                     _%tl141415141695%_
                     _%e141416141698%_
                     _%hd141417141701%_
                     _%tl141418141703%_
                     _%e141419141706%_
                     _%hd141420141709%_
                     _%tl141421141711%_
                     _%e141422141714%_
                     _%hd141423141717%_
                     _%tl141424141719%_
                     _%e141425141722%_
                     _%hd141426141725%_
                     _%tl141427141727%_
                     _%e141428141730%_
                     _%hd141429141733%_
                     _%tl141430141735%_
                     _%e141431141738%_
                     _%hd141432141741%_
                     _%tl141433141743%_
                     _%e141434141746%_
                     _%hd141435141749%_
                     _%tl141436141751%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match143778143779%_
                                                     _%e141401141658%_
                                                     _%hd141402141661%_
                                                     _%tl141403141663%_
                                                     _%e141413141690%_
                                                     _%hd141414141693%_
                                                     _%tl141415141695%_
                                                     _%e141416141698%_
                                                     _%hd141417141701%_
                                                     _%tl141418141703%_
                                                     _%e141419141706%_
                                                     _%hd141420141709%_
                                                     _%tl141421141711%_
                                                     _%e141422141714%_
                                                     _%hd141423141717%_
                                                     _%tl141424141719%_
                                                     _%e141425141722%_
                                                     _%hd141426141725%_
                                                     _%tl141427141727%_
                                                     _%e141428141730%_
                                                     _%hd141429141733%_
                                                     _%tl141430141735%_
                                                     _%e141431141738%_
                                                     _%hd141432141741%_
                                                     _%tl141433141743%_
                                                     _%e141434141746%_
                                                     _%hd141435141749%_
                                                     _%tl141436141751%_))))
                                            (_%__match143778143779%_
                                             _%e141401141658%_
                                             _%hd141402141661%_
                                             _%tl141403141663%_
                                             _%e141413141690%_
                                             _%hd141414141693%_
                                             _%tl141415141695%_
                                             _%e141416141698%_
                                             _%hd141417141701%_
                                             _%tl141418141703%_
                                             _%e141419141706%_
                                             _%hd141420141709%_
                                             _%tl141421141711%_
                                             _%e141422141714%_
                                             _%hd141423141717%_
                                             _%tl141424141719%_
                                             _%e141425141722%_
                                             _%hd141426141725%_
                                             _%tl141427141727%_
                                             _%e141428141730%_
                                             _%hd141429141733%_
                                             _%tl141430141735%_
                                             _%e141431141738%_
                                             _%hd141432141741%_
                                             _%tl141433141743%_
                                             _%e141434141746%_
                                             _%hd141435141749%_
                                             _%tl141436141751%_))))
                                    (_%__match143778143779%_
                                     _%e141401141658%_
                                     _%hd141402141661%_
                                     _%tl141403141663%_
                                     _%e141413141690%_
                                     _%hd141414141693%_
                                     _%tl141415141695%_
                                     _%e141416141698%_
                                     _%hd141417141701%_
                                     _%tl141418141703%_
                                     _%e141419141706%_
                                     _%hd141420141709%_
                                     _%tl141421141711%_
                                     _%e141422141714%_
                                     _%hd141423141717%_
                                     _%tl141424141719%_
                                     _%e141425141722%_
                                     _%hd141426141725%_
                                     _%tl141427141727%_
                                     _%e141428141730%_
                                     _%hd141429141733%_
                                     _%tl141430141735%_
                                     _%e141431141738%_
                                     _%hd141432141741%_
                                     _%tl141433141743%_
                                     _%e141434141746%_
                                     _%hd141435141749%_
                                     _%tl141436141751%_))
                                (_%__match143778143779%_
                                 _%e141401141658%_
                                 _%hd141402141661%_
                                 _%tl141403141663%_
                                 _%e141413141690%_
                                 _%hd141414141693%_
                                 _%tl141415141695%_
                                 _%e141416141698%_
                                 _%hd141417141701%_
                                 _%tl141418141703%_
                                 _%e141419141706%_
                                 _%hd141420141709%_
                                 _%tl141421141711%_
                                 _%e141422141714%_
                                 _%hd141423141717%_
                                 _%tl141424141719%_
                                 _%e141425141722%_
                                 _%hd141426141725%_
                                 _%tl141427141727%_
                                 _%e141428141730%_
                                 _%hd141429141733%_
                                 _%tl141430141735%_
                                 _%e141431141738%_
                                 _%hd141432141741%_
                                 _%tl141433141743%_
                                 _%e141434141746%_
                                 _%hd141435141749%_
                                 _%tl141436141751%_))
                            (_%__kont143681143682%_))))
                    (_%__kont143681143682%_))
                (_%__kont143681143682%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont143681143682%_))))
                                            (_%__kont143681143682%_))))
                                    (_%__kont143681143682%_))
                                (_%__kont143681143682%_))))
                        (_%__kont143681143682%_))
                    (_%__kont143681143682%_))
                (_%__kont143681143682%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont143681143682%_))))
                                        (_%__kont143681143682%_))
                                    (_%__kont143681143682%_))
                                (_%__kont143681143682%_))))
                        (_%__kont143681143682%_))))
                (_%__kont143681143682%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop141407141671%_
                                     _%target141404141666%_
                                     '()))))
                               (_%__match143696143697%_
                                (lambda (_%e141353141918%_
                                         _%hd141354141921%_
                                         _%tl141355141923%_
                                         _%__splice143669143670%_
                                         _%target141356141926%_
                                         _%tl141358141928%_)
                                  (letrec ((_%loop141359141931%_
                                            (lambda (_%hd141357141934%_
                                                     _%arg141363141936%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141357141934%_))
                                                  (let ((_%e141360141939%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141357141934%_))))
                                                    (let ((_%lp-tl141362141944%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141360141939%_)))
                                                          (_%lp-hd141361141942%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141360141939%_))))
                                                      (_%loop141359141931%_
                                                       _%lp-tl141362141944%_
                                                       (cons _%lp-hd141361141942%_
                                                             _%arg141363141936%_))))
                                                  (let ((_%arg141364141947%_
                                                         (reverse _%arg141363141936%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141355141923%_))
                                                        (let ((_%e141365141950%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141355141923%_))))
                  (let ((_%tl141367141955%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141365141950%_)))
                        (_%hd141366141953%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141365141950%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141366141953%_))
                        (let ((_%e141368141958%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141366141953%_))))
                          (let ((_%tl141370141963%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141368141958%_)))
                                (_%hd141369141961%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141368141958%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141369141961%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141369141961%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141370141963%_))
                                        (let ((_%e141371141966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141370141963%_))))
                                          (let ((_%tl141373141971%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141371141966%_)))
                                                (_%hd141372141969%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141371141966%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141372141969%_))
                                                (let ((_%e141374141974%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141372141969%_))))
                                                  (let ((_%tl141376141979%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141374141974%_)))
                                                        (_%hd141375141977%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141374141974%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141375141977%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141375141977%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141376141979%_))
                        (let ((_%e141377141982%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141376141979%_))))
                          (let ((_%tl141379141987%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141377141982%_)))
                                (_%hd141378141985%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141377141982%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141379141987%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl141373141971%_))
                                    (let ((_%__splice143671143672%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141373141971%_
                                              '0))))
                                      (let ((_%tl141382141992%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143671143672%_
                                                '1)))
                                            (_%target141380141990%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143671143672%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl141382141992%_))
                                            (letrec ((_%loop141383141995%_
                                                      (lambda (_%hd141381141998%_
                                                               _%xarg141387142000%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd141381141998%_))
                                                            (let ((_%e141384142003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd141381141998%_))))
                      (let ((_%lp-tl141386142008%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141384142003%_)))
                            (_%lp-hd141385142006%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141384142003%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd141385142006%_))
                            (let ((_%e141389142011%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd141385142006%_))))
                              (let ((_%tl141391142016%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141389142011%_)))
                                    (_%hd141390142014%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141389142011%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141390142014%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd141390142014%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141391142016%_))
                                            (let ((_%e141392142019%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141391142016%_))))
                                              (let ((_%tl141394142024%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141392142019%_)))
                                                    (_%hd141393142022%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141392142019%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl141394142024%_))
                                                    (_%loop141383141995%_
                                                     _%lp-tl141386142008%_
                                                     (cons _%hd141393142022%_
                                                           _%xarg141387142000%_))
                                                    (_%__match143708143709%_
                                                     _%e141353141918%_
                                                     _%hd141354141921%_
                                                     _%tl141355141923%_
                                                     _%__splice143669143670%_
                                                     _%target141356141926%_
                                                     _%tl141358141928%_))))
                                            (_%__match143708143709%_
                                             _%e141353141918%_
                                             _%hd141354141921%_
                                             _%tl141355141923%_
                                             _%__splice143669143670%_
                                             _%target141356141926%_
                                             _%tl141358141928%_))
                                        (_%__match143708143709%_
                                         _%e141353141918%_
                                         _%hd141354141921%_
                                         _%tl141355141923%_
                                         _%__splice143669143670%_
                                         _%target141356141926%_
                                         _%tl141358141928%_))
                                    (_%__match143708143709%_
                                     _%e141353141918%_
                                     _%hd141354141921%_
                                     _%tl141355141923%_
                                     _%__splice143669143670%_
                                     _%target141356141926%_
                                     _%tl141358141928%_))))
                            (_%__match143708143709%_
                             _%e141353141918%_
                             _%hd141354141921%_
                             _%tl141355141923%_
                             _%__splice143669143670%_
                             _%target141356141926%_
                             _%tl141358141928%_))))
                    (let ((_%xarg141388142027%_
                           (reverse _%xarg141387142000%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141367141955%_))
                          (let ((_%L142030%_ _%xarg141388142027%_)
                                (_%L142031%_ _%hd141378141985%_)
                                (_%L142032%_ _%arg141364141947%_))
                            (if (and (let ((__tmp144962
                                            (let ((__tmp144963
                                                   (lambda (_%g142060142063%_
                                                            _%g142061142065%_)
                                                     (cons _%g142060142063%_
                                                           _%g142061142065%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp144963
                                               '()
                                               _%L142032%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp144962))
                                     (let ((__tmp144966
                                            (length (let ((__tmp144967
                                                           (lambda (_%g142067142070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142068142072%_)
                     (cons _%g142067142070%_ _%g142068142072%_))))
              (declare (not safe))
              (__foldr1 __tmp144967 '() _%L142032%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp144964
                                            (length (let ((__tmp144965
                                                           (lambda (_%g142074142077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142075142079%_)
                     (cons _%g142074142077%_ _%g142075142079%_))))
              (declare (not safe))
              (__foldr1 __tmp144965 '() _%L142030%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp144966 __tmp144964))
                                     (let ((__tmp144970
                                            (let ((__tmp144971
                                                   (lambda (_%g142081142084%_
                                                            _%g142082142086%_)
                                                     (cons _%g142081142084%_
                                                           _%g142082142086%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp144971
                                               '()
                                               _%L142032%_)))
                                           (__tmp144968
                                            (let ((__tmp144969
                                                   (lambda (_%g142088142091%_
                                                            _%g142089142093%_)
                                                     (cons _%g142088142091%_
                                                           _%g142089142093%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp144969
                                               '()
                                               _%L142030%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp144970
                                        __tmp144968))
                                     (not (let ((__tmp144974
                                                 (lambda (_%g142095142097%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g142095142097%_
                                                      _%L142031%_))))
                                                (__tmp144972
                                                 (let ((__tmp144973
                                                        (lambda (_%g142099142102%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g142100142104%_)
                  (cons _%g142099142102%_ _%g142100142104%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp144973
                                                    '()
                                                    _%L142032%_))))
                                            (declare (not safe))
                                            (__find __tmp144974 __tmp144972))))
                                (_%__kont143667143668%_
                                 _%L142030%_
                                 _%L142031%_
                                 _%L142032%_)
                                (_%__match143708143709%_
                                 _%e141353141918%_
                                 _%hd141354141921%_
                                 _%tl141355141923%_
                                 _%__splice143669143670%_
                                 _%target141356141926%_
                                 _%tl141358141928%_)))
                          (_%__match143708143709%_
                           _%e141353141918%_
                           _%hd141354141921%_
                           _%tl141355141923%_
                           _%__splice143669143670%_
                           _%target141356141926%_
                           _%tl141358141928%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop141383141995%_
                                               _%target141380141990%_
                                               '()))
                                            (_%__match143708143709%_
                                             _%e141353141918%_
                                             _%hd141354141921%_
                                             _%tl141355141923%_
                                             _%__splice143669143670%_
                                             _%target141356141926%_
                                             _%tl141358141928%_))))
                                    (_%__match143708143709%_
                                     _%e141353141918%_
                                     _%hd141354141921%_
                                     _%tl141355141923%_
                                     _%__splice143669143670%_
                                     _%target141356141926%_
                                     _%tl141358141928%_))
                                (_%__match143708143709%_
                                 _%e141353141918%_
                                 _%hd141354141921%_
                                 _%tl141355141923%_
                                 _%__splice143669143670%_
                                 _%target141356141926%_
                                 _%tl141358141928%_))))
                        (_%__match143708143709%_
                         _%e141353141918%_
                         _%hd141354141921%_
                         _%tl141355141923%_
                         _%__splice143669143670%_
                         _%target141356141926%_
                         _%tl141358141928%_))
                    (_%__match143708143709%_
                     _%e141353141918%_
                     _%hd141354141921%_
                     _%tl141355141923%_
                     _%__splice143669143670%_
                     _%target141356141926%_
                     _%tl141358141928%_))
                (_%__match143708143709%_
                 _%e141353141918%_
                 _%hd141354141921%_
                 _%tl141355141923%_
                 _%__splice143669143670%_
                 _%target141356141926%_
                 _%tl141358141928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match143708143709%_
                                                 _%e141353141918%_
                                                 _%hd141354141921%_
                                                 _%tl141355141923%_
                                                 _%__splice143669143670%_
                                                 _%target141356141926%_
                                                 _%tl141358141928%_))))
                                        (_%__match143708143709%_
                                         _%e141353141918%_
                                         _%hd141354141921%_
                                         _%tl141355141923%_
                                         _%__splice143669143670%_
                                         _%target141356141926%_
                                         _%tl141358141928%_))
                                    (_%__match143708143709%_
                                     _%e141353141918%_
                                     _%hd141354141921%_
                                     _%tl141355141923%_
                                     _%__splice143669143670%_
                                     _%target141356141926%_
                                     _%tl141358141928%_))
                                (_%__match143708143709%_
                                 _%e141353141918%_
                                 _%hd141354141921%_
                                 _%tl141355141923%_
                                 _%__splice143669143670%_
                                 _%target141356141926%_
                                 _%tl141358141928%_))))
                        (_%__match143708143709%_
                         _%e141353141918%_
                         _%hd141354141921%_
                         _%tl141355141923%_
                         _%__splice143669143670%_
                         _%target141356141926%_
                         _%tl141358141928%_))))
                (_%__match143708143709%_
                 _%e141353141918%_
                 _%hd141354141921%_
                 _%tl141355141923%_
                 _%__splice143669143670%_
                 _%target141356141926%_
                 _%tl141358141928%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop141359141931%_
                                     _%target141356141926%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx143665143666%_))
                              (let ((_%e141353141918%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx143665143666%_))))
                                (let ((_%tl141355141923%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141353141918%_)))
                                      (_%hd141354141921%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141353141918%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd141354141921%_))
                                      (let ((_%__splice143669143670%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd141354141921%_
                                                '0))))
                                        (let ((_%tl141358141928%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143669143670%_
                                                  '1)))
                                              (_%target141356141926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143669143670%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141358141928%_))
                                              (_%__match143696143697%_
                                               _%e141353141918%_
                                               _%hd141354141921%_
                                               _%tl141355141923%_
                                               _%__splice143669143670%_
                                               _%target141356141926%_
                                               _%tl141358141928%_)
                                              (_%__match143708143709%_
                                               _%e141353141918%_
                                               _%hd141354141921%_
                                               _%tl141355141923%_
                                               _%__splice143669143670%_
                                               _%target141356141926%_
                                               _%tl141358141928%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141355141923%_))
                                          (let ((_%e141468141525%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141355141923%_))))
                                            (let ((_%tl141470141530%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141468141525%_)))
                                                  (_%hd141469141528%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141468141525%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141469141528%_))
                                                  (let ((_%e141471141533%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141469141528%_))))
                                                    (let ((_%tl141473141538%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141471141533%_)))
                                                          (_%hd141472141536%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141471141533%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd141472141536%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd141472141536%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141473141538%_))
                          (let ((_%e141474141541%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141473141538%_))))
                            (let ((_%tl141476141546%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141474141541%_)))
                                  (_%hd141475141544%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141474141541%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd141475141544%_))
                                  (let ((_%e141477141549%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd141475141544%_))))
                                    (let ((_%tl141479141554%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141477141549%_)))
                                          (_%hd141478141552%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141477141549%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd141478141552%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd141478141552%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl141479141554%_))
                                                  (let ((_%e141480141557%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl141479141554%_))))
                                                    (let ((_%tl141482141562%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141480141557%_)))
                                                          (_%hd141481141560%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141480141557%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141482141562%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141476141546%_))
                      (let ((_%e141483141565%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141476141546%_))))
                        (let ((_%tl141485141570%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141483141565%_)))
                              (_%hd141484141568%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141483141565%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd141484141568%_))
                              (let ((_%e141486141573%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd141484141568%_))))
                                (let ((_%tl141488141578%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141486141573%_)))
                                      (_%hd141487141576%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141486141573%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd141487141576%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd141487141576%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141488141578%_))
                                              (let ((_%e141489141581%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141488141578%_))))
                                                (let ((_%tl141491141586%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141489141581%_)))
                                                      (_%hd141490141584%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141489141581%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141491141586%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl141485141570%_))
                                                          (let ((_%e141492141589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl141485141570%_))))
                    (let ((_%tl141494141594%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141492141589%_)))
                          (_%hd141493141592%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141492141589%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd141493141592%_))
                          (let ((_%e141495141597%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd141493141592%_))))
                            (let ((_%tl141497141602%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141495141597%_)))
                                  (_%hd141496141600%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141495141597%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd141496141600%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd141496141600%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141497141602%_))
                                          (let ((_%e141498141605%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141497141602%_))))
                                            (let ((_%tl141500141610%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141498141605%_)))
                                                  (_%hd141499141608%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141498141605%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl141500141610%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141494141594%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141470141530%_))
                                                          (_%__match143806143807%_
                                                           _%e141353141918%_
                                                           _%hd141354141921%_
                                                           _%tl141355141923%_
                                                           _%e141468141525%_
                                                           _%hd141469141528%_
                                                           _%tl141470141530%_
                                                           _%e141471141533%_
                                                           _%hd141472141536%_
                                                           _%tl141473141538%_
                                                           _%e141474141541%_
                                                           _%hd141475141544%_
                                                           _%tl141476141546%_
                                                           _%e141477141549%_
                                                           _%hd141478141552%_
                                                           _%tl141479141554%_
                                                           _%e141480141557%_
                                                           _%hd141481141560%_
                                                           _%tl141482141562%_
                                                           _%e141483141565%_
                                                           _%hd141484141568%_
                                                           _%tl141485141570%_
                                                           _%e141486141573%_
                                                           _%hd141487141576%_
                                                           _%tl141488141578%_
                                                           _%e141489141581%_
                                                           _%hd141490141584%_
                                                           _%tl141491141586%_
                                                           _%e141492141589%_
                                                           _%hd141493141592%_
                                                           _%tl141494141594%_
                                                           _%e141495141597%_
                                                           _%hd141496141600%_
                                                           _%tl141497141602%_
                                                           _%e141498141605%_
                                                           _%hd141499141608%_
                                                           _%tl141500141610%_)
                                                          (_%__kont143681143682%_))
                                                      (_%__kont143681143682%_))
                                                  (_%__kont143681143682%_))))
                                          (_%__kont143681143682%_))
                                      (_%__kont143681143682%_))
                                  (_%__kont143681143682%_))))
                          (_%__kont143681143682%_))))
                  (_%__kont143681143682%_))
              (_%__kont143681143682%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont143681143682%_))
                                          (_%__kont143681143682%_))
                                      (_%__kont143681143682%_))))
                              (_%__kont143681143682%_))))
                      (_%__kont143681143682%_))
                  (_%__kont143681143682%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont143681143682%_))
                                              (_%__kont143681143682%_))
                                          (_%__kont143681143682%_))))
                                  (_%__kont143681143682%_))))
                          (_%__kont143681143682%_))
                      (_%__kont143681143682%_))
                  (_%__kont143681143682%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont143681143682%_))))
                                          (_%__kont143681143682%_)))))
                              (_%__kont143681143682%_)))))))
                 (_%dispatch-case-e140653%_
                  (lambda (_%hd140804%_ _%body140805%_)
                    (let* ((_%form140807%_
                            (cons _%hd140804%_ (cons _%body140805%_ '())))
                           (_%__stx143809143810%_ _%form140807%_)
                           (_%g140811140935%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx143809143810%_)))))
                      (let ((_%__kont143811143812%_
                             (lambda (_%L141306%_ _%L141307%_ _%L141308%_)
                               (let ((__tmp144975
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141307%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140649%_
                                  __tmp144975))))
                            (_%__kont143817143818%_
                             (lambda (_%L141154%_
                                      _%L141155%_
                                      _%L141156%_
                                      _%L141157%_)
                               (let ((__tmp144976
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141154%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140649%_
                                  __tmp144976))))
                            (_%__kont143821143822%_
                             (lambda (_%L141020%_ _%L141021%_ _%L141022%_)
                               (let ((__tmp144977
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141020%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140649%_
                                  __tmp144977)))))
                        (let* ((_%__match143918143919%_
                                (lambda (_%e140901140940%_
                                         _%hd140902140943%_
                                         _%tl140903140945%_
                                         _%e140904140948%_
                                         _%hd140905140951%_
                                         _%tl140906140953%_
                                         _%e140907140956%_
                                         _%hd140908140959%_
                                         _%tl140909140961%_
                                         _%e140910140964%_
                                         _%hd140911140967%_
                                         _%tl140912140969%_
                                         _%e140913140972%_
                                         _%hd140914140975%_
                                         _%tl140915140977%_
                                         _%e140916140980%_
                                         _%hd140917140983%_
                                         _%tl140918140985%_
                                         _%e140919140988%_
                                         _%hd140920140991%_
                                         _%tl140921140993%_
                                         _%e140922140996%_
                                         _%hd140923140999%_
                                         _%tl140924141001%_
                                         _%e140925141004%_
                                         _%hd140926141007%_
                                         _%tl140927141009%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140921140993%_))
                                      (let ((_%e140928141012%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140921140993%_))))
                                        (let ((_%tl140930141017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140928141012%_)))
                                              (_%hd140929141015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140928141012%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140930141017%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl140906140953%_))
                                                  (_%__kont143821143822%_
                                                   _%hd140926141007%_
                                                   _%hd140917140983%_
                                                   _%hd140902140943%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g140811140935%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g140811140935%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g140811140935%_)))))
                               (_%__match143848143849%_
                                (lambda (_%e140862141058%_
                                         _%hd140863141061%_
                                         _%tl140864141063%_
                                         _%__splice143819143820%_
                                         _%target140865141066%_
                                         _%tl140867141068%_)
                                  (letrec ((_%loop140868141071%_
                                            (lambda (_%hd140866141074%_
                                                     _%arg140872141076%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd140866141074%_))
                                                  (let ((_%e140869141079%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd140866141074%_))))
                                                    (let ((_%lp-tl140871141084%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140869141079%_)))
                                                          (_%lp-hd140870141082%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140869141079%_))))
                                                      (_%loop140868141071%_
                                                       _%lp-tl140871141084%_
                                                       (cons _%lp-hd140870141082%_
                                                             _%arg140872141076%_))))
                                                  (let ((_%arg140873141087%_
                                                         (reverse _%arg140872141076%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl140864141063%_))
                                                        (let ((_%e140874141090%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl140864141063%_))))
                  (let ((_%tl140876141095%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140874141090%_)))
                        (_%hd140875141093%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140874141090%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd140875141093%_))
                        (let ((_%e140877141098%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd140875141093%_))))
                          (let ((_%tl140879141103%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140877141098%_)))
                                (_%hd140878141101%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140877141098%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd140878141101%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd140878141101%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140879141103%_))
                                        (let ((_%e140880141106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140879141103%_))))
                                          (let ((_%tl140882141111%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140880141106%_)))
                                                (_%hd140881141109%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140880141106%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd140881141109%_))
                                                (let ((_%e140883141114%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd140881141109%_))))
                                                  (let ((_%tl140885141119%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140883141114%_)))
                                                        (_%hd140884141117%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140883141114%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd140884141117%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd140884141117%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl140885141119%_))
                        (let ((_%e140886141122%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl140885141119%_))))
                          (let ((_%tl140888141127%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140886141122%_)))
                                (_%hd140887141125%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140886141122%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl140888141127%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl140882141111%_))
                                    (let ((_%e140889141130%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl140882141111%_))))
                                      (let ((_%tl140891141135%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e140889141130%_)))
                                            (_%hd140890141133%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e140889141130%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd140890141133%_))
                                            (let ((_%e140892141138%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd140890141133%_))))
                                              (let ((_%tl140894141143%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e140892141138%_)))
                                                    (_%hd140893141141%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e140892141138%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd140893141141%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd140893141141%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl140894141143%_))
                                                            (let ((_%e140895141146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl140894141143%_))))
                      (let ((_%tl140897141151%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140895141146%_)))
                            (_%hd140896141149%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140895141146%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl140897141151%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl140876141095%_))
                                (_%__kont143817143818%_
                                 _%hd140896141149%_
                                 _%hd140887141125%_
                                 _%tl140867141068%_
                                 _%arg140873141087%_)
                                (_%__match143918143919%_
                                 _%e140862141058%_
                                 _%hd140863141061%_
                                 _%tl140864141063%_
                                 _%e140874141090%_
                                 _%hd140875141093%_
                                 _%tl140876141095%_
                                 _%e140877141098%_
                                 _%hd140878141101%_
                                 _%tl140879141103%_
                                 _%e140880141106%_
                                 _%hd140881141109%_
                                 _%tl140882141111%_
                                 _%e140883141114%_
                                 _%hd140884141117%_
                                 _%tl140885141119%_
                                 _%e140886141122%_
                                 _%hd140887141125%_
                                 _%tl140888141127%_
                                 _%e140889141130%_
                                 _%hd140890141133%_
                                 _%tl140891141135%_
                                 _%e140892141138%_
                                 _%hd140893141141%_
                                 _%tl140894141143%_
                                 _%e140895141146%_
                                 _%hd140896141149%_
                                 _%tl140897141151%_))
                            (let ()
                              (declare (not safe))
                              (_%g140811140935%_)))))
                    (let () (declare (not safe)) (_%g140811140935%_)))
                (let () (declare (not safe)) (_%g140811140935%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g140811140935%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g140811140935%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g140811140935%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g140811140935%_)))))
                        (let () (declare (not safe)) (_%g140811140935%_)))
                    (let () (declare (not safe)) (_%g140811140935%_)))
                (let () (declare (not safe)) (_%g140811140935%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g140811140935%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140811140935%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g140811140935%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g140811140935%_)))))
                        (let () (declare (not safe)) (_%g140811140935%_)))))
                (let () (declare (not safe)) (_%g140811140935%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop140868141071%_
                                     _%target140865141066%_
                                     '()))))
                               (_%__match143836143837%_
                                (lambda (_%e140816141194%_
                                         _%hd140817141197%_
                                         _%tl140818141199%_
                                         _%__splice143813143814%_
                                         _%target140819141202%_
                                         _%tl140821141204%_)
                                  (letrec ((_%loop140822141207%_
                                            (lambda (_%hd140820141210%_
                                                     _%arg140826141212%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd140820141210%_))
                                                  (let ((_%e140823141215%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd140820141210%_))))
                                                    (let ((_%lp-tl140825141220%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140823141215%_)))
                                                          (_%lp-hd140824141218%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140823141215%_))))
                                                      (_%loop140822141207%_
                                                       _%lp-tl140825141220%_
                                                       (cons _%lp-hd140824141218%_
                                                             _%arg140826141212%_))))
                                                  (let ((_%arg140827141223%_
                                                         (reverse _%arg140826141212%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl140818141199%_))
                                                        (let ((_%e140828141226%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl140818141199%_))))
                  (let ((_%tl140830141231%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140828141226%_)))
                        (_%hd140829141229%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140828141226%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd140829141229%_))
                        (let ((_%e140831141234%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd140829141229%_))))
                          (let ((_%tl140833141239%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140831141234%_)))
                                (_%hd140832141237%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140831141234%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd140832141237%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd140832141237%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140833141239%_))
                                        (let ((_%e140834141242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140833141239%_))))
                                          (let ((_%tl140836141247%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140834141242%_)))
                                                (_%hd140835141245%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140834141242%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd140835141245%_))
                                                (let ((_%e140837141250%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd140835141245%_))))
                                                  (let ((_%tl140839141255%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140837141250%_)))
                                                        (_%hd140838141253%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140837141250%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd140838141253%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd140838141253%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl140839141255%_))
                        (let ((_%e140840141258%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl140839141255%_))))
                          (let ((_%tl140842141263%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140840141258%_)))
                                (_%hd140841141261%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140840141258%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl140842141263%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl140836141247%_))
                                    (let ((_%__splice143815143816%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl140836141247%_
                                              '0))))
                                      (let ((_%tl140845141268%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143815143816%_
                                                '1)))
                                            (_%target140843141266%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143815143816%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl140845141268%_))
                                            (letrec ((_%loop140846141271%_
                                                      (lambda (_%hd140844141274%_
                                                               _%xarg140850141276%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd140844141274%_))
                                                            (let ((_%e140847141279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd140844141274%_))))
                      (let ((_%lp-tl140849141284%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140847141279%_)))
                            (_%lp-hd140848141282%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140847141279%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd140848141282%_))
                            (let ((_%e140852141287%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd140848141282%_))))
                              (let ((_%tl140854141292%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e140852141287%_)))
                                    (_%hd140853141290%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e140852141287%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd140853141290%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd140853141290%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl140854141292%_))
                                            (let ((_%e140855141295%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl140854141292%_))))
                                              (let ((_%tl140857141300%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e140855141295%_)))
                                                    (_%hd140856141298%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e140855141295%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl140857141300%_))
                                                    (_%loop140846141271%_
                                                     _%lp-tl140849141284%_
                                                     (cons _%hd140856141298%_
                                                           _%xarg140850141276%_))
                                                    (_%__match143848143849%_
                                                     _%e140816141194%_
                                                     _%hd140817141197%_
                                                     _%tl140818141199%_
                                                     _%__splice143813143814%_
                                                     _%target140819141202%_
                                                     _%tl140821141204%_))))
                                            (_%__match143848143849%_
                                             _%e140816141194%_
                                             _%hd140817141197%_
                                             _%tl140818141199%_
                                             _%__splice143813143814%_
                                             _%target140819141202%_
                                             _%tl140821141204%_))
                                        (_%__match143848143849%_
                                         _%e140816141194%_
                                         _%hd140817141197%_
                                         _%tl140818141199%_
                                         _%__splice143813143814%_
                                         _%target140819141202%_
                                         _%tl140821141204%_))
                                    (_%__match143848143849%_
                                     _%e140816141194%_
                                     _%hd140817141197%_
                                     _%tl140818141199%_
                                     _%__splice143813143814%_
                                     _%target140819141202%_
                                     _%tl140821141204%_))))
                            (_%__match143848143849%_
                             _%e140816141194%_
                             _%hd140817141197%_
                             _%tl140818141199%_
                             _%__splice143813143814%_
                             _%target140819141202%_
                             _%tl140821141204%_))))
                    (let ((_%xarg140851141303%_
                           (reverse _%xarg140850141276%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl140830141231%_))
                          (_%__kont143811143812%_
                           _%xarg140851141303%_
                           _%hd140841141261%_
                           _%arg140827141223%_)
                          (_%__match143848143849%_
                           _%e140816141194%_
                           _%hd140817141197%_
                           _%tl140818141199%_
                           _%__splice143813143814%_
                           _%target140819141202%_
                           _%tl140821141204%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop140846141271%_
                                               _%target140843141266%_
                                               '()))
                                            (_%__match143848143849%_
                                             _%e140816141194%_
                                             _%hd140817141197%_
                                             _%tl140818141199%_
                                             _%__splice143813143814%_
                                             _%target140819141202%_
                                             _%tl140821141204%_))))
                                    (_%__match143848143849%_
                                     _%e140816141194%_
                                     _%hd140817141197%_
                                     _%tl140818141199%_
                                     _%__splice143813143814%_
                                     _%target140819141202%_
                                     _%tl140821141204%_))
                                (_%__match143848143849%_
                                 _%e140816141194%_
                                 _%hd140817141197%_
                                 _%tl140818141199%_
                                 _%__splice143813143814%_
                                 _%target140819141202%_
                                 _%tl140821141204%_))))
                        (_%__match143848143849%_
                         _%e140816141194%_
                         _%hd140817141197%_
                         _%tl140818141199%_
                         _%__splice143813143814%_
                         _%target140819141202%_
                         _%tl140821141204%_))
                    (_%__match143848143849%_
                     _%e140816141194%_
                     _%hd140817141197%_
                     _%tl140818141199%_
                     _%__splice143813143814%_
                     _%target140819141202%_
                     _%tl140821141204%_))
                (_%__match143848143849%_
                 _%e140816141194%_
                 _%hd140817141197%_
                 _%tl140818141199%_
                 _%__splice143813143814%_
                 _%target140819141202%_
                 _%tl140821141204%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match143848143849%_
                                                 _%e140816141194%_
                                                 _%hd140817141197%_
                                                 _%tl140818141199%_
                                                 _%__splice143813143814%_
                                                 _%target140819141202%_
                                                 _%tl140821141204%_))))
                                        (_%__match143848143849%_
                                         _%e140816141194%_
                                         _%hd140817141197%_
                                         _%tl140818141199%_
                                         _%__splice143813143814%_
                                         _%target140819141202%_
                                         _%tl140821141204%_))
                                    (_%__match143848143849%_
                                     _%e140816141194%_
                                     _%hd140817141197%_
                                     _%tl140818141199%_
                                     _%__splice143813143814%_
                                     _%target140819141202%_
                                     _%tl140821141204%_))
                                (_%__match143848143849%_
                                 _%e140816141194%_
                                 _%hd140817141197%_
                                 _%tl140818141199%_
                                 _%__splice143813143814%_
                                 _%target140819141202%_
                                 _%tl140821141204%_))))
                        (_%__match143848143849%_
                         _%e140816141194%_
                         _%hd140817141197%_
                         _%tl140818141199%_
                         _%__splice143813143814%_
                         _%target140819141202%_
                         _%tl140821141204%_))))
                (_%__match143848143849%_
                 _%e140816141194%_
                 _%hd140817141197%_
                 _%tl140818141199%_
                 _%__splice143813143814%_
                 _%target140819141202%_
                 _%tl140821141204%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop140822141207%_
                                     _%target140819141202%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx143809143810%_))
                              (let ((_%e140816141194%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx143809143810%_))))
                                (let ((_%tl140818141199%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140816141194%_)))
                                      (_%hd140817141197%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140816141194%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd140817141197%_))
                                      (let ((_%__splice143813143814%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd140817141197%_
                                                '0))))
                                        (let ((_%tl140821141204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143813143814%_
                                                  '1)))
                                              (_%target140819141202%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143813143814%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140821141204%_))
                                              (_%__match143836143837%_
                                               _%e140816141194%_
                                               _%hd140817141197%_
                                               _%tl140818141199%_
                                               _%__splice143813143814%_
                                               _%target140819141202%_
                                               _%tl140821141204%_)
                                              (_%__match143848143849%_
                                               _%e140816141194%_
                                               _%hd140817141197%_
                                               _%tl140818141199%_
                                               _%__splice143813143814%_
                                               _%target140819141202%_
                                               _%tl140821141204%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl140818141199%_))
                                          (let ((_%e140904140948%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl140818141199%_))))
                                            (let ((_%tl140906140953%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e140904140948%_)))
                                                  (_%hd140905140951%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e140904140948%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd140905140951%_))
                                                  (let ((_%e140907140956%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd140905140951%_))))
                                                    (let ((_%tl140909140961%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140907140956%_)))
                                                          (_%hd140908140959%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140907140956%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd140908140959%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd140908140959%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl140909140961%_))
                          (let ((_%e140910140964%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl140909140961%_))))
                            (let ((_%tl140912140969%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140910140964%_)))
                                  (_%hd140911140967%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140910140964%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd140911140967%_))
                                  (let ((_%e140913140972%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd140911140967%_))))
                                    (let ((_%tl140915140977%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140913140972%_)))
                                          (_%hd140914140975%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140913140972%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd140914140975%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd140914140975%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl140915140977%_))
                                                  (let ((_%e140916140980%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl140915140977%_))))
                                                    (let ((_%tl140918140985%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140916140980%_)))
                                                          (_%hd140917140983%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140916140980%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl140918140985%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl140912140969%_))
                      (let ((_%e140919140988%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl140912140969%_))))
                        (let ((_%tl140921140993%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140919140988%_)))
                              (_%hd140920140991%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140919140988%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd140920140991%_))
                              (let ((_%e140922140996%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd140920140991%_))))
                                (let ((_%tl140924141001%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140922140996%_)))
                                      (_%hd140923140999%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140922140996%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd140923140999%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd140923140999%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140924141001%_))
                                              (let ((_%e140925141004%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl140924141001%_))))
                                                (let ((_%tl140927141009%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140925141004%_)))
                                                      (_%hd140926141007%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140925141004%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl140927141009%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl140921140993%_))
                                                          (let ((_%e140928141012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl140921140993%_))))
                    (let ((_%tl140930141017%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140928141012%_)))
                          (_%hd140929141015%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140928141012%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl140930141017%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl140906140953%_))
                              (_%__kont143821143822%_
                               _%hd140926141007%_
                               _%hd140917140983%_
                               _%hd140817141197%_)
                              (let ()
                                (declare (not safe))
                                (_%g140811140935%_)))
                          (let () (declare (not safe)) (_%g140811140935%_)))))
                  (let () (declare (not safe)) (_%g140811140935%_)))
              (let () (declare (not safe)) (_%g140811140935%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g140811140935%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140811140935%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g140811140935%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g140811140935%_)))))
                      (let () (declare (not safe)) (_%g140811140935%_)))
                  (let () (declare (not safe)) (_%g140811140935%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g140811140935%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g140811140935%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140811140935%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g140811140935%_)))))
                          (let () (declare (not safe)) (_%g140811140935%_)))
                      (let () (declare (not safe)) (_%g140811140935%_)))
                  (let () (declare (not safe)) (_%g140811140935%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g140811140935%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140811140935%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g140811140935%_))))))))
                 (_%generate1140654%_
                  (lambda (_%args140789%_
                           _%arglen140790%_
                           _%hd140791%_
                           _%body140792%_)
                    (let* ((_%len140794%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd140791%_)))
                           (_%condition140799%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd140791%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen140790%_
                                                (cons _%len140794%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen140790%_ (cons _%len140794%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len140794%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen140790%_
                                                    (cons _%len140794%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen140790%_ (cons _%len140794%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch140801%_
                            (if (_%dispatch-case?140652%_
                                 _%hd140791%_
                                 _%body140792%_)
                                (_%dispatch-case-e140653%_
                                 _%hd140791%_
                                 _%body140792%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self140649%_
                                 _%hd140791%_
                                 _%body140792%_))))
                      (cons _%condition140799%_
                            (cons (cons 'apply
                                        (cons _%dispatch140801%_
                                              (cons _%args140789%_ '())))
                                  '()))))))
          (let* ((_%g140656140684%_
                  (lambda (_%g140657140681%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140657140681%_))))
                 (_%g140655140786%_
                  (lambda (_%g140657140687%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140657140687%_))
                        (let ((_%e140660140689%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140657140687%_))))
                          (let ((_%hd140661140692%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140660140689%_)))
                                (_%tl140662140694%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140660140689%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl140662140694%_))
                                (let ((_g144978_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl140662140694%_
                                          '0))))
                                  (begin
                                    (let ((_g144979_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g144978_)
                                                 (##vector-length _g144978_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g144979_ 2)))
                                          (error "Context expects 2 values"
                                                 _g144979_)))
                                    (let ((_%target140663140697%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g144978_ 0)))
                                          (_%tl140665140699%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g144978_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140665140699%_))
                                          (letrec ((_%loop140666140702%_
                                                    (lambda (_%hd140664140705%_
                                                             _%body140670140707%_
                                                             _%hd140671140709%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd140664140705%_))
                                                          (let ((_%e140667140712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd140664140705%_))))
                    (let ((_%lp-hd140668140715%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140667140712%_)))
                          (_%lp-tl140669140717%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140667140712%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd140668140715%_))
                          (let ((_%e140674140720%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd140668140715%_))))
                            (let ((_%hd140675140723%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140674140720%_)))
                                  (_%tl140676140725%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140674140720%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl140676140725%_))
                                  (let ((_%e140677140728%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl140676140725%_))))
                                    (let ((_%hd140678140731%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140677140728%_)))
                                          (_%tl140679140733%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140677140728%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140679140733%_))
                                          (_%loop140666140702%_
                                           _%lp-tl140669140717%_
                                           (cons _%hd140678140731%_
                                                 _%body140670140707%_)
                                           (cons _%hd140675140723%_
                                                 _%hd140671140709%_))
                                          (_%g140656140684%_
                                           _%g140657140687%_))))
                                  (_%g140656140684%_ _%g140657140687%_))))
                          (_%g140656140684%_ _%g140657140687%_))))
                  (let ((_%body140672140736%_ (reverse _%body140670140707%_))
                        (_%hd140673140738%_ (reverse _%hd140671140709%_)))
                    ((lambda (_%L140741%_ _%L140742%_)
                       (let ((_%args140761%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen140762%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name140763%_
                              (let ((_%$e140758%_
                                     (let ((__tmp144980
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp144980 _%stx140650%_))))
                                (if _%$e140758%_
                                    _%$e140758%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args140761%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen140762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args140761%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args140761%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp144984
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name140763%_
                                                                (cons _%args140761%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp144981
                                  (map (lambda (_%g140764140767%_
                                                _%g140765140769%_)
                                         (_%generate1140654%_
                                          _%args140761%_
                                          _%arglen140762%_
                                          _%g140764140767%_
                                          _%g140765140769%_))
                                       (let ((__tmp144982
                                              (lambda (_%g140771140774%_
                                                       _%g140772140776%_)
                                                (cons _%g140771140774%_
                                                      _%g140772140776%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp144982
                                          '()
                                          _%L140742%_))
                                       (let ((__tmp144983
                                              (lambda (_%g140778140781%_
                                                       _%g140779140783%_)
                                                (cons _%g140778140781%_
                                                      _%g140779140783%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp144983
                                          '()
                                          _%L140741%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp144984 __tmp144981)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body140672140736%_
                     _%hd140673140738%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop140666140702%_
                                             _%target140663140697%_
                                             '()
                                             '()))
                                          (_%g140656140684%_
                                           _%g140657140687%_)))))
                                (_%g140656140684%_ _%g140657140687%_))))
                        (_%g140656140684%_ _%g140657140687%_)))))
            (_%g140655140786%_ _%stx140650%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self139886%_ _%stx139887%_ _%compiled-body?139888%_)
        (letrec ((_%generate-simple139890%_
                  (lambda (_%hd140634%_ _%body140635%_)
                    (_%coalesce-boolean139891%_
                     (_%simplify-let139892%_
                      (gxc#generate-runtime-simple-let
                       _%self139886%_
                       'let
                       _%hd140634%_
                       _%body140635%_
                       _%compiled-body?139888%_)))))
                 (_%coalesce-boolean139891%_
                  (lambda (_%code140495%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code140496140522%_ _%code140495%_)
                               (_%else140498140530%_
                                (lambda () _%code140495%_))
                               (_%K140500140567%_
                                (lambda (_%expr2140533%_
                                         _%expr1140534%_
                                         _%id140535%_)
                                  (let* ((_%expr2140536140544%_
                                          _%expr2140533%_)
                                         (_%else140538140552%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1140534%_
                                                        (cons _%expr2140533%_
                                                              '())))))
                                         (_%K140540140557%_
                                          (lambda (_%exprs140555%_)
                                            (cons 'or
                                                  (cons _%expr1140534%_
                                                        _%exprs140555%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2140536140544%_))
                                        (let ((_%hd140541140560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2140536140544%_)))
                                              (_%tl140542140562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2140536140544%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd140541140560%_ 'or))
                                              (let ((_%exprs140565%_
                                                     _%tl140542140562%_))
                                                (_%K140540140557%_
                                                 _%exprs140565%_))
                                              (_%else140538140552%_)))
                                        (_%else140538140552%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code140496140522%_))
                              (let ((_%hd140501140570%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code140496140522%_)))
                                    (_%tl140502140572%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code140496140522%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd140501140570%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl140502140572%_))
                                        (let ((_%hd140503140575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl140502140572%_)))
                                              (_%tl140504140577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl140502140572%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd140503140575%_))
                                              (let ((_%hd140515140580%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd140503140575%_)))
                                                    (_%tl140516140582%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd140503140575%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd140515140580%_))
                                                    (let ((_%hd140517140585%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd140515140580%_)))
                                                          (_%tl140518140587%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd140515140580%_))))
                                                      (let ((_%id140590%_
                                                             _%hd140517140585%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl140518140587%_))
                                                            (let ((_%hd140519140592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl140518140587%_)))
                          (_%tl140520140594%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl140518140587%_))))
                      (let ((_%expr1140597%_ _%hd140519140592%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl140520140594%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl140516140582%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl140504140577%_))
                                    (let ((_%hd140505140599%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl140504140577%_)))
                                          (_%tl140506140601%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl140504140577%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd140505140599%_))
                                          (let ((_%hd140507140604%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd140505140599%_)))
                                                (_%tl140508140606%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd140505140599%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd140507140604%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl140508140606%_))
                                                    (let ((_%hd140509140609%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl140508140606%_)))
                                                          (_%tl140510140611%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl140508140606%_))))
                                                      (if ((lambda (_%g140613140615%_)
                                                             (eq? _%g140613140615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id140590%_))
                   _%hd140509140609%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl140510140611%_))
                      (let ((_%hd140511140618%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl140510140611%_)))
                            (_%tl140512140620%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl140510140611%_))))
                        (if ((lambda (_%g140622140624%_)
                               (eq? _%g140622140624%_ _%id140590%_))
                             _%hd140511140618%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl140512140620%_))
                                (let ((_%hd140513140627%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl140512140620%_)))
                                      (_%tl140514140629%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl140512140620%_))))
                                  (let ((_%expr2140632%_ _%hd140513140627%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl140514140629%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl140506140601%_))
                                            (_%K140500140567%_
                                             _%expr2140632%_
                                             _%expr1140597%_
                                             _%id140590%_)
                                            (_%else140498140530%_))
                                        (_%else140498140530%_))))
                                (_%else140498140530%_))
                            (_%else140498140530%_)))
                      (_%else140498140530%_))
                  (_%else140498140530%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else140498140530%_))
                                                (_%else140498140530%_)))
                                          (_%else140498140530%_)))
                                    (_%else140498140530%_))
                                (_%else140498140530%_))
                            (_%else140498140530%_))))
                    (_%else140498140530%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else140498140530%_)))
                                              (_%else140498140530%_)))
                                        (_%else140498140530%_))
                                    (_%else140498140530%_)))
                              (_%else140498140530%_)))
                        _%code140495%_)))
                 (_%simplify-let139892%_
                  (lambda (_%code140194%_)
                    (let* ((_%code140195140267%_ _%code140194%_)
                           (_%else140200140275%_ (lambda () _%code140194%_)))
                      (let ((_%K140259140475%_
                             (lambda (_%expr140473%_) _%expr140473%_))
                            (_%K140242140421%_
                             (lambda (_%body140417%_
                                      _%expr140418%_
                                      _%id140419%_)
                               (cons 'let
                                     (cons (cons (cons _%id140419%_
                                                       (cons _%expr140418%_
                                                             '()))
                                                 '())
                                           _%body140417%_))))
                            (_%K140219140345%_
                             (lambda (_%body140339%_
                                      _%expr2140340%_
                                      _%id2140341%_
                                      _%expr1140342%_
                                      _%id1140343%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1140343%_
                                                       (cons _%expr1140342%_
                                                             '()))
                                                 (cons (cons _%id2140341%_
                                                             (cons _%expr2140340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body140339%_))))
                            (_%K140202140284%_
                             (lambda (_%body140279%_
                                      _%bind140280%_
                                      _%expr1140281%_
                                      _%id1140282%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1140282%_
                                                       (cons _%expr1140281%_
                                                             '()))
                                                 _%bind140280%_)
                                           _%body140279%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code140195140267%_))
                            (let ((_%tl140261140480%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code140195140267%_)))
                                  (_%hd140260140478%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code140195140267%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd140260140478%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl140261140480%_))
                                      (let ((_%tl140263140485%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl140261140480%_)))
                                            (_%hd140262140483%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl140261140480%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%hd140262140483%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tl140263140485%_))
                                                (let ((_%tl140265140490%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl140263140485%_)))
                                                      (_%hd140264140488%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl140263140485%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _%tl140265140490%_))
                                                      (let ((_%expr140493%_
                                                             _%hd140264140488%_))
                                                        (_%K140259140475%_
                                                         _%expr140493%_))
                                                      (_%else140200140275%_)))
                                                (_%else140200140275%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd140262140483%_))
                                                (let ((_%tl140254140436%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd140262140483%_)))
                                                      (_%hd140253140434%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd140262140483%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd140253140434%_))
                                                      (let ((_%tl140256140441%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd140253140434%_)))
                    (_%hd140255140439%_
                     (let () (declare (not safe)) (##car _%hd140253140434%_))))
                (if (let () (declare (not safe)) (##pair? _%tl140256140441%_))
                    (let ((_%tl140258140448%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl140256140441%_)))
                          (_%hd140257140446%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl140256140441%_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl140258140448%_))
                          (if (let ()
                                (declare (not safe))
                                (##null? _%tl140254140436%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl140263140485%_))
                                  (let ((_%tl140248140455%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl140263140485%_)))
                                        (_%hd140247140453%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl140263140485%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%hd140247140453%_))
                                        (let ((_%tl140250140460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd140247140453%_)))
                                              (_%hd140249140458%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd140247140453%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd140249140458%_
                                                       'let))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl140250140460%_))
                                                  (let ((_%tl140252140465%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl140250140460%_)))
                                                        (_%hd140251140463%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl140250140460%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%hd140251140463%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##null? _%tl140248140455%_))
                                                            (let ((_%id140444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd140255140439%_)
                          (_%expr140451%_ _%hd140257140446%_)
                          (_%body140468%_ _%tl140252140465%_))
                      (_%K140242140421%_
                       _%body140468%_
                       _%expr140451%_
                       _%id140444%_))
                    (_%else140200140275%_))
                (if (let () (declare (not safe)) (##pair? _%hd140251140463%_))
                    (let ((_%tl140231140394%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd140251140463%_)))
                          (_%hd140230140392%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd140251140463%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd140230140392%_))
                          (let ((_%tl140233140399%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd140230140392%_)))
                                (_%hd140232140397%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd140230140392%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl140233140399%_))
                                (let ((_%tl140235140406%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl140233140399%_)))
                                      (_%hd140234140404%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl140233140399%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl140235140406%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl140231140394%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl140248140455%_))
                                              (let ((_%id1140368%_
                                                     _%hd140255140439%_)
                                                    (_%expr1140375%_
                                                     _%hd140257140446%_)
                                                    (_%id2140402%_
                                                     _%hd140232140397%_)
                                                    (_%expr2140409%_
                                                     _%hd140234140404%_)
                                                    (_%body140411%_
                                                     _%tl140252140465%_))
                                                (_%K140219140345%_
                                                 _%body140411%_
                                                 _%expr2140409%_
                                                 _%id2140402%_
                                                 _%expr1140375%_
                                                 _%id1140368%_))
                                              (_%else140200140275%_))
                                          (_%else140200140275%_))
                                      (_%else140200140275%_)))
                                (_%else140200140275%_)))
                          (_%else140200140275%_)))
                    (_%else140200140275%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else140200140275%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd140249140458%_
                                                           'let*))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%tl140250140460%_))
                                                      (let ((_%tl140212140328%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl140250140460%_)))
                    (_%hd140211140326%_
                     (let () (declare (not safe)) (##car _%tl140250140460%_))))
                (if (let () (declare (not safe)) (##null? _%tl140248140455%_))
                    (let ((_%id1140307%_ _%hd140255140439%_)
                          (_%expr1140314%_ _%hd140257140446%_)
                          (_%bind140331%_ _%hd140211140326%_)
                          (_%body140333%_ _%tl140212140328%_))
                      (_%K140202140284%_
                       _%body140333%_
                       _%bind140331%_
                       _%expr1140314%_
                       _%id1140307%_))
                    (_%else140200140275%_)))
              (_%else140200140275%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else140200140275%_))))
                                        (_%else140200140275%_)))
                                  (_%else140200140275%_))
                              (_%else140200140275%_))
                          (_%else140200140275%_)))
                    (_%else140200140275%_)))
              (_%else140200140275%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else140200140275%_))))
                                      (_%else140200140275%_))
                                  (_%else140200140275%_)))
                            (_%else140200140275%_))))))
                 (_%generate-values139893%_
                  (lambda (_%hd140007%_ _%body140008%_)
                    (let _%lp140010%_ ((_%rest140012%_ _%hd140007%_)
                                       (_%bind140013%_ '())
                                       (_%check140014%_ '())
                                       (_%post140015%_ '()))
                      (let* ((_%__stx144138144139%_ _%rest140012%_)
                             (_%g140018140029%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144138144139%_)))))
                        (let ((_%__kont144140144141%_
                               (lambda (_%L140056%_ _%L140057%_)
                                 (let* ((_%__stx144094144095%_ _%L140057%_)
                                        (_%g140072140097%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144094144095%_)))))
                                   (let ((_%__kont144096144097%_
                                          (lambda (_%L140170%_ _%L140171%_)
                                            (let ((_%eid140185%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140171%_)))
                                                  (_%expr140186%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139886%_
                                                      _%L140170%_))))
                                              (_%lp140010%_
                                               _%L140056%_
                                               (cons (cons _%eid140185%_
                                                           (cons _%expr140186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind140013%_)
                                               _%check140014%_
                                               _%post140015%_))))
                                         (_%__kont144098144099%_
                                          (lambda (_%L140118%_ _%L140119%_)
                                            (let* ((_%vals140132%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values140134%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals140132%_
                                                     _%L140119%_
                                                     _%L140118%_))
                                                   (_%refs140136%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals140132%_
                                                     _%L140119%_))
                                                   (_%expr140138%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self139886%_
                                                       _%L140118%_))))
                                              (_%lp140010%_
                                               _%L140056%_
                                               (cons (cons _%vals140132%_
                                                           (cons _%expr140138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind140013%_)
                                               (cons _%check-values140134%_
                                                     _%check140014%_)
                                               (cons _%refs140136%_
                                                     _%post140015%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144094144095%_))
                                         (let ((_%e140076140146%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144094144095%_))))
                                           (let ((_%tl140078140151%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140076140146%_)))
                                                 (_%hd140077140149%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140076140146%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd140077140149%_))
                                                 (let ((_%e140079140154%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd140077140149%_))))
                                                   (let ((_%tl140081140159%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140079140154%_)))
                                                         (_%hd140080140157%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140079140154%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140081140159%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140078140151%_))
                     (let ((_%e140082140162%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140078140151%_))))
                       (let ((_%tl140084140167%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140082140162%_)))
                             (_%hd140083140165%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140082140162%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140084140167%_))
                             (_%__kont144096144097%_
                              _%hd140083140165%_
                              _%hd140080140157%_)
                             (let ()
                               (declare (not safe))
                               (_%g140072140097%_)))))
                     (let () (declare (not safe)) (_%g140072140097%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140078140151%_))
                     (let ((_%e140090140110%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140078140151%_))))
                       (let ((_%tl140092140115%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140090140110%_)))
                             (_%hd140091140113%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140090140110%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140092140115%_))
                             (_%__kont144098144099%_
                              _%hd140091140113%_
                              _%hd140077140149%_)
                             (let ()
                               (declare (not safe))
                               (_%g140072140097%_)))))
                     (let () (declare (not safe)) (_%g140072140097%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140078140151%_))
                                                     (let ((_%e140090140110%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140078140151%_))))
                                                       (let ((_%tl140092140115%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140090140110%_)))
                     (_%hd140091140113%_
                      (let () (declare (not safe)) (##car _%e140090140110%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140092140115%_))
                     (_%__kont144098144099%_
                      _%hd140091140113%_
                      _%hd140077140149%_)
                     (let () (declare (not safe)) (_%g140072140097%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140072140097%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g140072140097%_)))))))
                              (_%__kont144142144143%_
                               (lambda ()
                                 (let* ((_%body140036%_
                                         (if _%compiled-body?139888%_
                                             _%body140008%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self139886%_
                                                _%body140008%_))))
                                        (_%body140038%_
                                         (_%generate-values-post139894%_
                                          _%post140015%_
                                          _%body140036%_))
                                        (_%body140040%_
                                         (_%generate-values-check139895%_
                                          _%check140014%_
                                          _%body140038%_)))
                                   (cons 'let
                                         (cons (reverse _%bind140013%_)
                                               (cons _%body140040%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144138144139%_))
                              (let ((_%e140022140048%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144138144139%_))))
                                (let ((_%tl140024140053%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140022140048%_)))
                                      (_%hd140023140051%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140022140048%_))))
                                  (_%__kont144140144141%_
                                   _%tl140024140053%_
                                   _%hd140023140051%_)))
                              (_%__kont144142144143%_)))))))
                 (_%generate-values-post139894%_
                  (lambda (_%post139966%_ _%body139967%_)
                    (let _%lp139969%_ ((_%rest139971%_ _%post139966%_)
                                       (_%body139972%_ _%body139967%_))
                      (let* ((_%rest139973139981%_ _%rest139971%_)
                             (_%else139975139989%_ (lambda () _%body139972%_))
                             (_%K139977139995%_
                              (lambda (_%rest139992%_ _%bind139993%_)
                                (_%lp139969%_
                                 _%rest139992%_
                                 (cons 'let
                                       (cons _%bind139993%_
                                             (cons _%body139972%_ '())))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139973139981%_))
                            (let ((_%hd139978139998%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139973139981%_)))
                                  (_%tl139979140000%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139973139981%_))))
                              (let* ((_%bind140003%_ _%hd139978139998%_)
                                     (_%rest140005%_ _%tl139979140000%_))
                                (_%K139977139995%_
                                 _%rest140005%_
                                 _%bind140003%_)))
                            (_%else139975139989%_))))))
                 (_%generate-values-check139895%_
                  (lambda (_%check139963%_ _%body139964%_)
                    (cons 'begin
                          (let ((__tmp144986 (cons _%body139964%_ '()))
                                (__tmp144985 (reverse _%check139963%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp144986 __tmp144985))))))
          (let* ((_%g139897139914%_
                  (lambda (_%g139898139911%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139898139911%_))))
                 (_%g139896139960%_
                  (lambda (_%g139898139917%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139898139917%_))
                        (let ((_%e139901139919%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139898139917%_))))
                          (let ((_%hd139902139922%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139901139919%_)))
                                (_%tl139903139924%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139901139919%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139903139924%_))
                                (let ((_%e139904139927%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139903139924%_))))
                                  (let ((_%hd139905139930%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139904139927%_)))
                                        (_%tl139906139932%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139904139927%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139906139932%_))
                                        (let ((_%e139907139935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139906139932%_))))
                                          (let ((_%hd139908139938%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139907139935%_)))
                                                (_%tl139909139940%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139907139935%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139909139940%_))
                                                ((lambda (_%L139943%_
                                                          _%L139944%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L139944%_)
                                                       (_%generate-simple139890%_
                                                        _%L139944%_
                                                        _%L139943%_)
                                                       (_%generate-values139893%_
                                                        _%L139944%_
                                                        _%L139943%_)))
                                                 _%hd139908139938%_
                                                 _%hd139905139930%_)
                                                (_%g139897139914%_
                                                 _%g139898139917%_))))
                                        (_%g139897139914%_
                                         _%g139898139917%_))))
                                (_%g139897139914%_ _%g139898139917%_))))
                        (_%g139897139914%_ _%g139898139917%_)))))
            (_%g139896139960%_ _%stx139887%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self140640%_ _%stx140641%_)
        (let ((_%compiled-body?140643%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self140640%_
           _%stx140641%_
           _%compiled-body?140643%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g144988_
        (let ((_g144987_ (let () (declare (not safe)) (##length _g144988_))))
          (cond ((let () (declare (not safe)) (##fx= _g144987_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g144988_))
                ((let () (declare (not safe)) (##fx= _g144987_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g144988_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g144988_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals139780%_ _%hd139781%_)
        (let _%lp139783%_ ((_%rest139785%_ _%hd139781%_)
                           (_%k139786%_ '0)
                           (_%r139787%_ '()))
          (let* ((_%__stx144152144153%_ _%rest139785%_)
                 (_%g139792139809%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx144152144153%_)))))
            (let ((_%__kont144154144155%_
                   (lambda (_%L139872%_)
                     (_%lp139783%_
                      _%L139872%_
                      (let () (declare (not safe)) (##fx+ _%k139786%_ '1))
                      _%r139787%_)))
                  (_%__kont144156144157%_
                   (lambda (_%L139845%_ _%L139846%_)
                     (_%lp139783%_
                      _%L139845%_
                      (let () (declare (not safe)) (##fx+ _%k139786%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L139846%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals139780%_
                                         _%k139786%_
                                         _%L139845%_)
                                        '()))
                            _%r139787%_))))
                  (_%__kont144158144159%_
                   (lambda (_%L139821%_)
                     (let ((__tmp144989
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L139821%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals139780%_
                                               _%k139786%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp144989 _%r139787%_))))
                  (_%__kont144160144161%_ (lambda () (reverse _%r139787%_))))
              (let ((_%g139790139832%_
                     (lambda ()
                       (let ((_%L139821%_ _%__stx144152144153%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L139821%_))
                             (_%__kont144158144159%_ _%L139821%_)
                             (_%__kont144160144161%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx144152144153%_))
                    (let ((_%e139795139861%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx144152144153%_))))
                      (let ((_%tl139797139866%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139795139861%_)))
                            (_%hd139796139864%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139795139861%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd139796139864%_))
                            (let ((_%e139798139869%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd139796139864%_))))
                              (if (equal? _%e139798139869%_ '#f)
                                  (_%__kont144154144155%_ _%tl139797139866%_)
                                  (_%__kont144156144157%_
                                   _%tl139797139866%_
                                   _%hd139796139864%_)))
                            (_%__kont144156144157%_
                             _%tl139797139866%_
                             _%hd139796139864%_))))
                    (let () (declare (not safe)) (_%g139790139832%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self139459%_ _%stx139460%_ _%compiled-body?139461%_)
        (letrec ((_%generate-simple139463%_
                  (lambda (_%hd139765%_ _%body139766%_)
                    (gxc#generate-runtime-simple-let
                     _%self139459%_
                     'letrec
                     _%hd139765%_
                     _%body139766%_
                     _%compiled-body?139461%_)))
                 (_%generate-values139464%_
                  (lambda (_%hd139544%_ _%body139545%_)
                    (let _%lp139547%_ ((_%rest139549%_ _%hd139544%_)
                                       (_%bind139550%_ '())
                                       (_%check139551%_ '())
                                       (_%post139552%_ '()))
                      (let* ((_%__stx144226144227%_ _%rest139549%_)
                             (_%g139555139566%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144226144227%_)))))
                        (let ((_%__kont144228144229%_
                               (lambda (_%L139593%_ _%L139594%_)
                                 (let* ((_%__stx144182144183%_ _%L139594%_)
                                        (_%g139609139634%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144182144183%_)))))
                                   (let ((_%__kont144184144185%_
                                          (lambda (_%L139741%_ _%L139742%_)
                                            (let ((_%eid139756%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L139742%_)))
                                                  (_%expr139757%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139459%_
                                                      _%L139741%_))))
                                              (_%lp139547%_
                                               _%L139593%_
                                               (cons (cons _%eid139756%_
                                                           (cons _%expr139757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind139550%_)
                                               _%check139551%_
                                               _%post139552%_))))
                                         (_%__kont144186144187%_
                                          (lambda (_%L139655%_ _%L139656%_)
                                            (let* ((_%vals139669%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values139671%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals139669%_
                                                     _%L139656%_
                                                     _%L139655%_))
                                                   (_%refs139673%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals139669%_
                                                     _%L139656%_))
                                                   (_%expr139675%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self139459%_
                                                       _%L139655%_))))
                                              (_%lp139547%_
                                               _%L139593%_
                                               (let ((__tmp144991
                                                      (cons (cons _%vals139669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr139675%_ '()))
                    _%bind139550%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp144990
                                                      (map (lambda (_%e139677139679%_)
                                                             (let* ((_%g139681139690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e139677139679%_)
                            (_%E139683139694%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g139681139690%_
                                        '([eid _])))
                               '#!void))
                            (_%K139684139699%_
                             (lambda (_%eid139697%_)
                               (cons _%eid139697%_ (cons '#!void '())))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g139681139690%_))
                           (let ((_%hd139685139702%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g139681139690%_)))
                                 (_%tl139686139704%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g139681139690%_))))
                             (let ((_%eid139707%_ _%hd139685139702%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _%tl139686139704%_))
                                   (let ((_%tl139688139709%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl139686139704%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _%tl139688139709%_))
                                         (_%K139684139699%_ _%eid139707%_)
                                         (_%E139683139694%_)))
                                   (_%E139683139694%_))))
                           (_%E139683139694%_))))
                   _%refs139673%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp144991
                                                  __tmp144990))
                                               (cons _%check-values139671%_
                                                     _%check139551%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs139673%_
                                                  _%post139552%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144182144183%_))
                                         (let ((_%e139613139717%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144182144183%_))))
                                           (let ((_%tl139615139722%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e139613139717%_)))
                                                 (_%hd139614139720%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e139613139717%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd139614139720%_))
                                                 (let ((_%e139616139725%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd139614139720%_))))
                                                   (let ((_%tl139618139730%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139616139725%_)))
                                                         (_%hd139617139728%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139616139725%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl139618139730%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl139615139722%_))
                     (let ((_%e139619139733%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139615139722%_))))
                       (let ((_%tl139621139738%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139619139733%_)))
                             (_%hd139620139736%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139619139733%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139621139738%_))
                             (_%__kont144184144185%_
                              _%hd139620139736%_
                              _%hd139617139728%_)
                             (let ()
                               (declare (not safe))
                               (_%g139609139634%_)))))
                     (let () (declare (not safe)) (_%g139609139634%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl139615139722%_))
                     (let ((_%e139627139647%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139615139722%_))))
                       (let ((_%tl139629139652%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139627139647%_)))
                             (_%hd139628139650%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139627139647%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139629139652%_))
                             (_%__kont144186144187%_
                              _%hd139628139650%_
                              _%hd139614139720%_)
                             (let ()
                               (declare (not safe))
                               (_%g139609139634%_)))))
                     (let () (declare (not safe)) (_%g139609139634%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl139615139722%_))
                                                     (let ((_%e139627139647%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl139615139722%_))))
                                                       (let ((_%tl139629139652%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e139627139647%_)))
                     (_%hd139628139650%_
                      (let () (declare (not safe)) (##car _%e139627139647%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl139629139652%_))
                     (_%__kont144186144187%_
                      _%hd139628139650%_
                      _%hd139614139720%_)
                     (let () (declare (not safe)) (_%g139609139634%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g139609139634%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g139609139634%_)))))))
                              (_%__kont144230144231%_
                               (lambda ()
                                 (let* ((_%body139573%_
                                         (if _%compiled-body?139461%_
                                             _%body139545%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self139459%_
                                                _%body139545%_))))
                                        (_%body139575%_
                                         (_%generate-values-post139466%_
                                          _%post139552%_
                                          _%body139573%_))
                                        (_%body139577%_
                                         (_%generate-values-check139465%_
                                          _%check139551%_
                                          _%body139575%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind139550%_)
                                               (cons _%body139577%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144226144227%_))
                              (let ((_%e139559139585%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144226144227%_))))
                                (let ((_%tl139561139590%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139559139585%_)))
                                      (_%hd139560139588%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139559139585%_))))
                                  (_%__kont144228144229%_
                                   _%tl139561139590%_
                                   _%hd139560139588%_)))
                              (_%__kont144230144231%_)))))))
                 (_%generate-values-check139465%_
                  (lambda (_%check139541%_ _%body139542%_)
                    (cons 'begin
                          (let ((__tmp144993 (cons _%body139542%_ '()))
                                (__tmp144992 (reverse _%check139541%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp144993 __tmp144992)))))
                 (_%generate-values-post139466%_
                  (lambda (_%post139534%_ _%body139535%_)
                    (cons 'begin
                          (let ((__tmp144997 (cons _%body139535%_ '()))
                                (__tmp144994
                                 (let ((__tmp144996
                                        (lambda (_%g139536139538%_)
                                          (cons 'set! _%g139536139538%_)))
                                       (__tmp144995 (reverse _%post139534%_)))
                                   (declare (not safe))
                                   (##map __tmp144996 __tmp144995))))
                            (declare (not safe))
                            (__foldr1 cons __tmp144997 __tmp144994))))))
          (let* ((_%g139468139485%_
                  (lambda (_%g139469139482%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139469139482%_))))
                 (_%g139467139531%_
                  (lambda (_%g139469139488%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139469139488%_))
                        (let ((_%e139472139490%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139469139488%_))))
                          (let ((_%hd139473139493%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139472139490%_)))
                                (_%tl139474139495%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139472139490%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139474139495%_))
                                (let ((_%e139475139498%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139474139495%_))))
                                  (let ((_%hd139476139501%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139475139498%_)))
                                        (_%tl139477139503%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139475139498%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139477139503%_))
                                        (let ((_%e139478139506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139477139503%_))))
                                          (let ((_%hd139479139509%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139478139506%_)))
                                                (_%tl139480139511%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139478139506%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139480139511%_))
                                                ((lambda (_%L139514%_
                                                          _%L139515%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L139515%_)
                                                       (_%generate-simple139463%_
                                                        _%L139515%_
                                                        _%L139514%_)
                                                       (_%generate-values139464%_
                                                        _%L139515%_
                                                        _%L139514%_)))
                                                 _%hd139479139509%_
                                                 _%hd139476139501%_)
                                                (_%g139468139485%_
                                                 _%g139469139488%_))))
                                        (_%g139468139485%_
                                         _%g139469139488%_))))
                                (_%g139468139485%_ _%g139469139488%_))))
                        (_%g139468139485%_ _%g139469139488%_)))))
            (_%g139467139531%_ _%stx139460%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self139771%_ _%stx139772%_)
        (let ((_%compiled-body?139774%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self139771%_
           _%stx139772%_
           _%compiled-body?139774%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g144999_
        (let ((_g144998_ (let () (declare (not safe)) (##length _g144999_))))
          (cond ((let () (declare (not safe)) (##fx= _g144998_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g144999_))
                ((let () (declare (not safe)) (##fx= _g144998_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g144999_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g144999_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self139040%_ _%stx139041%_)
        (letrec ((_%generate-values139043%_
                  (lambda (_%hd139286%_ _%body139287%_)
                    (let _%lp139289%_ ((_%rest139291%_ _%hd139286%_)
                                       (_%bind139292%_ '()))
                      (let* ((_%rest139293139301%_ _%rest139291%_)
                             (_%else139295139312%_
                              (lambda ()
                                (let ((_%bind139309%_ (reverse _%bind139292%_))
                                      (_%body139310%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self139040%_
                                          _%body139287%_))))
                                  (cons 'letrec*
                                        (cons _%bind139309%_
                                              (cons _%body139310%_ '()))))))
                             (_%K139297139446%_
                              (lambda (_%rest139315%_ _%hd-bind139316%_)
                                (let* ((_%__stx144240144241%_
                                        _%hd-bind139316%_)
                                       (_%g139319139344%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx144240144241%_)))))
                                  (let ((_%__kont144242144243%_
                                         (lambda (_%L139425%_ _%L139426%_)
                                           (let ((_%eid139440%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L139426%_)))
                                                 (_%expr139441%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self139040%_
                                                     _%L139425%_))))
                                             (_%lp139289%_
                                              _%rest139315%_
                                              (cons (cons _%eid139440%_
                                                          (cons _%expr139441%_
                                                                '()))
                                                    _%bind139292%_)))))
                                        (_%__kont144244144245%_
                                         (lambda (_%L139365%_ _%L139366%_)
                                           (let* ((_%vals139385%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp139387%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values139389%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp139387%_
                                                    _%L139366%_
                                                    _%L139365%_))
                                                  (_%refs139391%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals139385%_
                                                    _%L139366%_))
                                                  (_%expr139393%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139040%_
                                                      _%L139365%_))))
                                             (_%lp139289%_
                                              _%rest139315%_
                                              (let ((__tmp145000
                                                     (cons (cons _%vals139385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp139387%_
                                                       (cons _%expr139393%_
                                                             '()))
                                                 '())
                                           (cons _%check-values139389%_
                                                 (cons _%tmp139387%_ '()))))
                               '()))
                   _%bind139292%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp145000
                                                 _%refs139391%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx144240144241%_))
                                        (let ((_%e139323139401%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx144240144241%_))))
                                          (let ((_%tl139325139406%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139323139401%_)))
                                                (_%hd139324139404%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139323139401%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd139324139404%_))
                                                (let ((_%e139326139409%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd139324139404%_))))
                                                  (let ((_%tl139328139414%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139326139409%_)))
                                                        (_%hd139327139412%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139326139409%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139328139414%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl139325139406%_))
                                                            (let ((_%e139329139417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl139325139406%_))))
                      (let ((_%tl139331139422%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139329139417%_)))
                            (_%hd139330139420%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139329139417%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl139331139422%_))
                            (_%__kont144242144243%_
                             _%hd139330139420%_
                             _%hd139327139412%_)
                            (let ()
                              (declare (not safe))
                              (_%g139319139344%_)))))
                    (let () (declare (not safe)) (_%g139319139344%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl139325139406%_))
                    (let ((_%e139337139357%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl139325139406%_))))
                      (let ((_%tl139339139362%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139337139357%_)))
                            (_%hd139338139360%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139337139357%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl139339139362%_))
                            (_%__kont144244144245%_
                             _%hd139338139360%_
                             _%hd139324139404%_)
                            (let ()
                              (declare (not safe))
                              (_%g139319139344%_)))))
                    (let () (declare (not safe)) (_%g139319139344%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl139325139406%_))
                                                    (let ((_%e139337139357%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl139325139406%_))))
                                                      (let ((_%tl139339139362%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e139337139357%_)))
                    (_%hd139338139360%_
                     (let () (declare (not safe)) (##car _%e139337139357%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl139339139362%_))
                    (_%__kont144244144245%_
                     _%hd139338139360%_
                     _%hd139324139404%_)
                    (let () (declare (not safe)) (_%g139319139344%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g139319139344%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139319139344%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139293139301%_))
                            (let ((_%hd139298139449%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139293139301%_)))
                                  (_%tl139299139451%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139293139301%_))))
                              (let* ((_%hd-bind139454%_ _%hd139298139449%_)
                                     (_%rest139456%_ _%tl139299139451%_))
                                (_%K139297139446%_
                                 _%rest139456%_
                                 _%hd-bind139454%_)))
                            (_%else139295139312%_))))))
                 (_%generate-letrec?139044%_
                  (lambda (_%hd139176%_)
                    (let _%lp139178%_ ((_%rest139180%_ _%hd139176%_))
                      (let* ((_%rest139181139189%_ _%rest139180%_)
                             (_%else139183139197%_ (lambda () '#t))
                             (_%K139185139274%_
                              (lambda (_%rest139200%_ _%hd-bind139201%_)
                                (let* ((_%g139203139220%_
                                        (lambda (_%g139204139217%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g139204139217%_))))
                                       (_%g139202139271%_
                                        (lambda (_%g139204139223%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g139204139223%_))
                                              (let ((_%e139207139225%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g139204139223%_))))
                                                (let ((_%hd139208139228%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139207139225%_)))
                                                      (_%tl139209139230%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139207139225%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd139208139228%_))
                                                      (let ((_%e139210139233%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd139208139228%_))))
                (let ((_%hd139211139236%_
                       (let () (declare (not safe)) (##car _%e139210139233%_)))
                      (_%tl139212139238%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139210139233%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139212139238%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl139209139230%_))
                          (let ((_%e139213139241%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl139209139230%_))))
                            (let ((_%hd139214139244%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139213139241%_)))
                                  (_%tl139215139246%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139213139241%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl139215139246%_))
                                  ((lambda (_%L139249%_ _%L139250%_)
                                     (if (_%is-lambda-expr?139045%_
                                          _%L139249%_)
                                         (_%lp139178%_ _%rest139200%_)
                                         '#f))
                                   _%hd139214139244%_
                                   _%hd139211139236%_)
                                  (_%g139203139220%_ _%g139204139223%_))))
                          (_%g139203139220%_ _%g139204139223%_))
                      (_%g139203139220%_ _%g139204139223%_))))
              (_%g139203139220%_ _%g139204139223%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139203139220%_
                                               _%g139204139223%_)))))
                                  (_%g139202139271%_ _%hd-bind139201%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139181139189%_))
                            (let ((_%hd139186139277%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139181139189%_)))
                                  (_%tl139187139279%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139181139189%_))))
                              (let* ((_%hd-bind139282%_ _%hd139186139277%_)
                                     (_%rest139284%_ _%tl139187139279%_))
                                (_%K139185139274%_
                                 _%rest139284%_
                                 _%hd-bind139282%_)))
                            (_%else139183139197%_))))))
                 (_%is-lambda-expr?139045%_
                  (lambda (_%expr139113%_)
                    (let* ((_%__stx144284144285%_ _%expr139113%_)
                           (_%g139116139130%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144284144285%_)))))
                      (let ((_%__kont144286144287%_
                             (lambda (_%L139158%_ _%L139159%_) '#t))
                            (_%__kont144288144289%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx144284144285%_))
                            (let ((_%e139120139142%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx144284144285%_))))
                              (let ((_%tl139122139147%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e139120139142%_)))
                                    (_%hd139121139145%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e139120139142%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd139121139145%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd139121139145%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl139122139147%_))
                                            (let ((_%e139123139150%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl139122139147%_))))
                                              (let ((_%tl139125139155%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e139123139150%_)))
                                                    (_%hd139124139153%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e139123139150%_))))
                                                (_%__kont144286144287%_
                                                 _%tl139125139155%_
                                                 _%hd139124139153%_)))
                                            (_%__kont144288144289%_))
                                        (_%__kont144288144289%_))
                                    (_%__kont144288144289%_))))
                            (_%__kont144288144289%_)))))))
          (let* ((_%g139047139064%_
                  (lambda (_%g139048139061%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139048139061%_))))
                 (_%g139046139110%_
                  (lambda (_%g139048139067%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139048139067%_))
                        (let ((_%e139051139069%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139048139067%_))))
                          (let ((_%hd139052139072%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139051139069%_)))
                                (_%tl139053139074%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139051139069%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139053139074%_))
                                (let ((_%e139054139077%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139053139074%_))))
                                  (let ((_%hd139055139080%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139054139077%_)))
                                        (_%tl139056139082%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139054139077%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139056139082%_))
                                        (let ((_%e139057139085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139056139082%_))))
                                          (let ((_%hd139058139088%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139057139085%_)))
                                                (_%tl139059139090%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139057139085%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139059139090%_))
                                                ((lambda (_%L139093%_
                                                          _%L139094%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L139094%_)
                                                       (if (_%generate-letrec?139044%_
                                                            _%L139094%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self139040%_
                                                            'letrec
                                                            _%L139094%_
                                                            _%L139093%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self139040%_
                                                            'letrec*
                                                            _%L139094%_
                                                            _%L139093%_
                                                            '#f))
                                                       (_%generate-values139043%_
                                                        _%L139094%_
                                                        _%L139093%_)))
                                                 _%hd139058139088%_
                                                 _%hd139055139080%_)
                                                (_%g139047139064%_
                                                 _%g139048139067%_))))
                                        (_%g139047139064%_
                                         _%g139048139067%_))))
                                (_%g139047139064%_ _%g139048139067%_))))
                        (_%g139047139064%_ _%g139048139067%_)))))
            (_%g139046139110%_ _%stx139041%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd138977%_)
        (let _%lp138979%_ ((_%rest138981%_ _%hd138977%_))
          (let* ((_%rest138982138998%_ _%rest138981%_)
                 (_%else138985139006%_ (lambda () '#f)))
            (let ((_%K138988139019%_
                   (lambda (_%rest139017%_) (_%lp138979%_ _%rest139017%_)))
                  (_%K138987139011%_ (lambda () '#t)))
              (let ((_%try-match138984139014%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest138982138998%_))
                           (_%K138987139011%_)
                           (_%else138985139006%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest138982138998%_))
                    (let ((_%tl138990139024%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest138982138998%_)))
                          (_%hd138989139022%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest138982138998%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd138989139022%_))
                          (let ((_%tl138992139029%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd138989139022%_)))
                                (_%hd138991139027%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd138989139022%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd138991139027%_))
                                (let ((_%tl138996139032%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd138991139027%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl138996139032%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl138992139029%_))
                                          (let ((_%tl138994139035%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl138992139029%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl138994139035%_))
                                                (let ((_%rest139038%_
                                                       _%tl138990139024%_))
                                                  (_%lp138979%_
                                                   _%rest139038%_))
                                                (_%else138985139006%_)))
                                          (_%else138985139006%_))
                                      (_%else138985139006%_)))
                                (_%else138985139006%_)))
                          (_%else138985139006%_)))
                    (_%try-match138984139014%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self138888%_
               _%form138889%_
               _%hd138890%_
               _%body138891%_
               _%compiled-body?138892%_)
        (letrec ((_%generate1138894%_
                  (lambda (_%bind138933%_)
                    (let* ((_%bind138934138945%_ _%bind138933%_)
                           (_%E138936138949%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind138934138945%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K138937138955%_
                            (lambda (_%expr138952%_ _%id138953%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id138953%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self138888%_
                                             _%expr138952%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind138934138945%_))
                          (let ((_%hd138938138958%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind138934138945%_)))
                                (_%tl138939138960%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind138934138945%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd138938138958%_))
                                (let ((_%hd138942138963%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd138938138958%_)))
                                      (_%tl138943138965%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd138938138958%_))))
                                  (let ((_%id138968%_ _%hd138942138963%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl138943138965%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl138939138960%_))
                                            (let ((_%hd138940138970%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl138939138960%_)))
                                                  (_%tl138941138972%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl138939138960%_))))
                                              (let ((_%expr138975%_
                                                     _%hd138940138970%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl138941138972%_))
                                                    (_%K138937138955%_
                                                     _%expr138975%_
                                                     _%id138968%_)
                                                    (_%E138936138949%_))))
                                            (_%E138936138949%_))
                                        (_%E138936138949%_))))
                                (_%E138936138949%_)))
                          (_%E138936138949%_))))))
          (let* ((_%bind138896%_ (map _%generate1138894%_ _%hd138890%_))
                 (_%body138898%_
                  (if _%compiled-body?138892%_
                      _%body138891%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self138888%_ _%body138891%_))))
                 (_%body138930%_
                  (let* ((_%body138899138907%_ _%body138898%_)
                         (_%else138901138915%_
                          (lambda () (cons _%body138898%_ '())))
                         (_%K138903138920%_
                          (lambda (_%exprs138918%_) _%exprs138918%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body138899138907%_))
                        (let ((_%hd138904138923%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body138899138907%_)))
                              (_%tl138905138925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body138899138907%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd138904138923%_ 'begin))
                              (let ((_%exprs138928%_ _%tl138905138925%_))
                                (_%K138903138920%_ _%exprs138928%_))
                              (_%else138901138915%_)))
                        (_%else138901138915%_)))))
            (cons _%form138889%_ (cons _%bind138896%_ _%body138930%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self138788%_ _%stx138789%_)
        (letrec ((_%generate1138791%_
                  (lambda (_%datum138843%_)
                    (if (or (null? _%datum138843%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum138843%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum138843%_))
                            (eof-object? _%datum138843%_))
                        _%datum138843%_
                        (if (uninterned-symbol? _%datum138843%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum138843%_
                               '#t))
                            (if (pair? _%datum138843%_)
                                (cons (_%generate1138791%_
                                       (car _%datum138843%_))
                                      (_%generate1138791%_
                                       (cdr _%datum138843%_)))
                                (if (box? _%datum138843%_)
                                    (box (_%generate1138791%_
                                          (unbox _%datum138843%_)))
                                    (if (vector? _%datum138843%_)
                                        (vector-map
                                         _%generate1138791%_
                                         _%datum138843%_)
                                        (if (or (s8vector? _%datum138843%_)
                                                (u8vector? _%datum138843%_)
                                                (s16vector? _%datum138843%_)
                                                (u16vector? _%datum138843%_)
                                                (s32vector? _%datum138843%_)
                                                (u32vector? _%datum138843%_)
                                                (s64vector? _%datum138843%_)
                                                (u64vector? _%datum138843%_)
                                                (f32vector? _%datum138843%_)
                                                (f64vector? _%datum138843%_))
                                            _%datum138843%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx138789%_)))))))))))
          (let* ((_%g138793138806%_
                  (lambda (_%g138794138803%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138794138803%_))))
                 (_%g138792138840%_
                  (lambda (_%g138794138809%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138794138809%_))
                        (let ((_%e138796138811%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138794138809%_))))
                          (let ((_%hd138797138814%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138796138811%_)))
                                (_%tl138798138816%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138796138811%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138798138816%_))
                                (let ((_%e138799138819%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138798138816%_))))
                                  (let ((_%hd138800138822%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138799138819%_)))
                                        (_%tl138801138824%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138799138819%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138801138824%_))
                                        ((lambda (_%L138827%_)
                                           (cons 'quote
                                                 (cons (_%generate1138791%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L138827%_)))
                                                       '())))
                                         _%hd138800138822%_)
                                        (_%g138793138806%_
                                         _%g138794138809%_))))
                                (_%g138793138806%_ _%g138794138809%_))))
                        (_%g138793138806%_ _%g138794138809%_)))))
            (_%g138792138840%_ _%stx138789%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self138229%_ _%stx138230%_)
        (letrec ((_%compile-call138232%_
                  (lambda (_%rator138521%_ _%rands138522%_)
                    (let ((_%rator138528%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self138229%_
                              _%rator138521%_)))
                          (_%rands138529%_
                           (map (lambda (_%g138523138525%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self138229%_
                                     _%g138523138525%_)))
                                _%rands138522%_)))
                      (let* ((_%__stx144331144332%_ _%rator138528%_)
                             (_%g138532138584%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144331144332%_)))))
                        (let ((_%__kont144333144334%_
                               (lambda (_%L138708%_
                                        _%L138709%_
                                        _%L138710%_
                                        _%L138711%_)
                                 (if (let ((__tmp145003
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands138529%_)))
                                           (__tmp145001
                                            (length (let ((__tmp145002
                                                           (lambda (_%g138747138750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g138748138752%_)
                     (cons _%g138747138750%_ _%g138748138752%_))))
              (declare (not safe))
              (__foldr1 __tmp145002 '() _%L138710%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145003 __tmp145001))
                                     (let* ((_%id138755%_ _%L138711%_)
                                            (_%args138764%_
                                             (let ((__tmp145004
                                                    (lambda (_%g138756138759%_
                                                             _%g138757138761%_)
                                                      (cons _%g138756138759%_
                                                            _%g138757138761%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145004
                                                '()
                                                _%L138710%_)))
                                            (_%body138773%_
                                             (let ((__tmp145005
                                                    (lambda (_%g138765138768%_
                                                             _%g138766138770%_)
                                                      (cons _%g138765138768%_
                                                            _%g138766138770%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145005
                                                '()
                                                _%L138709%_)))
                                            (_%init138775%_
                                             (map list
                                                  _%args138764%_
                                                  _%rands138529%_)))
                                       (cons 'let
                                             (cons _%id138755%_
                                                   (cons _%init138775%_
                                                         _%body138773%_))))
                                     (let ((__tmp145006
                                            (let ((__tmp145007
                                                   (lambda (_%g138777138780%_
                                                            _%g138778138782%_)
                                                     (cons _%g138777138780%_
                                                           _%g138778138782%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145007
                                               '()
                                               _%L138710%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx138230%_
                                        __tmp145006
                                        _%rands138529%_)))))
                              (_%__kont144339144340%_
                               (lambda ()
                                 (cons _%rator138528%_ _%rands138529%_))))
                          (let ((_%__match144398144399%_
                                 (lambda (_%e138538138596%_
                                          _%hd138539138599%_
                                          _%tl138540138601%_
                                          _%e138541138604%_
                                          _%hd138542138607%_
                                          _%tl138543138609%_
                                          _%e138544138612%_
                                          _%hd138545138615%_
                                          _%tl138546138617%_
                                          _%e138547138620%_
                                          _%hd138548138623%_
                                          _%tl138549138625%_
                                          _%e138550138628%_
                                          _%hd138551138631%_
                                          _%tl138552138633%_
                                          _%e138553138636%_
                                          _%hd138554138639%_
                                          _%tl138555138641%_
                                          _%e138556138644%_
                                          _%hd138557138647%_
                                          _%tl138558138649%_
                                          _%__splice144335144336%_
                                          _%target138559138652%_
                                          _%tl138561138654%_)
                                   (letrec ((_%loop138562138657%_
                                             (lambda (_%hd138560138660%_
                                                      _%arg138566138662%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd138560138660%_))
                                                   (let ((_%e138563138665%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd138560138660%_))))
                                                     (let ((_%lp-tl138565138670%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e138563138665%_)))
                                                           (_%lp-hd138564138668%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e138563138665%_))))
                                                       (_%loop138562138657%_
                                                        _%lp-tl138565138670%_
                                                        (cons _%lp-hd138564138668%_
                                                              _%arg138566138662%_))))
                                                   (let ((_%arg138567138673%_
                                                          (reverse _%arg138566138662%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl138558138649%_))
                                                         (let ((_%__splice144337144338%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl138558138649%_ '0))))
                   (let ((_%tl138570138678%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice144337144338%_ '1)))
                         (_%target138568138676%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice144337144338%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl138570138678%_))
                         (letrec ((_%loop138571138681%_
                                   (lambda (_%hd138569138684%_
                                            _%body138575138686%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd138569138684%_))
                                         (let ((_%e138572138689%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd138569138684%_))))
                                           (let ((_%lp-tl138574138694%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e138572138689%_)))
                                                 (_%lp-hd138573138692%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e138572138689%_))))
                                             (_%loop138571138681%_
                                              _%lp-tl138574138694%_
                                              (cons _%lp-hd138573138692%_
                                                    _%body138575138686%_))))
                                         (let ((_%body138576138697%_
                                                (reverse _%body138575138686%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl138552138633%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl138546138617%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl138543138609%_))
                                                       (let ((_%e138577138700%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl138543138609%_))))
                 (let ((_%tl138579138705%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e138577138700%_)))
                       (_%hd138578138703%_
                        (let ()
                          (declare (not safe))
                          (##car _%e138577138700%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl138579138705%_))
                       (let ((_%L138708%_ _%hd138578138703%_)
                             (_%L138709%_ _%body138576138697%_)
                             (_%L138710%_ _%arg138567138673%_)
                             (_%L138711%_ _%hd138548138623%_))
                         (if (eq? _%L138711%_ _%L138708%_)
                             (_%__kont144333144334%_
                              _%L138708%_
                              _%L138709%_
                              _%L138710%_
                              _%L138711%_)
                             (_%__kont144339144340%_)))
                       (_%__kont144339144340%_))))
               (_%__kont144339144340%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont144339144340%_))
                                               (_%__kont144339144340%_)))))))
                           (_%loop138571138681%_ _%target138568138676%_ '()))
                         (_%__kont144339144340%_))))
                 (_%__kont144339144340%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop138562138657%_
                                      _%target138559138652%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx144331144332%_))
                                (let ((_%e138538138596%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx144331144332%_))))
                                  (let ((_%tl138540138601%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138538138596%_)))
                                        (_%hd138539138599%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138538138596%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd138539138599%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd138539138599%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138540138601%_))
                                                (let ((_%e138541138604%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138540138601%_))))
                                                  (let ((_%tl138543138609%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138541138604%_)))
                                                        (_%hd138542138607%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138541138604%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd138542138607%_))
                                                        (let ((_%e138544138612%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd138542138607%_))))
                  (let ((_%tl138546138617%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138544138612%_)))
                        (_%hd138545138615%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138544138612%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd138545138615%_))
                        (let ((_%e138547138620%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd138545138615%_))))
                          (let ((_%tl138549138625%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138547138620%_)))
                                (_%hd138548138623%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138547138620%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138549138625%_))
                                (let ((_%e138550138628%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138549138625%_))))
                                  (let ((_%tl138552138633%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138550138628%_)))
                                        (_%hd138551138631%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138550138628%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd138551138631%_))
                                        (let ((_%e138553138636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd138551138631%_))))
                                          (let ((_%tl138555138641%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138553138636%_)))
                                                (_%hd138554138639%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138553138636%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd138554138639%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd138554138639%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl138555138641%_))
                                                        (let ((_%e138556138644%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl138555138641%_))))
                  (let ((_%tl138558138649%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138556138644%_)))
                        (_%hd138557138647%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138556138644%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd138557138647%_))
                        (let ((_%__splice144335144336%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd138557138647%_
                                  '0))))
                          (let ((_%tl138561138654%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice144335144336%_ '1)))
                                (_%target138559138652%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice144335144336%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl138561138654%_))
                                (_%__match144398144399%_
                                 _%e138538138596%_
                                 _%hd138539138599%_
                                 _%tl138540138601%_
                                 _%e138541138604%_
                                 _%hd138542138607%_
                                 _%tl138543138609%_
                                 _%e138544138612%_
                                 _%hd138545138615%_
                                 _%tl138546138617%_
                                 _%e138547138620%_
                                 _%hd138548138623%_
                                 _%tl138549138625%_
                                 _%e138550138628%_
                                 _%hd138551138631%_
                                 _%tl138552138633%_
                                 _%e138553138636%_
                                 _%hd138554138639%_
                                 _%tl138555138641%_
                                 _%e138556138644%_
                                 _%hd138557138647%_
                                 _%tl138558138649%_
                                 _%__splice144335144336%_
                                 _%target138559138652%_
                                 _%tl138561138654%_)
                                (_%__kont144339144340%_))))
                        (_%__kont144339144340%_))))
                (_%__kont144339144340%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144339144340%_))
                                                (_%__kont144339144340%_))))
                                        (_%__kont144339144340%_))))
                                (_%__kont144339144340%_))))
                        (_%__kont144339144340%_))))
                (_%__kont144339144340%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont144339144340%_))
                                            (_%__kont144339144340%_))
                                        (_%__kont144339144340%_))))
                                (_%__kont144339144340%_)))))))))
          (let* ((_%g138234138257%_
                  (lambda (_%g138235138254%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138235138254%_))))
                 (_%g138233138518%_
                  (lambda (_%g138235138260%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138235138260%_))
                        (let ((_%e138238138262%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138235138260%_))))
                          (let ((_%hd138239138265%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138238138262%_)))
                                (_%tl138240138267%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138238138262%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138240138267%_))
                                (let ((_%e138241138270%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138240138267%_))))
                                  (let ((_%hd138242138273%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138241138270%_)))
                                        (_%tl138243138275%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138241138270%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl138243138275%_))
                                        (let ((_g145008_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl138243138275%_
                                                  '0))))
                                          (begin
                                            (let ((_g145009_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g145008_)
                                                         (##vector-length
                                                          _g145008_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g145009_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g145009_)))
                                            (let ((_%target138244138278%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145008_
                                                      0)))
                                                  (_%tl138246138280%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145008_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl138246138280%_))
                                                  (letrec ((_%loop138247138283%_
                                                            (lambda (_%hd138245138286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand138251138288%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd138245138286%_))
                          (let ((_%e138248138291%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd138245138286%_))))
                            (let ((_%lp-hd138249138294%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138248138291%_)))
                                  (_%lp-tl138250138296%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138248138291%_))))
                              (_%loop138247138283%_
                               _%lp-tl138250138296%_
                               (cons _%lp-hd138249138294%_
                                     _%rand138251138288%_))))
                          (let ((_%rand138252138299%_
                                 (reverse _%rand138251138288%_)))
                            ((lambda (_%L138302%_ _%L138303%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call138232%_
                                    _%L138303%_
                                    (let ((__tmp145010
                                           (lambda (_%g138320138323%_
                                                    _%g138321138325%_)
                                             (cons _%g138320138323%_
                                                   _%g138321138325%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp145010 '() _%L138302%_)))
                                   (let* ((_%__stx144447144448%_ _%L138303%_)
                                          (_%g138329138341%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx144447144448%_)))))
                                     (let ((_%__kont144449144450%_
                                            (lambda ()
                                              (let ((_%f138378%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self138229%_
                                                        _%L138303%_))))
                                                (if (and (let ((__tmp145011
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f138378%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp145011))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f138378%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp138380%_ ((_%rest138383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp145013
                                                (lambda (_%g138500138503%_
                                                         _%g138501138505%_)
                                                  (cons _%g138500138503%_
                                                        _%g138501138505%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp145013
                                            '()
                                            _%L138302%_))))
                               (_%bind138385%_ '())
                               (_%args138386%_ '()))
              (let* ((_%rest138387138395%_ _%rest138383%_)
                     (_%else138389138403%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind138385%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f138378%_
                                                      _%args138386%_)
                                                '()))))))
                     (_%K138391138489%_
                      (lambda (_%rest138406%_ _%e138407%_)
                        (let* ((_%__stx144401144402%_ _%e138407%_)
                               (_%g138412138430%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx144401144402%_)))))
                          (let ((_%__kont144403144404%_
                                 (lambda ()
                                   (_%lp138380%_
                                    _%rest138406%_
                                    _%bind138385%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e138407%_))
                                          _%args138386%_))))
                                (_%__kont144405144406%_
                                 (lambda ()
                                   (_%lp138380%_
                                    _%rest138406%_
                                    _%bind138385%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e138407%_))
                                          _%args138386%_))))
                                (_%__kont144407144408%_
                                 (lambda ()
                                   (let ((_%tmp138437%_
                                          (let ((__tmp145012
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp145012))))
                                     (_%lp138380%_
                                      _%rest138406%_
                                      (cons (cons _%tmp138437%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e138407%_))
                                                        '()))
                                            _%bind138385%_)
                                      (cons _%tmp138437%_ _%args138386%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx144401144402%_))
                                (let ((_%e138414138468%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx144401144402%_))))
                                  (let ((_%tl138416138473%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138414138468%_)))
                                        (_%hd138415138471%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138414138468%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd138415138471%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd138415138471%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138416138473%_))
                                                (let ((_%e138417138476%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138416138473%_))))
                                                  (let ((_%tl138419138481%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138417138476%_)))
                                                        (_%hd138418138479%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138417138476%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl138419138481%_))
                                                        (_%__kont144403144404%_)
                                                        (_%__kont144407144408%_))))
                                                (_%__kont144407144408%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd138415138471%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl138416138473%_))
                                                    (let ((_%e138423138453%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl138416138473%_))))
                                                      (let ((_%tl138425138458%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e138423138453%_)))
                    (_%hd138424138456%_
                     (let () (declare (not safe)) (##car _%e138423138453%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl138425138458%_))
                    (_%__kont144405144406%_)
                    (_%__kont144407144408%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144407144408%_))
                                                (_%__kont144407144408%_)))
                                        (_%__kont144407144408%_))))
                                (_%__kont144407144408%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest138387138395%_))
                    (let ((_%hd138392138492%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest138387138395%_)))
                          (_%tl138393138494%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest138387138395%_))))
                      (let* ((_%e138497%_ _%hd138392138492%_)
                             (_%rest138499%_ _%tl138393138494%_))
                        (_%K138391138489%_ _%rest138499%_ _%e138497%_)))
                    (_%else138389138403%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call138232%_
                                                     _%L138303%_
                                                     (let ((__tmp145014
                                                            (lambda (_%g138507138510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g138508138512%_)
                      (cons _%g138507138510%_ _%g138508138512%_))))
               (declare (not safe))
               (__foldr1 __tmp145014 '() _%L138302%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont144451144452%_
                                            (lambda ()
                                              (_%compile-call138232%_
                                               _%L138303%_
                                               (let ((__tmp145015
                                                      (lambda (_%g138347138350%_
                                                               _%g138348138352%_)
                                                        (cons _%g138347138350%_
                                                              _%g138348138352%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp145015
                                                  '()
                                                  _%L138302%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx144447144448%_))
                                           (let ((_%e138331138360%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx144447144448%_))))
                                             (let ((_%tl138333138365%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e138331138360%_)))
                                                   (_%hd138332138363%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e138331138360%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd138332138363%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd138332138363%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl138333138365%_))
                                                           (let ((_%e138334138368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl138333138365%_))))
                     (let ((_%tl138336138373%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e138334138368%_)))
                           (_%hd138335138371%_
                            (let ()
                              (declare (not safe))
                              (##car _%e138334138368%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl138336138373%_))
                           (_%__kont144449144450%_)
                           (_%__kont144451144452%_))))
                   (_%__kont144451144452%_))
               (_%__kont144451144452%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont144451144452%_))))
                                           (_%__kont144451144452%_))))))
                             _%rand138252138299%_
                             _%hd138242138273%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop138247138283%_
                                                     _%target138244138278%_
                                                     '()))
                                                  (_%g138234138257%_
                                                   _%g138235138260%_)))))
                                        (_%g138234138257%_
                                         _%g138235138260%_))))
                                (_%g138234138257%_ _%g138235138260%_))))
                        (_%g138234138257%_ _%g138235138260%_)))))
            (_%g138233138518%_ _%stx138230%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self137972%_ _%stx137973%_)
        (let* ((_%__stx144519144520%_ _%stx137973%_)
               (_%g137976138005%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144519144520%_)))))
          (let ((_%__kont144521144522%_
                 (lambda (_%L138073%_ _%L138074%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self137972%_
                        _%stx137973%_)
                       (let ((_%f138096%_
                              (let ((__tmp145016
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L138074%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self137972%_
                                 __tmp145016))))
                         (let _%lp138098%_ ((_%rest138101%_
                                             (reverse (let ((__tmp145018
                                                             (lambda (_%g138218138221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g138219138223%_)
                       (cons _%g138218138221%_ _%g138219138223%_))))
                (declare (not safe))
                (__foldr1 __tmp145018 '() _%L138073%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind138103%_ '())
                                            (_%args138104%_ '()))
                           (let* ((_%rest138105138113%_ _%rest138101%_)
                                  (_%else138107138121%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind138103%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f138096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args138104%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K138109138207%_
                                   (lambda (_%rest138124%_ _%e138125%_)
                                     (let* ((_%__stx144473144474%_ _%e138125%_)
                                            (_%g138130138148%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx144473144474%_)))))
                                       (let ((_%__kont144475144476%_
                                              (lambda ()
                                                (_%lp138098%_
                                                 _%rest138124%_
                                                 _%bind138103%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e138125%_))
                                                       _%args138104%_))))
                                             (_%__kont144477144478%_
                                              (lambda ()
                                                (_%lp138098%_
                                                 _%rest138124%_
                                                 _%bind138103%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e138125%_))
                                                       _%args138104%_))))
                                             (_%__kont144479144480%_
                                              (lambda ()
                                                (let ((_%tmp138155%_
                                                       (let ((__tmp145017
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp145017))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp138098%_
                                                   _%rest138124%_
                                                   (cons (cons _%tmp138155%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e138125%_))
                             '()))
                 _%bind138103%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp138155%_
                                                         _%args138104%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx144473144474%_))
                                             (let ((_%e138132138186%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx144473144474%_))))
                                               (let ((_%tl138134138191%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e138132138186%_)))
                                                     (_%hd138133138189%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e138132138186%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd138133138189%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd138133138189%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl138134138191%_))
                     (let ((_%e138135138194%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl138134138191%_))))
                       (let ((_%tl138137138199%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e138135138194%_)))
                             (_%hd138136138197%_
                              (let ()
                                (declare (not safe))
                                (##car _%e138135138194%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl138137138199%_))
                             (_%__kont144475144476%_)
                             (_%__kont144479144480%_))))
                     (_%__kont144479144480%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd138133138189%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl138134138191%_))
                         (let ((_%e138141138171%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl138134138191%_))))
                           (let ((_%tl138143138176%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e138141138171%_)))
                                 (_%hd138142138174%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e138141138171%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl138143138176%_))
                                 (_%__kont144477144478%_)
                                 (_%__kont144479144480%_))))
                         (_%__kont144479144480%_))
                     (_%__kont144479144480%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144479144480%_))))
                                             (_%__kont144479144480%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest138105138113%_))
                                 (let ((_%hd138110138210%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest138105138113%_)))
                                       (_%tl138111138212%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest138105138113%_))))
                                   (let* ((_%e138215%_ _%hd138110138210%_)
                                          (_%rest138217%_ _%tl138111138212%_))
                                     (_%K138109138207%_
                                      _%rest138217%_
                                      _%e138215%_)))
                                 (_%else138107138121%_))))))))
                (_%__kont144525144526%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self137972%_ _%stx137973%_))))
            (let ((_%__match144564144565%_
                   (lambda (_%e137980138017%_
                            _%hd137981138020%_
                            _%tl137982138022%_
                            _%e137983138025%_
                            _%hd137984138028%_
                            _%tl137985138030%_
                            _%e137986138033%_
                            _%hd137987138036%_
                            _%tl137988138038%_
                            _%e137989138041%_
                            _%hd137990138044%_
                            _%tl137991138046%_
                            _%__splice144523144524%_
                            _%target137992138049%_
                            _%tl137994138051%_)
                     (letrec ((_%loop137995138054%_
                               (lambda (_%hd137993138057%_
                                        _%rand137999138059%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd137993138057%_))
                                     (let ((_%e137996138062%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd137993138057%_))))
                                       (let ((_%lp-tl137998138067%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e137996138062%_)))
                                             (_%lp-hd137997138065%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e137996138062%_))))
                                         (_%loop137995138054%_
                                          _%lp-tl137998138067%_
                                          (cons _%lp-hd137997138065%_
                                                _%rand137999138059%_))))
                                     (let ((_%rand138000138070%_
                                            (reverse _%rand137999138059%_)))
                                       (_%__kont144521144522%_
                                        _%rand138000138070%_
                                        _%hd137990138044%_))))))
                       (_%loop137995138054%_ _%target137992138049%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144519144520%_))
                  (let ((_%e137980138017%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144519144520%_))))
                    (let ((_%tl137982138022%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e137980138017%_)))
                          (_%hd137981138020%_
                           (let ()
                             (declare (not safe))
                             (##car _%e137980138017%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl137982138022%_))
                          (let ((_%e137983138025%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl137982138022%_))))
                            (let ((_%tl137985138030%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e137983138025%_)))
                                  (_%hd137984138028%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e137983138025%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd137984138028%_))
                                  (let ((_%e137986138033%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd137984138028%_))))
                                    (let ((_%tl137988138038%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e137986138033%_)))
                                          (_%hd137987138036%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e137986138033%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd137987138036%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd137987138036%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl137988138038%_))
                                                  (let ((_%e137989138041%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl137988138038%_))))
                                                    (let ((_%tl137991138046%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e137989138041%_)))
                                                          (_%hd137990138044%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e137989138041%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl137991138046%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl137985138030%_))
                      (let ((_%__splice144523144524%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl137985138030%_
                                '0))))
                        (let ((_%tl137994138051%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144523144524%_ '1)))
                              (_%target137992138049%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144523144524%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl137994138051%_))
                              (_%__match144564144565%_
                               _%e137980138017%_
                               _%hd137981138020%_
                               _%tl137982138022%_
                               _%e137983138025%_
                               _%hd137984138028%_
                               _%tl137985138030%_
                               _%e137986138033%_
                               _%hd137987138036%_
                               _%tl137988138038%_
                               _%e137989138041%_
                               _%hd137990138044%_
                               _%tl137991138046%_
                               _%__splice144523144524%_
                               _%target137992138049%_
                               _%tl137994138051%_)
                              (_%__kont144525144526%_))))
                      (_%__kont144525144526%_))
                  (_%__kont144525144526%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144525144526%_))
                                              (_%__kont144525144526%_))
                                          (_%__kont144525144526%_))))
                                  (_%__kont144525144526%_))))
                          (_%__kont144525144526%_))))
                  (_%__kont144525144526%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self137784%_ _%stx137785%_)
        (letrec ((_%simplify137787%_
                  (lambda (_%code137872%_)
                    (let* ((_%code137873137891%_ _%code137872%_)
                           (_%else137875137899%_ (lambda () _%code137872%_))
                           (_%K137877137935%_
                            (lambda (_%expr137902%_ _%test137903%_)
                              (let* ((_%expr137904137912%_ _%expr137902%_)
                                     (_%else137906137920%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test137903%_
                                                    (cons _%expr137902%_
                                                          '())))))
                                     (_%K137908137925%_
                                      (lambda (_%exprs137923%_)
                                        (cons 'and
                                              (cons _%test137903%_
                                                    _%exprs137923%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr137904137912%_))
                                    (let ((_%hd137909137928%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr137904137912%_)))
                                          (_%tl137910137930%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr137904137912%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd137909137928%_ 'and))
                                          (let ((_%exprs137933%_
                                                 _%tl137910137930%_))
                                            (_%K137908137925%_
                                             _%exprs137933%_))
                                          (_%else137906137920%_)))
                                    (_%else137906137920%_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code137873137891%_))
                          (let ((_%hd137878137938%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code137873137891%_)))
                                (_%tl137879137940%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code137873137891%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd137878137938%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl137879137940%_))
                                    (let ((_%hd137880137943%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl137879137940%_)))
                                          (_%tl137881137945%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl137879137940%_))))
                                      (let ((_%test137948%_
                                             _%hd137880137943%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl137881137945%_))
                                            (let ((_%hd137882137950%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl137881137945%_)))
                                                  (_%tl137883137952%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl137881137945%_))))
                                              (let ((_%expr137955%_
                                                     _%hd137882137950%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl137883137952%_))
                                                    (let ((_%hd137884137957%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl137883137952%_)))
                                                          (_%tl137885137959%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl137883137952%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd137884137957%_))
                                                          (let ((_%hd137886137962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd137884137957%_)))
                        (_%tl137887137964%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd137884137957%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd137886137962%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl137887137964%_))
                            (let ((_%hd137888137967%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl137887137964%_)))
                                  (_%tl137889137969%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl137887137964%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd137888137967%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl137889137969%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl137885137959%_))
                                          (_%K137877137935%_
                                           _%expr137955%_
                                           _%test137948%_)
                                          (_%else137875137899%_))
                                      (_%else137875137899%_))
                                  (_%else137875137899%_)))
                            (_%else137875137899%_))
                        (_%else137875137899%_)))
                  (_%else137875137899%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else137875137899%_))))
                                            (_%else137875137899%_))))
                                    (_%else137875137899%_))
                                (_%else137875137899%_)))
                          (_%else137875137899%_))))))
          (let* ((_%g137789137810%_
                  (lambda (_%g137790137807%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137790137807%_))))
                 (_%g137788137869%_
                  (lambda (_%g137790137813%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137790137813%_))
                        (let ((_%e137794137815%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137790137813%_))))
                          (let ((_%hd137795137818%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137794137815%_)))
                                (_%tl137796137820%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137794137815%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl137796137820%_))
                                (let ((_%e137797137823%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl137796137820%_))))
                                  (let ((_%hd137798137826%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137797137823%_)))
                                        (_%tl137799137828%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137797137823%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl137799137828%_))
                                        (let ((_%e137800137831%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl137799137828%_))))
                                          (let ((_%hd137801137834%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137800137831%_)))
                                                (_%tl137802137836%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137800137831%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl137802137836%_))
                                                (let ((_%e137803137839%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl137802137836%_))))
                                                  (let ((_%hd137804137842%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e137803137839%_)))
                                                        (_%tl137805137844%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e137803137839%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl137805137844%_))
                                                        ((lambda (_%L137847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L137848%_
                          _%L137849%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify137787%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self137784%_
                                       _%L137849%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self137784%_
                                             _%L137848%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self137784%_
                                                   _%L137847%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp145019
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self137784%_
                                               _%L137849%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp145019
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137784%_
                                            _%L137848%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self137784%_
                                                  _%L137847%_))
                                               '()))))))
                 _%hd137804137842%_
                 _%hd137801137834%_
                 _%hd137798137826%_)
                (_%g137789137810%_ _%g137790137813%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g137789137810%_
                                                 _%g137790137813%_))))
                                        (_%g137789137810%_
                                         _%g137790137813%_))))
                                (_%g137789137810%_ _%g137790137813%_))))
                        (_%g137789137810%_ _%g137790137813%_)))))
            (_%g137788137869%_ _%stx137785%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self137732%_ _%stx137733%_)
        (let* ((_%g137735137748%_
                (lambda (_%g137736137745%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137736137745%_))))
               (_%g137734137781%_
                (lambda (_%g137736137751%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137736137751%_))
                      (let ((_%e137738137753%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137736137751%_))))
                        (let ((_%hd137739137756%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137738137753%_)))
                              (_%tl137740137758%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137738137753%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137740137758%_))
                              (let ((_%e137741137761%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137740137758%_))))
                                (let ((_%hd137742137764%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137741137761%_)))
                                      (_%tl137743137766%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137741137761%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl137743137766%_))
                                      ((lambda (_%L137769%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L137769%_)))
                                       _%hd137742137764%_)
                                      (_%g137735137748%_ _%g137736137751%_))))
                              (_%g137735137748%_ _%g137736137751%_))))
                      (_%g137735137748%_ _%g137736137751%_)))))
          (_%g137734137781%_ _%stx137733%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self137664%_ _%stx137665%_)
        (let* ((_%g137667137684%_
                (lambda (_%g137668137681%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137668137681%_))))
               (_%g137666137729%_
                (lambda (_%g137668137687%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137668137687%_))
                      (let ((_%e137671137689%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137668137687%_))))
                        (let ((_%hd137672137692%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137671137689%_)))
                              (_%tl137673137694%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137671137689%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137673137694%_))
                              (let ((_%e137674137697%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137673137694%_))))
                                (let ((_%hd137675137700%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137674137697%_)))
                                      (_%tl137676137702%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137674137697%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137676137702%_))
                                      (let ((_%e137677137705%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137676137702%_))))
                                        (let ((_%hd137678137708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137677137705%_)))
                                              (_%tl137679137710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137677137705%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137679137710%_))
                                              ((lambda (_%L137713%_
                                                        _%L137714%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L137714%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self137664%_ _%L137713%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137678137708%_
                                               _%hd137675137700%_)
                                              (_%g137667137684%_
                                               _%g137668137687%_))))
                                      (_%g137667137684%_ _%g137668137687%_))))
                              (_%g137667137684%_ _%g137668137687%_))))
                      (_%g137667137684%_ _%g137668137687%_)))))
          (_%g137666137729%_ _%stx137665%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self137475%_ _%stx137476%_)
        (let* ((_%g137478137495%_
                (lambda (_%g137479137492%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137479137492%_))))
               (_%g137477137661%_
                (lambda (_%g137479137498%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137479137498%_))
                      (let ((_%e137482137500%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137479137498%_))))
                        (let ((_%hd137483137503%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137482137500%_)))
                              (_%tl137484137505%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137482137500%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137484137505%_))
                              (let ((_%e137485137508%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137484137505%_))))
                                (let ((_%hd137486137511%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137485137508%_)))
                                      (_%tl137487137513%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137485137508%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137487137513%_))
                                      (let ((_%e137488137516%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137487137513%_))))
                                        (let ((_%hd137489137519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137488137516%_)))
                                              (_%tl137490137521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137488137516%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137490137521%_))
                                              ((lambda (_%L137524%_
                                                        _%L137525%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self137475%_ _%L137524%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self137475%_ _%L137525%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp137540%_ ((_%rest137543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L137525%_ (cons _%L137524%_ '())))
                                (_%bind137545%_ '())
                                (_%args137546%_ '()))
               (let* ((_%rest137547137555%_ _%rest137543%_)
                      (_%else137549137563%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind137545%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args137546%_)
                                                 '()))))))
                      (_%K137551137649%_
                       (lambda (_%rest137566%_ _%e137567%_)
                         (let* ((_%__stx144567144568%_ _%e137567%_)
                                (_%g137572137590%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx144567144568%_)))))
                           (let ((_%__kont144569144570%_
                                  (lambda ()
                                    (_%lp137540%_
                                     _%rest137566%_
                                     _%bind137545%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e137567%_))
                                           _%args137546%_))))
                                 (_%__kont144571144572%_
                                  (lambda ()
                                    (_%lp137540%_
                                     _%rest137566%_
                                     _%bind137545%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e137567%_))
                                           _%args137546%_))))
                                 (_%__kont144573144574%_
                                  (lambda ()
                                    (let ((_%tmp137597%_
                                           (let ((__tmp145020
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145020))))
                                      (_%lp137540%_
                                       _%rest137566%_
                                       (cons (cons _%tmp137597%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137567%_))
                                                         '()))
                                             _%bind137545%_)
                                       (cons _%tmp137597%_ _%args137546%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx144567144568%_))
                                 (let ((_%e137574137628%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx144567144568%_))))
                                   (let ((_%tl137576137633%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e137574137628%_)))
                                         (_%hd137575137631%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e137574137628%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd137575137631%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd137575137631%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl137576137633%_))
                                                 (let ((_%e137577137636%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl137576137633%_))))
                                                   (let ((_%tl137579137641%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137577137636%_)))
                                                         (_%hd137578137639%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137577137636%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl137579137641%_))
                                                         (_%__kont144569144570%_)
                                                         (_%__kont144573144574%_))))
                                                 (_%__kont144573144574%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd137575137631%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl137576137633%_))
                                                     (let ((_%e137583137613%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl137576137633%_))))
                                                       (let ((_%tl137585137618%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e137583137613%_)))
                     (_%hd137584137616%_
                      (let () (declare (not safe)) (##car _%e137583137613%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl137585137618%_))
                     (_%__kont144571144572%_)
                     (_%__kont144573144574%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144573144574%_))
                                                 (_%__kont144573144574%_)))
                                         (_%__kont144573144574%_))))
                                 (_%__kont144573144574%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest137547137555%_))
                     (let ((_%hd137552137652%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest137547137555%_)))
                           (_%tl137553137654%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest137547137555%_))))
                       (let* ((_%e137657%_ _%hd137552137652%_)
                              (_%rest137659%_ _%tl137553137654%_))
                         (_%K137551137649%_ _%rest137659%_ _%e137657%_)))
                     (_%else137549137563%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137489137519%_
                                               _%hd137486137511%_)
                                              (_%g137478137495%_
                                               _%g137479137498%_))))
                                      (_%g137478137495%_ _%g137479137498%_))))
                              (_%g137478137495%_ _%g137479137498%_))))
                      (_%g137478137495%_ _%g137479137498%_)))))
          (_%g137477137661%_ _%stx137476%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self137286%_ _%stx137287%_)
        (let* ((_%g137289137306%_
                (lambda (_%g137290137303%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137290137303%_))))
               (_%g137288137472%_
                (lambda (_%g137290137309%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137290137309%_))
                      (let ((_%e137293137311%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137290137309%_))))
                        (let ((_%hd137294137314%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137293137311%_)))
                              (_%tl137295137316%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137293137311%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137295137316%_))
                              (let ((_%e137296137319%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137295137316%_))))
                                (let ((_%hd137297137322%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137296137319%_)))
                                      (_%tl137298137324%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137296137319%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137298137324%_))
                                      (let ((_%e137299137327%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137298137324%_))))
                                        (let ((_%hd137300137330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137299137327%_)))
                                              (_%tl137301137332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137299137327%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137301137332%_))
                                              ((lambda (_%L137335%_
                                                        _%L137336%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self137286%_ _%L137335%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self137286%_ _%L137336%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp137351%_ ((_%rest137354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L137336%_ (cons _%L137335%_ '())))
                                (_%bind137356%_ '())
                                (_%args137357%_ '()))
               (let* ((_%rest137358137366%_ _%rest137354%_)
                      (_%else137360137374%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind137356%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args137357%_)
                                                 '()))))))
                      (_%K137362137460%_
                       (lambda (_%rest137377%_ _%e137378%_)
                         (let* ((_%__stx144613144614%_ _%e137378%_)
                                (_%g137383137401%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx144613144614%_)))))
                           (let ((_%__kont144615144616%_
                                  (lambda ()
                                    (_%lp137351%_
                                     _%rest137377%_
                                     _%bind137356%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e137378%_))
                                           _%args137357%_))))
                                 (_%__kont144617144618%_
                                  (lambda ()
                                    (_%lp137351%_
                                     _%rest137377%_
                                     _%bind137356%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e137378%_))
                                           _%args137357%_))))
                                 (_%__kont144619144620%_
                                  (lambda ()
                                    (let ((_%tmp137408%_
                                           (let ((__tmp145021
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145021))))
                                      (_%lp137351%_
                                       _%rest137377%_
                                       (cons (cons _%tmp137408%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137378%_))
                                                         '()))
                                             _%bind137356%_)
                                       (cons _%tmp137408%_ _%args137357%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx144613144614%_))
                                 (let ((_%e137385137439%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx144613144614%_))))
                                   (let ((_%tl137387137444%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e137385137439%_)))
                                         (_%hd137386137442%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e137385137439%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd137386137442%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd137386137442%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl137387137444%_))
                                                 (let ((_%e137388137447%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl137387137444%_))))
                                                   (let ((_%tl137390137452%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137388137447%_)))
                                                         (_%hd137389137450%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137388137447%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl137390137452%_))
                                                         (_%__kont144615144616%_)
                                                         (_%__kont144619144620%_))))
                                                 (_%__kont144619144620%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd137386137442%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl137387137444%_))
                                                     (let ((_%e137394137424%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl137387137444%_))))
                                                       (let ((_%tl137396137429%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e137394137424%_)))
                     (_%hd137395137427%_
                      (let () (declare (not safe)) (##car _%e137394137424%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl137396137429%_))
                     (_%__kont144617144618%_)
                     (_%__kont144619144620%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144619144620%_))
                                                 (_%__kont144619144620%_)))
                                         (_%__kont144619144620%_))))
                                 (_%__kont144619144620%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest137358137366%_))
                     (let ((_%hd137363137463%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest137358137366%_)))
                           (_%tl137364137465%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest137358137366%_))))
                       (let* ((_%e137468%_ _%hd137363137463%_)
                              (_%rest137470%_ _%tl137364137465%_))
                         (_%K137362137460%_ _%rest137470%_ _%e137468%_)))
                     (_%else137360137374%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137300137330%_
                                               _%hd137297137322%_)
                                              (_%g137289137306%_
                                               _%g137290137309%_))))
                                      (_%g137289137306%_ _%g137290137309%_))))
                              (_%g137289137306%_ _%g137290137309%_))))
                      (_%g137289137306%_ _%g137290137309%_)))))
          (_%g137288137472%_ _%stx137287%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self137202%_ _%stx137203%_)
        (let* ((_%g137205137226%_
                (lambda (_%g137206137223%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137206137223%_))))
               (_%g137204137283%_
                (lambda (_%g137206137229%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137206137229%_))
                      (let ((_%e137210137231%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137206137229%_))))
                        (let ((_%hd137211137234%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137210137231%_)))
                              (_%tl137212137236%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137210137231%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137212137236%_))
                              (let ((_%e137213137239%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137212137236%_))))
                                (let ((_%hd137214137242%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137213137239%_)))
                                      (_%tl137215137244%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137213137239%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137215137244%_))
                                      (let ((_%e137216137247%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137215137244%_))))
                                        (let ((_%hd137217137250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137216137247%_)))
                                              (_%tl137218137252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137216137247%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137218137252%_))
                                              (let ((_%e137219137255%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137218137252%_))))
                                                (let ((_%hd137220137258%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137219137255%_)))
                                                      (_%tl137221137260%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137219137255%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137221137260%_))
                                                      ((lambda (_%L137263%_
                                                                _%L137264%_
                                                                _%L137265%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137202%_ _%L137263%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137202%_
                                      _%L137264%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137202%_
                                            _%L137265%_))
                                         (cons ''#f '()))))))
               _%hd137220137258%_
               _%hd137217137250%_
               _%hd137214137242%_)
              (_%g137205137226%_ _%g137206137229%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137205137226%_
                                               _%g137206137229%_))))
                                      (_%g137205137226%_ _%g137206137229%_))))
                              (_%g137205137226%_ _%g137206137229%_))))
                      (_%g137205137226%_ _%g137206137229%_)))))
          (_%g137204137283%_ _%stx137203%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self137102%_ _%stx137103%_)
        (let* ((_%g137105137130%_
                (lambda (_%g137106137127%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137106137127%_))))
               (_%g137104137199%_
                (lambda (_%g137106137133%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137106137133%_))
                      (let ((_%e137111137135%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137106137133%_))))
                        (let ((_%hd137112137138%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137111137135%_)))
                              (_%tl137113137140%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137111137135%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137113137140%_))
                              (let ((_%e137114137143%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137113137140%_))))
                                (let ((_%hd137115137146%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137114137143%_)))
                                      (_%tl137116137148%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137114137143%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137116137148%_))
                                      (let ((_%e137117137151%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137116137148%_))))
                                        (let ((_%hd137118137154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137117137151%_)))
                                              (_%tl137119137156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137117137151%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137119137156%_))
                                              (let ((_%e137120137159%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137119137156%_))))
                                                (let ((_%hd137121137162%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137120137159%_)))
                                                      (_%tl137122137164%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137120137159%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137122137164%_))
                                                      (let ((_%e137123137167%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137122137164%_))))
                (let ((_%hd137124137170%_
                       (let () (declare (not safe)) (##car _%e137123137167%_)))
                      (_%tl137125137172%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137123137167%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137125137172%_))
                      ((lambda (_%L137175%_
                                _%L137176%_
                                _%L137177%_
                                _%L137178%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137102%_
                                        _%L137176%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137102%_
                                              _%L137175%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137102%_
                                                    _%L137177%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137102%_
                                                          _%L137178%_))
                                                       (cons ''#f '())))))))
                       _%hd137124137170%_
                       _%hd137121137162%_
                       _%hd137118137154%_
                       _%hd137115137146%_)
                      (_%g137105137130%_ _%g137106137133%_))))
              (_%g137105137130%_ _%g137106137133%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137105137130%_
                                               _%g137106137133%_))))
                                      (_%g137105137130%_ _%g137106137133%_))))
                              (_%g137105137130%_ _%g137106137133%_))))
                      (_%g137105137130%_ _%g137106137133%_)))))
          (_%g137104137199%_ _%stx137103%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self137018%_ _%stx137019%_)
        (let* ((_%g137021137042%_
                (lambda (_%g137022137039%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137022137039%_))))
               (_%g137020137099%_
                (lambda (_%g137022137045%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137022137045%_))
                      (let ((_%e137026137047%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137022137045%_))))
                        (let ((_%hd137027137050%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137026137047%_)))
                              (_%tl137028137052%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137026137047%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137028137052%_))
                              (let ((_%e137029137055%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137028137052%_))))
                                (let ((_%hd137030137058%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137029137055%_)))
                                      (_%tl137031137060%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137029137055%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137031137060%_))
                                      (let ((_%e137032137063%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137031137060%_))))
                                        (let ((_%hd137033137066%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137032137063%_)))
                                              (_%tl137034137068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137032137063%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137034137068%_))
                                              (let ((_%e137035137071%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137034137068%_))))
                                                (let ((_%hd137036137074%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137035137071%_)))
                                                      (_%tl137037137076%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137035137071%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137037137076%_))
                                                      ((lambda (_%L137079%_
                                                                _%L137080%_
                                                                _%L137081%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137018%_ _%L137079%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137018%_
                                      _%L137080%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137018%_
                                            _%L137081%_))
                                         (cons ''#f '()))))))
               _%hd137036137074%_
               _%hd137033137066%_
               _%hd137030137058%_)
              (_%g137021137042%_ _%g137022137045%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137021137042%_
                                               _%g137022137045%_))))
                                      (_%g137021137042%_ _%g137022137045%_))))
                              (_%g137021137042%_ _%g137022137045%_))))
                      (_%g137021137042%_ _%g137022137045%_)))))
          (_%g137020137099%_ _%stx137019%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self136918%_ _%stx136919%_)
        (let* ((_%g136921136946%_
                (lambda (_%g136922136943%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136922136943%_))))
               (_%g136920137015%_
                (lambda (_%g136922136949%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136922136949%_))
                      (let ((_%e136927136951%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136922136949%_))))
                        (let ((_%hd136928136954%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136927136951%_)))
                              (_%tl136929136956%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136927136951%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136929136956%_))
                              (let ((_%e136930136959%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136929136956%_))))
                                (let ((_%hd136931136962%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136930136959%_)))
                                      (_%tl136932136964%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136930136959%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136932136964%_))
                                      (let ((_%e136933136967%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136932136964%_))))
                                        (let ((_%hd136934136970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136933136967%_)))
                                              (_%tl136935136972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136933136967%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136935136972%_))
                                              (let ((_%e136936136975%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136935136972%_))))
                                                (let ((_%hd136937136978%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136936136975%_)))
                                                      (_%tl136938136980%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136936136975%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl136938136980%_))
                                                      (let ((_%e136939136983%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl136938136980%_))))
                (let ((_%hd136940136986%_
                       (let () (declare (not safe)) (##car _%e136939136983%_)))
                      (_%tl136941136988%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e136939136983%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl136941136988%_))
                      ((lambda (_%L136991%_
                                _%L136992%_
                                _%L136993%_
                                _%L136994%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self136918%_
                                        _%L136992%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self136918%_
                                              _%L136991%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self136918%_
                                                    _%L136993%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self136918%_
                                                          _%L136994%_))
                                                       (cons ''#f '())))))))
                       _%hd136940136986%_
                       _%hd136937136978%_
                       _%hd136934136970%_
                       _%hd136931136962%_)
                      (_%g136921136946%_ _%g136922136949%_))))
              (_%g136921136946%_ _%g136922136949%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g136921136946%_
                                               _%g136922136949%_))))
                                      (_%g136921136946%_ _%g136922136949%_))))
                              (_%g136921136946%_ _%g136922136949%_))))
                      (_%g136921136946%_ _%g136922136949%_)))))
          (_%g136920137015%_ _%stx136919%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self136713%_ _%stx136714%_)
        (let* ((_%g136716136737%_
                (lambda (_%g136717136734%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136717136734%_))))
               (_%g136715136915%_
                (lambda (_%g136717136740%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136717136740%_))
                      (let ((_%e136721136742%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136717136740%_))))
                        (let ((_%hd136722136745%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136721136742%_)))
                              (_%tl136723136747%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136721136742%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136723136747%_))
                              (let ((_%e136724136750%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136723136747%_))))
                                (let ((_%hd136725136753%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136724136750%_)))
                                      (_%tl136726136755%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136724136750%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136726136755%_))
                                      (let ((_%e136727136758%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136726136755%_))))
                                        (let ((_%hd136728136761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136727136758%_)))
                                              (_%tl136729136763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136727136758%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136729136763%_))
                                              (let ((_%e136730136766%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136729136763%_))))
                                                (let ((_%hd136731136769%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136730136766%_)))
                                                      (_%tl136732136771%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136730136766%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl136732136771%_))
                                                      ((lambda (_%L136774%_
                                                                _%L136775%_
                                                                _%L136776%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self136713%_
                                    _%L136774%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self136713%_
                                          _%L136775%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp136794%_ ((_%rest136797%_
                                         (cons _%L136775%_
                                               (cons _%L136774%_ '())))
                                        (_%bind136799%_ '())
                                        (_%args136800%_ '()))
                       (let* ((_%rest136801136809%_ _%rest136797%_)
                              (_%else136803136817%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind136799%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp145022
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp145022 _%args136800%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K136805136903%_
                               (lambda (_%rest136820%_ _%e136821%_)
                                 (let* ((_%__stx144659144660%_ _%e136821%_)
                                        (_%g136826136844%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144659144660%_)))))
                                   (let ((_%__kont144661144662%_
                                          (lambda ()
                                            (_%lp136794%_
                                             _%rest136820%_
                                             _%bind136799%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e136821%_))
                                                   _%args136800%_))))
                                         (_%__kont144663144664%_
                                          (lambda ()
                                            (_%lp136794%_
                                             _%rest136820%_
                                             _%bind136799%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e136821%_))
                                                   _%args136800%_))))
                                         (_%__kont144665144666%_
                                          (lambda ()
                                            (let ((_%tmp136851%_
                                                   (let ((__tmp145023
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp145023))))
                                              (_%lp136794%_
                                               _%rest136820%_
                                               (cons (cons _%tmp136851%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e136821%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind136799%_)
                                               (cons _%tmp136851%_
                                                     _%args136800%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144659144660%_))
                                         (let ((_%e136828136882%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144659144660%_))))
                                           (let ((_%tl136830136887%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e136828136882%_)))
                                                 (_%hd136829136885%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e136828136882%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd136829136885%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd136829136885%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl136830136887%_))
                                                         (let ((_%e136831136890%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl136830136887%_))))
                   (let ((_%tl136833136895%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e136831136890%_)))
                         (_%hd136832136893%_
                          (let ()
                            (declare (not safe))
                            (##car _%e136831136890%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl136833136895%_))
                         (_%__kont144661144662%_)
                         (_%__kont144665144666%_))))
                 (_%__kont144665144666%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd136829136885%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl136830136887%_))
                     (let ((_%e136837136867%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl136830136887%_))))
                       (let ((_%tl136839136872%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e136837136867%_)))
                             (_%hd136838136870%_
                              (let ()
                                (declare (not safe))
                                (##car _%e136837136867%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl136839136872%_))
                             (_%__kont144663144664%_)
                             (_%__kont144665144666%_))))
                     (_%__kont144665144666%_))
                 (_%__kont144665144666%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144665144666%_))))
                                         (_%__kont144665144666%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest136801136809%_))
                             (let ((_%hd136806136906%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest136801136809%_)))
                                   (_%tl136807136908%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest136801136809%_))))
                               (let* ((_%e136911%_ _%hd136806136906%_)
                                      (_%rest136913%_ _%tl136807136908%_))
                                 (_%K136805136903%_
                                  _%rest136913%_
                                  _%e136911%_)))
                             (_%else136803136817%_))))))
               _%hd136731136769%_
               _%hd136728136761%_
               _%hd136725136753%_)
              (_%g136716136737%_ _%g136717136740%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g136716136737%_
                                               _%g136717136740%_))))
                                      (_%g136716136737%_ _%g136717136740%_))))
                              (_%g136716136737%_ _%g136717136740%_))))
                      (_%g136716136737%_ _%g136717136740%_)))))
          (_%g136715136915%_ _%stx136714%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self136492%_ _%stx136493%_)
        (let* ((_%g136495136520%_
                (lambda (_%g136496136517%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136496136517%_))))
               (_%g136494136710%_
                (lambda (_%g136496136523%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136496136523%_))
                      (let ((_%e136501136525%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136496136523%_))))
                        (let ((_%hd136502136528%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136501136525%_)))
                              (_%tl136503136530%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136501136525%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136503136530%_))
                              (let ((_%e136504136533%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136503136530%_))))
                                (let ((_%hd136505136536%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136504136533%_)))
                                      (_%tl136506136538%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136504136533%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136506136538%_))
                                      (let ((_%e136507136541%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136506136538%_))))
                                        (let ((_%hd136508136544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136507136541%_)))
                                              (_%tl136509136546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136507136541%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136509136546%_))
                                              (let ((_%e136510136549%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136509136546%_))))
                                                (let ((_%hd136511136552%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136510136549%_)))
                                                      (_%tl136512136554%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136510136549%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl136512136554%_))
                                                      (let ((_%e136513136557%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl136512136554%_))))
                (let ((_%hd136514136560%_
                       (let () (declare (not safe)) (##car _%e136513136557%_)))
                      (_%tl136515136562%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e136513136557%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl136515136562%_))
                      ((lambda (_%L136565%_
                                _%L136566%_
                                _%L136567%_
                                _%L136568%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self136492%_
                                            _%L136566%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self136492%_
                                                  _%L136565%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self136492%_
                                                        _%L136567%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp136589%_ ((_%rest136592%_
                                                 (cons _%L136567%_
                                                       (cons _%L136565%_
                                                             (cons _%L136566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind136594%_ '())
                                                (_%args136595%_ '()))
                               (let* ((_%rest136596136604%_ _%rest136592%_)
                                      (_%else136598136612%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind136594%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp145024 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp145024 _%args136595%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K136600136698%_
                                       (lambda (_%rest136615%_ _%e136616%_)
                                         (let* ((_%__stx144705144706%_
                                                 _%e136616%_)
                                                (_%g136621136639%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx144705144706%_)))))
                                           (let ((_%__kont144707144708%_
                                                  (lambda ()
                                                    (_%lp136589%_
                                                     _%rest136615%_
                                                     _%bind136594%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e136616%_))
                                                           _%args136595%_))))
                                                 (_%__kont144709144710%_
                                                  (lambda ()
                                                    (_%lp136589%_
                                                     _%rest136615%_
                                                     _%bind136594%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e136616%_))
                                                           _%args136595%_))))
                                                 (_%__kont144711144712%_
                                                  (lambda ()
                                                    (let ((_%tmp136646%_
                                                           (let ((__tmp145025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp145025))))
              (_%lp136589%_
               _%rest136615%_
               (cons (cons _%tmp136646%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e136616%_))
                                 '()))
                     _%bind136594%_)
               (cons _%tmp136646%_ _%args136595%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx144705144706%_))
                                                 (let ((_%e136623136677%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx144705144706%_))))
                                                   (let ((_%tl136625136682%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e136623136677%_)))
                                                         (_%hd136624136680%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e136623136677%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd136624136680%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd136624136680%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl136625136682%_))
                         (let ((_%e136626136685%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl136625136682%_))))
                           (let ((_%tl136628136690%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e136626136685%_)))
                                 (_%hd136627136688%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e136626136685%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl136628136690%_))
                                 (_%__kont144707144708%_)
                                 (_%__kont144711144712%_))))
                         (_%__kont144711144712%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd136624136680%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl136625136682%_))
                             (let ((_%e136632136662%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl136625136682%_))))
                               (let ((_%tl136634136667%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e136632136662%_)))
                                     (_%hd136633136665%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e136632136662%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl136634136667%_))
                                     (_%__kont144709144710%_)
                                     (_%__kont144711144712%_))))
                             (_%__kont144711144712%_))
                         (_%__kont144711144712%_)))
                 (_%__kont144711144712%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144711144712%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest136596136604%_))
                                     (let ((_%hd136601136701%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest136596136604%_)))
                                           (_%tl136602136703%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest136596136604%_))))
                                       (let* ((_%e136706%_ _%hd136601136701%_)
                                              (_%rest136708%_
                                               _%tl136602136703%_))
                                         (_%K136600136698%_
                                          _%rest136708%_
                                          _%e136706%_)))
                                     (_%else136598136612%_))))))
                       _%hd136514136560%_
                       _%hd136511136552%_
                       _%hd136508136544%_
                       _%hd136505136536%_)
                      (_%g136495136520%_ _%g136496136523%_))))
              (_%g136495136520%_ _%g136496136523%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g136495136520%_
                                               _%g136496136523%_))))
                                      (_%g136495136520%_ _%g136496136523%_))))
                              (_%g136495136520%_ _%g136496136523%_))))
                      (_%g136495136520%_ _%g136496136523%_)))))
          (_%g136494136710%_ _%stx136493%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self136331%_ _%stx136332%_)
        (letrec ((_%import-set-template136334%_
                  (lambda (_%in136437%_ _%phi136438%_)
                    (let ((_%iphi136440%_
                           (fx+ _%phi136438%_
                                (##direct-structure-ref
                                 _%in136437%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports136441%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in136437%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp136443%_ ((_%rest136445%_ _%imports136441%_)
                                         (_%r136446%_ '()))
                        (let* ((_%rest136447136455%_ _%rest136445%_)
                               (_%else136449136463%_ (lambda () _%r136446%_))
                               (_%K136451136480%_
                                (lambda (_%rest136466%_ _%in136467%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in136467%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi136440%_))
                                          (_%lp136443%_
                                           _%rest136466%_
                                           (cons _%in136467%_ _%r136446%_))
                                          (_%lp136443%_
                                           _%rest136466%_
                                           _%r136446%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in136467%_
                                             'gx#module-import::t))
                                          (let ((_%iphi136471%_
                                                 (fx+ _%phi136438%_
                                                      (##direct-structure-ref
                                                       _%in136467%_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi136471%_))
                                                (_%lp136443%_
                                                 _%rest136466%_
                                                 (cons (##direct-structure-ref
                                                        (##direct-structure-ref
                                                         _%in136467%_
                                                         '1
                                                         gx#module-import::t
                                                         '#f)
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r136446%_))
                                                (_%lp136443%_
                                                 _%rest136466%_
                                                 _%r136446%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in136467%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi136474%_
                                                     (fx+ _%iphi136440%_
                                                          (##direct-structure-ref
                                                           _%in136467%_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi136474%_))
                                                    (_%lp136443%_
                                                     _%rest136466%_
                                                     (cons (##direct-structure-ref
                                                            _%in136467%_
                                                            '1
                                                            gx#import-set::t
                                                            '#f)
                                                           _%r136446%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi136474%_))
                                                        (_%lp136443%_
                                                         _%rest136466%_
                                                         (let ((__tmp145026
                                                                (_%import-set-template136334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in136467%_
                         _%iphi136440%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r136446%_ __tmp145026)))
                (_%lp136443%_ _%rest136466%_ _%r136446%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp136443%_
                                               _%rest136466%_
                                               _%r136446%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest136447136455%_))
                              (let ((_%hd136452136483%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest136447136455%_)))
                                    (_%tl136453136485%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest136447136455%_))))
                                (let* ((_%in136488%_ _%hd136452136483%_)
                                       (_%rest136490%_ _%tl136453136485%_))
                                  (_%K136451136480%_
                                   _%rest136490%_
                                   _%in136488%_)))
                              (_%else136449136463%_))))))))
          (let* ((_%g136336136346%_
                  (lambda (_%g136337136343%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136337136343%_))))
                 (_%g136335136434%_
                  (lambda (_%g136337136349%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136337136349%_))
                        (let ((_%e136339136351%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136337136349%_))))
                          (let ((_%hd136340136354%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136339136351%_)))
                                (_%tl136341136356%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136339136351%_))))
                            ((lambda (_%L136359%_)
                               (let ((_%ht136370%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp136372%_ ((_%rest136374%_
                                                     _%L136359%_)
                                                    (_%loads136375%_ '()))
                                   (letrec ((_%K136377%_
                                             (lambda (_%ctx136427%_
                                                      _%rest136428%_)
                                               (let ((_%id136430%_
                                                      (##structure-ref
                                                       _%ctx136427%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _%ht136370%_
                                                        _%id136430%_))
                                                     (_%lp136372%_
                                                      _%rest136428%_
                                                      _%loads136375%_)
                                                     (let ((_%rt136432%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id136430%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%ht136370%_
                                                          _%id136430%_
                                                          _%rt136432%_))
                                                       (_%lp136372%_
                                                        _%rest136428%_
                                                        (cons _%rt136432%_
                                                              _%loads136375%_))))))))
                                     (let* ((_%rest136378136386%_
                                             _%rest136374%_)
                                            (_%else136380136398%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp145028
                                                            (lambda (_%g136393136395%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g136393136395%_)))
                   (__tmp145027 (reverse _%loads136375%_)))
               (declare (not safe))
               (##map __tmp145028 __tmp145027)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K136382136415%_
                                             (lambda (_%rest136401%_
                                                      _%in136402%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in136402%_
                                                      'gx#module-context::t))
                                                   (_%K136377%_
                                                    _%in136402%_
                                                    _%rest136401%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in136402%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in136402%_
                             '3
                             gx#module-import::t
                             '#f))
                   (_%K136377%_
                    (##direct-structure-ref
                     (##direct-structure-ref
                      _%in136402%_
                      '1
                      gx#module-import::t
                      '#f)
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest136401%_)
                   (_%lp136372%_ _%rest136401%_ _%loads136375%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in136402%_
                      'gx#import-set::t))
                   (let ((_%phi136407%_
                          (##direct-structure-ref
                           _%in136402%_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (fxzero? _%phi136407%_)
                         (_%K136377%_
                          (##direct-structure-ref
                           _%in136402%_
                           '1
                           gx#import-set::t
                           '#f)
                          _%rest136401%_)
                         (if (fxpositive? _%phi136407%_)
                             (let ((_%deps136411%_
                                    (_%import-set-template136334%_
                                     _%in136402%_
                                     '0)))
                               (_%lp136372%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest136401%_
                                   _%deps136411%_))
                                _%loads136375%_))
                             (_%lp136372%_ _%rest136401%_ _%loads136375%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx136332%_
                      _%in136402%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest136378136386%_))
                                           (let ((_%hd136383136418%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest136378136386%_)))
                                                 (_%tl136384136420%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest136378136386%_))))
                                             (let* ((_%in136423%_
                                                     _%hd136383136418%_)
                                                    (_%rest136425%_
                                                     _%tl136384136420%_))
                                               (_%K136382136415%_
                                                _%rest136425%_
                                                _%in136423%_)))
                                           (_%else136380136398%_)))))))
                             _%tl136341136356%_)))
                        (_%g136336136346%_ _%g136337136349%_)))))
            (_%g136335136434%_ _%stx136332%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self136144%_ _%stx136145%_)
        (letrec ((_%add-lift!136147%_
                  (lambda (_%expr136329%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr136329%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote136148%_
                  (lambda (_%id136326%_ _%marks136327%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id136326%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks136327%_
                                                        '()))))))))
                 (_%generate-simple136149%_
                  (lambda (_%stxq136321%_)
                    (let ((_%gid136323%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid136324%_
                           (gxc#generate-runtime-identifier _%stxq136321%_)))
                      (_%add-lift!136147%_
                       (cons 'define
                             (cons _%gid136323%_
                                   (cons (_%generate-syntax-quote136148%_
                                          _%qid136324%_
                                          ''())
                                         '()))))
                      (let ((__tmp145029
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145029 _%stxq136321%_ _%gid136323%_))
                      _%gid136323%_)))
                 (_%generate-serialized136150%_
                  (lambda (_%stxq136311%_ _%marks136312%_)
                    (let* ((_%mark-refs136314%_
                            (map _%generate-mark136151%_ _%marks136312%_))
                           (_%gid136316%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid136318%_
                            (gxc#generate-runtime-identifier _%stxq136311%_)))
                      (_%add-lift!136147%_
                       (cons 'define
                             (cons _%gid136316%_
                                   (cons (_%generate-syntax-quote136148%_
                                          _%qid136318%_
                                          (cons 'list _%mark-refs136314%_))
                                         '()))))
                      (let ((__tmp145030
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145030 _%stxq136311%_ _%gid136316%_))
                      _%gid136316%_)))
                 (_%generate-mark136151%_
                  (lambda (_%mark136296%_)
                    (let ((_%$e136298%_
                           (let ((__tmp145031
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp145031 _%mark136296%_))))
                      (if _%$e136298%_
                          (values _%$e136298%_)
                          (let* ((_%gid136302%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr136304%_
                                  (_%serialize-mark136152%_ _%mark136296%_))
                                 (_%ctx136306%_
                                  (let ((__tmp145032
                                         (##structure-ref
                                          _%mark136296%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp145032)))
                                 (_%ctx-ref136308%_
                                  (if (eq? _%ctx136306%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref136153%_
                                                               _%ctx136306%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp145033
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp145033
                               _%mark136296%_
                               _%gid136302%_))
                            (_%add-lift!136147%_
                             (cons 'define
                                   (cons _%gid136302%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr136304%_ '()))
                   (cons _%ctx-ref136308%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid136302%_)))))
                 (_%serialize-mark136152%_
                  (lambda (_%mark136243%_)
                    (letrec ((_%quote-e136245%_
                              (lambda (_%sym136294%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym136294%_))
                                    _%sym136294%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym136294%_))))))
                      (let* ((_%mark136246136255%_ _%mark136243%_)
                             (_%E136248136259%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark136246136255%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K136249136271%_
                              (lambda (_%trace136262%_
                                       _%phi136263%_
                                       _%ctx136264%_
                                       _%subst136265%_)
                                (let ((_%subs136267%_
                                       (if _%subst136265%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst136265%_))
                                           '())))
                                  (cons _%phi136263%_
                                        (map (lambda (_%pair136269%_)
                                               (cons (_%quote-e136245%_
                                                      (car _%pair136269%_))
                                                     (_%quote-e136245%_
                                                      (cdr _%pair136269%_))))
                                             _%subs136267%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark136246136255%_
                               'gx#expander-mark::t))
                            (let* ((_%e136250136274%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136246136255%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst136277%_ _%e136250136274%_)
                                   (_%e136251136279%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136246136255%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx136282%_ _%e136251136279%_)
                                   (_%e136252136284%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136246136255%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi136287%_ _%e136252136284%_)
                                   (_%e136253136289%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136246136255%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace136292%_ _%e136253136289%_))
                              (_%K136249136271%_
                               _%trace136292%_
                               _%phi136287%_
                               _%ctx136282%_
                               _%subst136277%_))
                            (_%E136248136259%_))))))
                 (_%context-ref136153%_
                  (lambda (_%ctx136230%_)
                    (if (let ((__tmp145034
                               (##structure-ref
                                _%ctx136230%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp145034
                           'gx#module-context::t))
                        (let ((_%ctx-ref136232%_
                               (_%context-ref-nested136155%_ _%ctx136230%_))
                              (_%ctx-origin136233%_
                               (_%context-ref-origin136154%_ _%ctx136230%_))
                              (_%origin136234%_
                               (_%context-ref-origin136154%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin136234%_ _%ctx-origin136233%_)
                              (let ((_%ref136236%_
                                     (_%context-ref-nested136155%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp136238%_ ((_%ref136240%_
                                                    (cdr _%ref136236%_))
                                                   (_%ctx-ref136241%_
                                                    (cdr _%ctx-ref136232%_)))
                                  (if (and (pair? _%ref136240%_)
                                           (eq? (car _%ref136240%_)
                                                (car _%ctx-ref136241%_)))
                                      (_%lp136238%_
                                       (cdr _%ref136240%_)
                                       (cdr _%ctx-ref136241%_))
                                      (cons '#f _%ctx-ref136241%_))))
                              _%ctx-ref136232%_))
                        (let ((__tmp145035
                               (##structure-ref
                                _%ctx136230%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp145035)))))
                 (_%context-ref-origin136154%_
                  (lambda (_%ctx136222%_)
                    (let _%lp136224%_ ((_%ctx136226%_ _%ctx136222%_))
                      (let ((_%super136228%_
                             (##structure-ref
                              _%ctx136226%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136228%_
                               'gx#module-context::t))
                            (_%lp136224%_ _%super136228%_)
                            _%ctx136226%_)))))
                 (_%context-ref-nested136155%_
                  (lambda (_%ctx136213%_)
                    (let _%lp136215%_ ((_%ctx136217%_ _%ctx136213%_)
                                       (_%r136218%_ '()))
                      (let ((_%super136220%_
                             (##structure-ref
                              _%ctx136217%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136220%_
                               'gx#module-context::t))
                            (_%lp136215%_
                             _%super136220%_
                             (cons (car (##structure-ref
                                         _%ctx136217%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r136218%_))
                            (cons (let ((__tmp145036
                                         (##structure-ref
                                          _%ctx136217%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp145036))
                                  _%r136218%_)))))))
          (let* ((_%g136157136170%_
                  (lambda (_%g136158136167%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136158136167%_))))
                 (_%g136156136210%_
                  (lambda (_%g136158136173%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136158136173%_))
                        (let ((_%e136160136175%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136158136173%_))))
                          (let ((_%hd136161136178%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136160136175%_)))
                                (_%tl136162136180%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136160136175%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl136162136180%_))
                                (let ((_%e136163136183%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl136162136180%_))))
                                  (let ((_%hd136164136186%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136163136183%_)))
                                        (_%tl136165136188%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136163136183%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136165136188%_))
                                        ((lambda (_%L136191%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L136191%_))
                                               (let ((_%$e136204%_
                                                      (let ((__tmp145037
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp145037 _%L136191%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e136204%_
                                                     (values _%$e136204%_)
                                                     (let ((_%marks136208%_
                                                            (##direct-structure-ref
                                                             _%L136191%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks136208%_)
                                                           (_%generate-simple136149%_
                                                            _%L136191%_)
                                                           (_%generate-serialized136150%_
                                                            _%L136191%_
                                                            _%marks136208%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L136191%_))))
                                         _%hd136164136186%_)
                                        (_%g136157136170%_
                                         _%g136158136173%_))))
                                (_%g136157136170%_ _%g136158136173%_))))
                        (_%g136157136170%_ _%g136158136173%_)))))
            (_%g136156136210%_ _%stx136145%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self136076%_ _%stx136077%_)
        (let* ((_%g136079136096%_
                (lambda (_%g136080136093%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136080136093%_))))
               (_%g136078136141%_
                (lambda (_%g136080136099%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136080136099%_))
                      (let ((_%e136083136101%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136080136099%_))))
                        (let ((_%hd136084136104%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136083136101%_)))
                              (_%tl136085136106%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136083136101%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136085136106%_))
                              (let ((_%e136086136109%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136085136106%_))))
                                (let ((_%hd136087136112%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136086136109%_)))
                                      (_%tl136088136114%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136086136109%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136088136114%_))
                                      (let ((_%e136089136117%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136088136114%_))))
                                        (let ((_%hd136090136120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136089136117%_)))
                                              (_%tl136091136122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136089136117%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136091136122%_))
                                              ((lambda (_%L136125%_
                                                        _%L136126%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L136126%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self136076%_ _%L136125%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd136090136120%_
                                               _%hd136087136112%_)
                                              (_%g136079136096%_
                                               _%g136080136099%_))))
                                      (_%g136079136096%_ _%g136080136099%_))))
                              (_%g136079136096%_ _%g136080136099%_))))
                      (_%g136079136096%_ _%g136080136099%_)))))
          (_%g136078136141%_ _%stx136077%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self136025%_ _%stx136026%_)
        (let* ((_%g136028136038%_
                (lambda (_%g136029136035%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136029136035%_))))
               (_%g136027136073%_
                (lambda (_%g136029136041%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136029136041%_))
                      (let ((_%e136031136043%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136029136041%_))))
                        (let ((_%hd136032136046%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136031136043%_)))
                              (_%tl136033136048%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136031136043%_))))
                          ((lambda (_%L136051%_)
                             (let* ((_%c-body136065%_
                                     (map (lambda (_%g136060136062%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self136025%_
                                               _%g136060136062%_)))
                                          _%L136051%_))
                                    (_%c-body136070%_
                                     (let ((__tmp145038
                                            (lambda (_%$obj136067%_)
                                              (not (eq? _%$obj136067%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp145038
                                        _%c-body136065%_))))
                               (cons '%#begin _%c-body136070%_)))
                           _%tl136033136048%_)))
                      (_%g136028136038%_ _%g136029136041%_)))))
          (_%g136027136073%_ _%stx136026%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self135930%_ _%stx135931%_)
        (let* ((_%g135933135943%_
                (lambda (_%g135934135940%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135934135940%_))))
               (_%g135932136022%_
                (lambda (_%g135934135946%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135934135946%_))
                      (let ((_%e135936135948%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135934135946%_))))
                        (let ((_%hd135937135951%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135936135948%_)))
                              (_%tl135938135953%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135936135948%_))))
                          ((lambda (_%L135956%_)
                             (let* ((_%phi135966%_
                                     (let ((__tmp145039
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp145039 '1)))
                                    (_%block135968%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self135930%_ 'state))
                                      _%phi135966%_))
                                    (_%compiled135971%_
                                     (let ((__tmp145040
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self135930%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L135956%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp145040
                                        gx#current-expander-phi
                                        _%phi135966%_)))
                                    (_%g135974135984%_
                                     (lambda (_%g135975135981%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g135975135981%_))))
                                    (_%g135973136019%_
                                     (lambda (_%g135975135987%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g135975135987%_))
                                           (let ((_%e135977135989%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g135975135987%_))))
                                             (let ((_%hd135978135992%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e135977135989%_)))
                                                   (_%tl135979135994%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e135977135989%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd135978135992%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd135978135992%_))
                                                       ((lambda (_%L135997%_)
                                                          (let ((_%c-body136014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj136011%_)
                                   (not (eq? _%$obj136011%_ '#!void)))
                                 _%L135997%_)))
                    (if _%block135968%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block135968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body136014%_))
                        (if (null? _%c-body136014%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body136014%_)))))
                _%tl135979135994%_)
               (_%g135974135984%_ _%g135975135987%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g135974135984%_
                                                    _%g135975135987%_))))
                                           (_%g135974135984%_
                                            _%g135975135987%_)))))
                               (_%g135973136019%_ _%compiled135971%_)))
                           _%tl135938135953%_)))
                      (_%g135933135943%_ _%g135934135946%_)))))
          (_%g135932136022%_ _%stx135931%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self135861%_ _%stx135862%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self135861%_ 'state)))
        (let* ((_%g135864135878%_
                (lambda (_%g135865135875%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135865135875%_))))
               (_%g135863135927%_
                (lambda (_%g135865135881%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135865135881%_))
                      (let ((_%e135868135883%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135865135881%_))))
                        (let ((_%hd135869135886%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135868135883%_)))
                              (_%tl135870135888%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135868135883%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135870135888%_))
                              (let ((_%e135871135891%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135870135888%_))))
                                (let ((_%hd135872135894%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135871135891%_)))
                                      (_%tl135873135896%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135871135891%_))))
                                  ((lambda (_%L135899%_ _%L135900%_)
                                     (let ((_%key135913%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L135900%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key135913%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx135862%_
                                              _%L135900%_
                                              _%key135913%_)))
                                       (let* ((_%ctx135915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L135900%_)))
                                              (_%code135918%_
                                               (let ((__tmp145041
                                                      (lambda ()
                                                        (let ((__tmp145042
                                                               (##structure-ref
                                                                _%ctx135915%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self135861%_
                                                           __tmp145042)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp145041
                                                  gx#current-expander-context
                                                  _%ctx135915%_)))
                                              (_%rt135920%_
                                               (let ((__tmp145043
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp145043
                                                  _%ctx135915%_)))
                                              (_%loader135922%_
                                               (if _%rt135920%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt135920%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid135924%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L135900%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self135861%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid135924%_
                                                     (cons _%code135918%_
                                                           _%loader135922%_))))))
                                   _%tl135873135896%_
                                   _%hd135872135894%_)))
                              (_%g135864135878%_ _%g135865135881%_))))
                      (_%g135864135878%_ _%g135865135881%_)))))
          (_%g135863135927%_ _%stx135862%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx135848%_ _%context-chain135849%_)
        (let _%lp135851%_ ((_%ctx135853%_ _%ctx135848%_) (_%path135854%_ '()))
          (let ((_%super135856%_
                 (##structure-ref _%ctx135853%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super135856%_ _%context-chain135849%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx135853%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path135854%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super135856%_
                       'gx#module-context::t))
                    (_%lp135851%_
                     _%super135856%_
                     (cons (car (##structure-ref
                                 _%ctx135853%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path135854%_))
                    (cons (let ((__tmp145044
                                 (##structure-ref
                                  _%ctx135853%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp145044))
                          _%path135854%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp135841%_ ((_%ctx135843%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r135844%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx135843%_ 'gx#module-context::t))
              (_%lp135841%_
               (##structure-ref _%ctx135843%_ '3 gx#phi-context::t '#f)
               (cons _%ctx135843%_ _%r135844%_))
              _%r135844%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self135604%_ _%stx135605%_)
        (letrec* ((_%context-chain135607%_ (gxc#current-context-chain))
                  (_%make-import-spec135608%_
                   (lambda (_%in135777%_)
                     (let* ((_%in135778135790%_ _%in135777%_)
                            (_%E135780135794%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in135778135790%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K135781135804%_
                             (lambda (_%phi135797%_
                                      _%name135798%_
                                      _%src-name135799%_
                                      _%src-phi135800%_
                                      _%src-key135801%_
                                      _%src-ctx135802%_)
                               (cons _%phi135797%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name135798%_)
                                           (cons _%src-phi135800%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name135799%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in135778135790%_
                              'gx#module-import::t))
                           (let ((_%e135782135807%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in135778135790%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e135782135807%_
                                    'gx#module-export::t))
                                 (let* ((_%e135785135810%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135782135807%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx135813%_ _%e135785135810%_)
                                        (_%e135786135815%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135782135807%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key135818%_ _%e135786135815%_)
                                        (_%e135787135820%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135782135807%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi135823%_ _%e135787135820%_)
                                        (_%e135788135825%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135782135807%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name135828%_ _%e135788135825%_)
                                        (_%e135783135830%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in135778135790%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name135833%_ _%e135783135830%_)
                                        (_%e135784135835%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in135778135790%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi135838%_ _%e135784135835%_))
                                   (_%K135781135804%_
                                    _%phi135838%_
                                    _%name135833%_
                                    _%src-name135828%_
                                    _%src-phi135823%_
                                    _%src-key135818%_
                                    _%src-ctx135813%_))
                                 (_%E135780135794%_)))
                           (_%E135780135794%_)))))
                  (_%make-import-path135609%_
                   (lambda (_%ctx135775%_)
                     (gxc#generate-meta-import-path
                      _%ctx135775%_
                      _%context-chain135607%_)))
                  (_%make-import-spec-in135610%_
                   (lambda (_%ctx135772%_ _%in135773%_)
                     (cons 'spec:
                           (cons (_%make-import-path135609%_ _%ctx135772%_)
                                 (reverse _%in135773%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self135604%_ 'state)))
          (let* ((_%g135612135622%_
                  (lambda (_%g135613135619%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135613135619%_))))
                 (_%g135611135769%_
                  (lambda (_%g135613135625%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135613135625%_))
                        (let ((_%e135615135627%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135613135625%_))))
                          (let ((_%hd135616135630%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135615135627%_)))
                                (_%tl135617135632%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135615135627%_))))
                            ((lambda (_%L135635%_)
                               (let _%lp135646%_ ((_%rest135648%_ _%L135635%_)
                                                  (_%current-src135649%_ '#f)
                                                  (_%current-in135650%_ '())
                                                  (_%r135651%_ '()))
                                 (let* ((_%rest135652135660%_ _%rest135648%_)
                                        (_%else135654135670%_
                                         (lambda ()
                                           (let ((_%r135668%_
                                                  (if _%current-src135649%_
                                                      (cons (_%make-import-spec-in135610%_
                                                             _%current-src135649%_
                                                             _%current-in135650%_)
                                                            _%r135651%_)
                                                      _%r135651%_)))
                                             (cons '%#import
                                                   (reverse _%r135668%_)))))
                                        (_%K135656135757%_
                                         (lambda (_%rest135673%_ _%in135674%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in135674%_
                                                  'gx#module-import::t))
                                               (let* ((_%in135676135683%_
                                                       _%in135674%_)
                                                      (_%E135678135687%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in135676135683%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K135679135695%_
               (lambda (_%src-ctx135690%_)
                 (if (eq? _%current-src135649%_ _%src-ctx135690%_)
                     (_%lp135646%_
                      _%rest135673%_
                      _%current-src135649%_
                      (cons (_%make-import-spec135608%_ _%in135674%_)
                            _%current-in135650%_)
                      _%r135651%_)
                     (if _%current-src135649%_
                         (_%lp135646%_
                          _%rest135673%_
                          _%src-ctx135690%_
                          (cons (_%make-import-spec135608%_ _%in135674%_) '())
                          (cons (_%make-import-spec-in135610%_
                                 _%current-src135649%_
                                 _%current-in135650%_)
                                _%r135651%_))
                         (_%lp135646%_
                          _%rest135673%_
                          _%src-ctx135690%_
                          (cons (_%make-import-spec135608%_ _%in135674%_) '())
                          _%r135651%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%in135676135683%_
                                                        'gx#module-import::t))
                                                     (let ((_%e135680135698%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in135676135683%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _%e135680135698%_
                                                              'gx#module-export::t))
                                                           (let* ((_%e135681135701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%e135680135698%_
                              '1
                              '#f
                              '#f)))
                          (_%src-ctx135704%_ _%e135681135701%_))
                     (_%K135679135695%_ _%src-ctx135704%_))
                   (_%E135678135687%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E135678135687%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in135674%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi135707%_
                                                           (##direct-structure-ref
                                                            _%in135674%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_%src135709%_
                                                           (##direct-structure-ref
                                                            _%in135674%_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_%src-in135749%_
                                                           (let* ((_%g135710135719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path135609%_ _%src135709%_))
                          (_%E135713135723%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g135710135719%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K135715135739%_
                            (lambda (_%path135737%_) _%path135737%_))
                           (_%K135714135729%_
                            (lambda (_%path135727%_)
                              (cons 'in: _%path135727%_))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g135710135719%_))
                           (let ((_%tl135717135744%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g135710135719%_)))
                                 (_%hd135716135742%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g135710135719%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tl135717135744%_))
                                 (let ((_%path135747%_ _%hd135716135742%_))
                                   (_%K135715135739%_ _%path135747%_))
                                 (let ((_%path135732%_ _%g135710135719%_))
                                   (_%K135714135729%_ _%path135732%_))))
                           (let ((_%path135732%_ _%g135710135719%_))
                             (_%K135714135729%_ _%path135732%_))))))
                  (_%r135751%_
                   (if _%current-src135649%_
                       (cons (_%make-import-spec-in135610%_
                              _%current-src135649%_
                              _%current-in135650%_)
                             _%r135651%_)
                       _%r135651%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp135646%_
                                                      _%rest135673%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi135707%_)
                                                                _%src-in135749%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi135707%_
                                    (cons _%src-in135749%_ '()))))
                    _%r135751%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in135674%_
                                                          'gx#module-context::t))
                                                       (let ((_%r135755%_
                                                              (if _%current-src135649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in135610%_
                                 _%current-src135649%_
                                 _%current-in135650%_)
                                _%r135651%_)
                          _%r135651%_)))
                 (_%lp135646%_
                  _%rest135673%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path135609%_ _%in135674%_))
                        _%r135755%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest135652135660%_))
                                       (let ((_%hd135657135760%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest135652135660%_)))
                                             (_%tl135658135762%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest135652135660%_))))
                                         (let* ((_%in135765%_
                                                 _%hd135657135760%_)
                                                (_%rest135767%_
                                                 _%tl135658135762%_))
                                           (_%K135656135757%_
                                            _%rest135767%_
                                            _%in135765%_)))
                                       (_%else135654135670%_)))))
                             _%tl135617135632%_)))
                        (_%g135612135622%_ _%g135613135625%_)))))
            (_%g135611135769%_ _%stx135605%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self135414%_ _%stx135415%_)
        (letrec* ((_%context-chain135417%_ (gxc#current-context-chain))
                  (_%make-import-path135418%_
                   (lambda (_%ctx135602%_)
                     (gxc#generate-meta-import-path
                      _%ctx135602%_
                      _%context-chain135417%_))))
          (let* ((_%g135420135430%_
                  (lambda (_%g135421135427%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135421135427%_))))
                 (_%g135419135599%_
                  (lambda (_%g135421135433%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135421135433%_))
                        (let ((_%e135423135435%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135421135433%_))))
                          (let ((_%hd135424135438%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135423135435%_)))
                                (_%tl135425135440%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135423135435%_))))
                            ((lambda (_%L135443%_)
                               (let _%lp135454%_ ((_%rest135456%_ _%L135443%_)
                                                  (_%r135457%_ '()))
                                 (let* ((_%rest135458135466%_ _%rest135456%_)
                                        (_%else135460135474%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r135457%_))))
                                        (_%K135462135587%_
                                         (lambda (_%rest135477%_ _%out135478%_)
                                           (let* ((_%out135479135492%_
                                                   _%out135478%_)
                                                  (_%E135482135496%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out135479135492%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K135486135566%_
                                                    (lambda (_%name135562%_
                                                             _%phi135563%_
                                                             _%key135564%_)
                                                      (_%lp135454%_
                                                       _%rest135477%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi135563%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key135564%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name135562%_)
                                             '()))))
                     _%r135457%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K135483135546%_
                                                    (lambda (_%phi135500%_
                                                             _%src135501%_)
                                                      (let* ((_%out135541%_
                                                              (if _%src135501%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g135502135511%_
                                              (_%make-import-path135418%_
                                               _%src135501%_))
                                             (_%E135505135515%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g135502135511%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K135507135531%_
                                               (lambda (_%path135529%_)
                                                 _%path135529%_))
                                              (_%K135506135521%_
                                               (lambda (_%path135519%_)
                                                 (cons 'in: _%path135519%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g135502135511%_))
                                              (let ((_%tl135509135536%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g135502135511%_)))
                                                    (_%hd135508135534%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g135502135511%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl135509135536%_))
                                                    (let ((_%path135539%_
                                                           _%hd135508135534%_))
                                                      (_%K135507135531%_
                                                       _%path135539%_))
                                                    (let ((_%path135524%_
                                                           _%g135502135511%_))
                                                      (_%K135506135521%_
                                                       _%path135524%_))))
                                              (let ((_%path135524%_
                                                     _%g135502135511%_))
                                                (_%K135506135521%_
                                                 _%path135524%_)))))
                                      '()))
                          '#t))
                     (_%out135543%_
                      (if (fxzero? _%phi135500%_)
                          _%out135541%_
                          (cons 'phi:
                                (cons _%phi135500%_
                                      (cons _%out135541%_ '()))))))
                (_%lp135454%_
                 _%rest135477%_
                 (cons _%out135543%_ _%r135457%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match135481135559%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out135479135492%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e135484135549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out135479135492%_
                               '1
                               '#f
                               '#f)))
                           (_%e135485135554%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out135479135492%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src135552%_ _%e135484135549%_)
                            (_%phi135557%_ _%e135485135554%_))
                        (_%K135483135546%_ _%phi135557%_ _%src135552%_)))
                    (_%E135482135496%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out135479135492%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e135487135569%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out135479135492%_
                        '1
                        '#f
                        '#f)))
                    (_%e135488135572%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135479135492%_
                        '2
                        '#f
                        '#f)))
                    (_%e135489135577%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135479135492%_
                        '3
                        '#f
                        '#f)))
                    (_%e135490135582%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135479135492%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key135575%_ _%e135488135572%_)
                     (_%phi135580%_ _%e135489135577%_)
                     (_%name135585%_ _%e135490135582%_))
                 (_%K135486135566%_
                  _%name135585%_
                  _%phi135580%_
                  _%key135575%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match135481135559%_))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest135458135466%_))
                                       (let ((_%hd135463135590%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest135458135466%_)))
                                             (_%tl135464135592%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest135458135466%_))))
                                         (let* ((_%out135595%_
                                                 _%hd135463135590%_)
                                                (_%rest135597%_
                                                 _%tl135464135592%_))
                                           (_%K135462135587%_
                                            _%rest135597%_
                                            _%out135595%_)))
                                       (_%else135460135474%_)))))
                             _%tl135425135440%_)))
                        (_%g135420135430%_ _%g135421135433%_)))))
            (_%g135419135599%_ _%stx135415%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self135375%_ _%stx135376%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self135375%_ 'state)))
        (let* ((_%g135378135388%_
                (lambda (_%g135379135385%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135379135385%_))))
               (_%g135377135411%_
                (lambda (_%g135379135391%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135379135391%_))
                      (let ((_%e135381135393%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135379135391%_))))
                        (let ((_%hd135382135396%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135381135393%_)))
                              (_%tl135383135398%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135381135393%_))))
                          ((lambda (_%L135401%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L135401%_)))
                           _%tl135383135398%_)))
                      (_%g135378135388%_ _%g135379135391%_)))))
          (_%g135377135411%_ _%stx135376%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self135246%_ _%stx135247%_)
        (letrec ((_%generate1135249%_
                  (lambda (_%id135370%_ _%eid135371%_)
                    (let ((_%eid135373%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid135371%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid135373%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx135247%_
                             _%eid135373%_)))
                      (cons (gxc#generate-runtime-identifier _%id135370%_)
                            (cons _%eid135373%_ '()))))))
          (let* ((_%g135251135279%_
                  (lambda (_%g135252135276%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135252135276%_))))
                 (_%g135250135367%_
                  (lambda (_%g135252135282%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135252135282%_))
                        (let ((_%e135255135284%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135252135282%_))))
                          (let ((_%hd135256135287%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135255135284%_)))
                                (_%tl135257135289%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135255135284%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl135257135289%_))
                                (let ((_g145045_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl135257135289%_
                                          '0))))
                                  (begin
                                    (let ((_g145046_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145045_)
                                                 (##vector-length _g145045_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145046_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145046_)))
                                    (let ((_%target135258135292%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145045_ 0)))
                                          (_%tl135260135294%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145045_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl135260135294%_))
                                          (letrec ((_%loop135261135297%_
                                                    (lambda (_%hd135259135300%_
                                                             _%eid135265135302%_
                                                             _%id135266135304%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd135259135300%_))
                                                          (let ((_%e135262135307%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd135259135300%_))))
                    (let ((_%lp-hd135263135310%_
                           (let ()
                             (declare (not safe))
                             (##car _%e135262135307%_)))
                          (_%lp-tl135264135312%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e135262135307%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd135263135310%_))
                          (let ((_%e135269135315%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd135263135310%_))))
                            (let ((_%hd135270135318%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e135269135315%_)))
                                  (_%tl135271135320%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e135269135315%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl135271135320%_))
                                  (let ((_%e135272135323%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl135271135320%_))))
                                    (let ((_%hd135273135326%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e135272135323%_)))
                                          (_%tl135274135328%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e135272135323%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl135274135328%_))
                                          (_%loop135261135297%_
                                           _%lp-tl135264135312%_
                                           (cons _%hd135273135326%_
                                                 _%eid135265135302%_)
                                           (cons _%hd135270135318%_
                                                 _%id135266135304%_))
                                          (_%g135251135279%_
                                           _%g135252135282%_))))
                                  (_%g135251135279%_ _%g135252135282%_))))
                          (_%g135251135279%_ _%g135252135282%_))))
                  (let ((_%eid135267135331%_ (reverse _%eid135265135302%_))
                        (_%id135268135333%_ (reverse _%id135266135304%_)))
                    ((lambda (_%L135336%_ _%L135337%_)
                       (cons '%#extern
                             (map _%generate1135249%_
                                  (let ((__tmp145047
                                         (lambda (_%g135352135355%_
                                                  _%g135353135357%_)
                                           (cons _%g135352135355%_
                                                 _%g135353135357%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145047 '() _%L135337%_))
                                  (let ((__tmp145048
                                         (lambda (_%g135359135362%_
                                                  _%g135360135364%_)
                                           (cons _%g135359135362%_
                                                 _%g135360135364%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145048 '() _%L135336%_)))))
                     _%eid135267135331%_
                     _%id135268135333%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop135261135297%_
                                             _%target135258135292%_
                                             '()
                                             '()))
                                          (_%g135251135279%_
                                           _%g135252135282%_)))))
                                (_%g135251135279%_ _%g135252135282%_))))
                        (_%g135251135279%_ _%g135252135282%_)))))
            (_%g135250135367%_ _%stx135247%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self135036%_ _%stx135037%_)
        (letrec ((_%generate1135039%_
                  (lambda (_%id135241%_)
                    (let ((_%eid135243%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id135241%_)))
                          (_%ident135244%_
                           (gxc#generate-runtime-identifier _%id135241%_)))
                      (cons '%#define-runtime
                            (cons _%ident135244%_ (cons _%eid135243%_ '()))))))
                 (_%generate*135040%_
                  (lambda (_%all135209%_)
                    (let* ((_%all135210135218%_ _%all135209%_)
                           (_%else135212135226%_
                            (lambda () (cons '%#begin _%all135209%_)))
                           (_%K135214135231%_
                            (lambda (_%one135229%_) _%one135229%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all135210135218%_))
                          (let ((_%hd135215135234%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all135210135218%_)))
                                (_%tl135216135236%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all135210135218%_))))
                            (let ((_%one135239%_ _%hd135215135234%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl135216135236%_))
                                  (_%K135214135231%_ _%one135239%_)
                                  (_%else135212135226%_))))
                          (_%else135212135226%_))))))
          (let* ((_%g135042135059%_
                  (lambda (_%g135043135056%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135043135056%_))))
                 (_%g135041135206%_
                  (lambda (_%g135043135062%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135043135062%_))
                        (let ((_%e135046135064%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135043135062%_))))
                          (let ((_%hd135047135067%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135046135064%_)))
                                (_%tl135048135069%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135046135064%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl135048135069%_))
                                (let ((_%e135049135072%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl135048135069%_))))
                                  (let ((_%hd135050135075%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135049135072%_)))
                                        (_%tl135051135077%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135049135072%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135051135077%_))
                                        (let ((_%e135052135080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135051135077%_))))
                                          (let ((_%hd135053135083%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135052135080%_)))
                                                (_%tl135054135085%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135052135080%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135054135085%_))
                                                ((lambda (_%L135088%_
                                                          _%L135089%_)
                                                   (let _%lp135105%_ ((_%rest135107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L135089%_)
                              (_%r135108%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx144784144785%_
                                                             _%rest135107%_)
                                                            (_%g135113135130%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx144784144785%_)))))
               (let ((_%__kont144786144787%_
                      (lambda (_%L135193%_)
                        (_%lp135105%_ _%L135193%_ _%r135108%_)))
                     (_%__kont144788144789%_
                      (lambda (_%L135166%_ _%L135167%_)
                        (_%lp135105%_
                         _%L135166%_
                         (cons (_%generate1135039%_ _%L135167%_)
                               _%r135108%_))))
                     (_%__kont144790144791%_
                      (lambda (_%L135142%_)
                        (_%generate*135040%_
                         (let ((__tmp145049
                                (cons (_%generate1135039%_ _%L135142%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp145049 _%r135108%_)))))
                     (_%__kont144792144793%_
                      (lambda () (_%generate*135040%_ (reverse _%r135108%_)))))
                 (let ((_%g135111135153%_
                        (lambda ()
                          (let ((_%L135142%_ _%__stx144784144785%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L135142%_))
                                (_%__kont144790144791%_ _%L135142%_)
                                (_%__kont144792144793%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx144784144785%_))
                       (let ((_%e135116135182%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx144784144785%_))))
                         (let ((_%tl135118135187%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e135116135182%_)))
                               (_%hd135117135185%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e135116135182%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd135117135185%_))
                               (let ((_%e135119135190%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd135117135185%_))))
                                 (if (equal? _%e135119135190%_ '#f)
                                     (_%__kont144786144787%_
                                      _%tl135118135187%_)
                                     (_%__kont144788144789%_
                                      _%tl135118135187%_
                                      _%hd135117135185%_)))
                               (_%__kont144788144789%_
                                _%tl135118135187%_
                                _%hd135117135185%_))))
                       (let () (declare (not safe)) (_%g135111135153%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd135053135083%_
                                                 _%hd135050135075%_)
                                                (_%g135042135059%_
                                                 _%g135043135062%_))))
                                        (_%g135042135059%_
                                         _%g135043135062%_))))
                                (_%g135042135059%_ _%g135043135062%_))))
                        (_%g135042135059%_ _%g135043135062%_)))))
            (_%g135041135206%_ _%stx135037%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self134933%_ _%stx134934%_)
        (let* ((_%g134936134953%_
                (lambda (_%g134937134950%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134937134950%_))))
               (_%g134935135033%_
                (lambda (_%g134937134956%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134937134956%_))
                      (let ((_%e134940134958%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134937134956%_))))
                        (let ((_%hd134941134961%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134940134958%_)))
                              (_%tl134942134963%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134940134958%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134942134963%_))
                              (let ((_%e134943134966%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134942134963%_))))
                                (let ((_%hd134944134969%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134943134966%_)))
                                      (_%tl134945134971%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134943134966%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134945134971%_))
                                      (let ((_%e134946134974%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134945134971%_))))
                                        (let ((_%hd134947134977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134946134974%_)))
                                              (_%tl134948134979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134946134974%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134948134979%_))
                                              ((lambda (_%L134982%_
                                                        _%L134983%_)
                                                 (let* ((_%eid134998%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L134983%_)))
                                                        (_%phi135000%_
                                                         (let ((__tmp145050
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp145050 '1)))
                (_%block135002%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self134933%_ 'state))
                  _%phi135000%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g135005135012%_
                                                           (lambda (_%g135006135009%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g135006135009%_))))
                  (_%g135004135030%_
                   (lambda (_%g135006135015%_)
                     ((lambda (_%L135017%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self134933%_ 'state))
                         _%phi135000%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L135017%_ (cons _%L134982%_ '())))))
                      _%g135006135015%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g135004135030%_
                                                      _%eid134998%_))
                                                   (if _%block135002%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block135002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L134983%_)
                                             (cons _%eid134998%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L134983%_)
                           (cons _%eid134998%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd134947134977%_
                                               _%hd134944134969%_)
                                              (_%g134936134953%_
                                               _%g134937134956%_))))
                                      (_%g134936134953%_ _%g134937134956%_))))
                              (_%g134936134953%_ _%g134937134956%_))))
                      (_%g134936134953%_ _%g134937134956%_)))))
          (_%g134935135033%_ _%stx134934%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self134865%_ _%stx134866%_)
        (let* ((_%g134868134885%_
                (lambda (_%g134869134882%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134869134882%_))))
               (_%g134867134930%_
                (lambda (_%g134869134888%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134869134888%_))
                      (let ((_%e134872134890%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134869134888%_))))
                        (let ((_%hd134873134893%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134872134890%_)))
                              (_%tl134874134895%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134872134890%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134874134895%_))
                              (let ((_%e134875134898%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134874134895%_))))
                                (let ((_%hd134876134901%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134875134898%_)))
                                      (_%tl134877134903%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134875134898%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134877134903%_))
                                      (let ((_%e134878134906%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134877134903%_))))
                                        (let ((_%hd134879134909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134878134906%_)))
                                              (_%tl134880134911%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134878134906%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134880134911%_))
                                              ((lambda (_%L134914%_
                                                        _%L134915%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L134915%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L134914%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd134879134909%_
                                               _%hd134876134901%_)
                                              (_%g134868134885%_
                                               _%g134869134888%_))))
                                      (_%g134868134885%_ _%g134869134888%_))))
                              (_%g134868134885%_ _%g134869134888%_))))
                      (_%g134868134885%_ _%g134869134888%_)))))
          (_%g134867134930%_ _%stx134866%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self134862%_ _%stx134863%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self134862%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx134863%_)
        (gxc#generate-meta-define-values% _%self134862%_ _%stx134863%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self134859%_ _%stx134860%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self134859%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx134860%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp145052 (list)) (__tmp145051 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp145052
         '(src n open blocks)
         __tmp145051
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args134856%_
        (apply make-instance gxc#meta-state::t _%$args134856%_)))
    (define gxc#meta-state-src
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#meta-state::t 'src)))
    (define gxc#meta-state-n
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#meta-state::t 'n)))
    (define gxc#meta-state-open
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#meta-state::t 'open)))
    (define gxc#meta-state-blocks
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#meta-state::t 'blocks)))
    (define gxc#meta-state-src-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#meta-state::t 'src)))
    (define gxc#meta-state-n-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#meta-state::t 'n)))
    (define gxc#meta-state-open-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#meta-state::t 'open)))
    (define gxc#meta-state-blocks-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#meta-state::t 'blocks)))
    (define gxc#&meta-state-src
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#meta-state::t 'src)))
    (define gxc#&meta-state-n
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#meta-state::t 'n)))
    (define gxc#&meta-state-open
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#meta-state::t 'open)))
    (define gxc#&meta-state-blocks
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#meta-state::t 'blocks)))
    (define gxc#&meta-state-src-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#meta-state::t 'src)))
    (define gxc#&meta-state-n-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#meta-state::t 'n)))
    (define gxc#&meta-state-open-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#meta-state::t 'open)))
    (define gxc#&meta-state-blocks-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#meta-state::t 'blocks)))
    (define gxc#meta-state:::init!
      (lambda (_%self134842%_ _%ctx134843%_)
        (let ((_%self134846%_ _%self134842%_))
          (if (let ((__tmp145053
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self134846%_))))
                (declare (not safe))
                (##fx< '4 __tmp145053))
              (begin
                (let ((__tmp145054
                       (let ((__tmp145055
                              (##structure-ref
                               _%ctx134843%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp145055))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self134846%_
                   __tmp145054
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self134846%_ '1 '2 '#f '#f))
                (let ((__tmp145056
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self134846%_
                   __tmp145056
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self134846%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp145057
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self134846%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self134846%_
                       '4
                       __tmp145057))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp145059 (list)) (__tmp145058 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp145059
         '(ctx phi n code)
         __tmp145058
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args134717%_
        (apply make-instance gxc#meta-state-block::t _%$args134717%_)))
    (define gxc#meta-state-block-ctx
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#meta-state-block::t 'ctx)))
    (define gxc#meta-state-block-phi
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#meta-state-block::t 'phi)))
    (define gxc#meta-state-block-n
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#meta-state-block::t 'n)))
    (define gxc#meta-state-block-code
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#meta-state-block::t 'code)))
    (define gxc#meta-state-block-ctx-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#meta-state-block::t 'ctx)))
    (define gxc#meta-state-block-phi-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#meta-state-block::t 'phi)))
    (define gxc#meta-state-block-n-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#meta-state-block::t 'n)))
    (define gxc#meta-state-block-code-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#meta-state-block::t 'code)))
    (define gxc#&meta-state-block-ctx
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#meta-state-block::t 'ctx)))
    (define gxc#&meta-state-block-phi
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#meta-state-block::t 'phi)))
    (define gxc#&meta-state-block-n
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#meta-state-block::t 'n)))
    (define gxc#&meta-state-block-code
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#meta-state-block::t 'code)))
    (define gxc#&meta-state-block-ctx-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#meta-state-block::t 'ctx)))
    (define gxc#&meta-state-block-phi-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#meta-state-block::t 'phi)))
    (define gxc#&meta-state-block-n-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#meta-state-block::t 'n)))
    (define gxc#&meta-state-block-code-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#meta-state-block::t 'code)))
    (define gxc#meta-state-begin-phi!
      (lambda (_%state134676%_ _%phi134677%_)
        (let* ((_%state134678134686%_ _%state134676%_)
               (_%E134680134690%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state134678134686%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K134681134699%_
                (lambda (_%open134693%_ _%n134694%_ _%src134695%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open134693%_ _%phi134677%_))
                      '#f
                      (let ((_%block-ref134697%_
                             (let ((__tmp145060 (number->string _%n134694%_)))
                               (declare (not safe))
                               (##string-append
                                _%src134695%_
                                '"~"
                                __tmp145060))))
                        (##structure-set!
                         _%state134676%_
                         (let () (declare (not safe)) (##fx+ _%n134694%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp145061
                               (let ((__tmp145062
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp145062
                                  _%phi134677%_
                                  _%n134694%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open134693%_ _%phi134677%_ __tmp145061))
                        _%block-ref134697%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state134678134686%_
                 'gxc#meta-state::t))
              (let* ((_%e134682134702%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134678134686%_
                         '1
                         '#f
                         '#f)))
                     (_%src134705%_ _%e134682134702%_)
                     (_%e134683134707%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134678134686%_
                         '2
                         '#f
                         '#f)))
                     (_%n134710%_ _%e134683134707%_)
                     (_%e134684134712%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134678134686%_
                         '3
                         '#f
                         '#f)))
                     (_%open134715%_ _%e134684134712%_))
                (_%K134681134699%_ _%open134715%_ _%n134710%_ _%src134705%_))
              (_%E134680134690%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state134670%_ _%phi134671%_ _%stx134672%_)
        (let ((_%block134674%_
               (let ((__tmp145063
                      (##structure-ref
                       _%state134670%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp145063 _%phi134671%_))))
          (##structure-set!
           _%block134674%_
           (cons _%stx134672%_
                 (##structure-ref
                  _%block134674%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state134664%_)
        (##structure-set!
         _%state134664%_
         (let ((__tmp145066
                (lambda (_%_134666%_ _%block134667%_ _%r134668%_)
                  (cons _%block134667%_ _%r134668%_)))
               (__tmp145065
                (##structure-ref _%state134664%_ '4 gxc#meta-state::t '#f))
               (__tmp145064
                (##structure-ref _%state134664%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp145066 __tmp145065 __tmp145064))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state134664%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state134616%_)
        (gxc#meta-state-end-phi! _%state134616%_)
        (let ((__tmp145068
               (lambda (_%block134618%_ _%r134619%_)
                 (let* ((_%block134620134629%_ _%block134618%_)
                        (_%E134622134633%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block134620134629%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K134623134641%_
                         (lambda (_%code134636%_
                                  _%n134637%_
                                  _%phi134638%_
                                  _%ctx134639%_)
                           (if (null? _%code134636%_)
                               _%r134619%_
                               (cons (cons _%ctx134639%_
                                           (cons _%phi134638%_
                                                 (cons _%n134637%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code134636%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r134619%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block134620134629%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e134624134644%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134620134629%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx134647%_ _%e134624134644%_)
                              (_%e134625134649%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134620134629%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi134652%_ _%e134625134649%_)
                              (_%e134626134654%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134620134629%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n134657%_ _%e134626134654%_)
                              (_%e134627134659%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134620134629%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code134662%_ _%e134627134659%_))
                         (_%K134623134641%_
                          _%code134662%_
                          _%n134657%_
                          _%phi134652%_
                          _%ctx134647%_))
                       (_%E134622134633%_)))))
              (__tmp145067
               (##structure-ref _%state134616%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp145068 '() __tmp145067))))
    (define gxc#collect-expression-refs
      (lambda (_%stx134612%_)
        (let ((_%ht134614%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht134614%_ _%stx134612%_)
          _%ht134614%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self134555%_ _%stx134556%_)
        (let* ((_%g134558134571%_
                (lambda (_%g134559134568%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134559134568%_))))
               (_%g134557134609%_
                (lambda (_%g134559134574%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134559134574%_))
                      (let ((_%e134561134576%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134559134574%_))))
                        (let ((_%hd134562134579%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134561134576%_)))
                              (_%tl134563134581%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134561134576%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134563134581%_))
                              (let ((_%e134564134584%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134563134581%_))))
                                (let ((_%hd134565134587%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134564134584%_)))
                                      (_%tl134566134589%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134564134584%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl134566134589%_))
                                      ((lambda (_%L134592%_)
                                         (let* ((_%bind134604%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L134592%_)))
                                                (_%eid134606%_
                                                 (if _%bind134604%_
                                                     (##structure-ref
                                                      _%bind134604%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L134592%_))))
                                                (__tmp145069
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self134555%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp145069
                                            _%eid134606%_
                                            _%eid134606%_)))
                                       _%hd134565134587%_)
                                      (_%g134558134571%_ _%g134559134574%_))))
                              (_%g134558134571%_ _%g134559134574%_))))
                      (_%g134558134571%_ _%g134559134574%_)))))
          (_%g134557134609%_ _%stx134556%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self134482%_ _%stx134483%_)
        (let* ((_%g134485134502%_
                (lambda (_%g134486134499%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134486134499%_))))
               (_%g134484134552%_
                (lambda (_%g134486134505%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134486134505%_))
                      (let ((_%e134489134507%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134486134505%_))))
                        (let ((_%hd134490134510%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134489134507%_)))
                              (_%tl134491134512%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134489134507%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134491134512%_))
                              (let ((_%e134492134515%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134491134512%_))))
                                (let ((_%hd134493134518%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134492134515%_)))
                                      (_%tl134494134520%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134492134515%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134494134520%_))
                                      (let ((_%e134495134523%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134494134520%_))))
                                        (let ((_%hd134496134526%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134495134523%_)))
                                              (_%tl134497134528%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134495134523%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134497134528%_))
                                              ((lambda (_%L134531%_
                                                        _%L134532%_)
                                                 (let* ((_%bind134547%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L134532%_)))
                                                        (_%eid134549%_
                                                         (if _%bind134547%_
                                                             (##structure-ref
                                                              _%bind134547%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L134532%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp145070
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self134482%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp145070
                                                      _%eid134549%_
                                                      _%eid134549%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self134482%_
                                                      _%L134531%_))))
                                               _%hd134496134526%_
                                               _%hd134493134518%_)
                                              (_%g134485134502%_
                                               _%g134486134505%_))))
                                      (_%g134485134502%_ _%g134486134505%_))))
                              (_%g134485134502%_ _%g134486134505%_))))
                      (_%g134485134502%_ _%g134486134505%_)))))
          (_%g134484134552%_ _%stx134483%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self134439%_ _%stx134440%_)
        (let* ((_%g134442134452%_
                (lambda (_%g134443134449%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134443134449%_))))
               (_%g134441134479%_
                (lambda (_%g134443134455%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134443134455%_))
                      (let ((_%e134445134457%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134443134455%_))))
                        (let ((_%hd134446134460%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134445134457%_)))
                              (_%tl134447134462%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134445134457%_))))
                          ((lambda (_%L134465%_)
                             (let ((__tmp145071
                                    (lambda (_%g134474134476%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self134439%_
                                         _%g134474134476%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp145071 _%L134465%_)))
                           _%tl134447134462%_)))
                      (_%g134442134452%_ _%g134443134455%_)))))
          (_%g134441134479%_ _%stx134440%_))))
    (define gxc#count-values-single%
      (lambda (_%self134436%_ _%stx134437%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self134302%_ _%stx134303%_)
        (let* ((_%__stx144814144815%_ _%stx134303%_)
               (_%g134306134335%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144814144815%_)))))
          (let ((_%__kont144816144817%_
                 (lambda (_%L134403%_ _%L134404%_)
                   (length (let ((__tmp145072
                                  (lambda (_%g134425134428%_ _%g134426134430%_)
                                    (cons _%g134425134428%_
                                          _%g134426134430%_))))
                             (declare (not safe))
                             (__foldr1 __tmp145072 '() _%L134403%_)))))
                (_%__kont144820144821%_ (lambda () '#f)))
            (let ((_%__match144859144860%_
                   (lambda (_%e134310134347%_
                            _%hd134311134350%_
                            _%tl134312134352%_
                            _%e134313134355%_
                            _%hd134314134358%_
                            _%tl134315134360%_
                            _%e134316134363%_
                            _%hd134317134366%_
                            _%tl134318134368%_
                            _%e134319134371%_
                            _%hd134320134374%_
                            _%tl134321134376%_
                            _%__splice144818144819%_
                            _%target134322134379%_
                            _%tl134324134381%_)
                     (letrec ((_%loop134325134384%_
                               (lambda (_%hd134323134387%_
                                        _%rand134329134389%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd134323134387%_))
                                     (let ((_%e134326134392%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd134323134387%_))))
                                       (let ((_%lp-tl134328134397%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e134326134392%_)))
                                             (_%lp-hd134327134395%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e134326134392%_))))
                                         (_%loop134325134384%_
                                          _%lp-tl134328134397%_
                                          (cons _%lp-hd134327134395%_
                                                _%rand134329134389%_))))
                                     (let ((_%rand134330134400%_
                                            (reverse _%rand134329134389%_)))
                                       (let ((_%L134403%_ _%rand134330134400%_)
                                             (_%L134404%_ _%hd134320134374%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L134404%_
                                                'values))
                                             (_%__kont144816144817%_
                                              _%L134403%_
                                              _%L134404%_)
                                             (_%__kont144820144821%_))))))))
                       (_%loop134325134384%_ _%target134322134379%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144814144815%_))
                  (let ((_%e134310134347%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144814144815%_))))
                    (let ((_%tl134312134352%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e134310134347%_)))
                          (_%hd134311134350%_
                           (let ()
                             (declare (not safe))
                             (##car _%e134310134347%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl134312134352%_))
                          (let ((_%e134313134355%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl134312134352%_))))
                            (let ((_%tl134315134360%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e134313134355%_)))
                                  (_%hd134314134358%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e134313134355%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd134314134358%_))
                                  (let ((_%e134316134363%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd134314134358%_))))
                                    (let ((_%tl134318134368%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e134316134363%_)))
                                          (_%hd134317134366%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e134316134363%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd134317134366%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd134317134366%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl134318134368%_))
                                                  (let ((_%e134319134371%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl134318134368%_))))
                                                    (let ((_%tl134321134376%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e134319134371%_)))
                                                          (_%hd134320134374%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e134319134371%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl134321134376%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl134315134360%_))
                      (let ((_%__splice144818144819%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl134315134360%_
                                '0))))
                        (let ((_%tl134324134381%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144818144819%_ '1)))
                              (_%target134322134379%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144818144819%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl134324134381%_))
                              (_%__match144859144860%_
                               _%e134310134347%_
                               _%hd134311134350%_
                               _%tl134312134352%_
                               _%e134313134355%_
                               _%hd134314134358%_
                               _%tl134315134360%_
                               _%e134316134363%_
                               _%hd134317134366%_
                               _%tl134318134368%_
                               _%e134319134371%_
                               _%hd134320134374%_
                               _%tl134321134376%_
                               _%__splice144818144819%_
                               _%target134322134379%_
                               _%tl134324134381%_)
                              (_%__kont144820144821%_))))
                      (_%__kont144820144821%_))
                  (_%__kont144820144821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144820144821%_))
                                              (_%__kont144820144821%_))
                                          (_%__kont144820144821%_))))
                                  (_%__kont144820144821%_))))
                          (_%__kont144820144821%_))))
                  (_%__kont144820144821%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self134205%_ _%stx134206%_)
        (let* ((_%g134208134229%_
                (lambda (_%g134209134226%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134209134226%_))))
               (_%g134207134299%_
                (lambda (_%g134209134232%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134209134232%_))
                      (let ((_%e134213134234%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134209134232%_))))
                        (let ((_%hd134214134237%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134213134234%_)))
                              (_%tl134215134239%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134213134234%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134215134239%_))
                              (let ((_%e134216134242%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134215134239%_))))
                                (let ((_%hd134217134245%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134216134242%_)))
                                      (_%tl134218134247%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134216134242%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134218134247%_))
                                      (let ((_%e134219134250%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134218134247%_))))
                                        (let ((_%hd134220134253%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134219134250%_)))
                                              (_%tl134221134255%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134219134250%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl134221134255%_))
                                              (let ((_%e134222134258%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl134221134255%_))))
                                                (let ((_%hd134223134261%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e134222134258%_)))
                                                      (_%tl134224134263%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e134222134258%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl134224134263%_))
                                                      ((lambda (_%L134266%_
                                                                _%L134267%_
                                                                _%L134268%_)
                                                         (let ((_%c1134285134287%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self134205%_ _%L134267%_))))
                   (if _%c1134285134287%_
                       (let* ((_%c1134290%_ _%c1134285134287%_)
                              (_%c2134291134293%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self134205%_
                                  _%L134266%_))))
                         (if _%c2134291134293%_
                             (let ((_%c2134296%_ _%c2134291134293%_))
                               (if (fx= _%c1134290%_ _%c2134296%_)
                                   _%c1134290%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd134223134261%_
               _%hd134220134253%_
               _%hd134217134245%_)
              (_%g134208134229%_ _%g134209134232%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g134208134229%_
                                               _%g134209134232%_))))
                                      (_%g134208134229%_ _%g134209134232%_))))
                              (_%g134208134229%_ _%g134209134232%_))))
                      (_%g134208134229%_ _%g134209134232%_)))))
          (_%g134207134299%_ _%stx134206%_))))))
