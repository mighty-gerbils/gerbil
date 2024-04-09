(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1712696214)
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
        (letrec ((_%hash-e144374%_
                  (lambda (_%id144376%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id144376%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e144374%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp145761 (list gxc#::void::t))
            (__tmp145760 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp145761
         '()
         __tmp145760
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args144370%_
        (apply make-instance gxc#::collect-bindings::t _%$args144370%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp145762
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
        (__make-promise __tmp145762)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx144362%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self144365%_
                (let ((__obj145736
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj145736))
               (__tmp145763
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144365%_ _%stx144362%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145763
           gxc#current-compile-method
           _%self144365%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp145765 (list gxc#::void::t))
            (__tmp145764 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp145765
         '(modules)
         __tmp145764
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args144359%_
        (apply make-instance gxc#::lift-modules::t _%$args144359%_)))
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
      (let ((__tmp145766
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
        (__make-promise __tmp145766)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords144333%_ _%modules144330144334%_ _%stx144336%_)
        (let ((_%modules144339%_
               (if (eq? _%modules144330144334%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules144330144334%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self144341%_
                  (let ((__obj145738
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145738
                       _%modules144339%_
                       '1
                       '#f
                       '#f))
                    __obj145738))
                 (__tmp145767
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144341%_ _%stx144336%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145767
             gxc#current-compile-method
             _%self144341%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords144348%_ . _%args144349%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords144348%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144348%_
                  'modules:
                  absent-value))
               _%args144349%_)))
    (define gxc#apply-lift-modules
      (lambda _%args144331144355%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args144331144355%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp145769 (list)) (__tmp145768 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp145769
         '()
         __tmp145768
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args144326%_
        (apply make-instance gxc#::find-runtime-code::t _%$args144326%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp145770
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
        (__make-promise __tmp145770)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx144318%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self144321%_
                (let ((__obj145740
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj145740))
               (__tmp145771
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144321%_ _%stx144318%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145771
           gxc#current-compile-method
           _%self144321%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp145773 (list gxc#::false::t))
            (__tmp145772 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp145773
         '()
         __tmp145772
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args144315%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args144315%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp145774
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
        (__make-promise __tmp145774)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx144307%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self144310%_
                (let ((__obj145742
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj145742))
               (__tmp145775
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144310%_ _%stx144307%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145775
           gxc#current-compile-method
           _%self144310%_))))
    (define gxc#::count-values::t
      (let ((__tmp145777 (list gxc#::false-expression::t))
            (__tmp145776 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp145777
         '()
         __tmp145776
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args144304%_
        (apply make-instance gxc#::count-values::t _%$args144304%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp145778
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
        (__make-promise __tmp145778)))
    (define gxc#apply-count-values
      (lambda (_%stx144296%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self144299%_
                (let ((__obj145744
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj145744))
               (__tmp145779
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144299%_ _%stx144296%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145779
           gxc#current-compile-method
           _%self144299%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp145780 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp145780
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args144293%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args144293%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp145781
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
        (__make-promise __tmp145781)))
    (define gxc#::generate-loader::t
      (let ((__tmp145783 (list gxc#::generate-runtime-empty::t))
            (__tmp145782 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp145783
         '()
         __tmp145782
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args144289%_
        (apply make-instance gxc#::generate-loader::t _%$args144289%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp145784
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
        (__make-promise __tmp145784)))
    (define gxc#apply-generate-loader
      (lambda (_%stx144281%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self144284%_
                (let ((__obj145747
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj145747))
               (__tmp145785
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144284%_ _%stx144281%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145785
           gxc#current-compile-method
           _%self144284%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp145786 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp145786
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args144278%_
        (apply make-instance gxc#::generate-runtime::t _%$args144278%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp145787
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
        (__make-promise __tmp145787)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx144270%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self144273%_
                (let ((__obj145749
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj145749))
               (__tmp145788
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144273%_ _%stx144270%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145788
           gxc#current-compile-method
           _%self144273%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp145790 (list gxc#::generate-runtime::t))
            (__tmp145789 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp145790
         '()
         __tmp145789
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args144267%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args144267%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp145791
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
        (__make-promise __tmp145791)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx144259%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self144262%_
                (let ((__obj145751
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj145751))
               (__tmp145792
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144262%_ _%stx144259%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145792
           gxc#current-compile-method
           _%self144262%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp145793 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp145793
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args144256%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args144256%_)))
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
      (let ((__tmp145794
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
        (__make-promise __tmp145794)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords144230%_ _%table144227144231%_ _%stx144233%_)
        (let ((_%table144236%_
               (if (eq? _%table144227144231%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table144227144231%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self144238%_
                  (let ((__obj145753
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145753
                       _%table144236%_
                       '1
                       '#f
                       '#f))
                    __obj145753))
                 (__tmp145795
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144238%_ _%stx144233%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145795
             gxc#current-compile-method
             _%self144238%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords144245%_ . _%args144246%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords144245%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144245%_
                  'table:
                  absent-value))
               _%args144246%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args144228144252%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args144228144252%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp145797 (list gxc#::void-expression::t))
            (__tmp145796 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp145797
         '(state)
         __tmp145796
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args144223%_
        (apply make-instance gxc#::generate-meta::t _%$args144223%_)))
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
      (let ((__tmp145798
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
        (__make-promise __tmp145798)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords144197%_ _%state144194144198%_ _%stx144200%_)
        (let ((_%state144203%_
               (if (eq? _%state144194144198%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state144194144198%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self144205%_
                  (let ((__obj145755
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145755
                       _%state144203%_
                       '1
                       '#f
                       '#f))
                    __obj145755))
                 (__tmp145799
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144205%_ _%stx144200%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145799
             gxc#current-compile-method
             _%self144205%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords144212%_ . _%args144213%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords144212%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144212%_
                  'state:
                  absent-value))
               _%args144213%_)))
    (define gxc#apply-generate-meta
      (lambda _%args144195144219%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args144195144219%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp145801 (list)) (__tmp145800 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp145801
         '(state)
         __tmp145800
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args144190%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args144190%_)))
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
      (let ((__tmp145802
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
        (__make-promise __tmp145802)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords144164%_ _%state144161144165%_ _%stx144167%_)
        (let ((_%state144170%_
               (if (eq? _%state144161144165%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state144161144165%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self144172%_
                  (let ((__obj145757
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145757
                       _%state144170%_
                       '1
                       '#f
                       '#f))
                    __obj145757))
                 (__tmp145803
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144172%_ _%stx144167%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145803
             gxc#current-compile-method
             _%self144172%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords144179%_ . _%args144180%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords144179%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144179%_
                  'state:
                  absent-value))
               _%args144180%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args144162144186%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args144162144186%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self144090%_ _%stx144091%_)
        (let* ((_%g144093144110%_
                (lambda (_%g144094144107%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144094144107%_))))
               (_%g144092144157%_
                (lambda (_%g144094144113%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144094144113%_))
                      (let ((_%e144099144115%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144094144113%_))))
                        (let ((_%hd144098144118%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144099144115%_)))
                              (_%tl144097144120%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144099144115%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144097144120%_))
                              (let ((_%e144102144123%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144097144120%_))))
                                (let ((_%hd144101144126%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144102144123%_)))
                                      (_%tl144100144128%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144102144123%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144100144128%_))
                                      (let ((_%e144105144131%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144100144128%_))))
                                        (let ((_%hd144104144134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144105144131%_)))
                                              (_%tl144103144136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144105144131%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144103144136%_))
                                              ((lambda (_%L144139%_
                                                        _%L144140%_)
                                                 (let ((__tmp145804
                                                        (lambda (_%bind144155%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind144155%_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _%bind144155%_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp145804
                                                    _%L144140%_)))
                                               _%hd144104144134%_
                                               _%hd144101144126%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g144093144110%_
                                                 _%g144094144113%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g144093144110%_
                                         _%g144094144113%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g144093144110%_ _%g144094144113%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g144093144110%_ _%g144094144113%_))))))
          (declare (not safe))
          (_%g144092144157%_ _%stx144091%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self144022%_ _%stx144023%_)
        (let* ((_%g144025144042%_
                (lambda (_%g144026144039%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144026144039%_))))
               (_%g144024144087%_
                (lambda (_%g144026144045%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144026144045%_))
                      (let ((_%e144031144047%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144026144045%_))))
                        (let ((_%hd144030144050%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144031144047%_)))
                              (_%tl144029144052%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144031144047%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144029144052%_))
                              (let ((_%e144034144055%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144029144052%_))))
                                (let ((_%hd144033144058%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144034144055%_)))
                                      (_%tl144032144060%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144034144055%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144032144060%_))
                                      (let ((_%e144037144063%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144032144060%_))))
                                        (let ((_%hd144036144066%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144037144063%_)))
                                              (_%tl144035144068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144037144063%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144035144068%_))
                                              ((lambda (_%L144071%_
                                                        _%L144072%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _%L144072%_
                                                    '#t)))
                                               _%hd144036144066%_
                                               _%hd144033144058%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g144025144042%_
                                                 _%g144026144045%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g144025144042%_
                                         _%g144026144045%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g144025144042%_ _%g144026144045%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g144025144042%_ _%g144026144045%_))))))
          (declare (not safe))
          (_%g144024144087%_ _%stx144023%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self143964%_ _%stx143965%_)
        (let* ((_%g143967143981%_
                (lambda (_%g143968143978%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143968143978%_))))
               (_%g143966144019%_
                (lambda (_%g143968143984%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143968143984%_))
                      (let ((_%e143973143986%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143968143984%_))))
                        (let ((_%hd143972143989%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143973143986%_)))
                              (_%tl143971143991%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143973143986%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143971143991%_))
                              (let ((_%e143976143994%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143971143991%_))))
                                (let ((_%hd143975143997%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143976143994%_)))
                                      (_%tl143974143999%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143976143994%_))))
                                  ((lambda (_%L144002%_ _%L144003%_)
                                     (let ((_%ctx144016%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L144003%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self143964%_
                                           'modules))
                                        (cons _%ctx144016%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self143964%_
                                                        'modules)))))
                                       (let ((__tmp145805
                                              (lambda ()
                                                (let ((__tmp145806
                                                       (##structure-ref
                                                        _%ctx144016%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143964%_
                                                   __tmp145806)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp145805
                                          gx#current-expander-context
                                          _%ctx144016%_))))
                                   _%tl143974143999%_
                                   _%hd143975143997%_)))
                              (let ()
                                (declare (not safe))
                                (_%g143967143981%_ _%g143968143984%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143967143981%_ _%g143968143984%_))))))
          (declare (not safe))
          (_%g143966144019%_ _%stx143965%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls143917143919%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls143917143919%_
              (let ((_%decls143922%_ _%decls143917143919%_))
                (let _%lp143924%_ ((_%rest143926%_ _%decls143922%_))
                  (let* ((_%rest143927143935%_ _%rest143926%_)
                         (_%else143929143943%_ (lambda () '#f))
                         (_%K143931143952%_
                          (lambda (_%decls143946%_ _%decl143947%_)
                            (if (equal? _%decl143947%_ '(not safe))
                                (let () '#t)
                                (if (equal? _%decl143947%_ '(safe))
                                    (let () '#f)
                                    (let ()
                                      (declare (not safe))
                                      (_%lp143924%_ _%decls143946%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest143927143935%_))
                        (let ((_%hd143932143955%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest143927143935%_)))
                              (_%tl143933143957%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest143927143935%_))))
                          (let* ((_%decl143960%_ _%hd143932143955%_)
                                 (_%decls143962%_ _%tl143933143957%_))
                            (declare (not safe))
                            (_%K143931143952%_
                             _%decls143962%_
                             _%decl143960%_)))
                        (let ()
                          (declare (not safe))
                          (_%else143929143943%_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id143911%_ _%syntax?143912%_)
        (let ((_%eid143914%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id143911%_))
                '1
                gx#binding::t
                '#f))
              (_%ht143915%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid143914%_))
              '#!void
              (let ((__tmp145807
                     (let ((__tmp145808
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid143914%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp145808 _%syntax?143912%_))))
                (declare (not safe))
                (hash-put! _%ht143915%_ _%eid143914%_ __tmp145807))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id143909%_)
        (let ((__tmp145809
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _%id143909%_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp145809))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key143864%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key143864%_))
            (let () _%key143864%_)
            (if (uninterned-symbol? _%key143864%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key143864%_))
                (let ()
                  (let* ((_%key143868143875%_ _%key143864%_)
                         (_%E143870143879%_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _%key143868143875%_
                                     '([eid . mark])))
                            '#!void))
                         (_%K143871143897%_
                          (lambda (_%mark143882%_ _%eid143883%_)
                            (let ((_%$e143885%_
                                   (##structure-ref
                                    _%mark143882%_
                                    '1
                                    gx#expander-mark::t
                                    '#f)))
                              (if _%$e143885%_
                                  ((lambda (_%ht143888%_)
                                     (let ((_%$e143890%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-get
                                               _%ht143888%_
                                               _%eid143883%_))))
                                       (if _%$e143890%_
                                           ((lambda (_%id143893%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (interned-symbol?
                                                     _%id143893%_))
                                                  _%id143893%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _%id143893%_))))
                                            _%$e143890%_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%eid143883%_)))))
                                   _%$e143885%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-identifier-key
                                     _%eid143883%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%key143868143875%_))
                        (let ((_%hd143872143900%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%key143868143875%_)))
                              (_%tl143873143902%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%key143868143875%_))))
                          (let* ((_%eid143905%_ _%hd143872143900%_)
                                 (_%mark143907%_ _%tl143873143902%_))
                            (declare (not safe))
                            (_%K143871143897%_ _%mark143907%_ _%eid143905%_)))
                        (let ()
                          (declare (not safe))
                          (_%E143870143879%_)))))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self143861%_ _%stx143862%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self143708%_ _%stx143709%_)
        (letrec ((_%simplify143711%_
                  (lambda (_%body143759%_)
                    (let _%lp143761%_ ((_%rest143763%_ _%body143759%_)
                                       (_%r143764%_ '()))
                      (let* ((_%rest143765143773%_ _%rest143763%_)
                             (_%else143767143781%_
                              (lambda () (reverse _%r143764%_)))
                             (_%K143769143849%_
                              (lambda (_%rest143784%_ _%hd143785%_)
                                (let* ((_%hd143786143802%_ _%hd143785%_)
                                       (_%else143790143810%_
                                        (lambda ()
                                          (let ((__tmp145810
                                                 (cons _%hd143785%_
                                                       _%r143764%_)))
                                            (declare (not safe))
                                            (_%lp143761%_
                                             _%rest143784%_
                                             __tmp145810)))))
                                  (let ((_%K143798143839%_
                                         (lambda (_%exprs143837%_)
                                           (let ((__tmp145811
                                                  (let ()
                                                    (declare (not safe))
                                                    (__foldr1
                                                     cons
                                                     _%rest143784%_
                                                     _%exprs143837%_))))
                                             (declare (not safe))
                                             (_%lp143761%_
                                              __tmp145811
                                              _%r143764%_))))
                                        (_%K143793143823%_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _%rest143784%_))
                                               (let ((__tmp145812
                                                      (cons _%hd143785%_
                                                            _%r143764%_)))
                                                 (declare (not safe))
                                                 (_%lp143761%_
                                                  _%rest143784%_
                                                  __tmp145812))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp143761%_
                                                  _%rest143784%_
                                                  _%r143764%_)))))
                                        (_%K143792143815%_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _%rest143784%_))
                                               (let ((__tmp145813
                                                      (cons _%hd143785%_
                                                            _%r143764%_)))
                                                 (declare (not safe))
                                                 (_%lp143761%_
                                                  _%rest143784%_
                                                  __tmp145813))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp143761%_
                                                  _%rest143784%_
                                                  _%r143764%_))))))
                                    (let ((_%try-match143789143818%_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _%hd143786143802%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%K143792143815%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%else143790143810%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd143786143802%_))
                                          (let ((_%tl143800143844%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd143786143802%_)))
                                                (_%hd143799143842%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd143786143802%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd143799143842%_
                                                         'begin))
                                                (let ((_%exprs143847%_
                                                       _%tl143800143844%_))
                                                  (declare (not safe))
                                                  (_%K143798143839%_
                                                   _%exprs143847%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd143799143842%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl143800143844%_))
                                                        (let ((_%tl143797143831%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl143800143844%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl143797143831%_))
                      (let () (declare (not safe)) (_%K143793143823%_))
                      (let ()
                        (declare (not safe))
                        (_%try-match143789143818%_))))
                (let () (declare (not safe)) (_%try-match143789143818%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%try-match143789143818%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%try-match143789143818%_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest143765143773%_))
                            (let ((_%hd143770143852%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest143765143773%_)))
                                  (_%tl143771143854%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest143765143773%_))))
                              (let* ((_%hd143857%_ _%hd143770143852%_)
                                     (_%rest143859%_ _%tl143771143854%_))
                                (declare (not safe))
                                (_%K143769143849%_
                                 _%rest143859%_
                                 _%hd143857%_)))
                            (let ()
                              (declare (not safe))
                              (_%else143767143781%_))))))))
          (let* ((_%g143713143723%_
                  (lambda (_%g143714143720%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143714143720%_))))
                 (_%g143712143756%_
                  (lambda (_%g143714143726%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143714143726%_))
                        (let ((_%e143718143728%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143714143726%_))))
                          (let ((_%hd143717143731%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143718143728%_)))
                                (_%tl143716143733%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143718143728%_))))
                            ((lambda (_%L143736%_)
                               (let* ((_%body143751%_
                                       (map (lambda (_%g143746143748%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self143708%_
                                                 _%g143746143748%_)))
                                            _%L143736%_))
                                      (_%body143753%_
                                       (let ()
                                         (declare (not safe))
                                         (_%simplify143711%_ _%body143751%_))))
                                 (if (let ((__tmp145814
                                            (length _%body143753%_)))
                                       (declare (not safe))
                                       (##fx= __tmp145814 '1))
                                     (car _%body143753%_)
                                     (cons 'begin _%body143753%_))))
                             _%tl143716143733%_)))
                        (let ()
                          (declare (not safe))
                          (_%g143713143723%_ _%g143714143726%_))))))
            (declare (not safe))
            (_%g143712143756%_ _%stx143709%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self143669%_ _%stx143670%_)
        (let* ((_%g143672143682%_
                (lambda (_%g143673143679%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143673143679%_))))
               (_%g143671143705%_
                (lambda (_%g143673143685%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143673143685%_))
                      (let ((_%e143677143687%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143673143685%_))))
                        (let ((_%hd143676143690%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143677143687%_)))
                              (_%tl143675143692%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143677143687%_))))
                          ((lambda (_%L143695%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L143695%_))))
                           _%tl143675143692%_)))
                      (let ()
                        (declare (not safe))
                        (_%g143672143682%_ _%g143673143685%_))))))
          (declare (not safe))
          (_%g143671143705%_ _%stx143670%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self143433%_ _%stx143434%_)
        (let* ((_%__stx144399144400%_ _%stx143434%_)
               (_%g143438143490%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144399144400%_)))))
          (let ((_%__kont144401144402%_
                 (lambda (_%L143651%_ _%L143652%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self143433%_ _%L143651%_))))
                (_%__kont144403144404%_
                 (lambda (_%L143599%_ _%L143600%_ _%L143601%_)
                   (if (let ((__tmp145815
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L143601%_))))
                         (declare (not safe))
                         (##memq __tmp145815 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self143433%_ _%L143599%_)))))
                (_%__kont144407144408%_
                 (lambda (_%L143519%_ _%L143520%_)
                   (let ((_%decls143535%_ (map gx#syntax->datum _%L143520%_)))
                     (let ((__tmp145818
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls143535%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143433%_
                                                   _%L143519%_))
                                                '())))))
                           (__tmp145816
                            (let ((__tmp145817
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp145817 _%decls143535%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp145818
                        gxc#current-compile-decls
                        __tmp145816))))))
            (let* ((_%__match144454144455%_
                    (lambda (_%e143456143543%_
                             _%hd143455143546%_
                             _%tl143454143548%_
                             _%e143459143551%_
                             _%hd143458143554%_
                             _%tl143457143556%_
                             _%e143462143559%_
                             _%hd143461143562%_
                             _%tl143460143564%_
                             _%__splice144405144406%_
                             _%target143463143567%_
                             _%tl143465143569%_)
                      (letrec ((_%loop143466143572%_
                                (lambda (_%hd143464143575%_
                                         _%param143470143577%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd143464143575%_))
                                      (let ((_%e143467143580%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd143464143575%_))))
                                        (let ((_%lp-tl143469143585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143467143580%_)))
                                              (_%lp-hd143468143583%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143467143580%_))))
                                          (let ((__tmp145819
                                                 (cons _%lp-hd143468143583%_
                                                       _%param143470143577%_)))
                                            (declare (not safe))
                                            (_%loop143466143572%_
                                             _%lp-tl143469143585%_
                                             __tmp145819))))
                                      (let ((_%param143471143588%_
                                             (reverse _%param143470143577%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143457143556%_))
                                            (let ((_%e143474143591%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143457143556%_))))
                                              (let ((_%tl143472143596%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143474143591%_)))
                                                    (_%hd143473143594%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143474143591%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl143472143596%_))
                                                    (let ((_%L143599%_
                                                           _%hd143473143594%_)
                                                          (_%L143600%_
                                                           _%param143471143588%_)
                                                          (_%L143601%_
                                                           _%hd143461143562%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L143601%_))
                       (let ((__tmp145820
                              (let ((__tmp145821
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L143601%_))))
                                (declare (not safe))
                                (##memq __tmp145821 gxc#gambit-annotations))))
                         (declare (not safe))
                         (not __tmp145820)))
                  (_%__kont144403144404%_ _%L143599%_ _%L143600%_ _%L143601%_)
                  (_%__kont144407144408%_
                   _%hd143473143594%_
                   _%hd143458143554%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g143438143490%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g143438143490%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop143466143572%_ _%target143463143567%_ '())))))
                   (_%__match144428144429%_
                    (lambda (_%e143444143627%_
                             _%hd143443143630%_
                             _%tl143442143632%_
                             _%e143447143635%_
                             _%hd143446143638%_
                             _%tl143445143640%_
                             _%e143450143643%_
                             _%hd143449143646%_
                             _%tl143448143648%_)
                      (let ((_%L143651%_ _%hd143449143646%_)
                            (_%L143652%_ _%hd143446143638%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L143652%_))
                            (_%__kont144401144402%_ _%L143651%_ _%L143652%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd143446143638%_))
                                (let ((_%e143462143559%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd143446143638%_))))
                                  (let ((_%tl143460143564%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143462143559%_)))
                                        (_%hd143461143562%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143462143559%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl143460143564%_))
                                        (let ((_%__splice144405144406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl143460143564%_
                                                  '0))))
                                          (let ((_%tl143465143569%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice144405144406%_
                                                    '1)))
                                                (_%target143463143567%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice144405144406%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143465143569%_))
                                                (_%__match144454144455%_
                                                 _%e143444143627%_
                                                 _%hd143443143630%_
                                                 _%tl143442143632%_
                                                 _%e143447143635%_
                                                 _%hd143446143638%_
                                                 _%tl143445143640%_
                                                 _%e143462143559%_
                                                 _%hd143461143562%_
                                                 _%tl143460143564%_
                                                 _%__splice144405144406%_
                                                 _%target143463143567%_
                                                 _%tl143465143569%_)
                                                (_%__kont144407144408%_
                                                 _%hd143449143646%_
                                                 _%hd143446143638%_))))
                                        (_%__kont144407144408%_
                                         _%hd143449143646%_
                                         _%hd143446143638%_))))
                                (_%__kont144407144408%_
                                 _%hd143449143646%_
                                 _%hd143446143638%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144399144400%_))
                  (let ((_%e143444143627%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144399144400%_))))
                    (let ((_%tl143442143632%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143444143627%_)))
                          (_%hd143443143630%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143444143627%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143442143632%_))
                          (let ((_%e143447143635%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143442143632%_))))
                            (let ((_%tl143445143640%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143447143635%_)))
                                  (_%hd143446143638%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143447143635%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl143445143640%_))
                                  (let ((_%e143450143643%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl143445143640%_))))
                                    (let ((_%tl143448143648%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143450143643%_)))
                                          (_%hd143449143646%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143450143643%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl143448143648%_))
                                          (_%__match144428144429%_
                                           _%e143444143627%_
                                           _%hd143443143630%_
                                           _%tl143442143632%_
                                           _%e143447143635%_
                                           _%hd143446143638%_
                                           _%tl143445143640%_
                                           _%e143450143643%_
                                           _%hd143449143646%_
                                           _%tl143448143648%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd143446143638%_))
                                              (let ((_%e143462143559%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd143446143638%_))))
                                                (let ((_%tl143460143564%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143462143559%_)))
                                                      (_%hd143461143562%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143462143559%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl143460143564%_))
                                                      (let ((_%__splice144405144406%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl143460143564%_ '0))))
                (let ((_%tl143465143569%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice144405144406%_ '1)))
                      (_%target143463143567%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice144405144406%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl143465143569%_))
                      (_%__match144454144455%_
                       _%e143444143627%_
                       _%hd143443143630%_
                       _%tl143442143632%_
                       _%e143447143635%_
                       _%hd143446143638%_
                       _%tl143445143640%_
                       _%e143462143559%_
                       _%hd143461143562%_
                       _%tl143460143564%_
                       _%__splice144405144406%_
                       _%target143463143567%_
                       _%tl143465143569%_)
                      (let () (declare (not safe)) (_%g143438143490%_)))))
              (let () (declare (not safe)) (_%g143438143490%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g143438143490%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd143446143638%_))
                                      (let ((_%e143462143559%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd143446143638%_))))
                                        (let ((_%tl143460143564%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143462143559%_)))
                                              (_%hd143461143562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143462143559%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl143460143564%_))
                                              (let ((_%__splice144405144406%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl143460143564%_
                                                        '0))))
                                                (let ((_%tl143465143569%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice144405144406%_
                                                          '1)))
                                                      (_%target143463143567%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice144405144406%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143465143569%_))
                                                      (_%__match144454144455%_
                                                       _%e143444143627%_
                                                       _%hd143443143630%_
                                                       _%tl143442143632%_
                                                       _%e143447143635%_
                                                       _%hd143446143638%_
                                                       _%tl143445143640%_
                                                       _%e143462143559%_
                                                       _%hd143461143562%_
                                                       _%tl143460143564%_
                                                       _%__splice144405144406%_
                                                       _%target143463143567%_
                                                       _%tl143465143569%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g143438143490%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g143438143490%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143438143490%_))))))
                          (let () (declare (not safe)) (_%g143438143490%_)))))
                  (let () (declare (not safe)) (_%g143438143490%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self143392%_ _%stx143393%_)
        (let* ((_%g143395143405%_
                (lambda (_%g143396143402%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143396143402%_))))
               (_%g143394143430%_
                (lambda (_%g143396143408%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143396143408%_))
                      (let ((_%e143400143410%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143396143408%_))))
                        (let ((_%hd143399143413%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143400143410%_)))
                              (_%tl143398143415%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143400143410%_))))
                          ((lambda (_%L143418%_)
                             (let ((_%decls143428%_
                                    (map gx#syntax->datum _%L143418%_)))
                               (let ((__tmp145822
                                      (let ((__tmp145823
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp145823
                                         _%decls143428%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp145822))
                               (cons 'declare _%decls143428%_)))
                           _%tl143398143415%_)))
                      (let ()
                        (declare (not safe))
                        (_%g143395143405%_ _%g143396143408%_))))))
          (declare (not safe))
          (_%g143394143430%_ _%stx143393%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self143138%_ _%stx143139%_)
        (let* ((_%g143141143158%_
                (lambda (_%g143142143155%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143142143155%_))))
               (_%g143140143389%_
                (lambda (_%g143142143161%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143142143161%_))
                      (let ((_%e143147143163%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143142143161%_))))
                        (let ((_%hd143146143166%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143147143163%_)))
                              (_%tl143145143168%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143147143163%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143145143168%_))
                              (let ((_%e143150143171%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143145143168%_))))
                                (let ((_%hd143149143174%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143150143171%_)))
                                      (_%tl143148143176%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143150143171%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143148143176%_))
                                      (let ((_%e143153143179%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143148143176%_))))
                                        (let ((_%hd143152143182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143153143179%_)))
                                              (_%tl143151143184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143153143179%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143151143184%_))
                                              ((lambda (_%L143187%_
                                                        _%L143188%_)
                                                 (let* ((_%__stx144507144508%_
                                                         _%L143188%_)
                                                        (_%g143205143219%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx144507144508%_)))))
                                                   (let ((_%__kont144509144510%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self143138%_
                                                               _%L143187%_))))
                                                         (_%__kont144511144512%_
                                                          (lambda (_%L143351%_)
                                                            (let ((_%eid143360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L143351%_))))
                      (let ((_%lambda-expr143361143363%_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression
                                _%L143187%_))))
                        (if _%lambda-expr143361143363%_
                            (let* ((_%lambda-expr143366%_
                                    _%lambda-expr143361143363%_)
                                   (__tmp145824
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp145824
                               _%lambda-expr143366%_
                               _%eid143360%_))
                            '#f))
                      (cons 'define
                            (cons _%eid143360%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self143138%_
                                           _%L143187%_))
                                        '()))))))
                 (_%__kont144513144514%_
                  (lambda ()
                    (let* ((_%tmp143226%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body143335%_
                            (let _%lp143228%_ ((_%rest143230%_ _%L143188%_)
                                               (_%k143231%_ '0)
                                               (_%r143232%_ '()))
                              (let* ((_%__stx144477144478%_ _%rest143230%_)
                                     (_%g143237143254%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx144477144478%_)))))
                                (let ((_%__kont144479144480%_
                                       (lambda (_%L143322%_)
                                         (let ((__tmp145825
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%k143231%_ '1))))
                                           (declare (not safe))
                                           (_%lp143228%_
                                            _%L143322%_
                                            __tmp145825
                                            _%r143232%_))))
                                      (_%__kont144481144482%_
                                       (lambda (_%L143295%_ _%L143296%_)
                                         (let ((__tmp145827
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%k143231%_ '1)))
                                               (__tmp145826
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L143296%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-values-ref
                                   _%tmp143226%_
                                   _%k143231%_
                                   _%L143295%_))
                                '())))
              _%r143232%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%lp143228%_
                                            _%L143295%_
                                            __tmp145827
                                            __tmp145826))))
                                      (_%__kont144483144484%_
                                       (lambda (_%L143266%_)
                                         (let ((__tmp145828
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L143266%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-values->list
                                   _%tmp143226%_
                                   _%k143231%_))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp145828
                                            _%r143232%_))))
                                      (_%__kont144485144486%_
                                       (lambda () (reverse _%r143232%_))))
                                  (let ((_%g143235143282%_
                                         (lambda ()
                                           (let ((_%L143266%_
                                                  _%__stx144477144478%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L143266%_))
                                                 (_%__kont144483144484%_
                                                  _%L143266%_)
                                                 (_%__kont144485144486%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx144477144478%_))
                                        (let ((_%e143242143311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx144477144478%_))))
                                          (let ((_%tl143240143316%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143242143311%_)))
                                                (_%hd143241143314%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143242143311%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd143241143314%_))
                                                (let ((_%e143243143319%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143241143314%_))))
                                                  (if (equal? _%e143243143319%_
                                                              '#f)
                                                      (_%__kont144479144480%_
                                                       _%tl143240143316%_)
                                                      (_%__kont144481144482%_
                                                       _%tl143240143316%_
                                                       _%hd143241143314%_)))
                                                (_%__kont144481144482%_
                                                 _%tl143240143316%_
                                                 _%hd143241143314%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g143235143282%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp143226%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self143138%_
                                                       _%L143187%_))
                                                    '())))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-check-values
                                           _%tmp143226%_
                                           _%L143188%_
                                           _%L143187%_))
                                        _%body143335%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx144507144508%_))
                                                         (let ((_%e143209143373%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx144507144508%_))))
                   (let ((_%tl143207143378%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e143209143373%_)))
                         (_%hd143208143376%_
                          (let ()
                            (declare (not safe))
                            (##car _%e143209143373%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd143208143376%_))
                         (let ((_%e143210143381%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd143208143376%_))))
                           (if (equal? _%e143210143381%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl143207143378%_))
                                   (_%__kont144509144510%_)
                                   (_%__kont144513144514%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl143207143378%_))
                                   (_%__kont144511144512%_ _%hd143208143376%_)
                                   (_%__kont144513144514%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143207143378%_))
                             (_%__kont144511144512%_ _%hd143208143376%_)
                             (_%__kont144513144514%_)))))
                 (_%__kont144513144514%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd143152143182%_
                                               _%hd143149143174%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g143141143158%_
                                                 _%g143142143161%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143141143158%_
                                         _%g143142143161%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143141143158%_ _%g143142143161%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143141143158%_ _%g143142143161%_))))))
          (declare (not safe))
          (_%g143140143389%_ _%stx143139%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals143113%_ _%hd143114%_ _%expr143115%_)
        (let ((_%$e143117%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _%expr143115%_))))
          (if _%$e143117%_
              ((lambda (_%count143120%_)
                 (let ((_%len143122%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd143114%_)))
                       (_%cmp143123%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd143114%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len143122%_ '0))
                           (_%cmp143123%_ _%count143120%_ _%len143122%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr143115%_
                          _%hd143114%_)))))
               _%$e143117%_)
              (let ()
                (let* ((_%len143129%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd143114%_)))
                       (_%cmp143131%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd143114%_))
                            '##fx=
                            '##fx>=))
                       (_%errmsg143133%_
                        (let ((__tmp145830
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-list? _%hd143114%_))
                                   '"Context expects "
                                   '"Context expects at least "))
                              (__tmp145829 (number->string _%len143129%_)))
                          (declare (not safe))
                          (##string-append
                           __tmp145830
                           __tmp145829
                           '" values")))
                       (_%count143135%_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-temporary__0))))
                  (if (and (let ((__tmp145831
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-list? _%hd143114%_))))
                             (declare (not safe))
                             (not __tmp145831))
                           (let ()
                             (declare (not safe))
                             (##fx= _%len143129%_ '0)))
                      '#!void
                      (cons 'let
                            (cons (cons (cons _%count143135%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-values-count
                                                       _%vals143113%_))
                                                    '()))
                                        '())
                                  (cons (cons 'if
                                              (cons (cons 'not
                                                          (cons (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#current-compile-decls-unsafe?))
                            (cons _%cmp143131%_
                                  (cons _%count143135%_
                                        (cons _%len143129%_ '())))
                            (cons 'let
                                  (cons '()
                                        (cons '(declare (not safe))
                                              (cons (cons _%cmp143131%_
                                                          (cons _%count143135%_
                                                                (cons _%len143129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'error
                                                                (cons _%errmsg143133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%count143135%_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var143108%_)
        (letrec ((_%generate-inline143110%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var143108%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var143108%_ '()))
                                      (cons '1 '())))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_%generate-inline143110%_))
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (let ()
                                        (declare (not safe))
                                        (_%generate-inline143110%_))
                                      '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var143101%_ _%i143102%_ _%rest143103%_)
        (letrec ((_%generate-inline143105%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i143102%_ '0))
                             (let ((__tmp145832
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%rest143103%_))))
                               (declare (not safe))
                               (not __tmp145832)))
                        (cons 'if
                              (cons (cons '##values? (cons _%var143101%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var143101%_
                                                      (cons '0 '())))
                                          (cons _%var143101%_ '()))))
                        (cons '##vector-ref
                              (cons _%var143101%_ (cons _%i143102%_ '())))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_%generate-inline143105%_))
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (let ()
                                        (declare (not safe))
                                        (_%generate-inline143105%_))
                                      '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var143095%_ _%i143096%_)
        (if (let () (declare (not safe)) (##fx= _%i143096%_ '0))
            (let ()
              (if (let ()
                    (declare (not safe))
                    (gxc#current-compile-decls-unsafe?))
                  (cons 'if
                        (cons (cons '##values? (cons _%var143095%_ '()))
                              (cons (cons '##vector->list
                                          (cons _%var143095%_ '()))
                                    (cons (cons 'list (cons _%var143095%_ '()))
                                          '()))))
                  (cons 'let
                        (cons '()
                              (cons '(declare (not safe))
                                    (cons (cons 'if
                                                (cons (cons '##values?
                                                            (cons _%var143095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '##vector->list (cons _%var143095%_ '()))
                    (cons (cons 'list (cons _%var143095%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))))
            (if (let () (declare (not safe)) (##fx= _%i143096%_ '1))
                (let ()
                  (if (let ()
                        (declare (not safe))
                        (gxc#current-compile-decls-unsafe?))
                      (cons 'if
                            (cons (cons '##values? (cons _%var143095%_ '()))
                                  (cons (cons '##cdr
                                              (cons (cons '##vector->list
                                                          (cons _%var143095%_
                                                                '()))
                                                    '()))
                                        (cons ''() '()))))
                      (cons 'let
                            (cons '()
                                  (cons '(declare (not safe))
                                        (cons (cons 'if
                                                    (cons (cons '##values?
                                                                (cons _%var143095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '##cdr
                              (cons (cons '##vector->list
                                          (cons _%var143095%_ '()))
                                    '()))
                        (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))))
                (let ()
                  (if (let ()
                        (declare (not safe))
                        (gxc#current-compile-decls-unsafe?))
                      (cons '##list-tail
                            (cons (cons '##vector->list
                                        (cons _%var143095%_ '()))
                                  (cons _%i143096%_ '())))
                      (cons 'let
                            (cons '()
                                  (cons '(declare (not safe))
                                        (cons (cons '##list-tail
                                                    (cons (cons '##vector->list
                                                                (cons _%var143095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons _%i143096%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self143027%_ _%stx143028%_)
        (let* ((_%g143030143047%_
                (lambda (_%g143031143044%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143031143044%_))))
               (_%g143029143092%_
                (lambda (_%g143031143050%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143031143050%_))
                      (let ((_%e143036143052%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143031143050%_))))
                        (let ((_%hd143035143055%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143036143052%_)))
                              (_%tl143034143057%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143036143052%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143034143057%_))
                              (let ((_%e143039143060%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143034143057%_))))
                                (let ((_%hd143038143063%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143039143060%_)))
                                      (_%tl143037143065%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143039143060%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143037143065%_))
                                      (let ((_%e143042143068%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143037143065%_))))
                                        (let ((_%hd143041143071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143042143068%_)))
                                              (_%tl143040143073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143042143068%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143040143073%_))
                                              ((lambda (_%L143076%_
                                                        _%L143077%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _%self143027%_
                                                    _%L143077%_
                                                    _%L143076%_)))
                                               _%hd143041143071%_
                                               _%hd143038143063%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g143030143047%_
                                                 _%g143031143050%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143030143047%_
                                         _%g143031143050%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143030143047%_ _%g143031143050%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143030143047%_ _%g143031143050%_))))))
          (declare (not safe))
          (_%g143029143092%_ _%stx143028%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self142986%_ _%hd142987%_ _%body142988%_)
        (let* ((_%hd142990%_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _%hd142987%_)))
               (_%body142992%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self142986%_ _%body142988%_)))
               (_%body143024%_
                (let* ((_%body142993143001%_ _%body142992%_)
                       (_%else142995143009%_
                        (lambda () (cons _%body142992%_ '())))
                       (_%K142997143014%_
                        (lambda (_%exprs143012%_) _%exprs143012%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body142993143001%_))
                      (let ((_%hd142998143017%_
                             (let ()
                               (declare (not safe))
                               (##car _%body142993143001%_)))
                            (_%tl142999143019%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body142993143001%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd142998143017%_ 'begin))
                            (let ((_%exprs143022%_ _%tl142999143019%_))
                              (declare (not safe))
                              (_%K142997143014%_ _%exprs143022%_))
                            (let ()
                              (declare (not safe))
                              (_%else142995143009%_))))
                      (let () (declare (not safe)) (_%else142995143009%_))))))
          (cons 'lambda (cons _%hd142990%_ _%body143024%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd142984%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd142984%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self141523%_ _%stx141524%_)
        (letrec ((_%dispatch-case?141526%_
                  (lambda (_%hd142214%_ _%body142215%_)
                    (let* ((_%form142217%_
                            (cons _%hd142214%_ (cons _%body142215%_ '())))
                           (_%__stx144539144540%_ _%form142217%_)
                           (_%g142222142379%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144539144540%_)))))
                      (let ((_%__kont144541144542%_
                             (lambda (_%L142904%_ _%L142905%_ _%L142906%_)
                               '#t))
                            (_%__kont144547144548%_
                             (lambda (_%L142692%_
                                      _%L142693%_
                                      _%L142694%_
                                      _%L142695%_
                                      _%L142696%_
                                      _%L142697%_)
                               '#t))
                            (_%__kont144553144554%_
                             (lambda (_%L142487%_
                                      _%L142488%_
                                      _%L142489%_
                                      _%L142490%_)
                               '#t))
                            (_%__kont144555144556%_ (lambda () '#f)))
                        (let* ((_%__match144680144681%_
                                (lambda (_%e142341142391%_
                                         _%hd142340142394%_
                                         _%tl142339142396%_
                                         _%e142344142399%_
                                         _%hd142343142402%_
                                         _%tl142342142404%_
                                         _%e142347142407%_
                                         _%hd142346142410%_
                                         _%tl142345142412%_
                                         _%e142350142415%_
                                         _%hd142349142418%_
                                         _%tl142348142420%_
                                         _%e142353142423%_
                                         _%hd142352142426%_
                                         _%tl142351142428%_
                                         _%e142356142431%_
                                         _%hd142355142434%_
                                         _%tl142354142436%_
                                         _%e142359142439%_
                                         _%hd142358142442%_
                                         _%tl142357142444%_
                                         _%e142362142447%_
                                         _%hd142361142450%_
                                         _%tl142360142452%_
                                         _%e142365142455%_
                                         _%hd142364142458%_
                                         _%tl142363142460%_
                                         _%e142368142463%_
                                         _%hd142367142466%_
                                         _%tl142366142468%_
                                         _%e142371142471%_
                                         _%hd142370142474%_
                                         _%tl142369142476%_
                                         _%e142374142479%_
                                         _%hd142373142482%_
                                         _%tl142372142484%_)
                                  (let ((_%L142487%_ _%hd142373142482%_)
                                        (_%L142488%_ _%hd142364142458%_)
                                        (_%L142489%_ _%hd142355142434%_)
                                        (_%L142490%_ _%hd142340142394%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L142490%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L142489%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L142490%_
                                                _%L142487%_))
                                             (let ((__tmp145833
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _%L142488%_
                                                       _%L142490%_))))
                                               (declare (not safe))
                                               (not __tmp145833)))
                                        (_%__kont144553144554%_
                                         _%L142487%_
                                         _%L142488%_
                                         _%L142489%_
                                         _%L142490%_)
                                        (_%__kont144555144556%_)))))
                               (_%__match144652144653%_
                                (lambda (_%e142341142391%_
                                         _%hd142340142394%_
                                         _%tl142339142396%_
                                         _%e142344142399%_
                                         _%hd142343142402%_
                                         _%tl142342142404%_
                                         _%e142347142407%_
                                         _%hd142346142410%_
                                         _%tl142345142412%_
                                         _%e142350142415%_
                                         _%hd142349142418%_
                                         _%tl142348142420%_
                                         _%e142353142423%_
                                         _%hd142352142426%_
                                         _%tl142351142428%_
                                         _%e142356142431%_
                                         _%hd142355142434%_
                                         _%tl142354142436%_
                                         _%e142359142439%_
                                         _%hd142358142442%_
                                         _%tl142357142444%_
                                         _%e142362142447%_
                                         _%hd142361142450%_
                                         _%tl142360142452%_
                                         _%e142365142455%_
                                         _%hd142364142458%_
                                         _%tl142363142460%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142357142444%_))
                                      (let ((_%e142368142463%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142357142444%_))))
                                        (let ((_%tl142366142468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142368142463%_)))
                                              (_%hd142367142466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142368142463%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd142367142466%_))
                                              (let ((_%e142371142471%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd142367142466%_))))
                                                (let ((_%tl142369142476%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142371142471%_)))
                                                      (_%hd142370142474%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142371142471%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd142370142474%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd142370142474%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl142369142476%_))
                      (let ((_%e142374142479%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl142369142476%_))))
                        (let ((_%tl142372142484%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142374142479%_)))
                              (_%hd142373142482%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142374142479%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl142372142484%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl142366142468%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl142342142404%_))
                                      (_%__match144680144681%_
                                       _%e142341142391%_
                                       _%hd142340142394%_
                                       _%tl142339142396%_
                                       _%e142344142399%_
                                       _%hd142343142402%_
                                       _%tl142342142404%_
                                       _%e142347142407%_
                                       _%hd142346142410%_
                                       _%tl142345142412%_
                                       _%e142350142415%_
                                       _%hd142349142418%_
                                       _%tl142348142420%_
                                       _%e142353142423%_
                                       _%hd142352142426%_
                                       _%tl142351142428%_
                                       _%e142356142431%_
                                       _%hd142355142434%_
                                       _%tl142354142436%_
                                       _%e142359142439%_
                                       _%hd142358142442%_
                                       _%tl142357142444%_
                                       _%e142362142447%_
                                       _%hd142361142450%_
                                       _%tl142360142452%_
                                       _%e142365142455%_
                                       _%hd142364142458%_
                                       _%tl142363142460%_
                                       _%e142368142463%_
                                       _%hd142367142466%_
                                       _%tl142366142468%_
                                       _%e142371142471%_
                                       _%hd142370142474%_
                                       _%tl142369142476%_
                                       _%e142374142479%_
                                       _%hd142373142482%_
                                       _%tl142372142484%_)
                                      (_%__kont144555144556%_))
                                  (_%__kont144555144556%_))
                              (_%__kont144555144556%_))))
                      (_%__kont144555144556%_))
                  (_%__kont144555144556%_))
              (_%__kont144555144556%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont144555144556%_))))
                                      (_%__kont144555144556%_))))
                               (_%__match144582144583%_
                                (lambda (_%e142277142532%_
                                         _%hd142276142535%_
                                         _%tl142275142537%_
                                         _%__splice144549144550%_
                                         _%target142278142540%_
                                         _%tl142280142542%_)
                                  (letrec ((_%loop142281142545%_
                                            (lambda (_%hd142279142548%_
                                                     _%arg142285142550%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142279142548%_))
                                                  (let ((_%e142282142553%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142279142548%_))))
                                                    (let ((_%lp-tl142284142558%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142282142553%_)))
                                                          (_%lp-hd142283142556%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142282142553%_))))
                                                      (let ((__tmp145834
                                                             (cons _%lp-hd142283142556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg142285142550%_)))
                (declare (not safe))
                (_%loop142281142545%_ _%lp-tl142284142558%_ __tmp145834))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg142286142561%_
                                                         (reverse _%arg142285142550%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142275142537%_))
                                                        (let ((_%e142289142564%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142275142537%_))))
                  (let ((_%tl142287142569%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142289142564%_)))
                        (_%hd142288142567%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142289142564%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142288142567%_))
                        (let ((_%e142292142572%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142288142567%_))))
                          (let ((_%tl142290142577%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142292142572%_)))
                                (_%hd142291142575%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142292142572%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142291142575%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd142291142575%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142290142577%_))
                                        (let ((_%e142295142580%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142290142577%_))))
                                          (let ((_%tl142293142585%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142295142580%_)))
                                                (_%hd142294142583%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142295142580%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd142294142583%_))
                                                (let ((_%e142298142588%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142294142583%_))))
                                                  (let ((_%tl142296142593%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142298142588%_)))
                                                        (_%hd142297142591%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142298142588%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd142297142591%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd142297142591%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl142296142593%_))
                        (let ((_%e142301142596%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl142296142593%_))))
                          (let ((_%tl142299142601%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142301142596%_)))
                                (_%hd142300142599%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142301142596%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142299142601%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl142293142585%_))
                                    (let ((_%e142304142604%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl142293142585%_))))
                                      (let ((_%tl142302142609%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e142304142604%_)))
                                            (_%hd142303142607%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e142304142604%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd142303142607%_))
                                            (let ((_%e142307142612%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd142303142607%_))))
                                              (let ((_%tl142305142617%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142307142612%_)))
                                                    (_%hd142306142615%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142307142612%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd142306142615%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd142306142615%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl142305142617%_))
                                                            (let ((_%e142310142620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl142305142617%_))))
                      (let ((_%tl142308142625%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142310142620%_)))
                            (_%hd142309142623%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142310142620%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl142308142625%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl142302142609%_))
                                (if (let ((__tmp145835
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl142302142609%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp145835 '1))
                                    (let ((_%__splice144551144552%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl142302142609%_
                                              '1))))
                                      (let ((_%tl142313142630%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144551144552%_
                                                '1)))
                                            (_%target142311142628%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144551144552%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142313142630%_))
                                            (let ((_%e142322142633%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142313142630%_))))
                                              (let ((_%tl142320142638%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142322142633%_)))
                                                    (_%hd142321142636%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142322142633%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd142321142636%_))
                                                    (let ((_%e142325142641%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd142321142636%_))))
                                                      (let ((_%tl142323142646%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e142325142641%_)))
                    (_%hd142324142644%_
                     (let () (declare (not safe)) (##car _%e142325142641%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd142324142644%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd142324142644%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl142323142646%_))
                            (let ((_%e142328142649%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl142323142646%_))))
                              (let ((_%tl142326142654%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e142328142649%_)))
                                    (_%hd142327142652%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e142328142649%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl142326142654%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl142320142638%_))
                                        (letrec ((_%loop142314142657%_
                                                  (lambda (_%hd142312142660%_
                                                           _%xarg142318142662%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd142312142660%_))
                                                        (let ((_%e142315142665%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd142312142660%_))))
                  (let ((_%lp-tl142317142670%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142315142665%_)))
                        (_%lp-hd142316142668%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142315142665%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd142316142668%_))
                        (let ((_%e142331142673%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd142316142668%_))))
                          (let ((_%tl142329142678%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142331142673%_)))
                                (_%hd142330142676%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142331142673%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142330142676%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd142330142676%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142329142678%_))
                                        (let ((_%e142334142681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142329142678%_))))
                                          (let ((_%tl142332142686%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142334142681%_)))
                                                (_%hd142333142684%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142334142681%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142332142686%_))
                                                (let ((__tmp145836
                                                       (cons _%hd142333142684%_
                                                             _%xarg142318142662%_)))
                                                  (declare (not safe))
                                                  (_%loop142314142657%_
                                                   _%lp-tl142317142670%_
                                                   __tmp145836))
                                                (_%__match144652144653%_
                                                 _%e142277142532%_
                                                 _%hd142276142535%_
                                                 _%tl142275142537%_
                                                 _%e142289142564%_
                                                 _%hd142288142567%_
                                                 _%tl142287142569%_
                                                 _%e142292142572%_
                                                 _%hd142291142575%_
                                                 _%tl142290142577%_
                                                 _%e142295142580%_
                                                 _%hd142294142583%_
                                                 _%tl142293142585%_
                                                 _%e142298142588%_
                                                 _%hd142297142591%_
                                                 _%tl142296142593%_
                                                 _%e142301142596%_
                                                 _%hd142300142599%_
                                                 _%tl142299142601%_
                                                 _%e142304142604%_
                                                 _%hd142303142607%_
                                                 _%tl142302142609%_
                                                 _%e142307142612%_
                                                 _%hd142306142615%_
                                                 _%tl142305142617%_
                                                 _%e142310142620%_
                                                 _%hd142309142623%_
                                                 _%tl142308142625%_))))
                                        (_%__match144652144653%_
                                         _%e142277142532%_
                                         _%hd142276142535%_
                                         _%tl142275142537%_
                                         _%e142289142564%_
                                         _%hd142288142567%_
                                         _%tl142287142569%_
                                         _%e142292142572%_
                                         _%hd142291142575%_
                                         _%tl142290142577%_
                                         _%e142295142580%_
                                         _%hd142294142583%_
                                         _%tl142293142585%_
                                         _%e142298142588%_
                                         _%hd142297142591%_
                                         _%tl142296142593%_
                                         _%e142301142596%_
                                         _%hd142300142599%_
                                         _%tl142299142601%_
                                         _%e142304142604%_
                                         _%hd142303142607%_
                                         _%tl142302142609%_
                                         _%e142307142612%_
                                         _%hd142306142615%_
                                         _%tl142305142617%_
                                         _%e142310142620%_
                                         _%hd142309142623%_
                                         _%tl142308142625%_))
                                    (_%__match144652144653%_
                                     _%e142277142532%_
                                     _%hd142276142535%_
                                     _%tl142275142537%_
                                     _%e142289142564%_
                                     _%hd142288142567%_
                                     _%tl142287142569%_
                                     _%e142292142572%_
                                     _%hd142291142575%_
                                     _%tl142290142577%_
                                     _%e142295142580%_
                                     _%hd142294142583%_
                                     _%tl142293142585%_
                                     _%e142298142588%_
                                     _%hd142297142591%_
                                     _%tl142296142593%_
                                     _%e142301142596%_
                                     _%hd142300142599%_
                                     _%tl142299142601%_
                                     _%e142304142604%_
                                     _%hd142303142607%_
                                     _%tl142302142609%_
                                     _%e142307142612%_
                                     _%hd142306142615%_
                                     _%tl142305142617%_
                                     _%e142310142620%_
                                     _%hd142309142623%_
                                     _%tl142308142625%_))
                                (_%__match144652144653%_
                                 _%e142277142532%_
                                 _%hd142276142535%_
                                 _%tl142275142537%_
                                 _%e142289142564%_
                                 _%hd142288142567%_
                                 _%tl142287142569%_
                                 _%e142292142572%_
                                 _%hd142291142575%_
                                 _%tl142290142577%_
                                 _%e142295142580%_
                                 _%hd142294142583%_
                                 _%tl142293142585%_
                                 _%e142298142588%_
                                 _%hd142297142591%_
                                 _%tl142296142593%_
                                 _%e142301142596%_
                                 _%hd142300142599%_
                                 _%tl142299142601%_
                                 _%e142304142604%_
                                 _%hd142303142607%_
                                 _%tl142302142609%_
                                 _%e142307142612%_
                                 _%hd142306142615%_
                                 _%tl142305142617%_
                                 _%e142310142620%_
                                 _%hd142309142623%_
                                 _%tl142308142625%_))))
                        (_%__match144652144653%_
                         _%e142277142532%_
                         _%hd142276142535%_
                         _%tl142275142537%_
                         _%e142289142564%_
                         _%hd142288142567%_
                         _%tl142287142569%_
                         _%e142292142572%_
                         _%hd142291142575%_
                         _%tl142290142577%_
                         _%e142295142580%_
                         _%hd142294142583%_
                         _%tl142293142585%_
                         _%e142298142588%_
                         _%hd142297142591%_
                         _%tl142296142593%_
                         _%e142301142596%_
                         _%hd142300142599%_
                         _%tl142299142601%_
                         _%e142304142604%_
                         _%hd142303142607%_
                         _%tl142302142609%_
                         _%e142307142612%_
                         _%hd142306142615%_
                         _%tl142305142617%_
                         _%e142310142620%_
                         _%hd142309142623%_
                         _%tl142308142625%_))))
                (let ((_%xarg142319142689%_ (reverse _%xarg142318142662%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142287142569%_))
                      (let ((_%L142692%_ _%hd142327142652%_)
                            (_%L142693%_ _%xarg142319142689%_)
                            (_%L142694%_ _%hd142309142623%_)
                            (_%L142695%_ _%hd142300142599%_)
                            (_%L142696%_ _%tl142280142542%_)
                            (_%L142697%_ _%arg142286142561%_))
                        (if (and (let ((__tmp145837
                                        (let ((__tmp145838
                                               (lambda (_%g142740142743%_
                                                        _%g142741142745%_)
                                                 (cons _%g142740142743%_
                                                       _%g142741142745%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145838
                                           '()
                                           _%L142697%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp145837))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L142696%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L142695%_
                                    'apply))
                                 (let ((__tmp145841
                                        (length (let ((__tmp145842
                                                       (lambda (_%g142747142750%_
                                                                _%g142748142752%_)
                                                         (cons _%g142747142750%_
                                                               _%g142748142752%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145842
                                                   '()
                                                   _%L142697%_))))
                                       (__tmp145839
                                        (length (let ((__tmp145840
                                                       (lambda (_%g142754142757%_
                                                                _%g142755142759%_)
                                                         (cons _%g142754142757%_
                                                               _%g142755142759%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145840
                                                   '()
                                                   _%L142693%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp145841 __tmp145839))
                                 (let ((__tmp145845
                                        (let ((__tmp145846
                                               (lambda (_%g142761142764%_
                                                        _%g142762142766%_)
                                                 (cons _%g142761142764%_
                                                       _%g142762142766%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145846
                                           '()
                                           _%L142697%_)))
                                       (__tmp145843
                                        (let ((__tmp145844
                                               (lambda (_%g142768142771%_
                                                        _%g142769142773%_)
                                                 (cons _%g142768142771%_
                                                       _%g142769142773%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145844
                                           '()
                                           _%L142693%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp145845
                                    __tmp145843))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L142696%_
                                    _%L142692%_))
                                 (let ((__tmp145847
                                        (let ((__tmp145851
                                               (lambda (_%g142775142777%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _%g142775142777%_
                                                    _%L142694%_))))
                                              (__tmp145848
                                               (let ((__tmp145850
                                                      (lambda (_%g142779142782%_
                                                               _%g142780142784%_)
                                                        (cons _%g142779142782%_
                                                              _%g142780142784%_)))
                                                     (__tmp145849
                                                      (cons _%L142696%_ '())))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp145850
                                                  __tmp145849
                                                  _%L142697%_))))
                                          (declare (not safe))
                                          (__find __tmp145851 __tmp145848))))
                                   (declare (not safe))
                                   (not __tmp145847)))
                            (_%__kont144547144548%_
                             _%L142692%_
                             _%L142693%_
                             _%L142694%_
                             _%L142695%_
                             _%L142696%_
                             _%L142697%_)
                            (_%__match144652144653%_
                             _%e142277142532%_
                             _%hd142276142535%_
                             _%tl142275142537%_
                             _%e142289142564%_
                             _%hd142288142567%_
                             _%tl142287142569%_
                             _%e142292142572%_
                             _%hd142291142575%_
                             _%tl142290142577%_
                             _%e142295142580%_
                             _%hd142294142583%_
                             _%tl142293142585%_
                             _%e142298142588%_
                             _%hd142297142591%_
                             _%tl142296142593%_
                             _%e142301142596%_
                             _%hd142300142599%_
                             _%tl142299142601%_
                             _%e142304142604%_
                             _%hd142303142607%_
                             _%tl142302142609%_
                             _%e142307142612%_
                             _%hd142306142615%_
                             _%tl142305142617%_
                             _%e142310142620%_
                             _%hd142309142623%_
                             _%tl142308142625%_)))
                      (_%__match144652144653%_
                       _%e142277142532%_
                       _%hd142276142535%_
                       _%tl142275142537%_
                       _%e142289142564%_
                       _%hd142288142567%_
                       _%tl142287142569%_
                       _%e142292142572%_
                       _%hd142291142575%_
                       _%tl142290142577%_
                       _%e142295142580%_
                       _%hd142294142583%_
                       _%tl142293142585%_
                       _%e142298142588%_
                       _%hd142297142591%_
                       _%tl142296142593%_
                       _%e142301142596%_
                       _%hd142300142599%_
                       _%tl142299142601%_
                       _%e142304142604%_
                       _%hd142303142607%_
                       _%tl142302142609%_
                       _%e142307142612%_
                       _%hd142306142615%_
                       _%tl142305142617%_
                       _%e142310142620%_
                       _%hd142309142623%_
                       _%tl142308142625%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop142314142657%_
                                             _%target142311142628%_
                                             '())))
                                        (_%__match144652144653%_
                                         _%e142277142532%_
                                         _%hd142276142535%_
                                         _%tl142275142537%_
                                         _%e142289142564%_
                                         _%hd142288142567%_
                                         _%tl142287142569%_
                                         _%e142292142572%_
                                         _%hd142291142575%_
                                         _%tl142290142577%_
                                         _%e142295142580%_
                                         _%hd142294142583%_
                                         _%tl142293142585%_
                                         _%e142298142588%_
                                         _%hd142297142591%_
                                         _%tl142296142593%_
                                         _%e142301142596%_
                                         _%hd142300142599%_
                                         _%tl142299142601%_
                                         _%e142304142604%_
                                         _%hd142303142607%_
                                         _%tl142302142609%_
                                         _%e142307142612%_
                                         _%hd142306142615%_
                                         _%tl142305142617%_
                                         _%e142310142620%_
                                         _%hd142309142623%_
                                         _%tl142308142625%_))
                                    (_%__match144652144653%_
                                     _%e142277142532%_
                                     _%hd142276142535%_
                                     _%tl142275142537%_
                                     _%e142289142564%_
                                     _%hd142288142567%_
                                     _%tl142287142569%_
                                     _%e142292142572%_
                                     _%hd142291142575%_
                                     _%tl142290142577%_
                                     _%e142295142580%_
                                     _%hd142294142583%_
                                     _%tl142293142585%_
                                     _%e142298142588%_
                                     _%hd142297142591%_
                                     _%tl142296142593%_
                                     _%e142301142596%_
                                     _%hd142300142599%_
                                     _%tl142299142601%_
                                     _%e142304142604%_
                                     _%hd142303142607%_
                                     _%tl142302142609%_
                                     _%e142307142612%_
                                     _%hd142306142615%_
                                     _%tl142305142617%_
                                     _%e142310142620%_
                                     _%hd142309142623%_
                                     _%tl142308142625%_))))
                            (_%__match144652144653%_
                             _%e142277142532%_
                             _%hd142276142535%_
                             _%tl142275142537%_
                             _%e142289142564%_
                             _%hd142288142567%_
                             _%tl142287142569%_
                             _%e142292142572%_
                             _%hd142291142575%_
                             _%tl142290142577%_
                             _%e142295142580%_
                             _%hd142294142583%_
                             _%tl142293142585%_
                             _%e142298142588%_
                             _%hd142297142591%_
                             _%tl142296142593%_
                             _%e142301142596%_
                             _%hd142300142599%_
                             _%tl142299142601%_
                             _%e142304142604%_
                             _%hd142303142607%_
                             _%tl142302142609%_
                             _%e142307142612%_
                             _%hd142306142615%_
                             _%tl142305142617%_
                             _%e142310142620%_
                             _%hd142309142623%_
                             _%tl142308142625%_))
                        (_%__match144652144653%_
                         _%e142277142532%_
                         _%hd142276142535%_
                         _%tl142275142537%_
                         _%e142289142564%_
                         _%hd142288142567%_
                         _%tl142287142569%_
                         _%e142292142572%_
                         _%hd142291142575%_
                         _%tl142290142577%_
                         _%e142295142580%_
                         _%hd142294142583%_
                         _%tl142293142585%_
                         _%e142298142588%_
                         _%hd142297142591%_
                         _%tl142296142593%_
                         _%e142301142596%_
                         _%hd142300142599%_
                         _%tl142299142601%_
                         _%e142304142604%_
                         _%hd142303142607%_
                         _%tl142302142609%_
                         _%e142307142612%_
                         _%hd142306142615%_
                         _%tl142305142617%_
                         _%e142310142620%_
                         _%hd142309142623%_
                         _%tl142308142625%_))
                    (_%__match144652144653%_
                     _%e142277142532%_
                     _%hd142276142535%_
                     _%tl142275142537%_
                     _%e142289142564%_
                     _%hd142288142567%_
                     _%tl142287142569%_
                     _%e142292142572%_
                     _%hd142291142575%_
                     _%tl142290142577%_
                     _%e142295142580%_
                     _%hd142294142583%_
                     _%tl142293142585%_
                     _%e142298142588%_
                     _%hd142297142591%_
                     _%tl142296142593%_
                     _%e142301142596%_
                     _%hd142300142599%_
                     _%tl142299142601%_
                     _%e142304142604%_
                     _%hd142303142607%_
                     _%tl142302142609%_
                     _%e142307142612%_
                     _%hd142306142615%_
                     _%tl142305142617%_
                     _%e142310142620%_
                     _%hd142309142623%_
                     _%tl142308142625%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144652144653%_
                                                     _%e142277142532%_
                                                     _%hd142276142535%_
                                                     _%tl142275142537%_
                                                     _%e142289142564%_
                                                     _%hd142288142567%_
                                                     _%tl142287142569%_
                                                     _%e142292142572%_
                                                     _%hd142291142575%_
                                                     _%tl142290142577%_
                                                     _%e142295142580%_
                                                     _%hd142294142583%_
                                                     _%tl142293142585%_
                                                     _%e142298142588%_
                                                     _%hd142297142591%_
                                                     _%tl142296142593%_
                                                     _%e142301142596%_
                                                     _%hd142300142599%_
                                                     _%tl142299142601%_
                                                     _%e142304142604%_
                                                     _%hd142303142607%_
                                                     _%tl142302142609%_
                                                     _%e142307142612%_
                                                     _%hd142306142615%_
                                                     _%tl142305142617%_
                                                     _%e142310142620%_
                                                     _%hd142309142623%_
                                                     _%tl142308142625%_))))
                                            (_%__match144652144653%_
                                             _%e142277142532%_
                                             _%hd142276142535%_
                                             _%tl142275142537%_
                                             _%e142289142564%_
                                             _%hd142288142567%_
                                             _%tl142287142569%_
                                             _%e142292142572%_
                                             _%hd142291142575%_
                                             _%tl142290142577%_
                                             _%e142295142580%_
                                             _%hd142294142583%_
                                             _%tl142293142585%_
                                             _%e142298142588%_
                                             _%hd142297142591%_
                                             _%tl142296142593%_
                                             _%e142301142596%_
                                             _%hd142300142599%_
                                             _%tl142299142601%_
                                             _%e142304142604%_
                                             _%hd142303142607%_
                                             _%tl142302142609%_
                                             _%e142307142612%_
                                             _%hd142306142615%_
                                             _%tl142305142617%_
                                             _%e142310142620%_
                                             _%hd142309142623%_
                                             _%tl142308142625%_))))
                                    (_%__match144652144653%_
                                     _%e142277142532%_
                                     _%hd142276142535%_
                                     _%tl142275142537%_
                                     _%e142289142564%_
                                     _%hd142288142567%_
                                     _%tl142287142569%_
                                     _%e142292142572%_
                                     _%hd142291142575%_
                                     _%tl142290142577%_
                                     _%e142295142580%_
                                     _%hd142294142583%_
                                     _%tl142293142585%_
                                     _%e142298142588%_
                                     _%hd142297142591%_
                                     _%tl142296142593%_
                                     _%e142301142596%_
                                     _%hd142300142599%_
                                     _%tl142299142601%_
                                     _%e142304142604%_
                                     _%hd142303142607%_
                                     _%tl142302142609%_
                                     _%e142307142612%_
                                     _%hd142306142615%_
                                     _%tl142305142617%_
                                     _%e142310142620%_
                                     _%hd142309142623%_
                                     _%tl142308142625%_))
                                (_%__match144652144653%_
                                 _%e142277142532%_
                                 _%hd142276142535%_
                                 _%tl142275142537%_
                                 _%e142289142564%_
                                 _%hd142288142567%_
                                 _%tl142287142569%_
                                 _%e142292142572%_
                                 _%hd142291142575%_
                                 _%tl142290142577%_
                                 _%e142295142580%_
                                 _%hd142294142583%_
                                 _%tl142293142585%_
                                 _%e142298142588%_
                                 _%hd142297142591%_
                                 _%tl142296142593%_
                                 _%e142301142596%_
                                 _%hd142300142599%_
                                 _%tl142299142601%_
                                 _%e142304142604%_
                                 _%hd142303142607%_
                                 _%tl142302142609%_
                                 _%e142307142612%_
                                 _%hd142306142615%_
                                 _%tl142305142617%_
                                 _%e142310142620%_
                                 _%hd142309142623%_
                                 _%tl142308142625%_))
                            (_%__kont144555144556%_))))
                    (_%__kont144555144556%_))
                (_%__kont144555144556%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144555144556%_))))
                                            (_%__kont144555144556%_))))
                                    (_%__kont144555144556%_))
                                (_%__kont144555144556%_))))
                        (_%__kont144555144556%_))
                    (_%__kont144555144556%_))
                (_%__kont144555144556%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont144555144556%_))))
                                        (_%__kont144555144556%_))
                                    (_%__kont144555144556%_))
                                (_%__kont144555144556%_))))
                        (_%__kont144555144556%_))))
                (_%__kont144555144556%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop142281142545%_
                                       _%target142278142540%_
                                       '())))))
                               (_%__match144570144571%_
                                (lambda (_%e142229142792%_
                                         _%hd142228142795%_
                                         _%tl142227142797%_
                                         _%__splice144543144544%_
                                         _%target142230142800%_
                                         _%tl142232142802%_)
                                  (letrec ((_%loop142233142805%_
                                            (lambda (_%hd142231142808%_
                                                     _%arg142237142810%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142231142808%_))
                                                  (let ((_%e142234142813%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142231142808%_))))
                                                    (let ((_%lp-tl142236142818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142234142813%_)))
                                                          (_%lp-hd142235142816%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142234142813%_))))
                                                      (let ((__tmp145852
                                                             (cons _%lp-hd142235142816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg142237142810%_)))
                (declare (not safe))
                (_%loop142233142805%_ _%lp-tl142236142818%_ __tmp145852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg142238142821%_
                                                         (reverse _%arg142237142810%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142227142797%_))
                                                        (let ((_%e142241142824%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142227142797%_))))
                  (let ((_%tl142239142829%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142241142824%_)))
                        (_%hd142240142827%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142241142824%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142240142827%_))
                        (let ((_%e142244142832%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142240142827%_))))
                          (let ((_%tl142242142837%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142244142832%_)))
                                (_%hd142243142835%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142244142832%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142243142835%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd142243142835%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142242142837%_))
                                        (let ((_%e142247142840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142242142837%_))))
                                          (let ((_%tl142245142845%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142247142840%_)))
                                                (_%hd142246142843%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142247142840%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd142246142843%_))
                                                (let ((_%e142250142848%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142246142843%_))))
                                                  (let ((_%tl142248142853%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142250142848%_)))
                                                        (_%hd142249142851%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142250142848%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd142249142851%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd142249142851%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl142248142853%_))
                        (let ((_%e142253142856%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl142248142853%_))))
                          (let ((_%tl142251142861%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142253142856%_)))
                                (_%hd142252142859%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142253142856%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142251142861%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl142245142845%_))
                                    (let ((_%__splice144545144546%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl142245142845%_
                                              '0))))
                                      (let ((_%tl142256142866%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144545144546%_
                                                '1)))
                                            (_%target142254142864%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144545144546%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl142256142866%_))
                                            (letrec ((_%loop142257142869%_
                                                      (lambda (_%hd142255142872%_
                                                               _%xarg142261142874%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd142255142872%_))
                                                            (let ((_%e142258142877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd142255142872%_))))
                      (let ((_%lp-tl142260142882%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142258142877%_)))
                            (_%lp-hd142259142880%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142258142877%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd142259142880%_))
                            (let ((_%e142265142885%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd142259142880%_))))
                              (let ((_%tl142263142890%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e142265142885%_)))
                                    (_%hd142264142888%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e142265142885%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd142264142888%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd142264142888%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142263142890%_))
                                            (let ((_%e142268142893%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142263142890%_))))
                                              (let ((_%tl142266142898%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142268142893%_)))
                                                    (_%hd142267142896%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142268142893%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl142266142898%_))
                                                    (let ((__tmp145853
                                                           (cons _%hd142267142896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xarg142261142874%_)))
              (declare (not safe))
              (_%loop142257142869%_ _%lp-tl142260142882%_ __tmp145853))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144582144583%_
                                                     _%e142229142792%_
                                                     _%hd142228142795%_
                                                     _%tl142227142797%_
                                                     _%__splice144543144544%_
                                                     _%target142230142800%_
                                                     _%tl142232142802%_))))
                                            (_%__match144582144583%_
                                             _%e142229142792%_
                                             _%hd142228142795%_
                                             _%tl142227142797%_
                                             _%__splice144543144544%_
                                             _%target142230142800%_
                                             _%tl142232142802%_))
                                        (_%__match144582144583%_
                                         _%e142229142792%_
                                         _%hd142228142795%_
                                         _%tl142227142797%_
                                         _%__splice144543144544%_
                                         _%target142230142800%_
                                         _%tl142232142802%_))
                                    (_%__match144582144583%_
                                     _%e142229142792%_
                                     _%hd142228142795%_
                                     _%tl142227142797%_
                                     _%__splice144543144544%_
                                     _%target142230142800%_
                                     _%tl142232142802%_))))
                            (_%__match144582144583%_
                             _%e142229142792%_
                             _%hd142228142795%_
                             _%tl142227142797%_
                             _%__splice144543144544%_
                             _%target142230142800%_
                             _%tl142232142802%_))))
                    (let ((_%xarg142262142901%_
                           (reverse _%xarg142261142874%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl142239142829%_))
                          (let ((_%L142904%_ _%xarg142262142901%_)
                                (_%L142905%_ _%hd142252142859%_)
                                (_%L142906%_ _%arg142238142821%_))
                            (if (and (let ((__tmp145854
                                            (let ((__tmp145855
                                                   (lambda (_%g142934142937%_
                                                            _%g142935142939%_)
                                                     (cons _%g142934142937%_
                                                           _%g142935142939%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145855
                                               '()
                                               _%L142906%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp145854))
                                     (let ((__tmp145858
                                            (length (let ((__tmp145859
                                                           (lambda (_%g142941142944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142942142946%_)
                     (cons _%g142941142944%_ _%g142942142946%_))))
              (declare (not safe))
              (__foldr1 __tmp145859 '() _%L142906%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp145856
                                            (length (let ((__tmp145857
                                                           (lambda (_%g142948142951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142949142953%_)
                     (cons _%g142948142951%_ _%g142949142953%_))))
              (declare (not safe))
              (__foldr1 __tmp145857 '() _%L142904%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145858 __tmp145856))
                                     (let ((__tmp145862
                                            (let ((__tmp145863
                                                   (lambda (_%g142955142958%_
                                                            _%g142956142960%_)
                                                     (cons _%g142955142958%_
                                                           _%g142956142960%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145863
                                               '()
                                               _%L142906%_)))
                                           (__tmp145860
                                            (let ((__tmp145861
                                                   (lambda (_%g142962142965%_
                                                            _%g142963142967%_)
                                                     (cons _%g142962142965%_
                                                           _%g142963142967%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145861
                                               '()
                                               _%L142904%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp145862
                                        __tmp145860))
                                     (let ((__tmp145864
                                            (let ((__tmp145867
                                                   (lambda (_%g142969142971%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g142969142971%_
                                                        _%L142905%_))))
                                                  (__tmp145865
                                                   (let ((__tmp145866
                                                          (lambda (_%g142973142976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g142974142978%_)
                    (cons _%g142973142976%_ _%g142974142978%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp145866
                                                      '()
                                                      _%L142906%_))))
                                              (declare (not safe))
                                              (__find __tmp145867
                                                      __tmp145865))))
                                       (declare (not safe))
                                       (not __tmp145864)))
                                (_%__kont144541144542%_
                                 _%L142904%_
                                 _%L142905%_
                                 _%L142906%_)
                                (_%__match144582144583%_
                                 _%e142229142792%_
                                 _%hd142228142795%_
                                 _%tl142227142797%_
                                 _%__splice144543144544%_
                                 _%target142230142800%_
                                 _%tl142232142802%_)))
                          (_%__match144582144583%_
                           _%e142229142792%_
                           _%hd142228142795%_
                           _%tl142227142797%_
                           _%__splice144543144544%_
                           _%target142230142800%_
                           _%tl142232142802%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop142257142869%_
                                                 _%target142254142864%_
                                                 '())))
                                            (_%__match144582144583%_
                                             _%e142229142792%_
                                             _%hd142228142795%_
                                             _%tl142227142797%_
                                             _%__splice144543144544%_
                                             _%target142230142800%_
                                             _%tl142232142802%_))))
                                    (_%__match144582144583%_
                                     _%e142229142792%_
                                     _%hd142228142795%_
                                     _%tl142227142797%_
                                     _%__splice144543144544%_
                                     _%target142230142800%_
                                     _%tl142232142802%_))
                                (_%__match144582144583%_
                                 _%e142229142792%_
                                 _%hd142228142795%_
                                 _%tl142227142797%_
                                 _%__splice144543144544%_
                                 _%target142230142800%_
                                 _%tl142232142802%_))))
                        (_%__match144582144583%_
                         _%e142229142792%_
                         _%hd142228142795%_
                         _%tl142227142797%_
                         _%__splice144543144544%_
                         _%target142230142800%_
                         _%tl142232142802%_))
                    (_%__match144582144583%_
                     _%e142229142792%_
                     _%hd142228142795%_
                     _%tl142227142797%_
                     _%__splice144543144544%_
                     _%target142230142800%_
                     _%tl142232142802%_))
                (_%__match144582144583%_
                 _%e142229142792%_
                 _%hd142228142795%_
                 _%tl142227142797%_
                 _%__splice144543144544%_
                 _%target142230142800%_
                 _%tl142232142802%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match144582144583%_
                                                 _%e142229142792%_
                                                 _%hd142228142795%_
                                                 _%tl142227142797%_
                                                 _%__splice144543144544%_
                                                 _%target142230142800%_
                                                 _%tl142232142802%_))))
                                        (_%__match144582144583%_
                                         _%e142229142792%_
                                         _%hd142228142795%_
                                         _%tl142227142797%_
                                         _%__splice144543144544%_
                                         _%target142230142800%_
                                         _%tl142232142802%_))
                                    (_%__match144582144583%_
                                     _%e142229142792%_
                                     _%hd142228142795%_
                                     _%tl142227142797%_
                                     _%__splice144543144544%_
                                     _%target142230142800%_
                                     _%tl142232142802%_))
                                (_%__match144582144583%_
                                 _%e142229142792%_
                                 _%hd142228142795%_
                                 _%tl142227142797%_
                                 _%__splice144543144544%_
                                 _%target142230142800%_
                                 _%tl142232142802%_))))
                        (_%__match144582144583%_
                         _%e142229142792%_
                         _%hd142228142795%_
                         _%tl142227142797%_
                         _%__splice144543144544%_
                         _%target142230142800%_
                         _%tl142232142802%_))))
                (_%__match144582144583%_
                 _%e142229142792%_
                 _%hd142228142795%_
                 _%tl142227142797%_
                 _%__splice144543144544%_
                 _%target142230142800%_
                 _%tl142232142802%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop142233142805%_
                                       _%target142230142800%_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144539144540%_))
                              (let ((_%e142229142792%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144539144540%_))))
                                (let ((_%tl142227142797%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142229142792%_)))
                                      (_%hd142228142795%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142229142792%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd142228142795%_))
                                      (let ((_%__splice144543144544%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd142228142795%_
                                                '0))))
                                        (let ((_%tl142232142802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144543144544%_
                                                  '1)))
                                              (_%target142230142800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144543144544%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142232142802%_))
                                              (_%__match144570144571%_
                                               _%e142229142792%_
                                               _%hd142228142795%_
                                               _%tl142227142797%_
                                               _%__splice144543144544%_
                                               _%target142230142800%_
                                               _%tl142232142802%_)
                                              (_%__match144582144583%_
                                               _%e142229142792%_
                                               _%hd142228142795%_
                                               _%tl142227142797%_
                                               _%__splice144543144544%_
                                               _%target142230142800%_
                                               _%tl142232142802%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl142227142797%_))
                                          (let ((_%e142344142399%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl142227142797%_))))
                                            (let ((_%tl142342142404%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e142344142399%_)))
                                                  (_%hd142343142402%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e142344142399%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142343142402%_))
                                                  (let ((_%e142347142407%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142343142402%_))))
                                                    (let ((_%tl142345142412%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142347142407%_)))
                                                          (_%hd142346142410%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142347142407%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd142346142410%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd142346142410%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142345142412%_))
                          (let ((_%e142350142415%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142345142412%_))))
                            (let ((_%tl142348142420%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142350142415%_)))
                                  (_%hd142349142418%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142350142415%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd142349142418%_))
                                  (let ((_%e142353142423%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd142349142418%_))))
                                    (let ((_%tl142351142428%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142353142423%_)))
                                          (_%hd142352142426%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142353142423%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd142352142426%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd142352142426%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl142351142428%_))
                                                  (let ((_%e142356142431%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl142351142428%_))))
                                                    (let ((_%tl142354142436%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142356142431%_)))
                                                          (_%hd142355142434%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142356142431%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl142354142436%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl142348142420%_))
                      (let ((_%e142359142439%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl142348142420%_))))
                        (let ((_%tl142357142444%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142359142439%_)))
                              (_%hd142358142442%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142359142439%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd142358142442%_))
                              (let ((_%e142362142447%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd142358142442%_))))
                                (let ((_%tl142360142452%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142362142447%_)))
                                      (_%hd142361142450%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142362142447%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd142361142450%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd142361142450%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142360142452%_))
                                              (let ((_%e142365142455%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142360142452%_))))
                                                (let ((_%tl142363142460%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142365142455%_)))
                                                      (_%hd142364142458%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142365142455%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142363142460%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl142357142444%_))
                                                          (let ((_%e142368142463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl142357142444%_))))
                    (let ((_%tl142366142468%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142368142463%_)))
                          (_%hd142367142466%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142368142463%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd142367142466%_))
                          (let ((_%e142371142471%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd142367142466%_))))
                            (let ((_%tl142369142476%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142371142471%_)))
                                  (_%hd142370142474%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142371142471%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd142370142474%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd142370142474%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl142369142476%_))
                                          (let ((_%e142374142479%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl142369142476%_))))
                                            (let ((_%tl142372142484%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e142374142479%_)))
                                                  (_%hd142373142482%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e142374142479%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl142372142484%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142366142468%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl142342142404%_))
                                                          (_%__match144680144681%_
                                                           _%e142229142792%_
                                                           _%hd142228142795%_
                                                           _%tl142227142797%_
                                                           _%e142344142399%_
                                                           _%hd142343142402%_
                                                           _%tl142342142404%_
                                                           _%e142347142407%_
                                                           _%hd142346142410%_
                                                           _%tl142345142412%_
                                                           _%e142350142415%_
                                                           _%hd142349142418%_
                                                           _%tl142348142420%_
                                                           _%e142353142423%_
                                                           _%hd142352142426%_
                                                           _%tl142351142428%_
                                                           _%e142356142431%_
                                                           _%hd142355142434%_
                                                           _%tl142354142436%_
                                                           _%e142359142439%_
                                                           _%hd142358142442%_
                                                           _%tl142357142444%_
                                                           _%e142362142447%_
                                                           _%hd142361142450%_
                                                           _%tl142360142452%_
                                                           _%e142365142455%_
                                                           _%hd142364142458%_
                                                           _%tl142363142460%_
                                                           _%e142368142463%_
                                                           _%hd142367142466%_
                                                           _%tl142366142468%_
                                                           _%e142371142471%_
                                                           _%hd142370142474%_
                                                           _%tl142369142476%_
                                                           _%e142374142479%_
                                                           _%hd142373142482%_
                                                           _%tl142372142484%_)
                                                          (_%__kont144555144556%_))
                                                      (_%__kont144555144556%_))
                                                  (_%__kont144555144556%_))))
                                          (_%__kont144555144556%_))
                                      (_%__kont144555144556%_))
                                  (_%__kont144555144556%_))))
                          (_%__kont144555144556%_))))
                  (_%__kont144555144556%_))
              (_%__kont144555144556%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont144555144556%_))
                                          (_%__kont144555144556%_))
                                      (_%__kont144555144556%_))))
                              (_%__kont144555144556%_))))
                      (_%__kont144555144556%_))
                  (_%__kont144555144556%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144555144556%_))
                                              (_%__kont144555144556%_))
                                          (_%__kont144555144556%_))))
                                  (_%__kont144555144556%_))))
                          (_%__kont144555144556%_))
                      (_%__kont144555144556%_))
                  (_%__kont144555144556%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144555144556%_))))
                                          (_%__kont144555144556%_)))))
                              (_%__kont144555144556%_)))))))
                 (_%dispatch-case-e141527%_
                  (lambda (_%hd141678%_ _%body141679%_)
                    (let* ((_%form141681%_
                            (cons _%hd141678%_ (cons _%body141679%_ '())))
                           (_%__stx144683144684%_ _%form141681%_)
                           (_%g141685141809%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144683144684%_)))))
                      (let ((_%__kont144685144686%_
                             (lambda (_%L142180%_ _%L142181%_ _%L142182%_)
                               (let ((__tmp145868
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L142181%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self141523%_
                                  __tmp145868))))
                            (_%__kont144691144692%_
                             (lambda (_%L142028%_
                                      _%L142029%_
                                      _%L142030%_
                                      _%L142031%_)
                               (let ((__tmp145869
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L142028%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self141523%_
                                  __tmp145869))))
                            (_%__kont144695144696%_
                             (lambda (_%L141894%_ _%L141895%_ _%L141896%_)
                               (let ((__tmp145870
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141894%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self141523%_
                                  __tmp145870)))))
                        (let* ((_%__match144792144793%_
                                (lambda (_%e141777141814%_
                                         _%hd141776141817%_
                                         _%tl141775141819%_
                                         _%e141780141822%_
                                         _%hd141779141825%_
                                         _%tl141778141827%_
                                         _%e141783141830%_
                                         _%hd141782141833%_
                                         _%tl141781141835%_
                                         _%e141786141838%_
                                         _%hd141785141841%_
                                         _%tl141784141843%_
                                         _%e141789141846%_
                                         _%hd141788141849%_
                                         _%tl141787141851%_
                                         _%e141792141854%_
                                         _%hd141791141857%_
                                         _%tl141790141859%_
                                         _%e141795141862%_
                                         _%hd141794141865%_
                                         _%tl141793141867%_
                                         _%e141798141870%_
                                         _%hd141797141873%_
                                         _%tl141796141875%_
                                         _%e141801141878%_
                                         _%hd141800141881%_
                                         _%tl141799141883%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141793141867%_))
                                      (let ((_%e141804141886%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141793141867%_))))
                                        (let ((_%tl141802141891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141804141886%_)))
                                              (_%hd141803141889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141804141886%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141802141891%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl141778141827%_))
                                                  (_%__kont144695144696%_
                                                   _%hd141800141881%_
                                                   _%hd141791141857%_
                                                   _%hd141776141817%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141685141809%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g141685141809%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g141685141809%_)))))
                               (_%__match144722144723%_
                                (lambda (_%e141738141932%_
                                         _%hd141737141935%_
                                         _%tl141736141937%_
                                         _%__splice144693144694%_
                                         _%target141739141940%_
                                         _%tl141741141942%_)
                                  (letrec ((_%loop141742141945%_
                                            (lambda (_%hd141740141948%_
                                                     _%arg141746141950%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141740141948%_))
                                                  (let ((_%e141743141953%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141740141948%_))))
                                                    (let ((_%lp-tl141745141958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141743141953%_)))
                                                          (_%lp-hd141744141956%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141743141953%_))))
                                                      (let ((__tmp145871
                                                             (cons _%lp-hd141744141956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141746141950%_)))
                (declare (not safe))
                (_%loop141742141945%_ _%lp-tl141745141958%_ __tmp145871))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141747141961%_
                                                         (reverse _%arg141746141950%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141736141937%_))
                                                        (let ((_%e141750141964%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141736141937%_))))
                  (let ((_%tl141748141969%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141750141964%_)))
                        (_%hd141749141967%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141750141964%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141749141967%_))
                        (let ((_%e141753141972%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141749141967%_))))
                          (let ((_%tl141751141977%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141753141972%_)))
                                (_%hd141752141975%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141753141972%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141752141975%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141752141975%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141751141977%_))
                                        (let ((_%e141756141980%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141751141977%_))))
                                          (let ((_%tl141754141985%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141756141980%_)))
                                                (_%hd141755141983%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141756141980%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141755141983%_))
                                                (let ((_%e141759141988%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141755141983%_))))
                                                  (let ((_%tl141757141993%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141759141988%_)))
                                                        (_%hd141758141991%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141759141988%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141758141991%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141758141991%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141757141993%_))
                        (let ((_%e141762141996%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141757141993%_))))
                          (let ((_%tl141760142001%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141762141996%_)))
                                (_%hd141761141999%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141762141996%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141760142001%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl141754141985%_))
                                    (let ((_%e141765142004%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl141754141985%_))))
                                      (let ((_%tl141763142009%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e141765142004%_)))
                                            (_%hd141764142007%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e141765142004%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd141764142007%_))
                                            (let ((_%e141768142012%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd141764142007%_))))
                                              (let ((_%tl141766142017%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141768142012%_)))
                                                    (_%hd141767142015%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141768142012%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd141767142015%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd141767142015%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141766142017%_))
                                                            (let ((_%e141771142020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141766142017%_))))
                      (let ((_%tl141769142025%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141771142020%_)))
                            (_%hd141770142023%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141771142020%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141769142025%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141748141969%_))
                                (_%__kont144691144692%_
                                 _%hd141770142023%_
                                 _%hd141761141999%_
                                 _%tl141741141942%_
                                 _%arg141747141961%_)
                                (_%__match144792144793%_
                                 _%e141738141932%_
                                 _%hd141737141935%_
                                 _%tl141736141937%_
                                 _%e141750141964%_
                                 _%hd141749141967%_
                                 _%tl141748141969%_
                                 _%e141753141972%_
                                 _%hd141752141975%_
                                 _%tl141751141977%_
                                 _%e141756141980%_
                                 _%hd141755141983%_
                                 _%tl141754141985%_
                                 _%e141759141988%_
                                 _%hd141758141991%_
                                 _%tl141757141993%_
                                 _%e141762141996%_
                                 _%hd141761141999%_
                                 _%tl141760142001%_
                                 _%e141765142004%_
                                 _%hd141764142007%_
                                 _%tl141763142009%_
                                 _%e141768142012%_
                                 _%hd141767142015%_
                                 _%tl141766142017%_
                                 _%e141771142020%_
                                 _%hd141770142023%_
                                 _%tl141769142025%_))
                            (let ()
                              (declare (not safe))
                              (_%g141685141809%_)))))
                    (let () (declare (not safe)) (_%g141685141809%_)))
                (let () (declare (not safe)) (_%g141685141809%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g141685141809%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g141685141809%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g141685141809%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g141685141809%_)))))
                        (let () (declare (not safe)) (_%g141685141809%_)))
                    (let () (declare (not safe)) (_%g141685141809%_)))
                (let () (declare (not safe)) (_%g141685141809%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g141685141809%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g141685141809%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g141685141809%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g141685141809%_)))))
                        (let () (declare (not safe)) (_%g141685141809%_)))))
                (let () (declare (not safe)) (_%g141685141809%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141742141945%_
                                       _%target141739141940%_
                                       '())))))
                               (_%__match144710144711%_
                                (lambda (_%e141692142068%_
                                         _%hd141691142071%_
                                         _%tl141690142073%_
                                         _%__splice144687144688%_
                                         _%target141693142076%_
                                         _%tl141695142078%_)
                                  (letrec ((_%loop141696142081%_
                                            (lambda (_%hd141694142084%_
                                                     _%arg141700142086%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141694142084%_))
                                                  (let ((_%e141697142089%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141694142084%_))))
                                                    (let ((_%lp-tl141699142094%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141697142089%_)))
                                                          (_%lp-hd141698142092%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141697142089%_))))
                                                      (let ((__tmp145872
                                                             (cons _%lp-hd141698142092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141700142086%_)))
                (declare (not safe))
                (_%loop141696142081%_ _%lp-tl141699142094%_ __tmp145872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141701142097%_
                                                         (reverse _%arg141700142086%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141690142073%_))
                                                        (let ((_%e141704142100%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141690142073%_))))
                  (let ((_%tl141702142105%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141704142100%_)))
                        (_%hd141703142103%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141704142100%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141703142103%_))
                        (let ((_%e141707142108%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141703142103%_))))
                          (let ((_%tl141705142113%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141707142108%_)))
                                (_%hd141706142111%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141707142108%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141706142111%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141706142111%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141705142113%_))
                                        (let ((_%e141710142116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141705142113%_))))
                                          (let ((_%tl141708142121%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141710142116%_)))
                                                (_%hd141709142119%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141710142116%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141709142119%_))
                                                (let ((_%e141713142124%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141709142119%_))))
                                                  (let ((_%tl141711142129%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141713142124%_)))
                                                        (_%hd141712142127%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141713142124%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141712142127%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141712142127%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141711142129%_))
                        (let ((_%e141716142132%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141711142129%_))))
                          (let ((_%tl141714142137%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141716142132%_)))
                                (_%hd141715142135%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141716142132%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141714142137%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl141708142121%_))
                                    (let ((_%__splice144689144690%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141708142121%_
                                              '0))))
                                      (let ((_%tl141719142142%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144689144690%_
                                                '1)))
                                            (_%target141717142140%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144689144690%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl141719142142%_))
                                            (letrec ((_%loop141720142145%_
                                                      (lambda (_%hd141718142148%_
                                                               _%xarg141724142150%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd141718142148%_))
                                                            (let ((_%e141721142153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd141718142148%_))))
                      (let ((_%lp-tl141723142158%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141721142153%_)))
                            (_%lp-hd141722142156%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141721142153%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd141722142156%_))
                            (let ((_%e141728142161%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd141722142156%_))))
                              (let ((_%tl141726142166%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141728142161%_)))
                                    (_%hd141727142164%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141728142161%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141727142164%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd141727142164%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141726142166%_))
                                            (let ((_%e141731142169%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141726142166%_))))
                                              (let ((_%tl141729142174%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141731142169%_)))
                                                    (_%hd141730142172%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141731142169%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl141729142174%_))
                                                    (let ((__tmp145873
                                                           (cons _%hd141730142172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xarg141724142150%_)))
              (declare (not safe))
              (_%loop141720142145%_ _%lp-tl141723142158%_ __tmp145873))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144722144723%_
                                                     _%e141692142068%_
                                                     _%hd141691142071%_
                                                     _%tl141690142073%_
                                                     _%__splice144687144688%_
                                                     _%target141693142076%_
                                                     _%tl141695142078%_))))
                                            (_%__match144722144723%_
                                             _%e141692142068%_
                                             _%hd141691142071%_
                                             _%tl141690142073%_
                                             _%__splice144687144688%_
                                             _%target141693142076%_
                                             _%tl141695142078%_))
                                        (_%__match144722144723%_
                                         _%e141692142068%_
                                         _%hd141691142071%_
                                         _%tl141690142073%_
                                         _%__splice144687144688%_
                                         _%target141693142076%_
                                         _%tl141695142078%_))
                                    (_%__match144722144723%_
                                     _%e141692142068%_
                                     _%hd141691142071%_
                                     _%tl141690142073%_
                                     _%__splice144687144688%_
                                     _%target141693142076%_
                                     _%tl141695142078%_))))
                            (_%__match144722144723%_
                             _%e141692142068%_
                             _%hd141691142071%_
                             _%tl141690142073%_
                             _%__splice144687144688%_
                             _%target141693142076%_
                             _%tl141695142078%_))))
                    (let ((_%xarg141725142177%_
                           (reverse _%xarg141724142150%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141702142105%_))
                          (_%__kont144685144686%_
                           _%xarg141725142177%_
                           _%hd141715142135%_
                           _%arg141701142097%_)
                          (_%__match144722144723%_
                           _%e141692142068%_
                           _%hd141691142071%_
                           _%tl141690142073%_
                           _%__splice144687144688%_
                           _%target141693142076%_
                           _%tl141695142078%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop141720142145%_
                                                 _%target141717142140%_
                                                 '())))
                                            (_%__match144722144723%_
                                             _%e141692142068%_
                                             _%hd141691142071%_
                                             _%tl141690142073%_
                                             _%__splice144687144688%_
                                             _%target141693142076%_
                                             _%tl141695142078%_))))
                                    (_%__match144722144723%_
                                     _%e141692142068%_
                                     _%hd141691142071%_
                                     _%tl141690142073%_
                                     _%__splice144687144688%_
                                     _%target141693142076%_
                                     _%tl141695142078%_))
                                (_%__match144722144723%_
                                 _%e141692142068%_
                                 _%hd141691142071%_
                                 _%tl141690142073%_
                                 _%__splice144687144688%_
                                 _%target141693142076%_
                                 _%tl141695142078%_))))
                        (_%__match144722144723%_
                         _%e141692142068%_
                         _%hd141691142071%_
                         _%tl141690142073%_
                         _%__splice144687144688%_
                         _%target141693142076%_
                         _%tl141695142078%_))
                    (_%__match144722144723%_
                     _%e141692142068%_
                     _%hd141691142071%_
                     _%tl141690142073%_
                     _%__splice144687144688%_
                     _%target141693142076%_
                     _%tl141695142078%_))
                (_%__match144722144723%_
                 _%e141692142068%_
                 _%hd141691142071%_
                 _%tl141690142073%_
                 _%__splice144687144688%_
                 _%target141693142076%_
                 _%tl141695142078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match144722144723%_
                                                 _%e141692142068%_
                                                 _%hd141691142071%_
                                                 _%tl141690142073%_
                                                 _%__splice144687144688%_
                                                 _%target141693142076%_
                                                 _%tl141695142078%_))))
                                        (_%__match144722144723%_
                                         _%e141692142068%_
                                         _%hd141691142071%_
                                         _%tl141690142073%_
                                         _%__splice144687144688%_
                                         _%target141693142076%_
                                         _%tl141695142078%_))
                                    (_%__match144722144723%_
                                     _%e141692142068%_
                                     _%hd141691142071%_
                                     _%tl141690142073%_
                                     _%__splice144687144688%_
                                     _%target141693142076%_
                                     _%tl141695142078%_))
                                (_%__match144722144723%_
                                 _%e141692142068%_
                                 _%hd141691142071%_
                                 _%tl141690142073%_
                                 _%__splice144687144688%_
                                 _%target141693142076%_
                                 _%tl141695142078%_))))
                        (_%__match144722144723%_
                         _%e141692142068%_
                         _%hd141691142071%_
                         _%tl141690142073%_
                         _%__splice144687144688%_
                         _%target141693142076%_
                         _%tl141695142078%_))))
                (_%__match144722144723%_
                 _%e141692142068%_
                 _%hd141691142071%_
                 _%tl141690142073%_
                 _%__splice144687144688%_
                 _%target141693142076%_
                 _%tl141695142078%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141696142081%_
                                       _%target141693142076%_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144683144684%_))
                              (let ((_%e141692142068%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144683144684%_))))
                                (let ((_%tl141690142073%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141692142068%_)))
                                      (_%hd141691142071%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141692142068%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd141691142071%_))
                                      (let ((_%__splice144687144688%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd141691142071%_
                                                '0))))
                                        (let ((_%tl141695142078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144687144688%_
                                                  '1)))
                                              (_%target141693142076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144687144688%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141695142078%_))
                                              (_%__match144710144711%_
                                               _%e141692142068%_
                                               _%hd141691142071%_
                                               _%tl141690142073%_
                                               _%__splice144687144688%_
                                               _%target141693142076%_
                                               _%tl141695142078%_)
                                              (_%__match144722144723%_
                                               _%e141692142068%_
                                               _%hd141691142071%_
                                               _%tl141690142073%_
                                               _%__splice144687144688%_
                                               _%target141693142076%_
                                               _%tl141695142078%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141690142073%_))
                                          (let ((_%e141780141822%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141690142073%_))))
                                            (let ((_%tl141778141827%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141780141822%_)))
                                                  (_%hd141779141825%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141780141822%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141779141825%_))
                                                  (let ((_%e141783141830%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141779141825%_))))
                                                    (let ((_%tl141781141835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141783141830%_)))
                                                          (_%hd141782141833%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141783141830%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd141782141833%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd141782141833%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141781141835%_))
                          (let ((_%e141786141838%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141781141835%_))))
                            (let ((_%tl141784141843%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141786141838%_)))
                                  (_%hd141785141841%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141786141838%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd141785141841%_))
                                  (let ((_%e141789141846%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd141785141841%_))))
                                    (let ((_%tl141787141851%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141789141846%_)))
                                          (_%hd141788141849%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141789141846%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd141788141849%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd141788141849%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl141787141851%_))
                                                  (let ((_%e141792141854%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl141787141851%_))))
                                                    (let ((_%tl141790141859%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141792141854%_)))
                                                          (_%hd141791141857%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141792141854%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141790141859%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141784141843%_))
                      (let ((_%e141795141862%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141784141843%_))))
                        (let ((_%tl141793141867%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141795141862%_)))
                              (_%hd141794141865%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141795141862%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd141794141865%_))
                              (let ((_%e141798141870%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd141794141865%_))))
                                (let ((_%tl141796141875%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141798141870%_)))
                                      (_%hd141797141873%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141798141870%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd141797141873%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd141797141873%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141796141875%_))
                                              (let ((_%e141801141878%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141796141875%_))))
                                                (let ((_%tl141799141883%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141801141878%_)))
                                                      (_%hd141800141881%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141801141878%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141799141883%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl141793141867%_))
                                                          (let ((_%e141804141886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl141793141867%_))))
                    (let ((_%tl141802141891%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141804141886%_)))
                          (_%hd141803141889%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141804141886%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141802141891%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl141778141827%_))
                              (_%__kont144695144696%_
                               _%hd141800141881%_
                               _%hd141791141857%_
                               _%hd141691142071%_)
                              (let ()
                                (declare (not safe))
                                (_%g141685141809%_)))
                          (let () (declare (not safe)) (_%g141685141809%_)))))
                  (let () (declare (not safe)) (_%g141685141809%_)))
              (let () (declare (not safe)) (_%g141685141809%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g141685141809%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141685141809%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g141685141809%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g141685141809%_)))))
                      (let () (declare (not safe)) (_%g141685141809%_)))
                  (let () (declare (not safe)) (_%g141685141809%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141685141809%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g141685141809%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141685141809%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g141685141809%_)))))
                          (let () (declare (not safe)) (_%g141685141809%_)))
                      (let () (declare (not safe)) (_%g141685141809%_)))
                  (let () (declare (not safe)) (_%g141685141809%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141685141809%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141685141809%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g141685141809%_))))))))
                 (_%generate1141528%_
                  (lambda (_%args141663%_
                           _%arglen141664%_
                           _%hd141665%_
                           _%body141666%_)
                    (let* ((_%len141668%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd141665%_)))
                           (_%condition141673%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd141665%_))
                                (let ()
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#current-compile-decls-unsafe?))
                                      (cons '##fx=
                                            (cons _%arglen141664%_
                                                  (cons _%len141668%_ '())))
                                      (cons 'let
                                            (cons '()
                                                  (cons '(declare (not safe))
                                                        (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%arglen141664%_ (cons _%len141668%_ '())))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len141668%_ '0)
                                    (let ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gxc#current-compile-decls-unsafe?))
                                          (cons '##fx>=
                                                (cons _%arglen141664%_
                                                      (cons _%len141668%_
                                                            '())))
                                          (cons 'let
                                                (cons '()
                                                      (cons '(declare
                                                               (not safe))
                                                            (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%arglen141664%_
                                      (cons _%len141668%_ '())))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let () '#t))))
                           (_%dispatch141675%_
                            (if (let ()
                                  (declare (not safe))
                                  (_%dispatch-case?141526%_
                                   _%hd141665%_
                                   _%body141666%_))
                                (let ()
                                  (declare (not safe))
                                  (_%dispatch-case-e141527%_
                                   _%hd141665%_
                                   _%body141666%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _%self141523%_
                                   _%hd141665%_
                                   _%body141666%_)))))
                      (cons _%condition141673%_
                            (cons (cons 'apply
                                        (cons _%dispatch141675%_
                                              (cons _%args141663%_ '())))
                                  '()))))))
          (let* ((_%g141530141558%_
                  (lambda (_%g141531141555%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141531141555%_))))
                 (_%g141529141660%_
                  (lambda (_%g141531141561%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141531141561%_))
                        (let ((_%e141536141563%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141531141561%_))))
                          (let ((_%hd141535141566%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141536141563%_)))
                                (_%tl141534141568%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141536141563%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl141534141568%_))
                                (let ((_g145874_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl141534141568%_
                                          '0))))
                                  (begin
                                    (let ((_g145875_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145874_)
                                                 (##vector-length _g145874_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145875_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145875_)))
                                    (let ((_%target141537141571%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145874_ 0)))
                                          (_%tl141539141573%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145874_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl141539141573%_))
                                          (letrec ((_%loop141540141576%_
                                                    (lambda (_%hd141538141579%_
                                                             _%body141544141581%_
                                                             _%hd141545141583%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd141538141579%_))
                                                          (let ((_%e141541141586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd141538141579%_))))
                    (let ((_%lp-hd141542141589%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141541141586%_)))
                          (_%lp-tl141543141591%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141541141586%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd141542141589%_))
                          (let ((_%e141550141594%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd141542141589%_))))
                            (let ((_%hd141549141597%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141550141594%_)))
                                  (_%tl141548141599%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141550141594%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl141548141599%_))
                                  (let ((_%e141553141602%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl141548141599%_))))
                                    (let ((_%hd141552141605%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141553141602%_)))
                                          (_%tl141551141607%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141553141602%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl141551141607%_))
                                          (let ((__tmp145877
                                                 (cons _%hd141552141605%_
                                                       _%body141544141581%_))
                                                (__tmp145876
                                                 (cons _%hd141549141597%_
                                                       _%hd141545141583%_)))
                                            (declare (not safe))
                                            (_%loop141540141576%_
                                             _%lp-tl141543141591%_
                                             __tmp145877
                                             __tmp145876))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141530141558%_
                                             _%g141531141561%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g141530141558%_ _%g141531141561%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g141530141558%_ _%g141531141561%_)))))
                  (let ((_%body141546141610%_ (reverse _%body141544141581%_))
                        (_%hd141547141612%_ (reverse _%hd141545141583%_)))
                    ((lambda (_%L141615%_ _%L141616%_)
                       (let ((_%args141635%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen141636%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name141637%_
                              (let ((_%$e141632%_
                                     (let ((__tmp145878
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp145878 _%stx141524%_))))
                                (if _%$e141632%_
                                    _%$e141632%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args141635%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen141636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (let ()
                                       (declare (not safe))
                                       (gxc#current-compile-decls-unsafe?))
                                     (cons '##length (cons _%args141635%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args141635%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp145882
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name141637%_
                                                                (cons _%args141635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp145879
                                  (map (lambda (_%g141638141641%_
                                                _%g141639141643%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%generate1141528%_
                                            _%args141635%_
                                            _%arglen141636%_
                                            _%g141638141641%_
                                            _%g141639141643%_)))
                                       (let ((__tmp145880
                                              (lambda (_%g141645141648%_
                                                       _%g141646141650%_)
                                                (cons _%g141645141648%_
                                                      _%g141646141650%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145880
                                          '()
                                          _%L141616%_))
                                       (let ((__tmp145881
                                              (lambda (_%g141652141655%_
                                                       _%g141653141657%_)
                                                (cons _%g141652141655%_
                                                      _%g141653141657%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145881
                                          '()
                                          _%L141615%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp145882 __tmp145879)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body141546141610%_
                     _%hd141547141612%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop141540141576%_
                                               _%target141537141571%_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141530141558%_
                                             _%g141531141561%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g141530141558%_ _%g141531141561%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g141530141558%_ _%g141531141561%_))))))
            (declare (not safe))
            (_%g141529141660%_ _%stx141524%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self140760%_ _%stx140761%_ _%compiled-body?140762%_)
        (letrec ((_%generate-simple140764%_
                  (lambda (_%hd141508%_ _%body141509%_)
                    (let ((__tmp145883
                           (let ((__tmp145884
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _%self140760%_
                                     'let
                                     _%hd141508%_
                                     _%body141509%_
                                     _%compiled-body?140762%_))))
                             (declare (not safe))
                             (_%simplify-let140766%_ __tmp145884))))
                      (declare (not safe))
                      (_%coalesce-boolean140765%_ __tmp145883))))
                 (_%coalesce-boolean140765%_
                  (lambda (_%code141369%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code141370141396%_ _%code141369%_)
                               (_%else141372141404%_
                                (lambda () _%code141369%_))
                               (_%K141374141441%_
                                (lambda (_%expr2141407%_
                                         _%expr1141408%_
                                         _%id141409%_)
                                  (let* ((_%expr2141410141418%_
                                          _%expr2141407%_)
                                         (_%else141412141426%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1141408%_
                                                        (cons _%expr2141407%_
                                                              '())))))
                                         (_%K141414141431%_
                                          (lambda (_%exprs141429%_)
                                            (cons 'or
                                                  (cons _%expr1141408%_
                                                        _%exprs141429%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2141410141418%_))
                                        (let ((_%hd141415141434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2141410141418%_)))
                                              (_%tl141416141436%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2141410141418%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd141415141434%_ 'or))
                                              (let ((_%exprs141439%_
                                                     _%tl141416141436%_))
                                                (declare (not safe))
                                                (_%K141414141431%_
                                                 _%exprs141439%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%else141412141426%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else141412141426%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code141370141396%_))
                              (let ((_%hd141375141444%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code141370141396%_)))
                                    (_%tl141376141446%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code141370141396%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd141375141444%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl141376141446%_))
                                        (let ((_%hd141377141449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl141376141446%_)))
                                              (_%tl141378141451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl141376141446%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd141377141449%_))
                                              (let ((_%hd141389141454%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd141377141449%_)))
                                                    (_%tl141390141456%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd141377141449%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd141389141454%_))
                                                    (let ((_%hd141391141459%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd141389141454%_)))
                                                          (_%tl141392141461%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd141389141454%_))))
                                                      (let ((_%id141464%_
                                                             _%hd141391141459%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl141392141461%_))
                                                            (let ((_%hd141393141466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl141392141461%_)))
                          (_%tl141394141468%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl141392141461%_))))
                      (let ((_%expr1141471%_ _%hd141393141466%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl141394141468%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl141390141456%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl141378141451%_))
                                    (let ((_%hd141379141473%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl141378141451%_)))
                                          (_%tl141380141475%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl141378141451%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd141379141473%_))
                                          (let ((_%hd141381141478%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd141379141473%_)))
                                                (_%tl141382141480%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd141379141473%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd141381141478%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl141382141480%_))
                                                    (let ((_%hd141383141483%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl141382141480%_)))
                                                          (_%tl141384141485%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl141382141480%_))))
                                                      (if ((lambda (_%g141487141489%_)
                                                             (eq? _%g141487141489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id141464%_))
                   _%hd141383141483%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl141384141485%_))
                      (let ((_%hd141385141492%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl141384141485%_)))
                            (_%tl141386141494%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl141384141485%_))))
                        (if ((lambda (_%g141496141498%_)
                               (eq? _%g141496141498%_ _%id141464%_))
                             _%hd141385141492%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl141386141494%_))
                                (let ((_%hd141387141501%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl141386141494%_)))
                                      (_%tl141388141503%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl141386141494%_))))
                                  (let ((_%expr2141506%_ _%hd141387141501%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl141388141503%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl141380141475%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K141374141441%_
                                               _%expr2141506%_
                                               _%expr1141471%_
                                               _%id141464%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%else141372141404%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%else141372141404%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%else141372141404%_)))
                            (let ()
                              (declare (not safe))
                              (_%else141372141404%_))))
                      (let () (declare (not safe)) (_%else141372141404%_)))
                  (let () (declare (not safe)) (_%else141372141404%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else141372141404%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else141372141404%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else141372141404%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else141372141404%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else141372141404%_)))
                            (let ()
                              (declare (not safe))
                              (_%else141372141404%_)))))
                    (let () (declare (not safe)) (_%else141372141404%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else141372141404%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%else141372141404%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else141372141404%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%else141372141404%_))))
                              (let ()
                                (declare (not safe))
                                (_%else141372141404%_))))
                        _%code141369%_)))
                 (_%simplify-let140766%_
                  (lambda (_%code141068%_)
                    (let* ((_%code141069141141%_ _%code141068%_)
                           (_%else141074141149%_ (lambda () _%code141068%_)))
                      (let ((_%K141133141349%_
                             (lambda (_%expr141347%_) _%expr141347%_))
                            (_%K141116141295%_
                             (lambda (_%body141291%_
                                      _%expr141292%_
                                      _%id141293%_)
                               (cons 'let
                                     (cons (cons (cons _%id141293%_
                                                       (cons _%expr141292%_
                                                             '()))
                                                 '())
                                           _%body141291%_))))
                            (_%K141093141219%_
                             (lambda (_%body141213%_
                                      _%expr2141214%_
                                      _%id2141215%_
                                      _%expr1141216%_
                                      _%id1141217%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1141217%_
                                                       (cons _%expr1141216%_
                                                             '()))
                                                 (cons (cons _%id2141215%_
                                                             (cons _%expr2141214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body141213%_))))
                            (_%K141076141158%_
                             (lambda (_%body141153%_
                                      _%bind141154%_
                                      _%expr1141155%_
                                      _%id1141156%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1141156%_
                                                       (cons _%expr1141155%_
                                                             '()))
                                                 _%bind141154%_)
                                           _%body141153%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code141069141141%_))
                            (let ((_%tl141135141354%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code141069141141%_)))
                                  (_%hd141134141352%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code141069141141%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd141134141352%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl141135141354%_))
                                      (let ((_%tl141137141359%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl141135141354%_)))
                                            (_%hd141136141357%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl141135141354%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%hd141136141357%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tl141137141359%_))
                                                (let ((_%tl141139141364%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl141137141359%_)))
                                                      (_%hd141138141362%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl141137141359%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _%tl141139141364%_))
                                                      (let ((_%expr141367%_
                                                             _%hd141138141362%_))
                                                        (declare (not safe))
                                                        (_%K141133141349%_
                                                         _%expr141367%_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%else141074141149%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else141074141149%_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd141136141357%_))
                                                (let ((_%tl141128141310%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd141136141357%_)))
                                                      (_%hd141127141308%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd141136141357%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd141127141308%_))
                                                      (let ((_%tl141130141315%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd141127141308%_)))
                    (_%hd141129141313%_
                     (let () (declare (not safe)) (##car _%hd141127141308%_))))
                (if (let () (declare (not safe)) (##pair? _%tl141130141315%_))
                    (let ((_%tl141132141322%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl141130141315%_)))
                          (_%hd141131141320%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl141130141315%_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl141132141322%_))
                          (if (let ()
                                (declare (not safe))
                                (##null? _%tl141128141310%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl141137141359%_))
                                  (let ((_%tl141122141329%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl141137141359%_)))
                                        (_%hd141121141327%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl141137141359%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%hd141121141327%_))
                                        (let ((_%tl141124141334%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd141121141327%_)))
                                              (_%hd141123141332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd141121141327%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd141123141332%_
                                                       'let))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl141124141334%_))
                                                  (let ((_%tl141126141339%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl141124141334%_)))
                                                        (_%hd141125141337%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl141124141334%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%hd141125141337%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##null? _%tl141122141329%_))
                                                            (let ((_%id141318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd141129141313%_)
                          (_%expr141325%_ _%hd141131141320%_)
                          (_%body141342%_ _%tl141126141339%_))
                      (let ()
                        (declare (not safe))
                        (_%K141116141295%_
                         _%body141342%_
                         _%expr141325%_
                         _%id141318%_)))
                    (let () (declare (not safe)) (_%else141074141149%_)))
                (if (let () (declare (not safe)) (##pair? _%hd141125141337%_))
                    (let ((_%tl141105141268%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd141125141337%_)))
                          (_%hd141104141266%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd141125141337%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd141104141266%_))
                          (let ((_%tl141107141273%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd141104141266%_)))
                                (_%hd141106141271%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd141104141266%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl141107141273%_))
                                (let ((_%tl141109141280%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl141107141273%_)))
                                      (_%hd141108141278%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl141107141273%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl141109141280%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl141105141268%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl141122141329%_))
                                              (let ((_%id1141242%_
                                                     _%hd141129141313%_)
                                                    (_%expr1141249%_
                                                     _%hd141131141320%_)
                                                    (_%id2141276%_
                                                     _%hd141106141271%_)
                                                    (_%expr2141283%_
                                                     _%hd141108141278%_)
                                                    (_%body141285%_
                                                     _%tl141126141339%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%K141093141219%_
                                                   _%body141285%_
                                                   _%expr2141283%_
                                                   _%id2141276%_
                                                   _%expr1141249%_
                                                   _%id1141242%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%else141074141149%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else141074141149%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else141074141149%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%else141074141149%_))))
                          (let ()
                            (declare (not safe))
                            (_%else141074141149%_))))
                    (let () (declare (not safe)) (_%else141074141149%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else141074141149%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd141123141332%_
                                                           'let*))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%tl141124141334%_))
                                                      (let ((_%tl141086141202%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl141124141334%_)))
                    (_%hd141085141200%_
                     (let () (declare (not safe)) (##car _%tl141124141334%_))))
                (if (let () (declare (not safe)) (##null? _%tl141122141329%_))
                    (let ((_%id1141181%_ _%hd141129141313%_)
                          (_%expr1141188%_ _%hd141131141320%_)
                          (_%bind141205%_ _%hd141085141200%_)
                          (_%body141207%_ _%tl141086141202%_))
                      (let ()
                        (declare (not safe))
                        (_%K141076141158%_
                         _%body141207%_
                         _%bind141205%_
                         _%expr1141188%_
                         _%id1141181%_)))
                    (let () (declare (not safe)) (_%else141074141149%_))))
              (let () (declare (not safe)) (_%else141074141149%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else141074141149%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else141074141149%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else141074141149%_)))
                              (let ()
                                (declare (not safe))
                                (_%else141074141149%_)))
                          (let ()
                            (declare (not safe))
                            (_%else141074141149%_))))
                    (let () (declare (not safe)) (_%else141074141149%_))))
              (let () (declare (not safe)) (_%else141074141149%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else141074141149%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%else141074141149%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else141074141149%_))))
                            (let ()
                              (declare (not safe))
                              (_%else141074141149%_)))))))
                 (_%generate-values140767%_
                  (lambda (_%hd140881%_ _%body140882%_)
                    (let _%lp140884%_ ((_%rest140886%_ _%hd140881%_)
                                       (_%bind140887%_ '())
                                       (_%check140888%_ '())
                                       (_%post140889%_ '()))
                      (let* ((_%__stx145012145013%_ _%rest140886%_)
                             (_%g140892140903%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx145012145013%_)))))
                        (let ((_%__kont145014145015%_
                               (lambda (_%L140930%_ _%L140931%_)
                                 (let* ((_%__stx144968144969%_ _%L140931%_)
                                        (_%g140946140971%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144968144969%_)))))
                                   (let ((_%__kont144970144971%_
                                          (lambda (_%L141044%_ _%L141045%_)
                                            (let ((_%eid141059%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L141045%_)))
                                                  (_%expr141060%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self140760%_
                                                      _%L141044%_))))
                                              (let ((__tmp145885
                                                     (cons (cons _%eid141059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr141060%_ '()))
                   _%bind140887%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%lp140884%_
                                                 _%L140930%_
                                                 __tmp145885
                                                 _%check140888%_
                                                 _%post140889%_)))))
                                         (_%__kont144972144973%_
                                          (lambda (_%L140992%_ _%L140993%_)
                                            (let* ((_%vals141006%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values141008%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _%vals141006%_
                                                       _%L140993%_
                                                       _%L140992%_)))
                                                   (_%refs141010%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _%vals141006%_
                                                       _%L140993%_)))
                                                   (_%expr141012%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self140760%_
                                                       _%L140992%_))))
                                              (let ((__tmp145888
                                                     (cons (cons _%vals141006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr141012%_ '()))
                   _%bind140887%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145887
                                                     (cons _%check-values141008%_
                                                           _%check140888%_))
                                                    (__tmp145886
                                                     (cons _%refs141010%_
                                                           _%post140889%_)))
                                                (declare (not safe))
                                                (_%lp140884%_
                                                 _%L140930%_
                                                 __tmp145888
                                                 __tmp145887
                                                 __tmp145886))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144968144969%_))
                                         (let ((_%e140952141020%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144968144969%_))))
                                           (let ((_%tl140950141025%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140952141020%_)))
                                                 (_%hd140951141023%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140952141020%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd140951141023%_))
                                                 (let ((_%e140955141028%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd140951141023%_))))
                                                   (let ((_%tl140953141033%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140955141028%_)))
                                                         (_%hd140954141031%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140955141028%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140953141033%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140950141025%_))
                     (let ((_%e140958141036%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140950141025%_))))
                       (let ((_%tl140956141041%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140958141036%_)))
                             (_%hd140957141039%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140958141036%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140956141041%_))
                             (_%__kont144970144971%_
                              _%hd140957141039%_
                              _%hd140954141031%_)
                             (let ()
                               (declare (not safe))
                               (_%g140946140971%_)))))
                     (let () (declare (not safe)) (_%g140946140971%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140950141025%_))
                     (let ((_%e140966140984%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140950141025%_))))
                       (let ((_%tl140964140989%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140966140984%_)))
                             (_%hd140965140987%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140966140984%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140964140989%_))
                             (_%__kont144972144973%_
                              _%hd140965140987%_
                              _%hd140951141023%_)
                             (let ()
                               (declare (not safe))
                               (_%g140946140971%_)))))
                     (let () (declare (not safe)) (_%g140946140971%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140950141025%_))
                                                     (let ((_%e140966140984%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140950141025%_))))
                                                       (let ((_%tl140964140989%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140966140984%_)))
                     (_%hd140965140987%_
                      (let () (declare (not safe)) (##car _%e140966140984%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140964140989%_))
                     (_%__kont144972144973%_
                      _%hd140965140987%_
                      _%hd140951141023%_)
                     (let () (declare (not safe)) (_%g140946140971%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140946140971%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g140946140971%_)))))))
                              (_%__kont145016145017%_
                               (lambda ()
                                 (let* ((_%body140910%_
                                         (if _%compiled-body?140762%_
                                             _%body140882%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self140760%_
                                                _%body140882%_))))
                                        (_%body140912%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-post140768%_
                                            _%post140889%_
                                            _%body140910%_)))
                                        (_%body140914%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-check140769%_
                                            _%check140888%_
                                            _%body140912%_))))
                                   (cons 'let
                                         (cons (reverse _%bind140887%_)
                                               (cons _%body140914%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx145012145013%_))
                              (let ((_%e140898140922%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx145012145013%_))))
                                (let ((_%tl140896140927%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140898140922%_)))
                                      (_%hd140897140925%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140898140922%_))))
                                  (_%__kont145014145015%_
                                   _%tl140896140927%_
                                   _%hd140897140925%_)))
                              (_%__kont145016145017%_)))))))
                 (_%generate-values-post140768%_
                  (lambda (_%post140840%_ _%body140841%_)
                    (let _%lp140843%_ ((_%rest140845%_ _%post140840%_)
                                       (_%body140846%_ _%body140841%_))
                      (let* ((_%rest140847140855%_ _%rest140845%_)
                             (_%else140849140863%_ (lambda () _%body140846%_))
                             (_%K140851140869%_
                              (lambda (_%rest140866%_ _%bind140867%_)
                                (let ((__tmp145889
                                       (cons 'let
                                             (cons _%bind140867%_
                                                   (cons _%body140846%_
                                                         '())))))
                                  (declare (not safe))
                                  (_%lp140843%_ _%rest140866%_ __tmp145889)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140847140855%_))
                            (let ((_%hd140852140872%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140847140855%_)))
                                  (_%tl140853140874%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140847140855%_))))
                              (let* ((_%bind140877%_ _%hd140852140872%_)
                                     (_%rest140879%_ _%tl140853140874%_))
                                (declare (not safe))
                                (_%K140851140869%_
                                 _%rest140879%_
                                 _%bind140877%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140849140863%_)))))))
                 (_%generate-values-check140769%_
                  (lambda (_%check140837%_ _%body140838%_)
                    (cons 'begin
                          (let ((__tmp145891 (cons _%body140838%_ '()))
                                (__tmp145890 (reverse _%check140837%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145891 __tmp145890))))))
          (let* ((_%g140771140788%_
                  (lambda (_%g140772140785%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140772140785%_))))
                 (_%g140770140834%_
                  (lambda (_%g140772140791%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140772140791%_))
                        (let ((_%e140777140793%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140772140791%_))))
                          (let ((_%hd140776140796%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140777140793%_)))
                                (_%tl140775140798%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140777140793%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140775140798%_))
                                (let ((_%e140780140801%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140775140798%_))))
                                  (let ((_%hd140779140804%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140780140801%_)))
                                        (_%tl140778140806%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140780140801%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140778140806%_))
                                        (let ((_%e140783140809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140778140806%_))))
                                          (let ((_%hd140782140812%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140783140809%_)))
                                                (_%tl140781140814%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140783140809%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140781140814%_))
                                                ((lambda (_%L140817%_
                                                          _%L140818%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L140818%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-simple140764%_
                                                          _%L140818%_
                                                          _%L140817%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values140767%_
                                                          _%L140818%_
                                                          _%L140817%_))))
                                                 _%hd140782140812%_
                                                 _%hd140779140804%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g140771140788%_
                                                   _%g140772140791%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140771140788%_
                                           _%g140772140791%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g140771140788%_ _%g140772140791%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g140771140788%_ _%g140772140791%_))))))
            (declare (not safe))
            (_%g140770140834%_ _%stx140761%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self141514%_ _%stx141515%_)
        (let ((_%compiled-body?141517%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _%self141514%_
           _%stx141515%_
           _%compiled-body?141517%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g145893_
        (let ((_g145892_ (let () (declare (not safe)) (##length _g145893_))))
          (cond ((let () (declare (not safe)) (##fx= _g145892_ 2))
                 (apply (lambda (_%self141514%_ _%stx141515%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _%self141514%_
                             _%stx141515%_)))
                        _g145893_))
                ((let () (declare (not safe)) (##fx= _g145892_ 3))
                 (apply (lambda (_%self141519%_
                                 _%stx141520%_
                                 _%compiled-body?141521%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _%self141519%_
                             _%stx141520%_
                             _%compiled-body?141521%_)))
                        _g145893_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g145893_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals140654%_ _%hd140655%_)
        (let _%lp140657%_ ((_%rest140659%_ _%hd140655%_)
                           (_%k140660%_ '0)
                           (_%r140661%_ '()))
          (let* ((_%__stx145026145027%_ _%rest140659%_)
                 (_%g140666140683%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx145026145027%_)))))
            (let ((_%__kont145028145029%_
                   (lambda (_%L140746%_)
                     (let ((__tmp145894
                            (let ()
                              (declare (not safe))
                              (##fx+ _%k140660%_ '1))))
                       (declare (not safe))
                       (_%lp140657%_ _%L140746%_ __tmp145894 _%r140661%_))))
                  (_%__kont145030145031%_
                   (lambda (_%L140719%_ _%L140720%_)
                     (let ((__tmp145896
                            (let ()
                              (declare (not safe))
                              (##fx+ _%k140660%_ '1)))
                           (__tmp145895
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L140720%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#generate-runtime-values-ref
                                                 _%vals140654%_
                                                 _%k140660%_
                                                 _%L140719%_))
                                              '()))
                                  _%r140661%_)))
                       (declare (not safe))
                       (_%lp140657%_ _%L140719%_ __tmp145896 __tmp145895))))
                  (_%__kont145032145033%_
                   (lambda (_%L140695%_)
                     (let ((__tmp145897
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L140695%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#generate-runtime-values->list
                                                 _%vals140654%_
                                                 _%k140660%_))
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp145897 _%r140661%_))))
                  (_%__kont145034145035%_ (lambda () (reverse _%r140661%_))))
              (let ((_%g140664140706%_
                     (lambda ()
                       (let ((_%L140695%_ _%__stx145026145027%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L140695%_))
                             (_%__kont145032145033%_ _%L140695%_)
                             (_%__kont145034145035%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx145026145027%_))
                    (let ((_%e140671140735%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx145026145027%_))))
                      (let ((_%tl140669140740%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140671140735%_)))
                            (_%hd140670140738%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140671140735%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd140670140738%_))
                            (let ((_%e140672140743%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd140670140738%_))))
                              (if (equal? _%e140672140743%_ '#f)
                                  (_%__kont145028145029%_ _%tl140669140740%_)
                                  (_%__kont145030145031%_
                                   _%tl140669140740%_
                                   _%hd140670140738%_)))
                            (_%__kont145030145031%_
                             _%tl140669140740%_
                             _%hd140670140738%_))))
                    (let () (declare (not safe)) (_%g140664140706%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self140333%_ _%stx140334%_ _%compiled-body?140335%_)
        (letrec ((_%generate-simple140337%_
                  (lambda (_%hd140639%_ _%body140640%_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _%self140333%_
                       'letrec
                       _%hd140639%_
                       _%body140640%_
                       _%compiled-body?140335%_))))
                 (_%generate-values140338%_
                  (lambda (_%hd140418%_ _%body140419%_)
                    (let _%lp140421%_ ((_%rest140423%_ _%hd140418%_)
                                       (_%bind140424%_ '())
                                       (_%check140425%_ '())
                                       (_%post140426%_ '()))
                      (let* ((_%__stx145100145101%_ _%rest140423%_)
                             (_%g140429140440%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx145100145101%_)))))
                        (let ((_%__kont145102145103%_
                               (lambda (_%L140467%_ _%L140468%_)
                                 (let* ((_%__stx145056145057%_ _%L140468%_)
                                        (_%g140483140508%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx145056145057%_)))))
                                   (let ((_%__kont145058145059%_
                                          (lambda (_%L140615%_ _%L140616%_)
                                            (let ((_%eid140630%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140616%_)))
                                                  (_%expr140631%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self140333%_
                                                      _%L140615%_))))
                                              (let ((__tmp145898
                                                     (cons (cons _%eid140630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140631%_ '()))
                   _%bind140424%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%lp140421%_
                                                 _%L140467%_
                                                 __tmp145898
                                                 _%check140425%_
                                                 _%post140426%_)))))
                                         (_%__kont145060145061%_
                                          (lambda (_%L140529%_ _%L140530%_)
                                            (let* ((_%vals140543%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values140545%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _%vals140543%_
                                                       _%L140530%_
                                                       _%L140529%_)))
                                                   (_%refs140547%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _%vals140543%_
                                                       _%L140530%_)))
                                                   (_%expr140549%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self140333%_
                                                       _%L140529%_))))
                                              (let ((__tmp145901
                                                     (let ((__tmp145903
                                                            (cons (cons _%vals140543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%expr140549%_ '()))
                          _%bind140424%_))
                   (__tmp145902
                    (map (lambda (_%e140551140553%_)
                           (let* ((_%g140555140564%_ _%e140551140553%_)
                                  (_%E140557140568%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%g140555140564%_
                                              '([eid _])))
                                     '#!void))
                                  (_%K140558140573%_
                                   (lambda (_%eid140571%_)
                                     (cons _%eid140571%_ (cons '#!void '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%g140555140564%_))
                                 (let ((_%hd140559140576%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%g140555140564%_)))
                                       (_%tl140560140578%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%g140555140564%_))))
                                   (let ((_%eid140581%_ _%hd140559140576%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _%tl140560140578%_))
                                         (let ((_%tl140562140583%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%tl140560140578%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _%tl140562140583%_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%K140558140573%_
                                                  _%eid140581%_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%E140557140568%_))))
                                         (let ()
                                           (declare (not safe))
                                           (_%E140557140568%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%E140557140568%_)))))
                         _%refs140547%_)))
               (declare (not safe))
               (__foldl1 cons __tmp145903 __tmp145902)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145900
                                                     (cons _%check-values140545%_
                                                           _%check140425%_))
                                                    (__tmp145899
                                                     (let ()
                                                       (declare (not safe))
                                                       (__foldl1
                                                        cons
                                                        _%refs140547%_
                                                        _%post140426%_))))
                                                (declare (not safe))
                                                (_%lp140421%_
                                                 _%L140467%_
                                                 __tmp145901
                                                 __tmp145900
                                                 __tmp145899))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx145056145057%_))
                                         (let ((_%e140489140591%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx145056145057%_))))
                                           (let ((_%tl140487140596%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140489140591%_)))
                                                 (_%hd140488140594%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140489140591%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd140488140594%_))
                                                 (let ((_%e140492140599%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd140488140594%_))))
                                                   (let ((_%tl140490140604%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140492140599%_)))
                                                         (_%hd140491140602%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140492140599%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140490140604%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140487140596%_))
                     (let ((_%e140495140607%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140487140596%_))))
                       (let ((_%tl140493140612%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140495140607%_)))
                             (_%hd140494140610%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140495140607%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140493140612%_))
                             (_%__kont145058145059%_
                              _%hd140494140610%_
                              _%hd140491140602%_)
                             (let ()
                               (declare (not safe))
                               (_%g140483140508%_)))))
                     (let () (declare (not safe)) (_%g140483140508%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140487140596%_))
                     (let ((_%e140503140521%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140487140596%_))))
                       (let ((_%tl140501140526%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140503140521%_)))
                             (_%hd140502140524%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140503140521%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140501140526%_))
                             (_%__kont145060145061%_
                              _%hd140502140524%_
                              _%hd140488140594%_)
                             (let ()
                               (declare (not safe))
                               (_%g140483140508%_)))))
                     (let () (declare (not safe)) (_%g140483140508%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140487140596%_))
                                                     (let ((_%e140503140521%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140487140596%_))))
                                                       (let ((_%tl140501140526%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140503140521%_)))
                     (_%hd140502140524%_
                      (let () (declare (not safe)) (##car _%e140503140521%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140501140526%_))
                     (_%__kont145060145061%_
                      _%hd140502140524%_
                      _%hd140488140594%_)
                     (let () (declare (not safe)) (_%g140483140508%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140483140508%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g140483140508%_)))))))
                              (_%__kont145104145105%_
                               (lambda ()
                                 (let* ((_%body140447%_
                                         (if _%compiled-body?140335%_
                                             _%body140419%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self140333%_
                                                _%body140419%_))))
                                        (_%body140449%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-post140340%_
                                            _%post140426%_
                                            _%body140447%_)))
                                        (_%body140451%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-check140339%_
                                            _%check140425%_
                                            _%body140449%_))))
                                   (cons 'letrec
                                         (cons (reverse _%bind140424%_)
                                               (cons _%body140451%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx145100145101%_))
                              (let ((_%e140435140459%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx145100145101%_))))
                                (let ((_%tl140433140464%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140435140459%_)))
                                      (_%hd140434140462%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140435140459%_))))
                                  (_%__kont145102145103%_
                                   _%tl140433140464%_
                                   _%hd140434140462%_)))
                              (_%__kont145104145105%_)))))))
                 (_%generate-values-check140339%_
                  (lambda (_%check140415%_ _%body140416%_)
                    (cons 'begin
                          (let ((__tmp145905 (cons _%body140416%_ '()))
                                (__tmp145904 (reverse _%check140415%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145905 __tmp145904)))))
                 (_%generate-values-post140340%_
                  (lambda (_%post140408%_ _%body140409%_)
                    (cons 'begin
                          (let ((__tmp145909 (cons _%body140409%_ '()))
                                (__tmp145906
                                 (let ((__tmp145908
                                        (lambda (_%g140410140412%_)
                                          (cons 'set! _%g140410140412%_)))
                                       (__tmp145907 (reverse _%post140408%_)))
                                   (declare (not safe))
                                   (##map __tmp145908 __tmp145907))))
                            (declare (not safe))
                            (__foldr1 cons __tmp145909 __tmp145906))))))
          (let* ((_%g140342140359%_
                  (lambda (_%g140343140356%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140343140356%_))))
                 (_%g140341140405%_
                  (lambda (_%g140343140362%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140343140362%_))
                        (let ((_%e140348140364%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140343140362%_))))
                          (let ((_%hd140347140367%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140348140364%_)))
                                (_%tl140346140369%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140348140364%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140346140369%_))
                                (let ((_%e140351140372%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140346140369%_))))
                                  (let ((_%hd140350140375%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140351140372%_)))
                                        (_%tl140349140377%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140351140372%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140349140377%_))
                                        (let ((_%e140354140380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140349140377%_))))
                                          (let ((_%hd140353140383%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140354140380%_)))
                                                (_%tl140352140385%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140354140380%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140352140385%_))
                                                ((lambda (_%L140388%_
                                                          _%L140389%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L140389%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-simple140337%_
                                                          _%L140389%_
                                                          _%L140388%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values140338%_
                                                          _%L140389%_
                                                          _%L140388%_))))
                                                 _%hd140353140383%_
                                                 _%hd140350140375%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g140342140359%_
                                                   _%g140343140362%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140342140359%_
                                           _%g140343140362%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g140342140359%_ _%g140343140362%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g140342140359%_ _%g140343140362%_))))))
            (declare (not safe))
            (_%g140341140405%_ _%stx140334%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self140645%_ _%stx140646%_)
        (let ((_%compiled-body?140648%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _%self140645%_
           _%stx140646%_
           _%compiled-body?140648%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g145911_
        (let ((_g145910_ (let () (declare (not safe)) (##length _g145911_))))
          (cond ((let () (declare (not safe)) (##fx= _g145910_ 2))
                 (apply (lambda (_%self140645%_ _%stx140646%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _%self140645%_
                             _%stx140646%_)))
                        _g145911_))
                ((let () (declare (not safe)) (##fx= _g145910_ 3))
                 (apply (lambda (_%self140650%_
                                 _%stx140651%_
                                 _%compiled-body?140652%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _%self140650%_
                             _%stx140651%_
                             _%compiled-body?140652%_)))
                        _g145911_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g145911_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self139914%_ _%stx139915%_)
        (letrec ((_%generate-values139917%_
                  (lambda (_%hd140160%_ _%body140161%_)
                    (let _%lp140163%_ ((_%rest140165%_ _%hd140160%_)
                                       (_%bind140166%_ '()))
                      (let* ((_%rest140167140175%_ _%rest140165%_)
                             (_%else140169140186%_
                              (lambda ()
                                (let ((_%bind140183%_ (reverse _%bind140166%_))
                                      (_%body140184%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self139914%_
                                          _%body140161%_))))
                                  (cons 'letrec*
                                        (cons _%bind140183%_
                                              (cons _%body140184%_ '()))))))
                             (_%K140171140320%_
                              (lambda (_%rest140189%_ _%hd-bind140190%_)
                                (let* ((_%__stx145114145115%_
                                        _%hd-bind140190%_)
                                       (_%g140193140218%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx145114145115%_)))))
                                  (let ((_%__kont145116145117%_
                                         (lambda (_%L140299%_ _%L140300%_)
                                           (let ((_%eid140314%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L140300%_)))
                                                 (_%expr140315%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self139914%_
                                                     _%L140299%_))))
                                             (let ((__tmp145912
                                                    (cons (cons _%eid140314%_
                                                                (cons _%expr140315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind140166%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp140163%_
                                                _%rest140189%_
                                                __tmp145912)))))
                                        (_%__kont145118145119%_
                                         (lambda (_%L140239%_ _%L140240%_)
                                           (let* ((_%vals140259%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp140261%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values140263%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _%tmp140261%_
                                                      _%L140240%_
                                                      _%L140239%_)))
                                                  (_%refs140265%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _%vals140259%_
                                                      _%L140240%_)))
                                                  (_%expr140267%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139914%_
                                                      _%L140239%_)))
                                                  (__tmp145913
                                                   (let ((__tmp145914
                                                          (cons (cons _%vals140259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons 'let
                                          (cons (cons (cons _%tmp140261%_
                                                            (cons _%expr140267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%check-values140263%_
                                                      (cons _%tmp140261%_
                                                            '()))))
                                    '()))
                        _%bind140166%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldl1
                                                      cons
                                                      __tmp145914
                                                      _%refs140265%_))))
                                             (declare (not safe))
                                             (_%lp140163%_
                                              _%rest140189%_
                                              __tmp145913)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx145114145115%_))
                                        (let ((_%e140199140275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx145114145115%_))))
                                          (let ((_%tl140197140280%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140199140275%_)))
                                                (_%hd140198140278%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140199140275%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd140198140278%_))
                                                (let ((_%e140202140283%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd140198140278%_))))
                                                  (let ((_%tl140200140288%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140202140283%_)))
                                                        (_%hd140201140286%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140202140283%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140200140288%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl140197140280%_))
                                                            (let ((_%e140205140291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl140197140280%_))))
                      (let ((_%tl140203140296%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140205140291%_)))
                            (_%hd140204140294%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140205140291%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl140203140296%_))
                            (_%__kont145116145117%_
                             _%hd140204140294%_
                             _%hd140201140286%_)
                            (let ()
                              (declare (not safe))
                              (_%g140193140218%_)))))
                    (let () (declare (not safe)) (_%g140193140218%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl140197140280%_))
                    (let ((_%e140213140231%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl140197140280%_))))
                      (let ((_%tl140211140236%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140213140231%_)))
                            (_%hd140212140234%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140213140231%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl140211140236%_))
                            (_%__kont145118145119%_
                             _%hd140212140234%_
                             _%hd140198140278%_)
                            (let ()
                              (declare (not safe))
                              (_%g140193140218%_)))))
                    (let () (declare (not safe)) (_%g140193140218%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl140197140280%_))
                                                    (let ((_%e140213140231%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl140197140280%_))))
                                                      (let ((_%tl140211140236%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e140213140231%_)))
                    (_%hd140212140234%_
                     (let () (declare (not safe)) (##car _%e140213140231%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl140211140236%_))
                    (_%__kont145118145119%_
                     _%hd140212140234%_
                     _%hd140198140278%_)
                    (let () (declare (not safe)) (_%g140193140218%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g140193140218%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140193140218%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140167140175%_))
                            (let ((_%hd140172140323%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140167140175%_)))
                                  (_%tl140173140325%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140167140175%_))))
                              (let* ((_%hd-bind140328%_ _%hd140172140323%_)
                                     (_%rest140330%_ _%tl140173140325%_))
                                (declare (not safe))
                                (_%K140171140320%_
                                 _%rest140330%_
                                 _%hd-bind140328%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140169140186%_)))))))
                 (_%generate-letrec?139918%_
                  (lambda (_%hd140050%_)
                    (let _%lp140052%_ ((_%rest140054%_ _%hd140050%_))
                      (let* ((_%rest140055140063%_ _%rest140054%_)
                             (_%else140057140071%_ (lambda () '#t))
                             (_%K140059140148%_
                              (lambda (_%rest140074%_ _%hd-bind140075%_)
                                (let* ((_%g140077140094%_
                                        (lambda (_%g140078140091%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g140078140091%_))))
                                       (_%g140076140145%_
                                        (lambda (_%g140078140097%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g140078140097%_))
                                              (let ((_%e140083140099%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g140078140097%_))))
                                                (let ((_%hd140082140102%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140083140099%_)))
                                                      (_%tl140081140104%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140083140099%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd140082140102%_))
                                                      (let ((_%e140086140107%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd140082140102%_))))
                (let ((_%hd140085140110%_
                       (let () (declare (not safe)) (##car _%e140086140107%_)))
                      (_%tl140084140112%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e140086140107%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl140084140112%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl140081140104%_))
                          (let ((_%e140089140115%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl140081140104%_))))
                            (let ((_%hd140088140118%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140089140115%_)))
                                  (_%tl140087140120%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140089140115%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl140087140120%_))
                                  ((lambda (_%L140123%_ _%L140124%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_%is-lambda-expr?139919%_
                                            _%L140123%_))
                                         (let ()
                                           (declare (not safe))
                                           (_%lp140052%_ _%rest140074%_))
                                         '#f))
                                   _%hd140088140118%_
                                   _%hd140085140110%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g140077140094%_ _%g140078140097%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g140077140094%_ _%g140078140097%_)))
                      (let ()
                        (declare (not safe))
                        (_%g140077140094%_ _%g140078140097%_)))))
              (let ()
                (declare (not safe))
                (_%g140077140094%_ _%g140078140097%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g140077140094%_
                                                 _%g140078140097%_))))))
                                  (declare (not safe))
                                  (_%g140076140145%_ _%hd-bind140075%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140055140063%_))
                            (let ((_%hd140060140151%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140055140063%_)))
                                  (_%tl140061140153%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140055140063%_))))
                              (let* ((_%hd-bind140156%_ _%hd140060140151%_)
                                     (_%rest140158%_ _%tl140061140153%_))
                                (declare (not safe))
                                (_%K140059140148%_
                                 _%rest140158%_
                                 _%hd-bind140156%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140057140071%_)))))))
                 (_%is-lambda-expr?139919%_
                  (lambda (_%expr139987%_)
                    (let* ((_%__stx145158145159%_ _%expr139987%_)
                           (_%g139990140004%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx145158145159%_)))))
                      (let ((_%__kont145160145161%_
                             (lambda (_%L140032%_ _%L140033%_) '#t))
                            (_%__kont145162145163%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx145158145159%_))
                            (let ((_%e139996140016%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx145158145159%_))))
                              (let ((_%tl139994140021%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e139996140016%_)))
                                    (_%hd139995140019%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e139996140016%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd139995140019%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd139995140019%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl139994140021%_))
                                            (let ((_%e139999140024%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl139994140021%_))))
                                              (let ((_%tl139997140029%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e139999140024%_)))
                                                    (_%hd139998140027%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e139999140024%_))))
                                                (_%__kont145160145161%_
                                                 _%tl139997140029%_
                                                 _%hd139998140027%_)))
                                            (_%__kont145162145163%_))
                                        (_%__kont145162145163%_))
                                    (_%__kont145162145163%_))))
                            (_%__kont145162145163%_)))))))
          (let* ((_%g139921139938%_
                  (lambda (_%g139922139935%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139922139935%_))))
                 (_%g139920139984%_
                  (lambda (_%g139922139941%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139922139941%_))
                        (let ((_%e139927139943%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139922139941%_))))
                          (let ((_%hd139926139946%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139927139943%_)))
                                (_%tl139925139948%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139927139943%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139925139948%_))
                                (let ((_%e139930139951%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139925139948%_))))
                                  (let ((_%hd139929139954%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139930139951%_)))
                                        (_%tl139928139956%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139930139951%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139928139956%_))
                                        (let ((_%e139933139959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139928139956%_))))
                                          (let ((_%hd139932139962%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139933139959%_)))
                                                (_%tl139931139964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139933139959%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139931139964%_))
                                                ((lambda (_%L139967%_
                                                          _%L139968%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L139968%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-letrec?139918%_
                                                              _%L139968%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _%self139914%_
                                                              'letrec
                                                              _%L139968%_
                                                              _%L139967%_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _%self139914%_
                                                              'letrec*
                                                              _%L139968%_
                                                              _%L139967%_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values139917%_
                                                          _%L139968%_
                                                          _%L139967%_))))
                                                 _%hd139932139962%_
                                                 _%hd139929139954%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g139921139938%_
                                                   _%g139922139941%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139921139938%_
                                           _%g139922139941%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139921139938%_ _%g139922139941%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139921139938%_ _%g139922139941%_))))))
            (declare (not safe))
            (_%g139920139984%_ _%stx139915%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd139851%_)
        (let _%lp139853%_ ((_%rest139855%_ _%hd139851%_))
          (let* ((_%rest139856139872%_ _%rest139855%_)
                 (_%else139859139880%_ (lambda () '#f)))
            (let ((_%K139862139893%_
                   (lambda (_%rest139891%_)
                     (let ()
                       (declare (not safe))
                       (_%lp139853%_ _%rest139891%_))))
                  (_%K139861139885%_ (lambda () '#t)))
              (let ((_%try-match139858139888%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest139856139872%_))
                           (let () (declare (not safe)) (_%K139861139885%_))
                           (let ()
                             (declare (not safe))
                             (_%else139859139880%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest139856139872%_))
                    (let ((_%tl139864139898%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest139856139872%_)))
                          (_%hd139863139896%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest139856139872%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd139863139896%_))
                          (let ((_%tl139866139903%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd139863139896%_)))
                                (_%hd139865139901%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd139863139896%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139865139901%_))
                                (let ((_%tl139870139906%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139865139901%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl139870139906%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl139866139903%_))
                                          (let ((_%tl139868139909%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl139866139903%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl139868139909%_))
                                                (let ((_%rest139912%_
                                                       _%tl139864139898%_))
                                                  (declare (not safe))
                                                  (_%lp139853%_
                                                   _%rest139912%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else139859139880%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else139859139880%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else139859139880%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%else139859139880%_))))
                          (let ()
                            (declare (not safe))
                            (_%else139859139880%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match139858139888%_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self139762%_
               _%form139763%_
               _%hd139764%_
               _%body139765%_
               _%compiled-body?139766%_)
        (letrec ((_%generate1139768%_
                  (lambda (_%bind139807%_)
                    (let* ((_%bind139808139819%_ _%bind139807%_)
                           (_%E139810139823%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind139808139819%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K139811139829%_
                            (lambda (_%expr139826%_ _%id139827%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id139827%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self139762%_
                                             _%expr139826%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind139808139819%_))
                          (let ((_%hd139812139832%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind139808139819%_)))
                                (_%tl139813139834%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind139808139819%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139812139832%_))
                                (let ((_%hd139816139837%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd139812139832%_)))
                                      (_%tl139817139839%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139812139832%_))))
                                  (let ((_%id139842%_ _%hd139816139837%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl139817139839%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl139813139834%_))
                                            (let ((_%hd139814139844%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl139813139834%_)))
                                                  (_%tl139815139846%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl139813139834%_))))
                                              (let ((_%expr139849%_
                                                     _%hd139814139844%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl139815139846%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%K139811139829%_
                                                       _%expr139849%_
                                                       _%id139842%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E139810139823%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%E139810139823%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E139810139823%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%E139810139823%_))))
                          (let ()
                            (declare (not safe))
                            (_%E139810139823%_)))))))
          (let* ((_%bind139770%_ (map _%generate1139768%_ _%hd139764%_))
                 (_%body139772%_
                  (if _%compiled-body?139766%_
                      _%body139765%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self139762%_ _%body139765%_))))
                 (_%body139804%_
                  (let* ((_%body139773139781%_ _%body139772%_)
                         (_%else139775139789%_
                          (lambda () (cons _%body139772%_ '())))
                         (_%K139777139794%_
                          (lambda (_%exprs139792%_) _%exprs139792%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body139773139781%_))
                        (let ((_%hd139778139797%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body139773139781%_)))
                              (_%tl139779139799%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body139773139781%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd139778139797%_ 'begin))
                              (let ((_%exprs139802%_ _%tl139779139799%_))
                                (declare (not safe))
                                (_%K139777139794%_ _%exprs139802%_))
                              (let ()
                                (declare (not safe))
                                (_%else139775139789%_))))
                        (let ()
                          (declare (not safe))
                          (_%else139775139789%_))))))
            (cons _%form139763%_ (cons _%bind139770%_ _%body139804%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self139662%_ _%stx139663%_)
        (letrec ((_%generate1139665%_
                  (lambda (_%datum139717%_)
                    (if (or (let ()
                              (declare (not safe))
                              (null? _%datum139717%_))
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum139717%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum139717%_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _%datum139717%_)))
                        (let () _%datum139717%_)
                        (if (uninterned-symbol? _%datum139717%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum139717%_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _%datum139717%_))
                                (let ()
                                  (cons (let ((__tmp145915
                                               (car _%datum139717%_)))
                                          (declare (not safe))
                                          (_%generate1139665%_ __tmp145915))
                                        (let ((__tmp145916
                                               (cdr _%datum139717%_)))
                                          (declare (not safe))
                                          (_%generate1139665%_ __tmp145916))))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _%datum139717%_))
                                    (let ()
                                      (box (let ((__tmp145917
                                                  (unbox _%datum139717%_)))
                                             (declare (not safe))
                                             (_%generate1139665%_
                                              __tmp145917))))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _%datum139717%_))
                                        (let ()
                                          (vector-map
                                           _%generate1139665%_
                                           _%datum139717%_))
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (s8vector? _%datum139717%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _%datum139717%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s16vector? _%datum139717%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u16vector? _%datum139717%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s32vector? _%datum139717%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u32vector? _%datum139717%_))
                                                (s64vector? _%datum139717%_)
                                                (u64vector? _%datum139717%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (f32vector? _%datum139717%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (f64vector?
                                                   _%datum139717%_)))
                                            (let () _%datum139717%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx139663%_)))))))))))
          (let* ((_%g139667139680%_
                  (lambda (_%g139668139677%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139668139677%_))))
                 (_%g139666139714%_
                  (lambda (_%g139668139683%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139668139683%_))
                        (let ((_%e139672139685%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139668139683%_))))
                          (let ((_%hd139671139688%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139672139685%_)))
                                (_%tl139670139690%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139672139685%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139670139690%_))
                                (let ((_%e139675139693%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139670139690%_))))
                                  (let ((_%hd139674139696%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139675139693%_)))
                                        (_%tl139673139698%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139675139693%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl139673139698%_))
                                        ((lambda (_%L139701%_)
                                           (cons 'quote
                                                 (cons (let ((__tmp145918
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%L139701%_))))
                 (declare (not safe))
                 (_%generate1139665%_ __tmp145918))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd139674139696%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g139667139680%_
                                           _%g139668139683%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139667139680%_ _%g139668139683%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139667139680%_ _%g139668139683%_))))))
            (declare (not safe))
            (_%g139666139714%_ _%stx139663%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self139103%_ _%stx139104%_)
        (letrec ((_%compile-call139106%_
                  (lambda (_%rator139395%_ _%rands139396%_)
                    (let ((_%rator139402%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self139103%_
                              _%rator139395%_)))
                          (_%rands139403%_
                           (map (lambda (_%g139397139399%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self139103%_
                                     _%g139397139399%_)))
                                _%rands139396%_)))
                      (let* ((_%__stx145205145206%_ _%rator139402%_)
                             (_%g139406139458%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx145205145206%_)))))
                        (let ((_%__kont145207145208%_
                               (lambda (_%L139582%_
                                        _%L139583%_
                                        _%L139584%_
                                        _%L139585%_)
                                 (if (let ((__tmp145921
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands139403%_)))
                                           (__tmp145919
                                            (length (let ((__tmp145920
                                                           (lambda (_%g139621139624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g139622139626%_)
                     (cons _%g139621139624%_ _%g139622139626%_))))
              (declare (not safe))
              (__foldr1 __tmp145920 '() _%L139584%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145921 __tmp145919))
                                     (let* ((_%id139629%_ _%L139585%_)
                                            (_%args139638%_
                                             (let ((__tmp145922
                                                    (lambda (_%g139630139633%_
                                                             _%g139631139635%_)
                                                      (cons _%g139630139633%_
                                                            _%g139631139635%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145922
                                                '()
                                                _%L139584%_)))
                                            (_%body139647%_
                                             (let ((__tmp145923
                                                    (lambda (_%g139639139642%_
                                                             _%g139640139644%_)
                                                      (cons _%g139639139642%_
                                                            _%g139640139644%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145923
                                                '()
                                                _%L139583%_)))
                                            (_%init139649%_
                                             (map list
                                                  _%args139638%_
                                                  _%rands139403%_)))
                                       (cons 'let
                                             (cons _%id139629%_
                                                   (cons _%init139649%_
                                                         _%body139647%_))))
                                     (let ((__tmp145924
                                            (let ((__tmp145925
                                                   (lambda (_%g139651139654%_
                                                            _%g139652139656%_)
                                                     (cons _%g139651139654%_
                                                           _%g139652139656%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145925
                                               '()
                                               _%L139584%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx139104%_
                                        __tmp145924
                                        _%rands139403%_)))))
                              (_%__kont145213145214%_
                               (lambda ()
                                 (cons _%rator139402%_ _%rands139403%_))))
                          (let ((_%__match145272145273%_
                                 (lambda (_%e139414139470%_
                                          _%hd139413139473%_
                                          _%tl139412139475%_
                                          _%e139417139478%_
                                          _%hd139416139481%_
                                          _%tl139415139483%_
                                          _%e139420139486%_
                                          _%hd139419139489%_
                                          _%tl139418139491%_
                                          _%e139423139494%_
                                          _%hd139422139497%_
                                          _%tl139421139499%_
                                          _%e139426139502%_
                                          _%hd139425139505%_
                                          _%tl139424139507%_
                                          _%e139429139510%_
                                          _%hd139428139513%_
                                          _%tl139427139515%_
                                          _%e139432139518%_
                                          _%hd139431139521%_
                                          _%tl139430139523%_
                                          _%__splice145209145210%_
                                          _%target139433139526%_
                                          _%tl139435139528%_)
                                   (letrec ((_%loop139436139531%_
                                             (lambda (_%hd139434139534%_
                                                      _%arg139440139536%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd139434139534%_))
                                                   (let ((_%e139437139539%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd139434139534%_))))
                                                     (let ((_%lp-tl139439139544%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e139437139539%_)))
                                                           (_%lp-hd139438139542%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e139437139539%_))))
                                                       (let ((__tmp145926
                                                              (cons _%lp-hd139438139542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%arg139440139536%_)))
                 (declare (not safe))
                 (_%loop139436139531%_ _%lp-tl139439139544%_ __tmp145926))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%arg139441139547%_
                                                          (reverse _%arg139440139536%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl139430139523%_))
                                                         (let ((_%__splice145211145212%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl139430139523%_ '0))))
                   (let ((_%tl139444139552%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice145211145212%_ '1)))
                         (_%target139442139550%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice145211145212%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl139444139552%_))
                         (letrec ((_%loop139445139555%_
                                   (lambda (_%hd139443139558%_
                                            _%body139449139560%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd139443139558%_))
                                         (let ((_%e139446139563%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd139443139558%_))))
                                           (let ((_%lp-tl139448139568%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e139446139563%_)))
                                                 (_%lp-hd139447139566%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e139446139563%_))))
                                             (let ((__tmp145927
                                                    (cons _%lp-hd139447139566%_
                                                          _%body139449139560%_)))
                                               (declare (not safe))
                                               (_%loop139445139555%_
                                                _%lp-tl139448139568%_
                                                __tmp145927))))
                                         (let ((_%body139450139571%_
                                                (reverse _%body139449139560%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl139424139507%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl139418139491%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl139415139483%_))
                                                       (let ((_%e139453139574%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl139415139483%_))))
                 (let ((_%tl139451139579%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e139453139574%_)))
                       (_%hd139452139577%_
                        (let ()
                          (declare (not safe))
                          (##car _%e139453139574%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl139451139579%_))
                       (let ((_%L139582%_ _%hd139452139577%_)
                             (_%L139583%_ _%body139450139571%_)
                             (_%L139584%_ _%arg139441139547%_)
                             (_%L139585%_ _%hd139422139497%_))
                         (if (eq? _%L139585%_ _%L139582%_)
                             (_%__kont145207145208%_
                              _%L139582%_
                              _%L139583%_
                              _%L139584%_
                              _%L139585%_)
                             (_%__kont145213145214%_)))
                       (_%__kont145213145214%_))))
               (_%__kont145213145214%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont145213145214%_))
                                               (_%__kont145213145214%_)))))))
                           (let ()
                             (declare (not safe))
                             (_%loop139445139555%_
                              _%target139442139550%_
                              '())))
                         (_%__kont145213145214%_))))
                 (_%__kont145213145214%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_%loop139436139531%_
                                        _%target139433139526%_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx145205145206%_))
                                (let ((_%e139414139470%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx145205145206%_))))
                                  (let ((_%tl139412139475%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139414139470%_)))
                                        (_%hd139413139473%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139414139470%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd139413139473%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd139413139473%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl139412139475%_))
                                                (let ((_%e139417139478%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl139412139475%_))))
                                                  (let ((_%tl139415139483%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139417139478%_)))
                                                        (_%hd139416139481%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139417139478%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd139416139481%_))
                                                        (let ((_%e139420139486%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd139416139481%_))))
                  (let ((_%tl139418139491%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e139420139486%_)))
                        (_%hd139419139489%_
                         (let ()
                           (declare (not safe))
                           (##car _%e139420139486%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd139419139489%_))
                        (let ((_%e139423139494%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd139419139489%_))))
                          (let ((_%tl139421139499%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139423139494%_)))
                                (_%hd139422139497%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139423139494%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139421139499%_))
                                (let ((_%e139426139502%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139421139499%_))))
                                  (let ((_%tl139424139507%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139426139502%_)))
                                        (_%hd139425139505%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139426139502%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd139425139505%_))
                                        (let ((_%e139429139510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd139425139505%_))))
                                          (let ((_%tl139427139515%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139429139510%_)))
                                                (_%hd139428139513%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139429139510%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd139428139513%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd139428139513%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl139427139515%_))
                                                        (let ((_%e139432139518%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl139427139515%_))))
                  (let ((_%tl139430139523%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e139432139518%_)))
                        (_%hd139431139521%_
                         (let ()
                           (declare (not safe))
                           (##car _%e139432139518%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd139431139521%_))
                        (let ((_%__splice145209145210%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd139431139521%_
                                  '0))))
                          (let ((_%tl139435139528%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice145209145210%_ '1)))
                                (_%target139433139526%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice145209145210%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl139435139528%_))
                                (_%__match145272145273%_
                                 _%e139414139470%_
                                 _%hd139413139473%_
                                 _%tl139412139475%_
                                 _%e139417139478%_
                                 _%hd139416139481%_
                                 _%tl139415139483%_
                                 _%e139420139486%_
                                 _%hd139419139489%_
                                 _%tl139418139491%_
                                 _%e139423139494%_
                                 _%hd139422139497%_
                                 _%tl139421139499%_
                                 _%e139426139502%_
                                 _%hd139425139505%_
                                 _%tl139424139507%_
                                 _%e139429139510%_
                                 _%hd139428139513%_
                                 _%tl139427139515%_
                                 _%e139432139518%_
                                 _%hd139431139521%_
                                 _%tl139430139523%_
                                 _%__splice145209145210%_
                                 _%target139433139526%_
                                 _%tl139435139528%_)
                                (_%__kont145213145214%_))))
                        (_%__kont145213145214%_))))
                (_%__kont145213145214%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont145213145214%_))
                                                (_%__kont145213145214%_))))
                                        (_%__kont145213145214%_))))
                                (_%__kont145213145214%_))))
                        (_%__kont145213145214%_))))
                (_%__kont145213145214%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont145213145214%_))
                                            (_%__kont145213145214%_))
                                        (_%__kont145213145214%_))))
                                (_%__kont145213145214%_)))))))))
          (let* ((_%g139108139131%_
                  (lambda (_%g139109139128%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139109139128%_))))
                 (_%g139107139392%_
                  (lambda (_%g139109139134%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139109139134%_))
                        (let ((_%e139114139136%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139109139134%_))))
                          (let ((_%hd139113139139%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139114139136%_)))
                                (_%tl139112139141%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139114139136%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139112139141%_))
                                (let ((_%e139117139144%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139112139141%_))))
                                  (let ((_%hd139116139147%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139117139144%_)))
                                        (_%tl139115139149%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139117139144%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl139115139149%_))
                                        (let ((_g145928_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl139115139149%_
                                                  '0))))
                                          (begin
                                            (let ((_g145929_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g145928_)
                                                         (##vector-length
                                                          _g145928_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g145929_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g145929_)))
                                            (let ((_%target139118139152%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145928_
                                                      0)))
                                                  (_%tl139120139154%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145928_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl139120139154%_))
                                                  (letrec ((_%loop139121139157%_
                                                            (lambda (_%hd139119139160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand139125139162%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd139119139160%_))
                          (let ((_%e139122139165%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd139119139160%_))))
                            (let ((_%lp-hd139123139168%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139122139165%_)))
                                  (_%lp-tl139124139170%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139122139165%_))))
                              (let ((__tmp145930
                                     (cons _%lp-hd139123139168%_
                                           _%rand139125139162%_)))
                                (declare (not safe))
                                (_%loop139121139157%_
                                 _%lp-tl139124139170%_
                                 __tmp145930))))
                          (let ((_%rand139126139173%_
                                 (reverse _%rand139125139162%_)))
                            ((lambda (_%L139176%_ _%L139177%_)
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls-unsafe?))
                                   (let ((__tmp145931
                                          (let ((__tmp145932
                                                 (lambda (_%g139194139197%_
                                                          _%g139195139199%_)
                                                   (cons _%g139194139197%_
                                                         _%g139195139199%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp145932
                                             '()
                                             _%L139176%_))))
                                     (declare (not safe))
                                     (_%compile-call139106%_
                                      _%L139177%_
                                      __tmp145931))
                                   (let* ((_%__stx145321145322%_ _%L139177%_)
                                          (_%g139203139215%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx145321145322%_)))))
                                     (let ((_%__kont145323145324%_
                                            (lambda ()
                                              (let ((_%f139252%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self139103%_
                                                        _%L139177%_))))
                                                (if (and (let ((__tmp145933
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f139252%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp145933))
                 (let ((__tmp145934
                        (let ()
                          (declare (not safe))
                          (##memq _%f139252%_ gxc#checked-primitives))))
                   (declare (not safe))
                   (not __tmp145934)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp139254%_ ((_%rest139257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp145940
                                                (lambda (_%g139374139377%_
                                                         _%g139375139379%_)
                                                  (cons _%g139374139377%_
                                                        _%g139375139379%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp145940
                                            '()
                                            _%L139176%_))))
                               (_%bind139259%_ '())
                               (_%args139260%_ '()))
              (let* ((_%rest139261139269%_ _%rest139257%_)
                     (_%else139263139277%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind139259%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f139252%_
                                                      _%args139260%_)
                                                '()))))))
                     (_%K139265139363%_
                      (lambda (_%rest139280%_ _%e139281%_)
                        (let* ((_%__stx145275145276%_ _%e139281%_)
                               (_%g139286139304%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx145275145276%_)))))
                          (let ((_%__kont145277145278%_
                                 (lambda ()
                                   (let ((__tmp145935
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e139281%_))
                                                _%args139260%_)))
                                     (declare (not safe))
                                     (_%lp139254%_
                                      _%rest139280%_
                                      _%bind139259%_
                                      __tmp145935))))
                                (_%__kont145279145280%_
                                 (lambda ()
                                   (let ((__tmp145936
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e139281%_))
                                                _%args139260%_)))
                                     (declare (not safe))
                                     (_%lp139254%_
                                      _%rest139280%_
                                      _%bind139259%_
                                      __tmp145936))))
                                (_%__kont145281145282%_
                                 (lambda ()
                                   (let ((_%tmp139311%_
                                          (let ((__tmp145937
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp145937))))
                                     (let ((__tmp145939
                                            (cons (cons _%tmp139311%_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _%e139281%_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind139259%_))
                                           (__tmp145938
                                            (cons _%tmp139311%_
                                                  _%args139260%_)))
                                       (declare (not safe))
                                       (_%lp139254%_
                                        _%rest139280%_
                                        __tmp145939
                                        __tmp145938))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx145275145276%_))
                                (let ((_%e139290139342%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx145275145276%_))))
                                  (let ((_%tl139288139347%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139290139342%_)))
                                        (_%hd139289139345%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139290139342%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd139289139345%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd139289139345%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl139288139347%_))
                                                (let ((_%e139293139350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl139288139347%_))))
                                                  (let ((_%tl139291139355%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139293139350%_)))
                                                        (_%hd139292139353%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139293139350%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139291139355%_))
                                                        (_%__kont145277145278%_)
                                                        (_%__kont145281145282%_))))
                                                (_%__kont145281145282%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd139289139345%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl139288139347%_))
                                                    (let ((_%e139299139327%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl139288139347%_))))
                                                      (let ((_%tl139297139332%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e139299139327%_)))
                    (_%hd139298139330%_
                     (let () (declare (not safe)) (##car _%e139299139327%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl139297139332%_))
                    (_%__kont145279145280%_)
                    (_%__kont145281145282%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont145281145282%_))
                                                (_%__kont145281145282%_)))
                                        (_%__kont145281145282%_))))
                                (_%__kont145281145282%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest139261139269%_))
                    (let ((_%hd139266139366%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest139261139269%_)))
                          (_%tl139267139368%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest139261139269%_))))
                      (let* ((_%e139371%_ _%hd139266139366%_)
                             (_%rest139373%_ _%tl139267139368%_))
                        (declare (not safe))
                        (_%K139265139363%_ _%rest139373%_ _%e139371%_)))
                    (let () (declare (not safe)) (_%else139263139277%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp145941
                                                           (let ((__tmp145942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g139381139384%_ _%g139382139386%_)
                            (cons _%g139381139384%_ _%g139382139386%_))))
                     (declare (not safe))
                     (__foldr1 __tmp145942 '() _%L139176%_))))
              (declare (not safe))
              (_%compile-call139106%_ _%L139177%_ __tmp145941))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont145325145326%_
                                            (lambda ()
                                              (let ((__tmp145943
                                                     (let ((__tmp145944
                                                            (lambda (_%g139221139224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g139222139226%_)
                      (cons _%g139221139224%_ _%g139222139226%_))))
               (declare (not safe))
               (__foldr1 __tmp145944 '() _%L139176%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%compile-call139106%_
                                                 _%L139177%_
                                                 __tmp145943)))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx145321145322%_))
                                           (let ((_%e139207139234%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx145321145322%_))))
                                             (let ((_%tl139205139239%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e139207139234%_)))
                                                   (_%hd139206139237%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e139207139234%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd139206139237%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd139206139237%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl139205139239%_))
                                                           (let ((_%e139210139242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl139205139239%_))))
                     (let ((_%tl139208139247%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e139210139242%_)))
                           (_%hd139209139245%_
                            (let ()
                              (declare (not safe))
                              (##car _%e139210139242%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl139208139247%_))
                           (_%__kont145323145324%_)
                           (_%__kont145325145326%_))))
                   (_%__kont145325145326%_))
               (_%__kont145325145326%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont145325145326%_))))
                                           (_%__kont145325145326%_))))))
                             _%rand139126139173%_
                             _%hd139116139147%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%loop139121139157%_
                                                       _%target139118139152%_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g139108139131%_
                                                     _%g139109139134%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139108139131%_
                                           _%g139109139134%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139108139131%_ _%g139109139134%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139108139131%_ _%g139109139134%_))))))
            (declare (not safe))
            (_%g139107139392%_ _%stx139104%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self138846%_ _%stx138847%_)
        (let* ((_%__stx145393145394%_ _%stx138847%_)
               (_%g138850138879%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx145393145394%_)))))
          (let ((_%__kont145395145396%_
                 (lambda (_%L138947%_ _%L138948%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call%
                          _%self138846%_
                          _%stx138847%_))
                       (let ((_%f138970%_
                              (let ((__tmp145945
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L138948%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self138846%_
                                 __tmp145945))))
                         (let _%lp138972%_ ((_%rest138975%_
                                             (reverse (let ((__tmp145951
                                                             (lambda (_%g139092139095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g139093139097%_)
                       (cons _%g139092139095%_ _%g139093139097%_))))
                (declare (not safe))
                (__foldr1 __tmp145951 '() _%L138947%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind138977%_ '())
                                            (_%args138978%_ '()))
                           (let* ((_%rest138979138987%_ _%rest138975%_)
                                  (_%else138981138995%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind138977%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f138970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args138978%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K138983139081%_
                                   (lambda (_%rest138998%_ _%e138999%_)
                                     (let* ((_%__stx145347145348%_ _%e138999%_)
                                            (_%g139004139022%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx145347145348%_)))))
                                       (let ((_%__kont145349145350%_
                                              (lambda ()
                                                (let ((__tmp145946
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__0 _%e138999%_))
                     _%args138978%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_%lp138972%_
                                                   _%rest138998%_
                                                   _%bind138977%_
                                                   __tmp145946))))
                                             (_%__kont145351145352%_
                                              (lambda ()
                                                (let ((__tmp145947
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__0 _%e138999%_))
                     _%args138978%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_%lp138972%_
                                                   _%rest138998%_
                                                   _%bind138977%_
                                                   __tmp145947))))
                                             (_%__kont145353145354%_
                                              (lambda ()
                                                (let ((_%tmp139029%_
                                                       (let ((__tmp145948
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp145948))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp145950
                                                         (cons (cons _%tmp139029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__0 _%e138999%_))
                                   '()))
                       _%bind138977%_))
                (__tmp145949 (cons _%tmp139029%_ _%args138978%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%lp138972%_
                                                     _%rest138998%_
                                                     __tmp145950
                                                     __tmp145949))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx145347145348%_))
                                             (let ((_%e139008139060%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx145347145348%_))))
                                               (let ((_%tl139006139065%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e139008139060%_)))
                                                     (_%hd139007139063%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e139008139060%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd139007139063%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd139007139063%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl139006139065%_))
                     (let ((_%e139011139068%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139006139065%_))))
                       (let ((_%tl139009139073%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139011139068%_)))
                             (_%hd139010139071%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139011139068%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139009139073%_))
                             (_%__kont145349145350%_)
                             (_%__kont145353145354%_))))
                     (_%__kont145353145354%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd139007139063%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl139006139065%_))
                         (let ((_%e139017139045%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl139006139065%_))))
                           (let ((_%tl139015139050%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e139017139045%_)))
                                 (_%hd139016139048%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e139017139045%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl139015139050%_))
                                 (_%__kont145351145352%_)
                                 (_%__kont145353145354%_))))
                         (_%__kont145353145354%_))
                     (_%__kont145353145354%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145353145354%_))))
                                             (_%__kont145353145354%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest138979138987%_))
                                 (let ((_%hd138984139084%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest138979138987%_)))
                                       (_%tl138985139086%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest138979138987%_))))
                                   (let* ((_%e139089%_ _%hd138984139084%_)
                                          (_%rest139091%_ _%tl138985139086%_))
                                     (declare (not safe))
                                     (_%K138983139081%_
                                      _%rest139091%_
                                      _%e139089%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%else138981138995%_)))))))))
                (_%__kont145399145400%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call%
                      _%self138846%_
                      _%stx138847%_)))))
            (let ((_%__match145438145439%_
                   (lambda (_%e138856138891%_
                            _%hd138855138894%_
                            _%tl138854138896%_
                            _%e138859138899%_
                            _%hd138858138902%_
                            _%tl138857138904%_
                            _%e138862138907%_
                            _%hd138861138910%_
                            _%tl138860138912%_
                            _%e138865138915%_
                            _%hd138864138918%_
                            _%tl138863138920%_
                            _%__splice145397145398%_
                            _%target138866138923%_
                            _%tl138868138925%_)
                     (letrec ((_%loop138869138928%_
                               (lambda (_%hd138867138931%_
                                        _%rand138873138933%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd138867138931%_))
                                     (let ((_%e138870138936%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd138867138931%_))))
                                       (let ((_%lp-tl138872138941%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e138870138936%_)))
                                             (_%lp-hd138871138939%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e138870138936%_))))
                                         (let ((__tmp145952
                                                (cons _%lp-hd138871138939%_
                                                      _%rand138873138933%_)))
                                           (declare (not safe))
                                           (_%loop138869138928%_
                                            _%lp-tl138872138941%_
                                            __tmp145952))))
                                     (let ((_%rand138874138944%_
                                            (reverse _%rand138873138933%_)))
                                       (_%__kont145395145396%_
                                        _%rand138874138944%_
                                        _%hd138864138918%_))))))
                       (let ()
                         (declare (not safe))
                         (_%loop138869138928%_ _%target138866138923%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx145393145394%_))
                  (let ((_%e138856138891%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx145393145394%_))))
                    (let ((_%tl138854138896%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e138856138891%_)))
                          (_%hd138855138894%_
                           (let ()
                             (declare (not safe))
                             (##car _%e138856138891%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl138854138896%_))
                          (let ((_%e138859138899%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl138854138896%_))))
                            (let ((_%tl138857138904%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138859138899%_)))
                                  (_%hd138858138902%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138859138899%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd138858138902%_))
                                  (let ((_%e138862138907%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd138858138902%_))))
                                    (let ((_%tl138860138912%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e138862138907%_)))
                                          (_%hd138861138910%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e138862138907%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd138861138910%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd138861138910%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl138860138912%_))
                                                  (let ((_%e138865138915%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl138860138912%_))))
                                                    (let ((_%tl138863138920%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e138865138915%_)))
                                                          (_%hd138864138918%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e138865138915%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl138863138920%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl138857138904%_))
                      (let ((_%__splice145397145398%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl138857138904%_
                                '0))))
                        (let ((_%tl138868138925%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145397145398%_ '1)))
                              (_%target138866138923%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145397145398%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl138868138925%_))
                              (_%__match145438145439%_
                               _%e138856138891%_
                               _%hd138855138894%_
                               _%tl138854138896%_
                               _%e138859138899%_
                               _%hd138858138902%_
                               _%tl138857138904%_
                               _%e138862138907%_
                               _%hd138861138910%_
                               _%tl138860138912%_
                               _%e138865138915%_
                               _%hd138864138918%_
                               _%tl138863138920%_
                               _%__splice145397145398%_
                               _%target138866138923%_
                               _%tl138868138925%_)
                              (_%__kont145399145400%_))))
                      (_%__kont145399145400%_))
                  (_%__kont145399145400%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145399145400%_))
                                              (_%__kont145399145400%_))
                                          (_%__kont145399145400%_))))
                                  (_%__kont145399145400%_))))
                          (_%__kont145399145400%_))))
                  (_%__kont145399145400%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self138658%_ _%stx138659%_)
        (letrec ((_%simplify138661%_
                  (lambda (_%code138746%_)
                    (let* ((_%code138747138765%_ _%code138746%_)
                           (_%else138749138773%_ (lambda () _%code138746%_))
                           (_%K138751138809%_
                            (lambda (_%expr138776%_ _%test138777%_)
                              (let* ((_%expr138778138786%_ _%expr138776%_)
                                     (_%else138780138794%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test138777%_
                                                    (cons _%expr138776%_
                                                          '())))))
                                     (_%K138782138799%_
                                      (lambda (_%exprs138797%_)
                                        (cons 'and
                                              (cons _%test138777%_
                                                    _%exprs138797%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr138778138786%_))
                                    (let ((_%hd138783138802%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr138778138786%_)))
                                          (_%tl138784138804%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr138778138786%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd138783138802%_ 'and))
                                          (let ((_%exprs138807%_
                                                 _%tl138784138804%_))
                                            (declare (not safe))
                                            (_%K138782138799%_
                                             _%exprs138807%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else138780138794%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else138780138794%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code138747138765%_))
                          (let ((_%hd138752138812%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code138747138765%_)))
                                (_%tl138753138814%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code138747138765%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd138752138812%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl138753138814%_))
                                    (let ((_%hd138754138817%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl138753138814%_)))
                                          (_%tl138755138819%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl138753138814%_))))
                                      (let ((_%test138822%_
                                             _%hd138754138817%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl138755138819%_))
                                            (let ((_%hd138756138824%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl138755138819%_)))
                                                  (_%tl138757138826%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl138755138819%_))))
                                              (let ((_%expr138829%_
                                                     _%hd138756138824%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl138757138826%_))
                                                    (let ((_%hd138758138831%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl138757138826%_)))
                                                          (_%tl138759138833%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl138757138826%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd138758138831%_))
                                                          (let ((_%hd138760138836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd138758138831%_)))
                        (_%tl138761138838%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd138758138831%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd138760138836%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl138761138838%_))
                            (let ((_%hd138762138841%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl138761138838%_)))
                                  (_%tl138763138843%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl138761138838%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd138762138841%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl138763138843%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl138759138833%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%K138751138809%_
                                             _%expr138829%_
                                             _%test138822%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else138749138773%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else138749138773%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else138749138773%_))))
                            (let ()
                              (declare (not safe))
                              (_%else138749138773%_)))
                        (let () (declare (not safe)) (_%else138749138773%_))))
                  (let () (declare (not safe)) (_%else138749138773%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else138749138773%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%else138749138773%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else138749138773%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else138749138773%_))))
                          (let ()
                            (declare (not safe))
                            (_%else138749138773%_)))))))
          (let* ((_%g138663138684%_
                  (lambda (_%g138664138681%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138664138681%_))))
                 (_%g138662138743%_
                  (lambda (_%g138664138687%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138664138687%_))
                        (let ((_%e138670138689%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138664138687%_))))
                          (let ((_%hd138669138692%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138670138689%_)))
                                (_%tl138668138694%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138670138689%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138668138694%_))
                                (let ((_%e138673138697%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138668138694%_))))
                                  (let ((_%hd138672138700%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138673138697%_)))
                                        (_%tl138671138702%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138673138697%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl138671138702%_))
                                        (let ((_%e138676138705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl138671138702%_))))
                                          (let ((_%hd138675138708%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138676138705%_)))
                                                (_%tl138674138710%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138676138705%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138674138710%_))
                                                (let ((_%e138679138713%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138674138710%_))))
                                                  (let ((_%hd138678138716%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138679138713%_)))
                                                        (_%tl138677138718%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138679138713%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl138677138718%_))
                                                        ((lambda (_%L138721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L138722%_
                          _%L138723%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (let ((__tmp145953
                              (cons 'if
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self138658%_
                                             _%L138723%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self138658%_
                                                   _%L138722%_))
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self138658%_
                                                         _%L138721%_))
                                                      '()))))))
                         (declare (not safe))
                         (_%simplify138661%_ __tmp145953))
                       (cons 'if
                             (cons (let ((__tmp145954
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self138658%_
                                               _%L138723%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp145954
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self138658%_
                                            _%L138722%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self138658%_
                                                  _%L138721%_))
                                               '()))))))
                 _%hd138678138716%_
                 _%hd138675138708%_
                 _%hd138672138700%_)
                (let ()
                  (declare (not safe))
                  (_%g138663138684%_ _%g138664138687%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g138663138684%_
                                                   _%g138664138687%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g138663138684%_
                                           _%g138664138687%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g138663138684%_ _%g138664138687%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g138663138684%_ _%g138664138687%_))))))
            (declare (not safe))
            (_%g138662138743%_ _%stx138659%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self138606%_ _%stx138607%_)
        (let* ((_%g138609138622%_
                (lambda (_%g138610138619%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138610138619%_))))
               (_%g138608138655%_
                (lambda (_%g138610138625%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138610138625%_))
                      (let ((_%e138614138627%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138610138625%_))))
                        (let ((_%hd138613138630%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138614138627%_)))
                              (_%tl138612138632%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138614138627%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138612138632%_))
                              (let ((_%e138617138635%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138612138632%_))))
                                (let ((_%hd138616138638%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138617138635%_)))
                                      (_%tl138615138640%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138617138635%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl138615138640%_))
                                      ((lambda (_%L138643%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L138643%_)))
                                       _%hd138616138638%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g138609138622%_
                                         _%g138610138625%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138609138622%_ _%g138610138625%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138609138622%_ _%g138610138625%_))))))
          (declare (not safe))
          (_%g138608138655%_ _%stx138607%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self138538%_ _%stx138539%_)
        (let* ((_%g138541138558%_
                (lambda (_%g138542138555%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138542138555%_))))
               (_%g138540138603%_
                (lambda (_%g138542138561%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138542138561%_))
                      (let ((_%e138547138563%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138542138561%_))))
                        (let ((_%hd138546138566%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138547138563%_)))
                              (_%tl138545138568%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138547138563%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138545138568%_))
                              (let ((_%e138550138571%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138545138568%_))))
                                (let ((_%hd138549138574%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138550138571%_)))
                                      (_%tl138548138576%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138550138571%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138548138576%_))
                                      (let ((_%e138553138579%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138548138576%_))))
                                        (let ((_%hd138552138582%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138553138579%_)))
                                              (_%tl138551138584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138553138579%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138551138584%_))
                                              ((lambda (_%L138587%_
                                                        _%L138588%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L138588%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self138538%_ _%L138587%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138552138582%_
                                               _%hd138549138574%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g138541138558%_
                                                 _%g138542138561%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g138541138558%_
                                         _%g138542138561%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138541138558%_ _%g138542138561%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138541138558%_ _%g138542138561%_))))))
          (declare (not safe))
          (_%g138540138603%_ _%stx138539%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self138349%_ _%stx138350%_)
        (let* ((_%g138352138369%_
                (lambda (_%g138353138366%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138353138366%_))))
               (_%g138351138535%_
                (lambda (_%g138353138372%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138353138372%_))
                      (let ((_%e138358138374%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138353138372%_))))
                        (let ((_%hd138357138377%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138358138374%_)))
                              (_%tl138356138379%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138358138374%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138356138379%_))
                              (let ((_%e138361138382%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138356138379%_))))
                                (let ((_%hd138360138385%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138361138382%_)))
                                      (_%tl138359138387%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138361138382%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138359138387%_))
                                      (let ((_%e138364138390%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138359138387%_))))
                                        (let ((_%hd138363138393%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138364138390%_)))
                                              (_%tl138362138395%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138364138390%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138362138395%_))
                                              ((lambda (_%L138398%_
                                                        _%L138399%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self138349%_ _%L138398%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self138349%_ _%L138399%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp138414%_ ((_%rest138417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L138399%_ (cons _%L138398%_ '())))
                                (_%bind138419%_ '())
                                (_%args138420%_ '()))
               (let* ((_%rest138421138429%_ _%rest138417%_)
                      (_%else138423138437%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind138419%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args138420%_)
                                                 '()))))))
                      (_%K138425138523%_
                       (lambda (_%rest138440%_ _%e138441%_)
                         (let* ((_%__stx145441145442%_ _%e138441%_)
                                (_%g138446138464%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx145441145442%_)))))
                           (let ((_%__kont145443145444%_
                                  (lambda ()
                                    (let ((__tmp145955
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e138441%_))
                                                 _%args138420%_)))
                                      (declare (not safe))
                                      (_%lp138414%_
                                       _%rest138440%_
                                       _%bind138419%_
                                       __tmp145955))))
                                 (_%__kont145445145446%_
                                  (lambda ()
                                    (let ((__tmp145956
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e138441%_))
                                                 _%args138420%_)))
                                      (declare (not safe))
                                      (_%lp138414%_
                                       _%rest138440%_
                                       _%bind138419%_
                                       __tmp145956))))
                                 (_%__kont145447145448%_
                                  (lambda ()
                                    (let ((_%tmp138471%_
                                           (let ((__tmp145957
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145957))))
                                      (let ((__tmp145959
                                             (cons (cons _%tmp138471%_
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#compile-e__0 _%e138441%_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%bind138419%_))
                                            (__tmp145958
                                             (cons _%tmp138471%_
                                                   _%args138420%_)))
                                        (declare (not safe))
                                        (_%lp138414%_
                                         _%rest138440%_
                                         __tmp145959
                                         __tmp145958))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx145441145442%_))
                                 (let ((_%e138450138502%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx145441145442%_))))
                                   (let ((_%tl138448138507%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e138450138502%_)))
                                         (_%hd138449138505%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e138450138502%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd138449138505%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd138449138505%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl138448138507%_))
                                                 (let ((_%e138453138510%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl138448138507%_))))
                                                   (let ((_%tl138451138515%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e138453138510%_)))
                                                         (_%hd138452138513%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e138453138510%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl138451138515%_))
                                                         (_%__kont145443145444%_)
                                                         (_%__kont145447145448%_))))
                                                 (_%__kont145447145448%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd138449138505%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl138448138507%_))
                                                     (let ((_%e138459138487%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl138448138507%_))))
                                                       (let ((_%tl138457138492%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e138459138487%_)))
                     (_%hd138458138490%_
                      (let () (declare (not safe)) (##car _%e138459138487%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl138457138492%_))
                     (_%__kont145445145446%_)
                     (_%__kont145447145448%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145447145448%_))
                                                 (_%__kont145447145448%_)))
                                         (_%__kont145447145448%_))))
                                 (_%__kont145447145448%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest138421138429%_))
                     (let ((_%hd138426138526%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest138421138429%_)))
                           (_%tl138427138528%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest138421138429%_))))
                       (let* ((_%e138531%_ _%hd138426138526%_)
                              (_%rest138533%_ _%tl138427138528%_))
                         (declare (not safe))
                         (_%K138425138523%_ _%rest138533%_ _%e138531%_)))
                     (let () (declare (not safe)) (_%else138423138437%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138363138393%_
                                               _%hd138360138385%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g138352138369%_
                                                 _%g138353138372%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g138352138369%_
                                         _%g138353138372%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138352138369%_ _%g138353138372%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138352138369%_ _%g138353138372%_))))))
          (declare (not safe))
          (_%g138351138535%_ _%stx138350%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self138160%_ _%stx138161%_)
        (let* ((_%g138163138180%_
                (lambda (_%g138164138177%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138164138177%_))))
               (_%g138162138346%_
                (lambda (_%g138164138183%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138164138183%_))
                      (let ((_%e138169138185%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138164138183%_))))
                        (let ((_%hd138168138188%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138169138185%_)))
                              (_%tl138167138190%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138169138185%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138167138190%_))
                              (let ((_%e138172138193%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138167138190%_))))
                                (let ((_%hd138171138196%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138172138193%_)))
                                      (_%tl138170138198%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138172138193%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138170138198%_))
                                      (let ((_%e138175138201%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138170138198%_))))
                                        (let ((_%hd138174138204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138175138201%_)))
                                              (_%tl138173138206%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138175138201%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138173138206%_))
                                              ((lambda (_%L138209%_
                                                        _%L138210%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self138160%_ _%L138209%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self138160%_ _%L138210%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp138225%_ ((_%rest138228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L138210%_ (cons _%L138209%_ '())))
                                (_%bind138230%_ '())
                                (_%args138231%_ '()))
               (let* ((_%rest138232138240%_ _%rest138228%_)
                      (_%else138234138248%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind138230%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args138231%_)
                                                 '()))))))
                      (_%K138236138334%_
                       (lambda (_%rest138251%_ _%e138252%_)
                         (let* ((_%__stx145487145488%_ _%e138252%_)
                                (_%g138257138275%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx145487145488%_)))))
                           (let ((_%__kont145489145490%_
                                  (lambda ()
                                    (let ((__tmp145960
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e138252%_))
                                                 _%args138231%_)))
                                      (declare (not safe))
                                      (_%lp138225%_
                                       _%rest138251%_
                                       _%bind138230%_
                                       __tmp145960))))
                                 (_%__kont145491145492%_
                                  (lambda ()
                                    (let ((__tmp145961
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e138252%_))
                                                 _%args138231%_)))
                                      (declare (not safe))
                                      (_%lp138225%_
                                       _%rest138251%_
                                       _%bind138230%_
                                       __tmp145961))))
                                 (_%__kont145493145494%_
                                  (lambda ()
                                    (let ((_%tmp138282%_
                                           (let ((__tmp145962
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145962))))
                                      (let ((__tmp145964
                                             (cons (cons _%tmp138282%_
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#compile-e__0 _%e138252%_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%bind138230%_))
                                            (__tmp145963
                                             (cons _%tmp138282%_
                                                   _%args138231%_)))
                                        (declare (not safe))
                                        (_%lp138225%_
                                         _%rest138251%_
                                         __tmp145964
                                         __tmp145963))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx145487145488%_))
                                 (let ((_%e138261138313%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx145487145488%_))))
                                   (let ((_%tl138259138318%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e138261138313%_)))
                                         (_%hd138260138316%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e138261138313%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd138260138316%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd138260138316%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl138259138318%_))
                                                 (let ((_%e138264138321%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl138259138318%_))))
                                                   (let ((_%tl138262138326%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e138264138321%_)))
                                                         (_%hd138263138324%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e138264138321%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl138262138326%_))
                                                         (_%__kont145489145490%_)
                                                         (_%__kont145493145494%_))))
                                                 (_%__kont145493145494%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd138260138316%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl138259138318%_))
                                                     (let ((_%e138270138298%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl138259138318%_))))
                                                       (let ((_%tl138268138303%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e138270138298%_)))
                     (_%hd138269138301%_
                      (let () (declare (not safe)) (##car _%e138270138298%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl138268138303%_))
                     (_%__kont145491145492%_)
                     (_%__kont145493145494%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145493145494%_))
                                                 (_%__kont145493145494%_)))
                                         (_%__kont145493145494%_))))
                                 (_%__kont145493145494%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest138232138240%_))
                     (let ((_%hd138237138337%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest138232138240%_)))
                           (_%tl138238138339%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest138232138240%_))))
                       (let* ((_%e138342%_ _%hd138237138337%_)
                              (_%rest138344%_ _%tl138238138339%_))
                         (declare (not safe))
                         (_%K138236138334%_ _%rest138344%_ _%e138342%_)))
                     (let () (declare (not safe)) (_%else138234138248%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138174138204%_
                                               _%hd138171138196%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g138163138180%_
                                                 _%g138164138183%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g138163138180%_
                                         _%g138164138183%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138163138180%_ _%g138164138183%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138163138180%_ _%g138164138183%_))))))
          (declare (not safe))
          (_%g138162138346%_ _%stx138161%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self138076%_ _%stx138077%_)
        (let* ((_%g138079138100%_
                (lambda (_%g138080138097%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138080138097%_))))
               (_%g138078138157%_
                (lambda (_%g138080138103%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138080138103%_))
                      (let ((_%e138086138105%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138080138103%_))))
                        (let ((_%hd138085138108%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138086138105%_)))
                              (_%tl138084138110%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138086138105%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138084138110%_))
                              (let ((_%e138089138113%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138084138110%_))))
                                (let ((_%hd138088138116%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138089138113%_)))
                                      (_%tl138087138118%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138089138113%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138087138118%_))
                                      (let ((_%e138092138121%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138087138118%_))))
                                        (let ((_%hd138091138124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138092138121%_)))
                                              (_%tl138090138126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138092138121%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138090138126%_))
                                              (let ((_%e138095138129%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138090138126%_))))
                                                (let ((_%hd138094138132%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138095138129%_)))
                                                      (_%tl138093138134%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138095138129%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl138093138134%_))
                                                      ((lambda (_%L138137%_
                                                                _%L138138%_
                                                                _%L138139%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self138076%_ _%L138137%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self138076%_
                                      _%L138138%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self138076%_
                                            _%L138139%_))
                                         (cons ''#f '()))))))
               _%hd138094138132%_
               _%hd138091138124%_
               _%hd138088138116%_)
              (let ()
                (declare (not safe))
                (_%g138079138100%_ _%g138080138103%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g138079138100%_
                                                 _%g138080138103%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g138079138100%_
                                         _%g138080138103%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138079138100%_ _%g138080138103%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138079138100%_ _%g138080138103%_))))))
          (declare (not safe))
          (_%g138078138157%_ _%stx138077%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self137976%_ _%stx137977%_)
        (let* ((_%g137979138004%_
                (lambda (_%g137980138001%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137980138001%_))))
               (_%g137978138073%_
                (lambda (_%g137980138007%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137980138007%_))
                      (let ((_%e137987138009%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137980138007%_))))
                        (let ((_%hd137986138012%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137987138009%_)))
                              (_%tl137985138014%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137987138009%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137985138014%_))
                              (let ((_%e137990138017%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137985138014%_))))
                                (let ((_%hd137989138020%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137990138017%_)))
                                      (_%tl137988138022%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137990138017%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137988138022%_))
                                      (let ((_%e137993138025%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137988138022%_))))
                                        (let ((_%hd137992138028%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137993138025%_)))
                                              (_%tl137991138030%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137993138025%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137991138030%_))
                                              (let ((_%e137996138033%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137991138030%_))))
                                                (let ((_%hd137995138036%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137996138033%_)))
                                                      (_%tl137994138038%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137996138033%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137994138038%_))
                                                      (let ((_%e137999138041%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137994138038%_))))
                (let ((_%hd137998138044%_
                       (let () (declare (not safe)) (##car _%e137999138041%_)))
                      (_%tl137997138046%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137999138041%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137997138046%_))
                      ((lambda (_%L138049%_
                                _%L138050%_
                                _%L138051%_
                                _%L138052%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137976%_
                                        _%L138050%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137976%_
                                              _%L138049%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137976%_
                                                    _%L138051%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137976%_
                                                          _%L138052%_))
                                                       (cons ''#f '())))))))
                       _%hd137998138044%_
                       _%hd137995138036%_
                       _%hd137992138028%_
                       _%hd137989138020%_)
                      (let ()
                        (declare (not safe))
                        (_%g137979138004%_ _%g137980138007%_)))))
              (let ()
                (declare (not safe))
                (_%g137979138004%_ _%g137980138007%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137979138004%_
                                                 _%g137980138007%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137979138004%_
                                         _%g137980138007%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137979138004%_ _%g137980138007%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137979138004%_ _%g137980138007%_))))))
          (declare (not safe))
          (_%g137978138073%_ _%stx137977%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self137892%_ _%stx137893%_)
        (let* ((_%g137895137916%_
                (lambda (_%g137896137913%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137896137913%_))))
               (_%g137894137973%_
                (lambda (_%g137896137919%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137896137919%_))
                      (let ((_%e137902137921%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137896137919%_))))
                        (let ((_%hd137901137924%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137902137921%_)))
                              (_%tl137900137926%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137902137921%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137900137926%_))
                              (let ((_%e137905137929%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137900137926%_))))
                                (let ((_%hd137904137932%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137905137929%_)))
                                      (_%tl137903137934%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137905137929%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137903137934%_))
                                      (let ((_%e137908137937%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137903137934%_))))
                                        (let ((_%hd137907137940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137908137937%_)))
                                              (_%tl137906137942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137908137937%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137906137942%_))
                                              (let ((_%e137911137945%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137906137942%_))))
                                                (let ((_%hd137910137948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137911137945%_)))
                                                      (_%tl137909137950%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137911137945%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137909137950%_))
                                                      ((lambda (_%L137953%_
                                                                _%L137954%_
                                                                _%L137955%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137892%_ _%L137953%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137892%_
                                      _%L137954%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137892%_
                                            _%L137955%_))
                                         (cons ''#f '()))))))
               _%hd137910137948%_
               _%hd137907137940%_
               _%hd137904137932%_)
              (let ()
                (declare (not safe))
                (_%g137895137916%_ _%g137896137919%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137895137916%_
                                                 _%g137896137919%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137895137916%_
                                         _%g137896137919%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137895137916%_ _%g137896137919%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137895137916%_ _%g137896137919%_))))))
          (declare (not safe))
          (_%g137894137973%_ _%stx137893%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self137792%_ _%stx137793%_)
        (let* ((_%g137795137820%_
                (lambda (_%g137796137817%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137796137817%_))))
               (_%g137794137889%_
                (lambda (_%g137796137823%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137796137823%_))
                      (let ((_%e137803137825%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137796137823%_))))
                        (let ((_%hd137802137828%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137803137825%_)))
                              (_%tl137801137830%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137803137825%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137801137830%_))
                              (let ((_%e137806137833%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137801137830%_))))
                                (let ((_%hd137805137836%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137806137833%_)))
                                      (_%tl137804137838%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137806137833%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137804137838%_))
                                      (let ((_%e137809137841%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137804137838%_))))
                                        (let ((_%hd137808137844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137809137841%_)))
                                              (_%tl137807137846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137809137841%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137807137846%_))
                                              (let ((_%e137812137849%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137807137846%_))))
                                                (let ((_%hd137811137852%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137812137849%_)))
                                                      (_%tl137810137854%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137812137849%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137810137854%_))
                                                      (let ((_%e137815137857%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137810137854%_))))
                (let ((_%hd137814137860%_
                       (let () (declare (not safe)) (##car _%e137815137857%_)))
                      (_%tl137813137862%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137815137857%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137813137862%_))
                      ((lambda (_%L137865%_
                                _%L137866%_
                                _%L137867%_
                                _%L137868%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137792%_
                                        _%L137866%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137792%_
                                              _%L137865%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137792%_
                                                    _%L137867%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137792%_
                                                          _%L137868%_))
                                                       (cons ''#f '())))))))
                       _%hd137814137860%_
                       _%hd137811137852%_
                       _%hd137808137844%_
                       _%hd137805137836%_)
                      (let ()
                        (declare (not safe))
                        (_%g137795137820%_ _%g137796137823%_)))))
              (let ()
                (declare (not safe))
                (_%g137795137820%_ _%g137796137823%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137795137820%_
                                                 _%g137796137823%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137795137820%_
                                         _%g137796137823%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137795137820%_ _%g137796137823%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137795137820%_ _%g137796137823%_))))))
          (declare (not safe))
          (_%g137794137889%_ _%stx137793%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self137587%_ _%stx137588%_)
        (let* ((_%g137590137611%_
                (lambda (_%g137591137608%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137591137608%_))))
               (_%g137589137789%_
                (lambda (_%g137591137614%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137591137614%_))
                      (let ((_%e137597137616%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137591137614%_))))
                        (let ((_%hd137596137619%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137597137616%_)))
                              (_%tl137595137621%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137597137616%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137595137621%_))
                              (let ((_%e137600137624%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137595137621%_))))
                                (let ((_%hd137599137627%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137600137624%_)))
                                      (_%tl137598137629%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137600137624%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137598137629%_))
                                      (let ((_%e137603137632%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137598137629%_))))
                                        (let ((_%hd137602137635%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137603137632%_)))
                                              (_%tl137601137637%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137603137632%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137601137637%_))
                                              (let ((_%e137606137640%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137601137637%_))))
                                                (let ((_%hd137605137643%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137606137640%_)))
                                                      (_%tl137604137645%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137606137640%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137604137645%_))
                                                      ((lambda (_%L137648%_
                                                                _%L137649%_
                                                                _%L137650%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (cons '##unchecked-structure-ref
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self137587%_
                                    _%L137648%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self137587%_
                                          _%L137649%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp137668%_ ((_%rest137671%_
                                         (cons _%L137649%_
                                               (cons _%L137648%_ '())))
                                        (_%bind137673%_ '())
                                        (_%args137674%_ '()))
                       (let* ((_%rest137675137683%_ _%rest137671%_)
                              (_%else137677137691%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind137673%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp145965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp145965 _%args137674%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K137679137777%_
                               (lambda (_%rest137694%_ _%e137695%_)
                                 (let* ((_%__stx145533145534%_ _%e137695%_)
                                        (_%g137700137718%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx145533145534%_)))))
                                   (let ((_%__kont145535145536%_
                                          (lambda ()
                                            (let ((__tmp145966
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137695%_))
                                                         _%args137674%_)))
                                              (declare (not safe))
                                              (_%lp137668%_
                                               _%rest137694%_
                                               _%bind137673%_
                                               __tmp145966))))
                                         (_%__kont145537145538%_
                                          (lambda ()
                                            (let ((__tmp145967
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137695%_))
                                                         _%args137674%_)))
                                              (declare (not safe))
                                              (_%lp137668%_
                                               _%rest137694%_
                                               _%bind137673%_
                                               __tmp145967))))
                                         (_%__kont145539145540%_
                                          (lambda ()
                                            (let ((_%tmp137725%_
                                                   (let ((__tmp145968
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp145968))))
                                              (let ((__tmp145970
                                                     (cons (cons _%tmp137725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__0 _%e137695%_))
                               '()))
                   _%bind137673%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145969
                                                     (cons _%tmp137725%_
                                                           _%args137674%_)))
                                                (declare (not safe))
                                                (_%lp137668%_
                                                 _%rest137694%_
                                                 __tmp145970
                                                 __tmp145969))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx145533145534%_))
                                         (let ((_%e137704137756%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx145533145534%_))))
                                           (let ((_%tl137702137761%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e137704137756%_)))
                                                 (_%hd137703137759%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e137704137756%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd137703137759%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd137703137759%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl137702137761%_))
                                                         (let ((_%e137707137764%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl137702137761%_))))
                   (let ((_%tl137705137769%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e137707137764%_)))
                         (_%hd137706137767%_
                          (let ()
                            (declare (not safe))
                            (##car _%e137707137764%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl137705137769%_))
                         (_%__kont145535145536%_)
                         (_%__kont145539145540%_))))
                 (_%__kont145539145540%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd137703137759%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl137702137761%_))
                     (let ((_%e137713137741%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl137702137761%_))))
                       (let ((_%tl137711137746%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e137713137741%_)))
                             (_%hd137712137744%_
                              (let ()
                                (declare (not safe))
                                (##car _%e137713137741%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl137711137746%_))
                             (_%__kont145537145538%_)
                             (_%__kont145539145540%_))))
                     (_%__kont145539145540%_))
                 (_%__kont145539145540%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145539145540%_))))
                                         (_%__kont145539145540%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest137675137683%_))
                             (let ((_%hd137680137780%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest137675137683%_)))
                                   (_%tl137681137782%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest137675137683%_))))
                               (let* ((_%e137785%_ _%hd137680137780%_)
                                      (_%rest137787%_ _%tl137681137782%_))
                                 (declare (not safe))
                                 (_%K137679137777%_
                                  _%rest137787%_
                                  _%e137785%_)))
                             (let ()
                               (declare (not safe))
                               (_%else137677137691%_)))))))
               _%hd137605137643%_
               _%hd137602137635%_
               _%hd137599137627%_)
              (let ()
                (declare (not safe))
                (_%g137590137611%_ _%g137591137614%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137590137611%_
                                                 _%g137591137614%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137590137611%_
                                         _%g137591137614%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137590137611%_ _%g137591137614%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137590137611%_ _%g137591137614%_))))))
          (declare (not safe))
          (_%g137589137789%_ _%stx137588%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self137366%_ _%stx137367%_)
        (let* ((_%g137369137394%_
                (lambda (_%g137370137391%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137370137391%_))))
               (_%g137368137584%_
                (lambda (_%g137370137397%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137370137397%_))
                      (let ((_%e137377137399%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137370137397%_))))
                        (let ((_%hd137376137402%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137377137399%_)))
                              (_%tl137375137404%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137377137399%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137375137404%_))
                              (let ((_%e137380137407%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137375137404%_))))
                                (let ((_%hd137379137410%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137380137407%_)))
                                      (_%tl137378137412%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137380137407%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137378137412%_))
                                      (let ((_%e137383137415%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137378137412%_))))
                                        (let ((_%hd137382137418%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137383137415%_)))
                                              (_%tl137381137420%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137383137415%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137381137420%_))
                                              (let ((_%e137386137423%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137381137420%_))))
                                                (let ((_%hd137385137426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137386137423%_)))
                                                      (_%tl137384137428%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137386137423%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137384137428%_))
                                                      (let ((_%e137389137431%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137384137428%_))))
                (let ((_%hd137388137434%_
                       (let () (declare (not safe)) (##car _%e137389137431%_)))
                      (_%tl137387137436%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137389137431%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137387137436%_))
                      ((lambda (_%L137439%_
                                _%L137440%_
                                _%L137441%_
                                _%L137442%_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137366%_
                                            _%L137440%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self137366%_
                                                  _%L137439%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self137366%_
                                                        _%L137441%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp137463%_ ((_%rest137466%_
                                                 (cons _%L137441%_
                                                       (cons _%L137439%_
                                                             (cons _%L137440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind137468%_ '())
                                                (_%args137469%_ '()))
                               (let* ((_%rest137470137478%_ _%rest137466%_)
                                      (_%else137472137486%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind137468%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp145971 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp145971 _%args137469%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K137474137572%_
                                       (lambda (_%rest137489%_ _%e137490%_)
                                         (let* ((_%__stx145579145580%_
                                                 _%e137490%_)
                                                (_%g137495137513%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx145579145580%_)))))
                                           (let ((_%__kont145581145582%_
                                                  (lambda ()
                                                    (let ((__tmp145972
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e137490%_))
                         _%args137469%_)))
              (declare (not safe))
              (_%lp137463%_ _%rest137489%_ _%bind137468%_ __tmp145972))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145583145584%_
                                                  (lambda ()
                                                    (let ((__tmp145973
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e137490%_))
                         _%args137469%_)))
              (declare (not safe))
              (_%lp137463%_ _%rest137489%_ _%bind137468%_ __tmp145973))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145585145586%_
                                                  (lambda ()
                                                    (let ((_%tmp137520%_
                                                           (let ((__tmp145974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp145974))))
              (let ((__tmp145976
                     (cons (cons _%tmp137520%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e137490%_))
                                       '()))
                           _%bind137468%_))
                    (__tmp145975 (cons _%tmp137520%_ _%args137469%_)))
                (declare (not safe))
                (_%lp137463%_ _%rest137489%_ __tmp145976 __tmp145975))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx145579145580%_))
                                                 (let ((_%e137499137551%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx145579145580%_))))
                                                   (let ((_%tl137497137556%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137499137551%_)))
                                                         (_%hd137498137554%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137499137551%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd137498137554%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd137498137554%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl137497137556%_))
                         (let ((_%e137502137559%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl137497137556%_))))
                           (let ((_%tl137500137564%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e137502137559%_)))
                                 (_%hd137501137562%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e137502137559%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl137500137564%_))
                                 (_%__kont145581145582%_)
                                 (_%__kont145585145586%_))))
                         (_%__kont145585145586%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd137498137554%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl137497137556%_))
                             (let ((_%e137508137536%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl137497137556%_))))
                               (let ((_%tl137506137541%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e137508137536%_)))
                                     (_%hd137507137539%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e137508137536%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl137506137541%_))
                                     (_%__kont145583145584%_)
                                     (_%__kont145585145586%_))))
                             (_%__kont145585145586%_))
                         (_%__kont145585145586%_)))
                 (_%__kont145585145586%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145585145586%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest137470137478%_))
                                     (let ((_%hd137475137575%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest137470137478%_)))
                                           (_%tl137476137577%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest137470137478%_))))
                                       (let* ((_%e137580%_ _%hd137475137575%_)
                                              (_%rest137582%_
                                               _%tl137476137577%_))
                                         (declare (not safe))
                                         (_%K137474137572%_
                                          _%rest137582%_
                                          _%e137580%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%else137472137486%_)))))))
                       _%hd137388137434%_
                       _%hd137385137426%_
                       _%hd137382137418%_
                       _%hd137379137410%_)
                      (let ()
                        (declare (not safe))
                        (_%g137369137394%_ _%g137370137397%_)))))
              (let ()
                (declare (not safe))
                (_%g137369137394%_ _%g137370137397%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137369137394%_
                                                 _%g137370137397%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137369137394%_
                                         _%g137370137397%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137369137394%_ _%g137370137397%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137369137394%_ _%g137370137397%_))))))
          (declare (not safe))
          (_%g137368137584%_ _%stx137367%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self137205%_ _%stx137206%_)
        (letrec ((_%import-set-template137208%_
                  (lambda (_%in137311%_ _%phi137312%_)
                    (let ((_%iphi137314%_
                           (fx+ _%phi137312%_
                                (##direct-structure-ref
                                 _%in137311%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports137315%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in137311%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp137317%_ ((_%rest137319%_ _%imports137315%_)
                                         (_%r137320%_ '()))
                        (let* ((_%rest137321137329%_ _%rest137319%_)
                               (_%else137323137337%_ (lambda () _%r137320%_))
                               (_%K137325137354%_
                                (lambda (_%rest137340%_ _%in137341%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in137341%_
                                         'gx#module-context::t))
                                      (let ()
                                        (if (let ()
                                              (declare (not safe))
                                              (##fxzero? _%iphi137314%_))
                                            (let ((__tmp145977
                                                   (cons _%in137341%_
                                                         _%r137320%_)))
                                              (declare (not safe))
                                              (_%lp137317%_
                                               _%rest137340%_
                                               __tmp145977))
                                            (let ()
                                              (declare (not safe))
                                              (_%lp137317%_
                                               _%rest137340%_
                                               _%r137320%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in137341%_
                                             'gx#module-import::t))
                                          (let ((_%iphi137345%_
                                                 (fx+ _%phi137312%_
                                                      (##direct-structure-ref
                                                       _%in137341%_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi137345%_))
                                                (let ((__tmp145978
                                                       (cons (##direct-structure-ref
                                                              (##direct-structure-ref
                                                               _%in137341%_
                                                               '1
                                                               gx#module-import::t
                                                               '#f)
                                                              '1
                                                              gx#module-export::t
                                                              '#f)
                                                             _%r137320%_)))
                                                  (declare (not safe))
                                                  (_%lp137317%_
                                                   _%rest137340%_
                                                   __tmp145978))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%lp137317%_
                                                   _%rest137340%_
                                                   _%r137320%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in137341%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi137348%_
                                                     (fx+ _%iphi137314%_
                                                          (##direct-structure-ref
                                                           _%in137341%_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi137348%_))
                                                    (let ((__tmp145979
                                                           (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in137341%_
                          '1
                          gx#import-set::t
                          '#f)
                         _%r137320%_)))
              (declare (not safe))
              (_%lp137317%_ _%rest137340%_ __tmp145979))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi137348%_))
                                                        (let ((__tmp145980
                                                               (let ((__tmp145981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_%import-set-template137208%_
                                 _%in137341%_
                                 _%iphi137314%_))))
                         (declare (not safe))
                         (__foldl1 cons _%r137320%_ __tmp145981))))
                  (declare (not safe))
                  (_%lp137317%_ _%rest137340%_ __tmp145980))
                (let ()
                  (declare (not safe))
                  (_%lp137317%_ _%rest137340%_ _%r137320%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%lp137317%_
                                                 _%rest137340%_
                                                 _%r137320%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest137321137329%_))
                              (let ((_%hd137326137357%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest137321137329%_)))
                                    (_%tl137327137359%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest137321137329%_))))
                                (let* ((_%in137362%_ _%hd137326137357%_)
                                       (_%rest137364%_ _%tl137327137359%_))
                                  (declare (not safe))
                                  (_%K137325137354%_
                                   _%rest137364%_
                                   _%in137362%_)))
                              (let ()
                                (declare (not safe))
                                (_%else137323137337%_)))))))))
          (let* ((_%g137210137220%_
                  (lambda (_%g137211137217%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137211137217%_))))
                 (_%g137209137308%_
                  (lambda (_%g137211137223%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137211137223%_))
                        (let ((_%e137215137225%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137211137223%_))))
                          (let ((_%hd137214137228%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137215137225%_)))
                                (_%tl137213137230%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137215137225%_))))
                            ((lambda (_%L137233%_)
                               (let ((_%ht137244%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp137246%_ ((_%rest137248%_
                                                     _%L137233%_)
                                                    (_%loads137249%_ '()))
                                   (letrec ((_%K137251%_
                                             (lambda (_%ctx137301%_
                                                      _%rest137302%_)
                                               (let ((_%id137304%_
                                                      (##structure-ref
                                                       _%ctx137301%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _%ht137244%_
                                                        _%id137304%_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%lp137246%_
                                                        _%rest137302%_
                                                        _%loads137249%_))
                                                     (let ((_%rt137306%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id137304%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%ht137244%_
                                                          _%id137304%_
                                                          _%rt137306%_))
                                                       (let ((__tmp145982
                                                              (cons _%rt137306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%loads137249%_)))
                 (declare (not safe))
                 (_%lp137246%_ _%rest137302%_ __tmp145982))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_%rest137252137260%_
                                             _%rest137248%_)
                                            (_%else137254137272%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp145984
                                                            (lambda (_%g137267137269%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g137267137269%_)))
                   (__tmp145983 (reverse _%loads137249%_)))
               (declare (not safe))
               (##map __tmp145984 __tmp145983)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K137256137289%_
                                             (lambda (_%rest137275%_
                                                      _%in137276%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in137276%_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%K137251%_
                                                      _%in137276%_
                                                      _%rest137275%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in137276%_
                                                          'gx#module-import::t))
                                                       (let ()
                                                         (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%in137276%_
                               '3
                               gx#module-import::t
                               '#f))
                     (let ((__tmp145985
                            (##direct-structure-ref
                             (##direct-structure-ref
                              _%in137276%_
                              '1
                              gx#module-import::t
                              '#f)
                             '1
                             gx#module-export::t
                             '#f)))
                       (declare (not safe))
                       (_%K137251%_ __tmp145985 _%rest137275%_))
                     (let ()
                       (declare (not safe))
                       (_%lp137246%_ _%rest137275%_ _%loads137249%_))))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in137276%_
                      'gx#import-set::t))
                   (let ((_%phi137281%_
                          (##direct-structure-ref
                           _%in137276%_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (fxzero? _%phi137281%_)
                         (let ((__tmp145986
                                (##direct-structure-ref
                                 _%in137276%_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_%K137251%_ __tmp145986 _%rest137275%_))
                         (if (fxpositive? _%phi137281%_)
                             (let ()
                               (let* ((_%deps137285%_
                                       (let ()
                                         (declare (not safe))
                                         (_%import-set-template137208%_
                                          _%in137276%_
                                          '0)))
                                      (__tmp145987
                                       (let ()
                                         (declare (not safe))
                                         (__foldl1
                                          cons
                                          _%rest137275%_
                                          _%deps137285%_))))
                                 (declare (not safe))
                                 (_%lp137246%_ __tmp145987 _%loads137249%_)))
                             (let ()
                               (declare (not safe))
                               (_%lp137246%_
                                _%rest137275%_
                                _%loads137249%_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx137206%_
                      _%in137276%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest137252137260%_))
                                           (let ((_%hd137257137292%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest137252137260%_)))
                                                 (_%tl137258137294%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest137252137260%_))))
                                             (let* ((_%in137297%_
                                                     _%hd137257137292%_)
                                                    (_%rest137299%_
                                                     _%tl137258137294%_))
                                               (declare (not safe))
                                               (_%K137256137289%_
                                                _%rest137299%_
                                                _%in137297%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%else137254137272%_))))))))
                             _%tl137213137230%_)))
                        (let ()
                          (declare (not safe))
                          (_%g137210137220%_ _%g137211137223%_))))))
            (declare (not safe))
            (_%g137209137308%_ _%stx137206%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self137018%_ _%stx137019%_)
        (letrec ((_%add-lift!137021%_
                  (lambda (_%expr137203%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr137203%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote137022%_
                  (lambda (_%id137200%_ _%marks137201%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id137200%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks137201%_
                                                        '()))))))))
                 (_%generate-simple137023%_
                  (lambda (_%stxq137195%_)
                    (let ((_%gid137197%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid137198%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq137195%_))))
                      (let ((__tmp145988
                             (cons 'define
                                   (cons _%gid137197%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_%generate-syntax-quote137022%_
                                                  _%qid137198%_
                                                  ''()))
                                               '())))))
                        (declare (not safe))
                        (_%add-lift!137021%_ __tmp145988))
                      (let ((__tmp145989
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145989 _%stxq137195%_ _%gid137197%_))
                      _%gid137197%_)))
                 (_%generate-serialized137024%_
                  (lambda (_%stxq137185%_ _%marks137186%_)
                    (let* ((_%mark-refs137188%_
                            (map _%generate-mark137025%_ _%marks137186%_))
                           (_%gid137190%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid137192%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq137185%_))))
                      (let ((__tmp145990
                             (cons 'define
                                   (cons _%gid137190%_
                                         (cons (let ((__tmp145991
                                                      (cons 'list
                                                            _%mark-refs137188%_)))
                                                 (declare (not safe))
                                                 (_%generate-syntax-quote137022%_
                                                  _%qid137192%_
                                                  __tmp145991))
                                               '())))))
                        (declare (not safe))
                        (_%add-lift!137021%_ __tmp145990))
                      (let ((__tmp145992
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145992 _%stxq137185%_ _%gid137190%_))
                      _%gid137190%_)))
                 (_%generate-mark137025%_
                  (lambda (_%mark137170%_)
                    (let ((_%$e137172%_
                           (let ((__tmp145993
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp145993 _%mark137170%_))))
                      (if _%$e137172%_
                          (values _%$e137172%_)
                          (let ()
                            (let* ((_%gid137176%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-temporary__% '#t)))
                                   (_%repr137178%_
                                    (let ()
                                      (declare (not safe))
                                      (_%serialize-mark137026%_
                                       _%mark137170%_)))
                                   (_%ctx137180%_
                                    (let ((__tmp145994
                                           (##structure-ref
                                            _%mark137170%_
                                            '2
                                            gx#expander-mark::t
                                            '#f)))
                                      (declare (not safe))
                                      (gx#core-context-top__1 __tmp145994)))
                                   (_%ctx-ref137182%_
                                    (if (eq? _%ctx137180%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#current-expander-context)))
                                        '(gx#current-expander-context)
                                        (cons 'gx#import-module
                                              (cons (cons 'quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_%context-ref137027%_ _%ctx137180%_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              (let ((__tmp145995
                                     (let ()
                                       (declare (not safe))
                                       (gxc#current-compile-marks))))
                                (declare (not safe))
                                (hash-put!
                                 __tmp145995
                                 _%mark137170%_
                                 _%gid137176%_))
                              (let ((__tmp145996
                                     (cons 'define
                                           (cons _%gid137176%_
                                                 (cons (cons 'gx#core-deserialize-mark
                                                             (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%repr137178%_ '()))
                           (cons _%ctx-ref137182%_ '())))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (declare (not safe))
                                (_%add-lift!137021%_ __tmp145996))
                              _%gid137176%_))))))
                 (_%serialize-mark137026%_
                  (lambda (_%mark137117%_)
                    (letrec ((_%quote-e137119%_
                              (lambda (_%sym137168%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym137168%_))
                                    _%sym137168%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym137168%_))))))
                      (let* ((_%mark137120137129%_ _%mark137117%_)
                             (_%E137122137133%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark137120137129%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K137123137145%_
                              (lambda (_%trace137136%_
                                       _%phi137137%_
                                       _%ctx137138%_
                                       _%subst137139%_)
                                (let ((_%subs137141%_
                                       (if _%subst137139%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst137139%_))
                                           '())))
                                  (cons _%phi137137%_
                                        (map (lambda (_%pair137143%_)
                                               (cons (let ((__tmp145997
                                                            (car _%pair137143%_)))
                                                       (declare (not safe))
                                                       (_%quote-e137119%_
                                                        __tmp145997))
                                                     (let ((__tmp145998
                                                            (cdr _%pair137143%_)))
                                                       (declare (not safe))
                                                       (_%quote-e137119%_
                                                        __tmp145998))))
                                             _%subs137141%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark137120137129%_
                               'gx#expander-mark::t))
                            (let* ((_%e137124137148%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark137120137129%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst137151%_ _%e137124137148%_)
                                   (_%e137125137153%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark137120137129%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx137156%_ _%e137125137153%_)
                                   (_%e137126137158%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark137120137129%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi137161%_ _%e137126137158%_)
                                   (_%e137127137163%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark137120137129%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace137166%_ _%e137127137163%_))
                              (declare (not safe))
                              (_%K137123137145%_
                               _%trace137166%_
                               _%phi137161%_
                               _%ctx137156%_
                               _%subst137151%_))
                            (let ()
                              (declare (not safe))
                              (_%E137122137133%_)))))))
                 (_%context-ref137027%_
                  (lambda (_%ctx137104%_)
                    (if (let ((__tmp145999
                               (##structure-ref
                                _%ctx137104%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp145999
                           'gx#module-context::t))
                        (let ((_%ctx-ref137106%_
                               (let ()
                                 (declare (not safe))
                                 (_%context-ref-nested137029%_ _%ctx137104%_)))
                              (_%ctx-origin137107%_
                               (let ()
                                 (declare (not safe))
                                 (_%context-ref-origin137028%_ _%ctx137104%_)))
                              (_%origin137108%_
                               (let ((__tmp146000
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (_%context-ref-origin137028%_ __tmp146000))))
                          (if (eq? _%origin137108%_ _%ctx-origin137107%_)
                              (let ((_%ref137110%_
                                     (let ((__tmp146001
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-context))))
                                       (declare (not safe))
                                       (_%context-ref-nested137029%_
                                        __tmp146001))))
                                (let _%lp137112%_ ((_%ref137114%_
                                                    (cdr _%ref137110%_))
                                                   (_%ctx-ref137115%_
                                                    (cdr _%ctx-ref137106%_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _%ref137114%_))
                                           (eq? (car _%ref137114%_)
                                                (car _%ctx-ref137115%_)))
                                      (let ((__tmp146003 (cdr _%ref137114%_))
                                            (__tmp146002
                                             (cdr _%ctx-ref137115%_)))
                                        (declare (not safe))
                                        (_%lp137112%_ __tmp146003 __tmp146002))
                                      (cons '#f _%ctx-ref137115%_))))
                              _%ctx-ref137106%_))
                        (let ((__tmp146004
                               (##structure-ref
                                _%ctx137104%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp146004)))))
                 (_%context-ref-origin137028%_
                  (lambda (_%ctx137096%_)
                    (let _%lp137098%_ ((_%ctx137100%_ _%ctx137096%_))
                      (let ((_%super137102%_
                             (##structure-ref
                              _%ctx137100%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super137102%_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_%lp137098%_ _%super137102%_))
                            _%ctx137100%_)))))
                 (_%context-ref-nested137029%_
                  (lambda (_%ctx137087%_)
                    (let _%lp137089%_ ((_%ctx137091%_ _%ctx137087%_)
                                       (_%r137092%_ '()))
                      (let ((_%super137094%_
                             (##structure-ref
                              _%ctx137091%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super137094%_
                               'gx#module-context::t))
                            (let ((__tmp146005
                                   (cons (car (##structure-ref
                                               _%ctx137091%_
                                               '7
                                               gx#module-context::t
                                               '#f))
                                         _%r137092%_)))
                              (declare (not safe))
                              (_%lp137089%_ _%super137094%_ __tmp146005))
                            (cons (let ((__tmp146006
                                         (##structure-ref
                                          _%ctx137091%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp146006))
                                  _%r137092%_)))))))
          (let* ((_%g137031137044%_
                  (lambda (_%g137032137041%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137032137041%_))))
                 (_%g137030137084%_
                  (lambda (_%g137032137047%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137032137047%_))
                        (let ((_%e137036137049%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137032137047%_))))
                          (let ((_%hd137035137052%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137036137049%_)))
                                (_%tl137034137054%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137036137049%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl137034137054%_))
                                (let ((_%e137039137057%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl137034137054%_))))
                                  (let ((_%hd137038137060%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137039137057%_)))
                                        (_%tl137037137062%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137039137057%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl137037137062%_))
                                        ((lambda (_%L137065%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L137065%_))
                                               (let ((_%$e137078%_
                                                      (let ((__tmp146007
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp146007 _%L137065%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e137078%_
                                                     (values _%$e137078%_)
                                                     (let ((_%marks137082%_
                                                            (##direct-structure-ref
                                                             _%L137065%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _%marks137082%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-simple137023%_
                                                              _%L137065%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-serialized137024%_
                                                              _%L137065%_
                                                              _%marks137082%_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L137065%_))))
                                         _%hd137038137060%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g137031137044%_
                                           _%g137032137047%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g137031137044%_ _%g137032137047%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g137031137044%_ _%g137032137047%_))))))
            (declare (not safe))
            (_%g137030137084%_ _%stx137019%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self136950%_ _%stx136951%_)
        (let* ((_%g136953136970%_
                (lambda (_%g136954136967%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136954136967%_))))
               (_%g136952137015%_
                (lambda (_%g136954136973%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136954136973%_))
                      (let ((_%e136959136975%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136954136973%_))))
                        (let ((_%hd136958136978%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136959136975%_)))
                              (_%tl136957136980%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136959136975%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136957136980%_))
                              (let ((_%e136962136983%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136957136980%_))))
                                (let ((_%hd136961136986%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136962136983%_)))
                                      (_%tl136960136988%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136962136983%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136960136988%_))
                                      (let ((_%e136965136991%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136960136988%_))))
                                        (let ((_%hd136964136994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136965136991%_)))
                                              (_%tl136963136996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136965136991%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136963136996%_))
                                              ((lambda (_%L136999%_
                                                        _%L137000%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L137000%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self136950%_ _%L136999%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd136964136994%_
                                               _%hd136961136986%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g136953136970%_
                                                 _%g136954136973%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g136953136970%_
                                         _%g136954136973%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g136953136970%_ _%g136954136973%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136953136970%_ _%g136954136973%_))))))
          (declare (not safe))
          (_%g136952137015%_ _%stx136951%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self136899%_ _%stx136900%_)
        (let* ((_%g136902136912%_
                (lambda (_%g136903136909%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136903136909%_))))
               (_%g136901136947%_
                (lambda (_%g136903136915%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136903136915%_))
                      (let ((_%e136907136917%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136903136915%_))))
                        (let ((_%hd136906136920%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136907136917%_)))
                              (_%tl136905136922%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136907136917%_))))
                          ((lambda (_%L136925%_)
                             (let* ((_%c-body136939%_
                                     (map (lambda (_%g136934136936%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self136899%_
                                               _%g136934136936%_)))
                                          _%L136925%_))
                                    (_%c-body136944%_
                                     (let ((__tmp146008
                                            (lambda (_%$obj136941%_)
                                              (let ((__tmp146009
                                                     (let ()
                                                       (declare (not safe))
                                                       (eq? _%$obj136941%_
                                                            '#!void))))
                                                (declare (not safe))
                                                (not __tmp146009)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp146008
                                        _%c-body136939%_))))
                               (cons '%#begin _%c-body136944%_)))
                           _%tl136905136922%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136902136912%_ _%g136903136915%_))))))
          (declare (not safe))
          (_%g136901136947%_ _%stx136900%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self136804%_ _%stx136805%_)
        (let* ((_%g136807136817%_
                (lambda (_%g136808136814%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136808136814%_))))
               (_%g136806136896%_
                (lambda (_%g136808136820%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136808136820%_))
                      (let ((_%e136812136822%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136808136820%_))))
                        (let ((_%hd136811136825%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136812136822%_)))
                              (_%tl136810136827%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136812136822%_))))
                          ((lambda (_%L136830%_)
                             (let* ((_%phi136840%_
                                     (let ((__tmp146010
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp146010 '1)))
                                    (_%block136842%_
                                     (let ((__tmp146011
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _%self136804%_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp146011
                                        _%phi136840%_)))
                                    (_%compiled136845%_
                                     (let ((__tmp146012
                                            (lambda ()
                                              (let ((__tmp146014
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self136804%_
                                                        'state)))
                                                    (__tmp146013
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%L136830%_)))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi__%
                                                 '#f
                                                 __tmp146014
                                                 __tmp146013)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp146012
                                        gx#current-expander-phi
                                        _%phi136840%_))))
                               (let* ((_%g136848136858%_
                                       (lambda (_%g136849136855%_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g136849136855%_))))
                                      (_%g136847136893%_
                                       (lambda (_%g136849136861%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%g136849136861%_))
                                             (let ((_%e136853136863%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%g136849136861%_))))
                                               (let ((_%hd136852136866%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e136853136863%_)))
                                                     (_%tl136851136868%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e136853136863%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd136852136866%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _%hd136852136866%_))
                                                         ((lambda (_%L136871%_)
                                                            (let ((_%c-body136888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_%$obj136885%_)
                                     (let ((__tmp146015
                                            (let ()
                                              (declare (not safe))
                                              (eq? _%$obj136885%_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp146015)))
                                   _%L136871%_)))
                      (if _%block136842%_
                          (let ()
                            (cons '%#begin-syntax
                                  (cons (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'load-module
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons _%block136842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%c-body136888%_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _%c-body136888%_))
                              (let () '#!void)
                              (let ()
                                (cons '%#begin-syntax _%c-body136888%_))))))
                  _%tl136851136868%_)
                 (let ()
                   (declare (not safe))
                   (_%g136848136858%_ _%g136849136861%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g136848136858%_
                                                        _%g136849136861%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g136848136858%_
                                                _%g136849136861%_))))))
                                 (declare (not safe))
                                 (_%g136847136893%_ _%compiled136845%_))))
                           _%tl136810136827%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136807136817%_ _%g136808136820%_))))))
          (declare (not safe))
          (_%g136806136896%_ _%stx136805%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self136735%_ _%stx136736%_)
        (let ((__tmp146016
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self136735%_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp146016))
        (let* ((_%g136738136752%_
                (lambda (_%g136739136749%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136739136749%_))))
               (_%g136737136801%_
                (lambda (_%g136739136755%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136739136755%_))
                      (let ((_%e136744136757%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136739136755%_))))
                        (let ((_%hd136743136760%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136744136757%_)))
                              (_%tl136742136762%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136744136757%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136742136762%_))
                              (let ((_%e136747136765%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136742136762%_))))
                                (let ((_%hd136746136768%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136747136765%_)))
                                      (_%tl136745136770%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136747136765%_))))
                                  ((lambda (_%L136773%_ _%L136774%_)
                                     (let ((_%key136787%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L136774%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key136787%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx136736%_
                                              _%L136774%_
                                              _%key136787%_)))
                                       (let* ((_%ctx136789%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L136774%_)))
                                              (_%code136792%_
                                               (let ((__tmp146017
                                                      (lambda ()
                                                        (let ((__tmp146018
                                                               (##structure-ref
                                                                _%ctx136789%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self136735%_
                                                           __tmp146018)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp146017
                                                  gx#current-expander-context
                                                  _%ctx136789%_)))
                                              (_%rt136794%_
                                               (let ((__tmp146019
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp146019
                                                  _%ctx136789%_)))
                                              (_%loader136796%_
                                               (if _%rt136794%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt136794%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid136798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L136774%_))))
                                         (let ((__tmp146020
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self136735%_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp146020))
                                         (cons '%#module
                                               (cons _%modid136798%_
                                                     (cons _%code136792%_
                                                           _%loader136796%_))))))
                                   _%tl136745136770%_
                                   _%hd136746136768%_)))
                              (let ()
                                (declare (not safe))
                                (_%g136738136752%_ _%g136739136755%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136738136752%_ _%g136739136755%_))))))
          (declare (not safe))
          (_%g136737136801%_ _%stx136736%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx136722%_ _%context-chain136723%_)
        (let _%lp136725%_ ((_%ctx136727%_ _%ctx136722%_) (_%path136728%_ '()))
          (let ((_%super136730%_
                 (##structure-ref _%ctx136727%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super136730%_ _%context-chain136723%_)
                (let ((__tmp146021
                       (let ((__tmp146022
                              (car (##structure-ref
                                    _%ctx136727%_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp146022 _%path136728%_))))
                  (declare (not safe))
                  (cons '#f __tmp146021))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super136730%_
                       'gx#module-context::t))
                    (let ((__tmp146023
                           (cons (car (##structure-ref
                                       _%ctx136727%_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _%path136728%_)))
                      (declare (not safe))
                      (_%lp136725%_ _%super136730%_ __tmp146023))
                    (let ()
                      (cons (let ((__tmp146024
                                   (##structure-ref
                                    _%ctx136727%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (make-symbol__1 '":" __tmp146024))
                            _%path136728%_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp136715%_ ((_%ctx136717%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r136718%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx136717%_ 'gx#module-context::t))
              (let ((__tmp146026
                     (##structure-ref _%ctx136717%_ '3 gx#phi-context::t '#f))
                    (__tmp146025 (cons _%ctx136717%_ _%r136718%_)))
                (declare (not safe))
                (_%lp136715%_ __tmp146026 __tmp146025))
              (let () _%r136718%_)))))
    (define gxc#generate-meta-import%
      (lambda (_%self136478%_ _%stx136479%_)
        (letrec* ((_%context-chain136481%_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_%make-import-spec136482%_
                   (lambda (_%in136651%_)
                     (let* ((_%in136652136664%_ _%in136651%_)
                            (_%E136654136668%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in136652136664%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K136655136678%_
                             (lambda (_%phi136671%_
                                      _%name136672%_
                                      _%src-name136673%_
                                      _%src-phi136674%_
                                      _%src-key136675%_
                                      _%src-ctx136676%_)
                               (cons _%phi136671%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name136672%_))
                                           (cons _%src-phi136674%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name136673%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in136652136664%_
                              'gx#module-import::t))
                           (let ((_%e136656136681%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in136652136664%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e136656136681%_
                                    'gx#module-export::t))
                                 (let* ((_%e136659136684%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136656136681%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx136687%_ _%e136659136684%_)
                                        (_%e136660136689%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136656136681%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key136692%_ _%e136660136689%_)
                                        (_%e136661136694%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136656136681%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi136697%_ _%e136661136694%_)
                                        (_%e136662136699%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136656136681%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name136702%_ _%e136662136699%_)
                                        (_%e136657136704%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in136652136664%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name136707%_ _%e136657136704%_)
                                        (_%e136658136709%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in136652136664%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi136712%_ _%e136658136709%_))
                                   (declare (not safe))
                                   (_%K136655136678%_
                                    _%phi136712%_
                                    _%name136707%_
                                    _%src-name136702%_
                                    _%src-phi136697%_
                                    _%src-key136692%_
                                    _%src-ctx136687%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%E136654136668%_))))
                           (let ()
                             (declare (not safe))
                             (_%E136654136668%_))))))
                  (_%make-import-path136483%_
                   (lambda (_%ctx136649%_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _%ctx136649%_
                        _%context-chain136481%_))))
                  (_%make-import-spec-in136484%_
                   (lambda (_%ctx136646%_ _%in136647%_)
                     (cons 'spec:
                           (cons (let ()
                                   (declare (not safe))
                                   (_%make-import-path136483%_ _%ctx136646%_))
                                 (reverse _%in136647%_))))))
          (let ((__tmp146027
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self136478%_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp146027))
          (let* ((_%g136486136496%_
                  (lambda (_%g136487136493%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136487136493%_))))
                 (_%g136485136643%_
                  (lambda (_%g136487136499%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136487136499%_))
                        (let ((_%e136491136501%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136487136499%_))))
                          (let ((_%hd136490136504%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136491136501%_)))
                                (_%tl136489136506%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136491136501%_))))
                            ((lambda (_%L136509%_)
                               (let _%lp136520%_ ((_%rest136522%_ _%L136509%_)
                                                  (_%current-src136523%_ '#f)
                                                  (_%current-in136524%_ '())
                                                  (_%r136525%_ '()))
                                 (let* ((_%rest136526136534%_ _%rest136522%_)
                                        (_%else136528136544%_
                                         (lambda ()
                                           (let ((_%r136542%_
                                                  (if _%current-src136523%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%make-import-spec-in136484%_
                                                               _%current-src136523%_
                                                               _%current-in136524%_))
                                                            _%r136525%_)
                                                      _%r136525%_)))
                                             (cons '%#import
                                                   (reverse _%r136542%_)))))
                                        (_%K136530136631%_
                                         (lambda (_%rest136547%_ _%in136548%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in136548%_
                                                  'gx#module-import::t))
                                               (let ()
                                                 (let* ((_%in136550136557%_
                                                         _%in136548%_)
                                                        (_%E136552136561%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%in136550136557%_
                            '((module-import (module-export src-ctx)))))
                   '#!void))
                (_%K136553136569%_
                 (lambda (_%src-ctx136564%_)
                   (if (eq? _%current-src136523%_ _%src-ctx136564%_)
                       (let ((__tmp146028
                              (cons (let ()
                                      (declare (not safe))
                                      (_%make-import-spec136482%_
                                       _%in136548%_))
                                    _%current-in136524%_)))
                         (declare (not safe))
                         (_%lp136520%_
                          _%rest136547%_
                          _%current-src136523%_
                          __tmp146028
                          _%r136525%_))
                       (if _%current-src136523%_
                           (let ((__tmp146030
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%make-import-spec136482%_
                                           _%in136548%_))
                                        '()))
                                 (__tmp146029
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%make-import-spec-in136484%_
                                           _%current-src136523%_
                                           _%current-in136524%_))
                                        _%r136525%_)))
                             (declare (not safe))
                             (_%lp136520%_
                              _%rest136547%_
                              _%src-ctx136564%_
                              __tmp146030
                              __tmp146029))
                           (let ((__tmp146031
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%make-import-spec136482%_
                                           _%in136548%_))
                                        '())))
                             (declare (not safe))
                             (_%lp136520%_
                              _%rest136547%_
                              _%src-ctx136564%_
                              __tmp146031
                              _%r136525%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in136550136557%_
                                                          'gx#module-import::t))
                                                       (let ((_%e136554136572%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%in136550136557%_
                         '1
                         '#f
                         '#f))))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        _%e136554136572%_
                        'gx#module-export::t))
                     (let* ((_%e136555136575%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%e136554136572%_
                                '1
                                '#f
                                '#f)))
                            (_%src-ctx136578%_ _%e136555136575%_))
                       (declare (not safe))
                       (_%K136553136569%_ _%src-ctx136578%_))
                     (let () (declare (not safe)) (_%E136552136561%_))))
               (let () (declare (not safe)) (_%E136552136561%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in136548%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (let* ((_%phi136581%_
                                                             (##direct-structure-ref
                                                              _%in136548%_
                                                              '2
                                                              gx#import-set::t
                                                              '#f))
                                                            (_%src136583%_
                                                             (##direct-structure-ref
                                                              _%in136548%_
                                                              '1
                                                              gx#import-set::t
                                                              '#f))
                                                            (_%src-in136623%_
                                                             (let* ((_%g136584136593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_%make-import-path136483%_ _%src136583%_)))
                            (_%E136587136597%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g136584136593%_
                                        '([path])
                                        '(path)))
                               '#!void)))
                       (let ((_%K136589136613%_
                              (lambda (_%path136611%_) _%path136611%_))
                             (_%K136588136603%_
                              (lambda (_%path136601%_)
                                (cons 'in: _%path136601%_))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%g136584136593%_))
                             (let ((_%tl136591136618%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g136584136593%_)))
                                   (_%hd136590136616%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g136584136593%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl136591136618%_))
                                   (let ((_%path136621%_ _%hd136590136616%_))
                                     (declare (not safe))
                                     (_%K136589136613%_ _%path136621%_))
                                   (let ((_%path136606%_ _%g136584136593%_))
                                     (declare (not safe))
                                     (_%K136588136603%_ _%path136606%_))))
                             (let ((_%path136606%_ _%g136584136593%_))
                               (declare (not safe))
                               (_%K136588136603%_ _%path136606%_))))))
                    (_%r136625%_
                     (if _%current-src136523%_
                         (cons (let ()
                                 (declare (not safe))
                                 (_%make-import-spec-in136484%_
                                  _%current-src136523%_
                                  _%current-in136524%_))
                               _%r136525%_)
                         _%r136525%_))
                    (__tmp146032
                     (cons (if (fxzero? _%phi136581%_)
                               _%src-in136623%_
                               (cons 'phi:
                                     (cons _%phi136581%_
                                           (cons _%src-in136623%_ '()))))
                           _%r136625%_)))
               (declare (not safe))
               (_%lp136520%_ _%rest136547%_ '#f '() __tmp146032)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in136548%_
                                                          'gx#module-context::t))
                                                       (let ()
                                                         (let* ((_%r136629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if _%current-src136523%_
                             (cons (let ()
                                     (declare (not safe))
                                     (_%make-import-spec-in136484%_
                                      _%current-src136523%_
                                      _%current-in136524%_))
                                   _%r136525%_)
                             _%r136525%_))
                        (__tmp146033
                         (cons (cons 'runtime:
                                     (let ()
                                       (declare (not safe))
                                       (_%make-import-path136483%_
                                        _%in136548%_)))
                               _%r136629%_)))
                   (declare (not safe))
                   (_%lp136520%_ _%rest136547%_ '#f '() __tmp146033)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest136526136534%_))
                                       (let ((_%hd136531136634%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest136526136534%_)))
                                             (_%tl136532136636%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest136526136534%_))))
                                         (let* ((_%in136639%_
                                                 _%hd136531136634%_)
                                                (_%rest136641%_
                                                 _%tl136532136636%_))
                                           (declare (not safe))
                                           (_%K136530136631%_
                                            _%rest136641%_
                                            _%in136639%_)))
                                       (let ()
                                         (declare (not safe))
                                         (_%else136528136544%_))))))
                             _%tl136489136506%_)))
                        (let ()
                          (declare (not safe))
                          (_%g136486136496%_ _%g136487136499%_))))))
            (declare (not safe))
            (_%g136485136643%_ _%stx136479%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self136288%_ _%stx136289%_)
        (letrec* ((_%context-chain136291%_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_%make-import-path136292%_
                   (lambda (_%ctx136476%_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _%ctx136476%_
                        _%context-chain136291%_)))))
          (let* ((_%g136294136304%_
                  (lambda (_%g136295136301%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136295136301%_))))
                 (_%g136293136473%_
                  (lambda (_%g136295136307%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136295136307%_))
                        (let ((_%e136299136309%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136295136307%_))))
                          (let ((_%hd136298136312%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136299136309%_)))
                                (_%tl136297136314%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136299136309%_))))
                            ((lambda (_%L136317%_)
                               (let _%lp136328%_ ((_%rest136330%_ _%L136317%_)
                                                  (_%r136331%_ '()))
                                 (let* ((_%rest136332136340%_ _%rest136330%_)
                                        (_%else136334136348%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r136331%_))))
                                        (_%K136336136461%_
                                         (lambda (_%rest136351%_ _%out136352%_)
                                           (let* ((_%out136353136366%_
                                                   _%out136352%_)
                                                  (_%E136356136370%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out136353136366%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K136360136440%_
                                                    (lambda (_%name136436%_
                                                             _%phi136437%_
                                                             _%key136438%_)
                                                      (let ((__tmp146034
                                                             (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%phi136437%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%key136438%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-identifier-key
                                                      _%name136436%_))
                                                   '()))))
                           _%r136331%_)))
                (declare (not safe))
                (_%lp136328%_ _%rest136351%_ __tmp146034))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K136357136420%_
                                                    (lambda (_%phi136374%_
                                                             _%src136375%_)
                                                      (let* ((_%out136415%_
                                                              (if _%src136375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g136376136385%_
                                              (let ()
                                                (declare (not safe))
                                                (_%make-import-path136292%_
                                                 _%src136375%_)))
                                             (_%E136379136389%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g136376136385%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K136381136405%_
                                               (lambda (_%path136403%_)
                                                 _%path136403%_))
                                              (_%K136380136395%_
                                               (lambda (_%path136393%_)
                                                 (cons 'in: _%path136393%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g136376136385%_))
                                              (let ((_%tl136383136410%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g136376136385%_)))
                                                    (_%hd136382136408%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g136376136385%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl136383136410%_))
                                                    (let ((_%path136413%_
                                                           _%hd136382136408%_))
                                                      (declare (not safe))
                                                      (_%K136381136405%_
                                                       _%path136413%_))
                                                    (let ((_%path136398%_
                                                           _%g136376136385%_))
                                                      (declare (not safe))
                                                      (_%K136380136395%_
                                                       _%path136398%_))))
                                              (let ((_%path136398%_
                                                     _%g136376136385%_))
                                                (declare (not safe))
                                                (_%K136380136395%_
                                                 _%path136398%_)))))
                                      '()))
                          '#t))
                     (_%out136417%_
                      (if (fxzero? _%phi136374%_)
                          _%out136415%_
                          (cons 'phi:
                                (cons _%phi136374%_
                                      (cons _%out136415%_ '())))))
                     (__tmp146035 (cons _%out136417%_ _%r136331%_)))
                (declare (not safe))
                (_%lp136328%_ _%rest136351%_ __tmp146035)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match136355136433%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out136353136366%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e136358136423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out136353136366%_
                               '1
                               '#f
                               '#f)))
                           (_%e136359136428%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out136353136366%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src136426%_ _%e136358136423%_)
                            (_%phi136431%_ _%e136359136428%_))
                        (let ()
                          (declare (not safe))
                          (_%K136357136420%_ _%phi136431%_ _%src136426%_))))
                    (let () (declare (not safe)) (_%E136356136370%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out136353136366%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e136361136443%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out136353136366%_
                        '1
                        '#f
                        '#f)))
                    (_%e136362136446%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136353136366%_
                        '2
                        '#f
                        '#f)))
                    (_%e136363136451%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136353136366%_
                        '3
                        '#f
                        '#f)))
                    (_%e136364136456%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136353136366%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key136449%_ _%e136362136446%_)
                     (_%phi136454%_ _%e136363136451%_)
                     (_%name136459%_ _%e136364136456%_))
                 (let ()
                   (declare (not safe))
                   (_%K136360136440%_
                    _%name136459%_
                    _%phi136454%_
                    _%key136449%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%try-match136355136433%_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest136332136340%_))
                                       (let ((_%hd136337136464%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest136332136340%_)))
                                             (_%tl136338136466%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest136332136340%_))))
                                         (let* ((_%out136469%_
                                                 _%hd136337136464%_)
                                                (_%rest136471%_
                                                 _%tl136338136466%_))
                                           (declare (not safe))
                                           (_%K136336136461%_
                                            _%rest136471%_
                                            _%out136469%_)))
                                       (let ()
                                         (declare (not safe))
                                         (_%else136334136348%_))))))
                             _%tl136297136314%_)))
                        (let ()
                          (declare (not safe))
                          (_%g136294136304%_ _%g136295136307%_))))))
            (declare (not safe))
            (_%g136293136473%_ _%stx136289%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self136249%_ _%stx136250%_)
        (let ((__tmp146036
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self136249%_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp146036))
        (let* ((_%g136252136262%_
                (lambda (_%g136253136259%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136253136259%_))))
               (_%g136251136285%_
                (lambda (_%g136253136265%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136253136265%_))
                      (let ((_%e136257136267%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136253136265%_))))
                        (let ((_%hd136256136270%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136257136267%_)))
                              (_%tl136255136272%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136257136267%_))))
                          ((lambda (_%L136275%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L136275%_)))
                           _%tl136255136272%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136252136262%_ _%g136253136265%_))))))
          (declare (not safe))
          (_%g136251136285%_ _%stx136250%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self136120%_ _%stx136121%_)
        (letrec ((_%generate1136123%_
                  (lambda (_%id136244%_ _%eid136245%_)
                    (let ((_%eid136247%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid136245%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid136247%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx136121%_
                             _%eid136247%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id136244%_))
                            (cons _%eid136247%_ '()))))))
          (let* ((_%g136125136153%_
                  (lambda (_%g136126136150%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136126136150%_))))
                 (_%g136124136241%_
                  (lambda (_%g136126136156%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136126136156%_))
                        (let ((_%e136131136158%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136126136156%_))))
                          (let ((_%hd136130136161%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136131136158%_)))
                                (_%tl136129136163%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136131136158%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl136129136163%_))
                                (let ((_g146037_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl136129136163%_
                                          '0))))
                                  (begin
                                    (let ((_g146038_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g146037_)
                                                 (##vector-length _g146037_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g146038_ 2)))
                                          (error "Context expects 2 values"
                                                 _g146038_)))
                                    (let ((_%target136132136166%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g146037_ 0)))
                                          (_%tl136134136168%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g146037_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl136134136168%_))
                                          (letrec ((_%loop136135136171%_
                                                    (lambda (_%hd136133136174%_
                                                             _%eid136139136176%_
                                                             _%id136140136178%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd136133136174%_))
                                                          (let ((_%e136136136181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd136133136174%_))))
                    (let ((_%lp-hd136137136184%_
                           (let ()
                             (declare (not safe))
                             (##car _%e136136136181%_)))
                          (_%lp-tl136138136186%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e136136136181%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd136137136184%_))
                          (let ((_%e136145136189%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd136137136184%_))))
                            (let ((_%hd136144136192%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e136145136189%_)))
                                  (_%tl136143136194%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e136145136189%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl136143136194%_))
                                  (let ((_%e136148136197%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl136143136194%_))))
                                    (let ((_%hd136147136200%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e136148136197%_)))
                                          (_%tl136146136202%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e136148136197%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl136146136202%_))
                                          (let ((__tmp146040
                                                 (cons _%hd136147136200%_
                                                       _%eid136139136176%_))
                                                (__tmp146039
                                                 (cons _%hd136144136192%_
                                                       _%id136140136178%_)))
                                            (declare (not safe))
                                            (_%loop136135136171%_
                                             _%lp-tl136138136186%_
                                             __tmp146040
                                             __tmp146039))
                                          (let ()
                                            (declare (not safe))
                                            (_%g136125136153%_
                                             _%g136126136156%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g136125136153%_ _%g136126136156%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g136125136153%_ _%g136126136156%_)))))
                  (let ((_%eid136141136205%_ (reverse _%eid136139136176%_))
                        (_%id136142136207%_ (reverse _%id136140136178%_)))
                    ((lambda (_%L136210%_ _%L136211%_)
                       (cons '%#extern
                             (map _%generate1136123%_
                                  (let ((__tmp146041
                                         (lambda (_%g136226136229%_
                                                  _%g136227136231%_)
                                           (cons _%g136226136229%_
                                                 _%g136227136231%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp146041 '() _%L136211%_))
                                  (let ((__tmp146042
                                         (lambda (_%g136233136236%_
                                                  _%g136234136238%_)
                                           (cons _%g136233136236%_
                                                 _%g136234136238%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp146042 '() _%L136210%_)))))
                     _%eid136141136205%_
                     _%id136142136207%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop136135136171%_
                                               _%target136132136166%_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g136125136153%_
                                             _%g136126136156%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g136125136153%_ _%g136126136156%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g136125136153%_ _%g136126136156%_))))))
            (declare (not safe))
            (_%g136124136241%_ _%stx136121%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self135910%_ _%stx135911%_)
        (letrec ((_%generate1135913%_
                  (lambda (_%id136115%_)
                    (let ((_%eid136117%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id136115%_)))
                          (_%ident136118%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id136115%_))))
                      (cons '%#define-runtime
                            (cons _%ident136118%_ (cons _%eid136117%_ '()))))))
                 (_%generate*135914%_
                  (lambda (_%all136083%_)
                    (let* ((_%all136084136092%_ _%all136083%_)
                           (_%else136086136100%_
                            (lambda () (cons '%#begin _%all136083%_)))
                           (_%K136088136105%_
                            (lambda (_%one136103%_) _%one136103%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all136084136092%_))
                          (let ((_%hd136089136108%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all136084136092%_)))
                                (_%tl136090136110%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all136084136092%_))))
                            (let ((_%one136113%_ _%hd136089136108%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl136090136110%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K136088136105%_ _%one136113%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%else136086136100%_)))))
                          (let ()
                            (declare (not safe))
                            (_%else136086136100%_)))))))
          (let* ((_%g135916135933%_
                  (lambda (_%g135917135930%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135917135930%_))))
                 (_%g135915136080%_
                  (lambda (_%g135917135936%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135917135936%_))
                        (let ((_%e135922135938%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135917135936%_))))
                          (let ((_%hd135921135941%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135922135938%_)))
                                (_%tl135920135943%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135922135938%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl135920135943%_))
                                (let ((_%e135925135946%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl135920135943%_))))
                                  (let ((_%hd135924135949%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135925135946%_)))
                                        (_%tl135923135951%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135925135946%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135923135951%_))
                                        (let ((_%e135928135954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135923135951%_))))
                                          (let ((_%hd135927135957%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135928135954%_)))
                                                (_%tl135926135959%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135928135954%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135926135959%_))
                                                ((lambda (_%L135962%_
                                                          _%L135963%_)
                                                   (let _%lp135979%_ ((_%rest135981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L135963%_)
                              (_%r135982%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx145658145659%_
                                                             _%rest135981%_)
                                                            (_%g135987136004%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx145658145659%_)))))
               (let ((_%__kont145660145661%_
                      (lambda (_%L136067%_)
                        (let ()
                          (declare (not safe))
                          (_%lp135979%_ _%L136067%_ _%r135982%_))))
                     (_%__kont145662145663%_
                      (lambda (_%L136040%_ _%L136041%_)
                        (let ((__tmp146043
                               (cons (let ()
                                       (declare (not safe))
                                       (_%generate1135913%_ _%L136041%_))
                                     _%r135982%_)))
                          (declare (not safe))
                          (_%lp135979%_ _%L136040%_ __tmp146043))))
                     (_%__kont145664145665%_
                      (lambda (_%L136016%_)
                        (let ((__tmp146044
                               (let ((__tmp146045
                                      (cons (let ()
                                              (declare (not safe))
                                              (_%generate1135913%_
                                               _%L136016%_))
                                            '())))
                                 (declare (not safe))
                                 (__foldl1 cons __tmp146045 _%r135982%_))))
                          (declare (not safe))
                          (_%generate*135914%_ __tmp146044))))
                     (_%__kont145666145667%_
                      (lambda ()
                        (let ((__tmp146046 (reverse _%r135982%_)))
                          (declare (not safe))
                          (_%generate*135914%_ __tmp146046)))))
                 (let ((_%g135985136027%_
                        (lambda ()
                          (let ((_%L136016%_ _%__stx145658145659%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L136016%_))
                                (_%__kont145664145665%_ _%L136016%_)
                                (_%__kont145666145667%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx145658145659%_))
                       (let ((_%e135992136056%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx145658145659%_))))
                         (let ((_%tl135990136061%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e135992136056%_)))
                               (_%hd135991136059%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e135992136056%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd135991136059%_))
                               (let ((_%e135993136064%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd135991136059%_))))
                                 (if (equal? _%e135993136064%_ '#f)
                                     (_%__kont145660145661%_
                                      _%tl135990136061%_)
                                     (_%__kont145662145663%_
                                      _%tl135990136061%_
                                      _%hd135991136059%_)))
                               (_%__kont145662145663%_
                                _%tl135990136061%_
                                _%hd135991136059%_))))
                       (let () (declare (not safe)) (_%g135985136027%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd135927135957%_
                                                 _%hd135924135949%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g135916135933%_
                                                   _%g135917135936%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g135916135933%_
                                           _%g135917135936%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g135916135933%_ _%g135917135936%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g135916135933%_ _%g135917135936%_))))))
            (declare (not safe))
            (_%g135915136080%_ _%stx135911%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self135807%_ _%stx135808%_)
        (let* ((_%g135810135827%_
                (lambda (_%g135811135824%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135811135824%_))))
               (_%g135809135907%_
                (lambda (_%g135811135830%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135811135830%_))
                      (let ((_%e135816135832%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135811135830%_))))
                        (let ((_%hd135815135835%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135816135832%_)))
                              (_%tl135814135837%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135816135832%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135814135837%_))
                              (let ((_%e135819135840%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135814135837%_))))
                                (let ((_%hd135818135843%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135819135840%_)))
                                      (_%tl135817135845%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135819135840%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135817135845%_))
                                      (let ((_%e135822135848%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135817135845%_))))
                                        (let ((_%hd135821135851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135822135848%_)))
                                              (_%tl135820135853%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135822135848%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135820135853%_))
                                              ((lambda (_%L135856%_
                                                        _%L135857%_)
                                                 (let* ((_%eid135872%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L135857%_)))
                                                        (_%phi135874%_
                                                         (let ((__tmp146047
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp146047 '1)))
                (_%block135876%_
                 (let ((__tmp146048
                        (let ()
                          (declare (not safe))
                          (slot-ref__0 _%self135807%_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp146048 _%phi135874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g135879135886%_
                                                           (lambda (_%g135880135883%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g135880135883%_))))
                  (_%g135878135904%_
                   (lambda (_%g135880135889%_)
                     ((lambda (_%L135891%_)
                        (let ((__tmp146050
                               (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self135807%_ 'state)))
                              (__tmp146049
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        '%#define-runtime))
                                     (cons _%L135891%_
                                           (cons _%L135856%_ '())))))
                          (declare (not safe))
                          (gxc#meta-state-add-phi!
                           __tmp146050
                           _%phi135874%_
                           __tmp146049)))
                      _%g135880135889%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_%g135878135904%_
                                                      _%eid135872%_))
                                                   (if _%block135876%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block135876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%L135857%_))
                                             (cons _%eid135872%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%L135857%_))
                           (cons _%eid135872%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135821135851%_
                                               _%hd135818135843%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135810135827%_
                                                 _%g135811135830%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135810135827%_
                                         _%g135811135830%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135810135827%_ _%g135811135830%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135810135827%_ _%g135811135830%_))))))
          (declare (not safe))
          (_%g135809135907%_ _%stx135808%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self135739%_ _%stx135740%_)
        (let* ((_%g135742135759%_
                (lambda (_%g135743135756%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135743135756%_))))
               (_%g135741135804%_
                (lambda (_%g135743135762%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135743135762%_))
                      (let ((_%e135748135764%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135743135762%_))))
                        (let ((_%hd135747135767%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135748135764%_)))
                              (_%tl135746135769%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135748135764%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135746135769%_))
                              (let ((_%e135751135772%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135746135769%_))))
                                (let ((_%hd135750135775%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135751135772%_)))
                                      (_%tl135749135777%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135751135772%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135749135777%_))
                                      (let ((_%e135754135780%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135749135777%_))))
                                        (let ((_%hd135753135783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135754135780%_)))
                                              (_%tl135752135785%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135754135780%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135752135785%_))
                                              ((lambda (_%L135788%_
                                                        _%L135789%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%L135789%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%L135788%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135753135783%_
                                               _%hd135750135775%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135742135759%_
                                                 _%g135743135762%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135742135759%_
                                         _%g135743135762%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135742135759%_ _%g135743135762%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135742135759%_ _%g135743135762%_))))))
          (declare (not safe))
          (_%g135741135804%_ _%stx135740%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self135736%_ _%stx135737%_)
        (let ((__tmp146052
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135736%_ 'state)))
              (__tmp146051
               (let () (declare (not safe)) (gx#current-expander-phi))))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp146052 __tmp146051 _%stx135737%_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _%self135736%_ _%stx135737%_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self135733%_ _%stx135734%_)
        (let ((__tmp146054
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135733%_ 'state)))
              (__tmp146053
               (let () (declare (not safe)) (gx#current-expander-phi))))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp146054 __tmp146053 _%stx135734%_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp146056 (list)) (__tmp146055 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp146056
         '(src n open blocks)
         __tmp146055
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args135730%_
        (apply make-instance gxc#meta-state::t _%$args135730%_)))
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
      (lambda (_%self135716%_ _%ctx135717%_)
        (let ((_%self135720%_ _%self135716%_))
          (if (let ((__tmp146057
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self135720%_))))
                (declare (not safe))
                (##fx< '4 __tmp146057))
              (begin
                (let ((__tmp146058
                       (let ((__tmp146059
                              (##structure-ref
                               _%ctx135717%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp146059))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self135720%_
                   __tmp146058
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self135720%_ '1 '2 '#f '#f))
                (let ((__tmp146060
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self135720%_
                   __tmp146060
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self135720%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp146061
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self135720%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self135720%_
                       '4
                       __tmp146061))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp146063 (list)) (__tmp146062 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp146063
         '(ctx phi n code)
         __tmp146062
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args135591%_
        (apply make-instance gxc#meta-state-block::t _%$args135591%_)))
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
      (lambda (_%state135550%_ _%phi135551%_)
        (let* ((_%state135552135560%_ _%state135550%_)
               (_%E135554135564%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state135552135560%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K135555135573%_
                (lambda (_%open135567%_ _%n135568%_ _%src135569%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open135567%_ _%phi135551%_))
                      '#f
                      (let ((_%block-ref135571%_
                             (let ((__tmp146064 (number->string _%n135568%_)))
                               (declare (not safe))
                               (##string-append
                                _%src135569%_
                                '"~"
                                __tmp146064))))
                        (##structure-set!
                         _%state135550%_
                         (let () (declare (not safe)) (##fx+ _%n135568%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp146065
                               (let ((__tmp146066
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp146066
                                  _%phi135551%_
                                  _%n135568%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open135567%_ _%phi135551%_ __tmp146065))
                        _%block-ref135571%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state135552135560%_
                 'gxc#meta-state::t))
              (let* ((_%e135556135576%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state135552135560%_
                         '1
                         '#f
                         '#f)))
                     (_%src135579%_ _%e135556135576%_)
                     (_%e135557135581%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state135552135560%_
                         '2
                         '#f
                         '#f)))
                     (_%n135584%_ _%e135557135581%_)
                     (_%e135558135586%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state135552135560%_
                         '3
                         '#f
                         '#f)))
                     (_%open135589%_ _%e135558135586%_))
                (declare (not safe))
                (_%K135555135573%_ _%open135589%_ _%n135584%_ _%src135579%_))
              (let () (declare (not safe)) (_%E135554135564%_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state135544%_ _%phi135545%_ _%stx135546%_)
        (let ((_%block135548%_
               (let ((__tmp146067
                      (##structure-ref
                       _%state135544%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp146067 _%phi135545%_))))
          (##structure-set!
           _%block135548%_
           (cons _%stx135546%_
                 (##structure-ref
                  _%block135548%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state135538%_)
        (##structure-set!
         _%state135538%_
         (let ((__tmp146070
                (lambda (_%_135540%_ _%block135541%_ _%r135542%_)
                  (cons _%block135541%_ _%r135542%_)))
               (__tmp146069
                (##structure-ref _%state135538%_ '4 gxc#meta-state::t '#f))
               (__tmp146068
                (##structure-ref _%state135538%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp146070 __tmp146069 __tmp146068))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state135538%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state135490%_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _%state135490%_))
        (let ((__tmp146072
               (lambda (_%block135492%_ _%r135493%_)
                 (let* ((_%block135494135503%_ _%block135492%_)
                        (_%E135496135507%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block135494135503%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K135497135515%_
                         (lambda (_%code135510%_
                                  _%n135511%_
                                  _%phi135512%_
                                  _%ctx135513%_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _%code135510%_))
                               _%r135493%_
                               (cons (cons _%ctx135513%_
                                           (cons _%phi135512%_
                                                 (cons _%n135511%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code135510%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r135493%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block135494135503%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e135498135518%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135494135503%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx135521%_ _%e135498135518%_)
                              (_%e135499135523%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135494135503%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi135526%_ _%e135499135523%_)
                              (_%e135500135528%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135494135503%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n135531%_ _%e135500135528%_)
                              (_%e135501135533%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135494135503%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code135536%_ _%e135501135533%_))
                         (declare (not safe))
                         (_%K135497135515%_
                          _%code135536%_
                          _%n135531%_
                          _%phi135526%_
                          _%ctx135521%_))
                       (let () (declare (not safe)) (_%E135496135507%_))))))
              (__tmp146071
               (##structure-ref _%state135490%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp146072 '() __tmp146071))))
    (define gxc#collect-expression-refs
      (lambda (_%stx135486%_)
        (let ((_%ht135488%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs__%
             '#f
             _%ht135488%_
             _%stx135486%_))
          _%ht135488%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self135429%_ _%stx135430%_)
        (let* ((_%g135432135445%_
                (lambda (_%g135433135442%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135433135442%_))))
               (_%g135431135483%_
                (lambda (_%g135433135448%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135433135448%_))
                      (let ((_%e135437135450%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135433135448%_))))
                        (let ((_%hd135436135453%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135437135450%_)))
                              (_%tl135435135455%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135437135450%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135435135455%_))
                              (let ((_%e135440135458%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135435135455%_))))
                                (let ((_%hd135439135461%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135440135458%_)))
                                      (_%tl135438135463%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135440135458%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl135438135463%_))
                                      ((lambda (_%L135466%_)
                                         (let* ((_%bind135478%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L135466%_)))
                                                (_%eid135480%_
                                                 (if _%bind135478%_
                                                     (##structure-ref
                                                      _%bind135478%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L135466%_))))
                                                (__tmp146073
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self135429%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp146073
                                            _%eid135480%_
                                            _%eid135480%_)))
                                       _%hd135439135461%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g135432135445%_
                                         _%g135433135448%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135432135445%_ _%g135433135448%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135432135445%_ _%g135433135448%_))))))
          (declare (not safe))
          (_%g135431135483%_ _%stx135430%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self135356%_ _%stx135357%_)
        (let* ((_%g135359135376%_
                (lambda (_%g135360135373%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135360135373%_))))
               (_%g135358135426%_
                (lambda (_%g135360135379%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135360135379%_))
                      (let ((_%e135365135381%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135360135379%_))))
                        (let ((_%hd135364135384%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135365135381%_)))
                              (_%tl135363135386%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135365135381%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135363135386%_))
                              (let ((_%e135368135389%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135363135386%_))))
                                (let ((_%hd135367135392%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135368135389%_)))
                                      (_%tl135366135394%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135368135389%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135366135394%_))
                                      (let ((_%e135371135397%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135366135394%_))))
                                        (let ((_%hd135370135400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135371135397%_)))
                                              (_%tl135369135402%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135371135397%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135369135402%_))
                                              ((lambda (_%L135405%_
                                                        _%L135406%_)
                                                 (let* ((_%bind135421%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L135406%_)))
                                                        (_%eid135423%_
                                                         (if _%bind135421%_
                                                             (##structure-ref
                                                              _%bind135421%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L135406%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp146074
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self135356%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp146074
                                                      _%eid135423%_
                                                      _%eid135423%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self135356%_
                                                      _%L135405%_))))
                                               _%hd135370135400%_
                                               _%hd135367135392%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135359135376%_
                                                 _%g135360135379%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135359135376%_
                                         _%g135360135379%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135359135376%_ _%g135360135379%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135359135376%_ _%g135360135379%_))))))
          (declare (not safe))
          (_%g135358135426%_ _%stx135357%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self135313%_ _%stx135314%_)
        (let* ((_%g135316135326%_
                (lambda (_%g135317135323%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135317135323%_))))
               (_%g135315135353%_
                (lambda (_%g135317135329%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135317135329%_))
                      (let ((_%e135321135331%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135317135329%_))))
                        (let ((_%hd135320135334%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135321135331%_)))
                              (_%tl135319135336%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135321135331%_))))
                          ((lambda (_%L135339%_)
                             (let ((__tmp146075
                                    (lambda (_%g135348135350%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self135313%_
                                         _%g135348135350%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp146075 _%L135339%_)))
                           _%tl135319135336%_)))
                      (let ()
                        (declare (not safe))
                        (_%g135316135326%_ _%g135317135329%_))))))
          (declare (not safe))
          (_%g135315135353%_ _%stx135314%_))))
    (define gxc#count-values-single%
      (lambda (_%self135310%_ _%stx135311%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self135176%_ _%stx135177%_)
        (let* ((_%__stx145688145689%_ _%stx135177%_)
               (_%g135180135209%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx145688145689%_)))))
          (let ((_%__kont145690145691%_
                 (lambda (_%L135277%_ _%L135278%_)
                   (length (let ((__tmp146076
                                  (lambda (_%g135299135302%_ _%g135300135304%_)
                                    (cons _%g135299135302%_
                                          _%g135300135304%_))))
                             (declare (not safe))
                             (__foldr1 __tmp146076 '() _%L135277%_)))))
                (_%__kont145694145695%_ (lambda () '#f)))
            (let ((_%__match145733145734%_
                   (lambda (_%e135186135221%_
                            _%hd135185135224%_
                            _%tl135184135226%_
                            _%e135189135229%_
                            _%hd135188135232%_
                            _%tl135187135234%_
                            _%e135192135237%_
                            _%hd135191135240%_
                            _%tl135190135242%_
                            _%e135195135245%_
                            _%hd135194135248%_
                            _%tl135193135250%_
                            _%__splice145692145693%_
                            _%target135196135253%_
                            _%tl135198135255%_)
                     (letrec ((_%loop135199135258%_
                               (lambda (_%hd135197135261%_
                                        _%rand135203135263%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd135197135261%_))
                                     (let ((_%e135200135266%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd135197135261%_))))
                                       (let ((_%lp-tl135202135271%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e135200135266%_)))
                                             (_%lp-hd135201135269%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e135200135266%_))))
                                         (let ((__tmp146077
                                                (cons _%lp-hd135201135269%_
                                                      _%rand135203135263%_)))
                                           (declare (not safe))
                                           (_%loop135199135258%_
                                            _%lp-tl135202135271%_
                                            __tmp146077))))
                                     (let ((_%rand135204135274%_
                                            (reverse _%rand135203135263%_)))
                                       (let ((_%L135277%_ _%rand135204135274%_)
                                             (_%L135278%_ _%hd135194135248%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L135278%_
                                                'values))
                                             (_%__kont145690145691%_
                                              _%L135277%_
                                              _%L135278%_)
                                             (_%__kont145694145695%_))))))))
                       (let ()
                         (declare (not safe))
                         (_%loop135199135258%_ _%target135196135253%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx145688145689%_))
                  (let ((_%e135186135221%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx145688145689%_))))
                    (let ((_%tl135184135226%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e135186135221%_)))
                          (_%hd135185135224%_
                           (let ()
                             (declare (not safe))
                             (##car _%e135186135221%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl135184135226%_))
                          (let ((_%e135189135229%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl135184135226%_))))
                            (let ((_%tl135187135234%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e135189135229%_)))
                                  (_%hd135188135232%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e135189135229%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd135188135232%_))
                                  (let ((_%e135192135237%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd135188135232%_))))
                                    (let ((_%tl135190135242%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e135192135237%_)))
                                          (_%hd135191135240%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e135192135237%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd135191135240%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd135191135240%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl135190135242%_))
                                                  (let ((_%e135195135245%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl135190135242%_))))
                                                    (let ((_%tl135193135250%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e135195135245%_)))
                                                          (_%hd135194135248%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e135195135245%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl135193135250%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl135187135234%_))
                      (let ((_%__splice145692145693%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl135187135234%_
                                '0))))
                        (let ((_%tl135198135255%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145692145693%_ '1)))
                              (_%target135196135253%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145692145693%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl135198135255%_))
                              (_%__match145733145734%_
                               _%e135186135221%_
                               _%hd135185135224%_
                               _%tl135184135226%_
                               _%e135189135229%_
                               _%hd135188135232%_
                               _%tl135187135234%_
                               _%e135192135237%_
                               _%hd135191135240%_
                               _%tl135190135242%_
                               _%e135195135245%_
                               _%hd135194135248%_
                               _%tl135193135250%_
                               _%__splice145692145693%_
                               _%target135196135253%_
                               _%tl135198135255%_)
                              (_%__kont145694145695%_))))
                      (_%__kont145694145695%_))
                  (_%__kont145694145695%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145694145695%_))
                                              (_%__kont145694145695%_))
                                          (_%__kont145694145695%_))))
                                  (_%__kont145694145695%_))))
                          (_%__kont145694145695%_))))
                  (_%__kont145694145695%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self135079%_ _%stx135080%_)
        (let* ((_%g135082135103%_
                (lambda (_%g135083135100%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135083135100%_))))
               (_%g135081135173%_
                (lambda (_%g135083135106%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135083135106%_))
                      (let ((_%e135089135108%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135083135106%_))))
                        (let ((_%hd135088135111%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135089135108%_)))
                              (_%tl135087135113%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135089135108%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135087135113%_))
                              (let ((_%e135092135116%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135087135113%_))))
                                (let ((_%hd135091135119%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135092135116%_)))
                                      (_%tl135090135121%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135092135116%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135090135121%_))
                                      (let ((_%e135095135124%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135090135121%_))))
                                        (let ((_%hd135094135127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135095135124%_)))
                                              (_%tl135093135129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135095135124%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl135093135129%_))
                                              (let ((_%e135098135132%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl135093135129%_))))
                                                (let ((_%hd135097135135%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e135098135132%_)))
                                                      (_%tl135096135137%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e135098135132%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl135096135137%_))
                                                      ((lambda (_%L135140%_
                                                                _%L135141%_
                                                                _%L135142%_)
                                                         (let ((_%c1135159135161%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self135079%_ _%L135141%_))))
                   (if _%c1135159135161%_
                       (let* ((_%c1135164%_ _%c1135159135161%_)
                              (_%c2135165135167%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self135079%_
                                  _%L135140%_))))
                         (if _%c2135165135167%_
                             (let ((_%c2135170%_ _%c2135165135167%_))
                               (if (fx= _%c1135164%_ _%c2135170%_)
                                   _%c1135164%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd135097135135%_
               _%hd135094135127%_
               _%hd135091135119%_)
              (let ()
                (declare (not safe))
                (_%g135082135103%_ _%g135083135106%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g135082135103%_
                                                 _%g135083135106%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135082135103%_
                                         _%g135083135106%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135082135103%_ _%g135083135106%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135082135103%_ _%g135083135106%_))))))
          (declare (not safe))
          (_%g135081135173%_ _%stx135080%_))))))
