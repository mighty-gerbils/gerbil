(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1712269046)
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
        (letrec ((_%hash-e144244%_
                  (lambda (_%id144246%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id144246%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e144244%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp145637 (list gxc#::void::t))
            (__tmp145636 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp145637
         '()
         __tmp145636
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args144240%_
        (apply make-instance gxc#::collect-bindings::t _%$args144240%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp145638
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
        (__make-promise __tmp145638)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx144232%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self144235%_
                (let ((__obj145612
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj145612))
               (__tmp145639
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144235%_ _%stx144232%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145639
           gxc#current-compile-method
           _%self144235%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp145641 (list gxc#::void::t))
            (__tmp145640 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp145641
         '(modules)
         __tmp145640
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args144229%_
        (apply make-instance gxc#::lift-modules::t _%$args144229%_)))
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
      (let ((__tmp145642
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
        (__make-promise __tmp145642)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords144203%_ _%modules144200144204%_ _%stx144206%_)
        (let ((_%modules144209%_
               (if (eq? _%modules144200144204%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules144200144204%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self144211%_
                  (let ((__obj145614
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145614
                       _%modules144209%_
                       '1
                       '#f
                       '#f))
                    __obj145614))
                 (__tmp145643
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144211%_ _%stx144206%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145643
             gxc#current-compile-method
             _%self144211%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords144218%_ . _%args144219%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords144218%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144218%_
                  'modules:
                  absent-value))
               _%args144219%_)))
    (define gxc#apply-lift-modules
      (lambda _%args144201144225%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args144201144225%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp145645 (list)) (__tmp145644 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp145645
         '()
         __tmp145644
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args144196%_
        (apply make-instance gxc#::find-runtime-code::t _%$args144196%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp145646
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
        (__make-promise __tmp145646)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx144188%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self144191%_
                (let ((__obj145616
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj145616))
               (__tmp145647
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144191%_ _%stx144188%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145647
           gxc#current-compile-method
           _%self144191%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp145649 (list gxc#::false::t))
            (__tmp145648 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp145649
         '()
         __tmp145648
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args144185%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args144185%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp145650
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
        (__make-promise __tmp145650)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx144177%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self144180%_
                (let ((__obj145618
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj145618))
               (__tmp145651
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144180%_ _%stx144177%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145651
           gxc#current-compile-method
           _%self144180%_))))
    (define gxc#::count-values::t
      (let ((__tmp145653 (list gxc#::false-expression::t))
            (__tmp145652 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp145653
         '()
         __tmp145652
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args144174%_
        (apply make-instance gxc#::count-values::t _%$args144174%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp145654
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
        (__make-promise __tmp145654)))
    (define gxc#apply-count-values
      (lambda (_%stx144166%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self144169%_
                (let ((__obj145620
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj145620))
               (__tmp145655
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144169%_ _%stx144166%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145655
           gxc#current-compile-method
           _%self144169%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp145656 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp145656
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args144163%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args144163%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp145657
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
        (__make-promise __tmp145657)))
    (define gxc#::generate-loader::t
      (let ((__tmp145659 (list gxc#::generate-runtime-empty::t))
            (__tmp145658 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp145659
         '()
         __tmp145658
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args144159%_
        (apply make-instance gxc#::generate-loader::t _%$args144159%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp145660
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
        (__make-promise __tmp145660)))
    (define gxc#apply-generate-loader
      (lambda (_%stx144151%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self144154%_
                (let ((__obj145623
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj145623))
               (__tmp145661
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144154%_ _%stx144151%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145661
           gxc#current-compile-method
           _%self144154%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp145662 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp145662
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args144148%_
        (apply make-instance gxc#::generate-runtime::t _%$args144148%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp145663
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
        (__make-promise __tmp145663)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx144140%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self144143%_
                (let ((__obj145625
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj145625))
               (__tmp145664
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144143%_ _%stx144140%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145664
           gxc#current-compile-method
           _%self144143%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp145666 (list gxc#::generate-runtime::t))
            (__tmp145665 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp145666
         '()
         __tmp145665
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args144137%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args144137%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp145667
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
        (__make-promise __tmp145667)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx144129%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self144132%_
                (let ((__obj145627
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj145627))
               (__tmp145668
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144132%_ _%stx144129%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145668
           gxc#current-compile-method
           _%self144132%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp145669 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp145669
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args144126%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args144126%_)))
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
      (let ((__tmp145670
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
        (__make-promise __tmp145670)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords144100%_ _%table144097144101%_ _%stx144103%_)
        (let ((_%table144106%_
               (if (eq? _%table144097144101%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table144097144101%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self144108%_
                  (let ((__obj145629
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145629
                       _%table144106%_
                       '1
                       '#f
                       '#f))
                    __obj145629))
                 (__tmp145671
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144108%_ _%stx144103%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145671
             gxc#current-compile-method
             _%self144108%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords144115%_ . _%args144116%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords144115%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144115%_
                  'table:
                  absent-value))
               _%args144116%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args144098144122%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args144098144122%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp145673 (list gxc#::void-expression::t))
            (__tmp145672 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp145673
         '(state)
         __tmp145672
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args144093%_
        (apply make-instance gxc#::generate-meta::t _%$args144093%_)))
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
      (let ((__tmp145674
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
        (__make-promise __tmp145674)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords144067%_ _%state144064144068%_ _%stx144070%_)
        (let ((_%state144073%_
               (if (eq? _%state144064144068%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state144064144068%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self144075%_
                  (let ((__obj145631
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145631
                       _%state144073%_
                       '1
                       '#f
                       '#f))
                    __obj145631))
                 (__tmp145675
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144075%_ _%stx144070%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145675
             gxc#current-compile-method
             _%self144075%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords144082%_ . _%args144083%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords144082%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144082%_
                  'state:
                  absent-value))
               _%args144083%_)))
    (define gxc#apply-generate-meta
      (lambda _%args144065144089%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args144065144089%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp145677 (list)) (__tmp145676 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp145677
         '(state)
         __tmp145676
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args144060%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args144060%_)))
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
      (let ((__tmp145678
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
        (__make-promise __tmp145678)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords144034%_ _%state144031144035%_ _%stx144037%_)
        (let ((_%state144040%_
               (if (eq? _%state144031144035%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state144031144035%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self144042%_
                  (let ((__obj145633
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145633
                       _%state144040%_
                       '1
                       '#f
                       '#f))
                    __obj145633))
                 (__tmp145679
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144042%_ _%stx144037%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145679
             gxc#current-compile-method
             _%self144042%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords144049%_ . _%args144050%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords144049%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144049%_
                  'state:
                  absent-value))
               _%args144050%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args144032144056%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args144032144056%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self143960%_ _%stx143961%_)
        (let* ((_%g143963143980%_
                (lambda (_%g143964143977%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143964143977%_))))
               (_%g143962144027%_
                (lambda (_%g143964143983%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143964143983%_))
                      (let ((_%e143969143985%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143964143983%_))))
                        (let ((_%hd143968143988%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143969143985%_)))
                              (_%tl143967143990%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143969143985%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143967143990%_))
                              (let ((_%e143972143993%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143967143990%_))))
                                (let ((_%hd143971143996%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143972143993%_)))
                                      (_%tl143970143998%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143972143993%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143970143998%_))
                                      (let ((_%e143975144001%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143970143998%_))))
                                        (let ((_%hd143974144004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143975144001%_)))
                                              (_%tl143973144006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143975144001%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143973144006%_))
                                              ((lambda (_%L144009%_
                                                        _%L144010%_)
                                                 (let ((__tmp145680
                                                        (lambda (_%bind144025%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind144025%_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _%bind144025%_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp145680
                                                    _%L144010%_)))
                                               _%hd143974144004%_
                                               _%hd143971143996%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g143963143980%_
                                                 _%g143964143983%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143963143980%_
                                         _%g143964143983%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143963143980%_ _%g143964143983%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143963143980%_ _%g143964143983%_))))))
          (declare (not safe))
          (_%g143962144027%_ _%stx143961%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self143892%_ _%stx143893%_)
        (let* ((_%g143895143912%_
                (lambda (_%g143896143909%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143896143909%_))))
               (_%g143894143957%_
                (lambda (_%g143896143915%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143896143915%_))
                      (let ((_%e143901143917%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143896143915%_))))
                        (let ((_%hd143900143920%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143901143917%_)))
                              (_%tl143899143922%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143901143917%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143899143922%_))
                              (let ((_%e143904143925%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143899143922%_))))
                                (let ((_%hd143903143928%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143904143925%_)))
                                      (_%tl143902143930%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143904143925%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143902143930%_))
                                      (let ((_%e143907143933%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143902143930%_))))
                                        (let ((_%hd143906143936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143907143933%_)))
                                              (_%tl143905143938%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143907143933%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143905143938%_))
                                              ((lambda (_%L143941%_
                                                        _%L143942%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _%L143942%_
                                                    '#t)))
                                               _%hd143906143936%_
                                               _%hd143903143928%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g143895143912%_
                                                 _%g143896143915%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143895143912%_
                                         _%g143896143915%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143895143912%_ _%g143896143915%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143895143912%_ _%g143896143915%_))))))
          (declare (not safe))
          (_%g143894143957%_ _%stx143893%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self143834%_ _%stx143835%_)
        (let* ((_%g143837143851%_
                (lambda (_%g143838143848%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143838143848%_))))
               (_%g143836143889%_
                (lambda (_%g143838143854%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143838143854%_))
                      (let ((_%e143843143856%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143838143854%_))))
                        (let ((_%hd143842143859%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143843143856%_)))
                              (_%tl143841143861%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143843143856%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143841143861%_))
                              (let ((_%e143846143864%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143841143861%_))))
                                (let ((_%hd143845143867%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143846143864%_)))
                                      (_%tl143844143869%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143846143864%_))))
                                  ((lambda (_%L143872%_ _%L143873%_)
                                     (let ((_%ctx143886%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L143873%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self143834%_
                                           'modules))
                                        (cons _%ctx143886%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self143834%_
                                                        'modules)))))
                                       (let ((__tmp145681
                                              (lambda ()
                                                (let ((__tmp145682
                                                       (##structure-ref
                                                        _%ctx143886%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143834%_
                                                   __tmp145682)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp145681
                                          gx#current-expander-context
                                          _%ctx143886%_))))
                                   _%tl143844143869%_
                                   _%hd143845143867%_)))
                              (let ()
                                (declare (not safe))
                                (_%g143837143851%_ _%g143838143854%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143837143851%_ _%g143838143854%_))))))
          (declare (not safe))
          (_%g143836143889%_ _%stx143835%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls143787143789%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls143787143789%_
              (let ((_%decls143792%_ _%decls143787143789%_))
                (let _%lp143794%_ ((_%rest143796%_ _%decls143792%_))
                  (let* ((_%rest143797143805%_ _%rest143796%_)
                         (_%else143799143813%_ (lambda () '#f))
                         (_%K143801143822%_
                          (lambda (_%decls143816%_ _%decl143817%_)
                            (if (equal? _%decl143817%_ '(not safe))
                                (let () '#t)
                                (if (equal? _%decl143817%_ '(safe))
                                    (let () '#f)
                                    (let ()
                                      (declare (not safe))
                                      (_%lp143794%_ _%decls143816%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest143797143805%_))
                        (let ((_%hd143802143825%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest143797143805%_)))
                              (_%tl143803143827%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest143797143805%_))))
                          (let* ((_%decl143830%_ _%hd143802143825%_)
                                 (_%decls143832%_ _%tl143803143827%_))
                            (declare (not safe))
                            (_%K143801143822%_
                             _%decls143832%_
                             _%decl143830%_)))
                        (let ()
                          (declare (not safe))
                          (_%else143799143813%_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id143781%_ _%syntax?143782%_)
        (let ((_%eid143784%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id143781%_))
                '1
                gx#binding::t
                '#f))
              (_%ht143785%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid143784%_))
              '#!void
              (let ((__tmp145683
                     (let ((__tmp145684
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid143784%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp145684 _%syntax?143782%_))))
                (declare (not safe))
                (hash-put! _%ht143785%_ _%eid143784%_ __tmp145683))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id143779%_)
        (let ((__tmp145685
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _%id143779%_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp145685))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key143734%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key143734%_))
            (let () _%key143734%_)
            (if (uninterned-symbol? _%key143734%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key143734%_))
                (let ()
                  (let* ((_%key143738143745%_ _%key143734%_)
                         (_%E143740143749%_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _%key143738143745%_
                                     '([eid . mark])))
                            '#!void))
                         (_%K143741143767%_
                          (lambda (_%mark143752%_ _%eid143753%_)
                            (let ((_%$e143755%_
                                   (##structure-ref
                                    _%mark143752%_
                                    '1
                                    gx#expander-mark::t
                                    '#f)))
                              (if _%$e143755%_
                                  ((lambda (_%ht143758%_)
                                     (let ((_%$e143760%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-get
                                               _%ht143758%_
                                               _%eid143753%_))))
                                       (if _%$e143760%_
                                           ((lambda (_%id143763%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (interned-symbol?
                                                     _%id143763%_))
                                                  _%id143763%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _%id143763%_))))
                                            _%$e143760%_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%eid143753%_)))))
                                   _%$e143755%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-identifier-key
                                     _%eid143753%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%key143738143745%_))
                        (let ((_%hd143742143770%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%key143738143745%_)))
                              (_%tl143743143772%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%key143738143745%_))))
                          (let* ((_%eid143775%_ _%hd143742143770%_)
                                 (_%mark143777%_ _%tl143743143772%_))
                            (declare (not safe))
                            (_%K143741143767%_ _%mark143777%_ _%eid143775%_)))
                        (let ()
                          (declare (not safe))
                          (_%E143740143749%_)))))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self143731%_ _%stx143732%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self143578%_ _%stx143579%_)
        (letrec ((_%simplify143581%_
                  (lambda (_%body143629%_)
                    (let _%lp143631%_ ((_%rest143633%_ _%body143629%_)
                                       (_%r143634%_ '()))
                      (let* ((_%rest143635143643%_ _%rest143633%_)
                             (_%else143637143651%_
                              (lambda () (reverse _%r143634%_)))
                             (_%K143639143719%_
                              (lambda (_%rest143654%_ _%hd143655%_)
                                (let* ((_%hd143656143672%_ _%hd143655%_)
                                       (_%else143660143680%_
                                        (lambda ()
                                          (let ((__tmp145686
                                                 (cons _%hd143655%_
                                                       _%r143634%_)))
                                            (declare (not safe))
                                            (_%lp143631%_
                                             _%rest143654%_
                                             __tmp145686)))))
                                  (let ((_%K143668143709%_
                                         (lambda (_%exprs143707%_)
                                           (let ((__tmp145687
                                                  (let ()
                                                    (declare (not safe))
                                                    (__foldr1
                                                     cons
                                                     _%rest143654%_
                                                     _%exprs143707%_))))
                                             (declare (not safe))
                                             (_%lp143631%_
                                              __tmp145687
                                              _%r143634%_))))
                                        (_%K143663143693%_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _%rest143654%_))
                                               (let ((__tmp145688
                                                      (cons _%hd143655%_
                                                            _%r143634%_)))
                                                 (declare (not safe))
                                                 (_%lp143631%_
                                                  _%rest143654%_
                                                  __tmp145688))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp143631%_
                                                  _%rest143654%_
                                                  _%r143634%_)))))
                                        (_%K143662143685%_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _%rest143654%_))
                                               (let ((__tmp145689
                                                      (cons _%hd143655%_
                                                            _%r143634%_)))
                                                 (declare (not safe))
                                                 (_%lp143631%_
                                                  _%rest143654%_
                                                  __tmp145689))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp143631%_
                                                  _%rest143654%_
                                                  _%r143634%_))))))
                                    (let ((_%try-match143659143688%_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _%hd143656143672%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%K143662143685%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%else143660143680%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd143656143672%_))
                                          (let ((_%tl143670143714%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd143656143672%_)))
                                                (_%hd143669143712%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd143656143672%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd143669143712%_
                                                         'begin))
                                                (let ((_%exprs143717%_
                                                       _%tl143670143714%_))
                                                  (declare (not safe))
                                                  (_%K143668143709%_
                                                   _%exprs143717%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd143669143712%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl143670143714%_))
                                                        (let ((_%tl143667143701%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl143670143714%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl143667143701%_))
                      (let () (declare (not safe)) (_%K143663143693%_))
                      (let ()
                        (declare (not safe))
                        (_%try-match143659143688%_))))
                (let () (declare (not safe)) (_%try-match143659143688%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%try-match143659143688%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%try-match143659143688%_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest143635143643%_))
                            (let ((_%hd143640143722%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest143635143643%_)))
                                  (_%tl143641143724%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest143635143643%_))))
                              (let* ((_%hd143727%_ _%hd143640143722%_)
                                     (_%rest143729%_ _%tl143641143724%_))
                                (declare (not safe))
                                (_%K143639143719%_
                                 _%rest143729%_
                                 _%hd143727%_)))
                            (let ()
                              (declare (not safe))
                              (_%else143637143651%_))))))))
          (let* ((_%g143583143593%_
                  (lambda (_%g143584143590%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143584143590%_))))
                 (_%g143582143626%_
                  (lambda (_%g143584143596%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143584143596%_))
                        (let ((_%e143588143598%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143584143596%_))))
                          (let ((_%hd143587143601%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143588143598%_)))
                                (_%tl143586143603%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143588143598%_))))
                            ((lambda (_%L143606%_)
                               (let* ((_%body143621%_
                                       (map (lambda (_%g143616143618%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self143578%_
                                                 _%g143616143618%_)))
                                            _%L143606%_))
                                      (_%body143623%_
                                       (let ()
                                         (declare (not safe))
                                         (_%simplify143581%_ _%body143621%_))))
                                 (if (let ((__tmp145690
                                            (length _%body143623%_)))
                                       (declare (not safe))
                                       (##fx= __tmp145690 '1))
                                     (car _%body143623%_)
                                     (cons 'begin _%body143623%_))))
                             _%tl143586143603%_)))
                        (let ()
                          (declare (not safe))
                          (_%g143583143593%_ _%g143584143596%_))))))
            (declare (not safe))
            (_%g143582143626%_ _%stx143579%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self143539%_ _%stx143540%_)
        (let* ((_%g143542143552%_
                (lambda (_%g143543143549%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143543143549%_))))
               (_%g143541143575%_
                (lambda (_%g143543143555%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143543143555%_))
                      (let ((_%e143547143557%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143543143555%_))))
                        (let ((_%hd143546143560%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143547143557%_)))
                              (_%tl143545143562%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143547143557%_))))
                          ((lambda (_%L143565%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L143565%_))))
                           _%tl143545143562%_)))
                      (let ()
                        (declare (not safe))
                        (_%g143542143552%_ _%g143543143555%_))))))
          (declare (not safe))
          (_%g143541143575%_ _%stx143540%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self143303%_ _%stx143304%_)
        (let* ((_%__stx144269144270%_ _%stx143304%_)
               (_%g143308143360%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144269144270%_)))))
          (let ((_%__kont144271144272%_
                 (lambda (_%L143521%_ _%L143522%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self143303%_ _%L143521%_))))
                (_%__kont144273144274%_
                 (lambda (_%L143469%_ _%L143470%_ _%L143471%_)
                   (if (let ((__tmp145691
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L143471%_))))
                         (declare (not safe))
                         (##memq __tmp145691 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self143303%_ _%L143469%_)))))
                (_%__kont144277144278%_
                 (lambda (_%L143389%_ _%L143390%_)
                   (let ((_%decls143405%_ (map gx#syntax->datum _%L143390%_)))
                     (let ((__tmp145694
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls143405%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143303%_
                                                   _%L143389%_))
                                                '())))))
                           (__tmp145692
                            (let ((__tmp145693
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp145693 _%decls143405%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp145694
                        gxc#current-compile-decls
                        __tmp145692))))))
            (let* ((_%__match144324144325%_
                    (lambda (_%e143326143413%_
                             _%hd143325143416%_
                             _%tl143324143418%_
                             _%e143329143421%_
                             _%hd143328143424%_
                             _%tl143327143426%_
                             _%e143332143429%_
                             _%hd143331143432%_
                             _%tl143330143434%_
                             _%__splice144275144276%_
                             _%target143333143437%_
                             _%tl143335143439%_)
                      (letrec ((_%loop143336143442%_
                                (lambda (_%hd143334143445%_
                                         _%param143340143447%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd143334143445%_))
                                      (let ((_%e143337143450%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd143334143445%_))))
                                        (let ((_%lp-tl143339143455%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143337143450%_)))
                                              (_%lp-hd143338143453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143337143450%_))))
                                          (let ((__tmp145695
                                                 (cons _%lp-hd143338143453%_
                                                       _%param143340143447%_)))
                                            (declare (not safe))
                                            (_%loop143336143442%_
                                             _%lp-tl143339143455%_
                                             __tmp145695))))
                                      (let ((_%param143341143458%_
                                             (reverse _%param143340143447%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143327143426%_))
                                            (let ((_%e143344143461%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143327143426%_))))
                                              (let ((_%tl143342143466%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143344143461%_)))
                                                    (_%hd143343143464%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143344143461%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl143342143466%_))
                                                    (let ((_%L143469%_
                                                           _%hd143343143464%_)
                                                          (_%L143470%_
                                                           _%param143341143458%_)
                                                          (_%L143471%_
                                                           _%hd143331143432%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L143471%_))
                       (let ((__tmp145696
                              (let ((__tmp145697
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L143471%_))))
                                (declare (not safe))
                                (##memq __tmp145697 gxc#gambit-annotations))))
                         (declare (not safe))
                         (not __tmp145696)))
                  (_%__kont144273144274%_ _%L143469%_ _%L143470%_ _%L143471%_)
                  (_%__kont144277144278%_
                   _%hd143343143464%_
                   _%hd143328143424%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g143308143360%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g143308143360%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop143336143442%_ _%target143333143437%_ '())))))
                   (_%__match144298144299%_
                    (lambda (_%e143314143497%_
                             _%hd143313143500%_
                             _%tl143312143502%_
                             _%e143317143505%_
                             _%hd143316143508%_
                             _%tl143315143510%_
                             _%e143320143513%_
                             _%hd143319143516%_
                             _%tl143318143518%_)
                      (let ((_%L143521%_ _%hd143319143516%_)
                            (_%L143522%_ _%hd143316143508%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L143522%_))
                            (_%__kont144271144272%_ _%L143521%_ _%L143522%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd143316143508%_))
                                (let ((_%e143332143429%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd143316143508%_))))
                                  (let ((_%tl143330143434%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143332143429%_)))
                                        (_%hd143331143432%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143332143429%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl143330143434%_))
                                        (let ((_%__splice144275144276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl143330143434%_
                                                  '0))))
                                          (let ((_%tl143335143439%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice144275144276%_
                                                    '1)))
                                                (_%target143333143437%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice144275144276%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143335143439%_))
                                                (_%__match144324144325%_
                                                 _%e143314143497%_
                                                 _%hd143313143500%_
                                                 _%tl143312143502%_
                                                 _%e143317143505%_
                                                 _%hd143316143508%_
                                                 _%tl143315143510%_
                                                 _%e143332143429%_
                                                 _%hd143331143432%_
                                                 _%tl143330143434%_
                                                 _%__splice144275144276%_
                                                 _%target143333143437%_
                                                 _%tl143335143439%_)
                                                (_%__kont144277144278%_
                                                 _%hd143319143516%_
                                                 _%hd143316143508%_))))
                                        (_%__kont144277144278%_
                                         _%hd143319143516%_
                                         _%hd143316143508%_))))
                                (_%__kont144277144278%_
                                 _%hd143319143516%_
                                 _%hd143316143508%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144269144270%_))
                  (let ((_%e143314143497%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144269144270%_))))
                    (let ((_%tl143312143502%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143314143497%_)))
                          (_%hd143313143500%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143314143497%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143312143502%_))
                          (let ((_%e143317143505%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143312143502%_))))
                            (let ((_%tl143315143510%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143317143505%_)))
                                  (_%hd143316143508%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143317143505%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl143315143510%_))
                                  (let ((_%e143320143513%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl143315143510%_))))
                                    (let ((_%tl143318143518%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143320143513%_)))
                                          (_%hd143319143516%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143320143513%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl143318143518%_))
                                          (_%__match144298144299%_
                                           _%e143314143497%_
                                           _%hd143313143500%_
                                           _%tl143312143502%_
                                           _%e143317143505%_
                                           _%hd143316143508%_
                                           _%tl143315143510%_
                                           _%e143320143513%_
                                           _%hd143319143516%_
                                           _%tl143318143518%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd143316143508%_))
                                              (let ((_%e143332143429%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd143316143508%_))))
                                                (let ((_%tl143330143434%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143332143429%_)))
                                                      (_%hd143331143432%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143332143429%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl143330143434%_))
                                                      (let ((_%__splice144275144276%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl143330143434%_ '0))))
                (let ((_%tl143335143439%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice144275144276%_ '1)))
                      (_%target143333143437%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice144275144276%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl143335143439%_))
                      (_%__match144324144325%_
                       _%e143314143497%_
                       _%hd143313143500%_
                       _%tl143312143502%_
                       _%e143317143505%_
                       _%hd143316143508%_
                       _%tl143315143510%_
                       _%e143332143429%_
                       _%hd143331143432%_
                       _%tl143330143434%_
                       _%__splice144275144276%_
                       _%target143333143437%_
                       _%tl143335143439%_)
                      (let () (declare (not safe)) (_%g143308143360%_)))))
              (let () (declare (not safe)) (_%g143308143360%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g143308143360%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd143316143508%_))
                                      (let ((_%e143332143429%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd143316143508%_))))
                                        (let ((_%tl143330143434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143332143429%_)))
                                              (_%hd143331143432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143332143429%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl143330143434%_))
                                              (let ((_%__splice144275144276%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl143330143434%_
                                                        '0))))
                                                (let ((_%tl143335143439%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice144275144276%_
                                                          '1)))
                                                      (_%target143333143437%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice144275144276%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143335143439%_))
                                                      (_%__match144324144325%_
                                                       _%e143314143497%_
                                                       _%hd143313143500%_
                                                       _%tl143312143502%_
                                                       _%e143317143505%_
                                                       _%hd143316143508%_
                                                       _%tl143315143510%_
                                                       _%e143332143429%_
                                                       _%hd143331143432%_
                                                       _%tl143330143434%_
                                                       _%__splice144275144276%_
                                                       _%target143333143437%_
                                                       _%tl143335143439%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g143308143360%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g143308143360%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143308143360%_))))))
                          (let () (declare (not safe)) (_%g143308143360%_)))))
                  (let () (declare (not safe)) (_%g143308143360%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self143262%_ _%stx143263%_)
        (let* ((_%g143265143275%_
                (lambda (_%g143266143272%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143266143272%_))))
               (_%g143264143300%_
                (lambda (_%g143266143278%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143266143278%_))
                      (let ((_%e143270143280%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143266143278%_))))
                        (let ((_%hd143269143283%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143270143280%_)))
                              (_%tl143268143285%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143270143280%_))))
                          ((lambda (_%L143288%_)
                             (let ((_%decls143298%_
                                    (map gx#syntax->datum _%L143288%_)))
                               (let ((__tmp145698
                                      (let ((__tmp145699
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp145699
                                         _%decls143298%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp145698))
                               (cons 'declare _%decls143298%_)))
                           _%tl143268143285%_)))
                      (let ()
                        (declare (not safe))
                        (_%g143265143275%_ _%g143266143278%_))))))
          (declare (not safe))
          (_%g143264143300%_ _%stx143263%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self143008%_ _%stx143009%_)
        (let* ((_%g143011143028%_
                (lambda (_%g143012143025%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143012143025%_))))
               (_%g143010143259%_
                (lambda (_%g143012143031%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143012143031%_))
                      (let ((_%e143017143033%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143012143031%_))))
                        (let ((_%hd143016143036%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143017143033%_)))
                              (_%tl143015143038%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143017143033%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143015143038%_))
                              (let ((_%e143020143041%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143015143038%_))))
                                (let ((_%hd143019143044%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143020143041%_)))
                                      (_%tl143018143046%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143020143041%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143018143046%_))
                                      (let ((_%e143023143049%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143018143046%_))))
                                        (let ((_%hd143022143052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143023143049%_)))
                                              (_%tl143021143054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143023143049%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143021143054%_))
                                              ((lambda (_%L143057%_
                                                        _%L143058%_)
                                                 (let* ((_%__stx144377144378%_
                                                         _%L143058%_)
                                                        (_%g143075143089%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx144377144378%_)))))
                                                   (let ((_%__kont144379144380%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self143008%_
                                                               _%L143057%_))))
                                                         (_%__kont144381144382%_
                                                          (lambda (_%L143221%_)
                                                            (let ((_%eid143230%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L143221%_))))
                      (let ((_%lambda-expr143231143233%_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression
                                _%L143057%_))))
                        (if _%lambda-expr143231143233%_
                            (let* ((_%lambda-expr143236%_
                                    _%lambda-expr143231143233%_)
                                   (__tmp145700
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp145700
                               _%lambda-expr143236%_
                               _%eid143230%_))
                            '#f))
                      (cons 'define
                            (cons _%eid143230%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self143008%_
                                           _%L143057%_))
                                        '()))))))
                 (_%__kont144383144384%_
                  (lambda ()
                    (let* ((_%tmp143096%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body143205%_
                            (let _%lp143098%_ ((_%rest143100%_ _%L143058%_)
                                               (_%k143101%_ '0)
                                               (_%r143102%_ '()))
                              (let* ((_%__stx144347144348%_ _%rest143100%_)
                                     (_%g143107143124%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx144347144348%_)))))
                                (let ((_%__kont144349144350%_
                                       (lambda (_%L143192%_)
                                         (let ((__tmp145701
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%k143101%_ '1))))
                                           (declare (not safe))
                                           (_%lp143098%_
                                            _%L143192%_
                                            __tmp145701
                                            _%r143102%_))))
                                      (_%__kont144351144352%_
                                       (lambda (_%L143165%_ _%L143166%_)
                                         (let ((__tmp145703
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%k143101%_ '1)))
                                               (__tmp145702
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L143166%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-values-ref
                                   _%tmp143096%_
                                   _%k143101%_
                                   _%L143165%_))
                                '())))
              _%r143102%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%lp143098%_
                                            _%L143165%_
                                            __tmp145703
                                            __tmp145702))))
                                      (_%__kont144353144354%_
                                       (lambda (_%L143136%_)
                                         (let ((__tmp145704
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L143136%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-values->list
                                   _%tmp143096%_
                                   _%k143101%_))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp145704
                                            _%r143102%_))))
                                      (_%__kont144355144356%_
                                       (lambda () (reverse _%r143102%_))))
                                  (let ((_%g143105143152%_
                                         (lambda ()
                                           (let ((_%L143136%_
                                                  _%__stx144347144348%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L143136%_))
                                                 (_%__kont144353144354%_
                                                  _%L143136%_)
                                                 (_%__kont144355144356%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx144347144348%_))
                                        (let ((_%e143112143181%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx144347144348%_))))
                                          (let ((_%tl143110143186%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143112143181%_)))
                                                (_%hd143111143184%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143112143181%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd143111143184%_))
                                                (let ((_%e143113143189%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143111143184%_))))
                                                  (if (equal? _%e143113143189%_
                                                              '#f)
                                                      (_%__kont144349144350%_
                                                       _%tl143110143186%_)
                                                      (_%__kont144351144352%_
                                                       _%tl143110143186%_
                                                       _%hd143111143184%_)))
                                                (_%__kont144351144352%_
                                                 _%tl143110143186%_
                                                 _%hd143111143184%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g143105143152%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp143096%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self143008%_
                                                       _%L143057%_))
                                                    '())))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-check-values
                                           _%tmp143096%_
                                           _%L143058%_
                                           _%L143057%_))
                                        _%body143205%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx144377144378%_))
                                                         (let ((_%e143079143243%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx144377144378%_))))
                   (let ((_%tl143077143248%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e143079143243%_)))
                         (_%hd143078143246%_
                          (let ()
                            (declare (not safe))
                            (##car _%e143079143243%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd143078143246%_))
                         (let ((_%e143080143251%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd143078143246%_))))
                           (if (equal? _%e143080143251%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl143077143248%_))
                                   (_%__kont144379144380%_)
                                   (_%__kont144383144384%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl143077143248%_))
                                   (_%__kont144381144382%_ _%hd143078143246%_)
                                   (_%__kont144383144384%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143077143248%_))
                             (_%__kont144381144382%_ _%hd143078143246%_)
                             (_%__kont144383144384%_)))))
                 (_%__kont144383144384%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd143022143052%_
                                               _%hd143019143044%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g143011143028%_
                                                 _%g143012143031%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143011143028%_
                                         _%g143012143031%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143011143028%_ _%g143012143031%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143011143028%_ _%g143012143031%_))))))
          (declare (not safe))
          (_%g143010143259%_ _%stx143009%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals142983%_ _%hd142984%_ _%expr142985%_)
        (let ((_%$e142987%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _%expr142985%_))))
          (if _%$e142987%_
              ((lambda (_%count142990%_)
                 (let ((_%len142992%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd142984%_)))
                       (_%cmp142993%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd142984%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len142992%_ '0))
                           (_%cmp142993%_ _%count142990%_ _%len142992%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr142985%_
                          _%hd142984%_)))))
               _%$e142987%_)
              (let ()
                (let* ((_%len142999%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd142984%_)))
                       (_%cmp143001%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd142984%_))
                            '##fx=
                            '##fx>=))
                       (_%errmsg143003%_
                        (let ((__tmp145706
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-list? _%hd142984%_))
                                   '"Context expects "
                                   '"Context expects at least "))
                              (__tmp145705 (number->string _%len142999%_)))
                          (declare (not safe))
                          (##string-append
                           __tmp145706
                           __tmp145705
                           '" values")))
                       (_%count143005%_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-temporary__0))))
                  (if (and (let ((__tmp145707
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-list? _%hd142984%_))))
                             (declare (not safe))
                             (not __tmp145707))
                           (let ()
                             (declare (not safe))
                             (##fx= _%len142999%_ '0)))
                      '#!void
                      (cons 'let
                            (cons (cons (cons _%count143005%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-values-count
                                                       _%vals142983%_))
                                                    '()))
                                        '())
                                  (cons (cons 'if
                                              (cons (cons 'not
                                                          (cons (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#current-compile-decls-unsafe?))
                            (cons _%cmp143001%_
                                  (cons _%count143005%_
                                        (cons _%len142999%_ '())))
                            (cons 'let
                                  (cons '()
                                        (cons '(declare (not safe))
                                              (cons (cons _%cmp143001%_
                                                          (cons _%count143005%_
                                                                (cons _%len142999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'error
                                                                (cons _%errmsg143003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%count143005%_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var142978%_)
        (letrec ((_%generate-inline142980%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var142978%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var142978%_ '()))
                                      (cons '1 '())))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_%generate-inline142980%_))
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (let ()
                                        (declare (not safe))
                                        (_%generate-inline142980%_))
                                      '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var142971%_ _%i142972%_ _%rest142973%_)
        (letrec ((_%generate-inline142975%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i142972%_ '0))
                             (let ((__tmp145708
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%rest142973%_))))
                               (declare (not safe))
                               (not __tmp145708)))
                        (cons 'if
                              (cons (cons '##values? (cons _%var142971%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var142971%_
                                                      (cons '0 '())))
                                          (cons _%var142971%_ '()))))
                        (cons '##vector-ref
                              (cons _%var142971%_ (cons _%i142972%_ '())))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_%generate-inline142975%_))
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (let ()
                                        (declare (not safe))
                                        (_%generate-inline142975%_))
                                      '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var142965%_ _%i142966%_)
        (if (let () (declare (not safe)) (##fx= _%i142966%_ '0))
            (let ()
              (if (let ()
                    (declare (not safe))
                    (gxc#current-compile-decls-unsafe?))
                  (cons 'if
                        (cons (cons '##values? (cons _%var142965%_ '()))
                              (cons (cons '##vector->list
                                          (cons _%var142965%_ '()))
                                    (cons (cons 'list (cons _%var142965%_ '()))
                                          '()))))
                  (cons 'let
                        (cons '()
                              (cons '(declare (not safe))
                                    (cons (cons 'if
                                                (cons (cons '##values?
                                                            (cons _%var142965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '##vector->list (cons _%var142965%_ '()))
                    (cons (cons 'list (cons _%var142965%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))))
            (if (let () (declare (not safe)) (##fx= _%i142966%_ '1))
                (let ()
                  (if (let ()
                        (declare (not safe))
                        (gxc#current-compile-decls-unsafe?))
                      (cons 'if
                            (cons (cons '##values? (cons _%var142965%_ '()))
                                  (cons (cons '##cdr
                                              (cons (cons '##vector->list
                                                          (cons _%var142965%_
                                                                '()))
                                                    '()))
                                        (cons ''() '()))))
                      (cons 'let
                            (cons '()
                                  (cons '(declare (not safe))
                                        (cons (cons 'if
                                                    (cons (cons '##values?
                                                                (cons _%var142965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '##cdr
                              (cons (cons '##vector->list
                                          (cons _%var142965%_ '()))
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
                                        (cons _%var142965%_ '()))
                                  (cons _%i142966%_ '())))
                      (cons 'let
                            (cons '()
                                  (cons '(declare (not safe))
                                        (cons (cons '##list-tail
                                                    (cons (cons '##vector->list
                                                                (cons _%var142965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons _%i142966%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self142897%_ _%stx142898%_)
        (let* ((_%g142900142917%_
                (lambda (_%g142901142914%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142901142914%_))))
               (_%g142899142962%_
                (lambda (_%g142901142920%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142901142920%_))
                      (let ((_%e142906142922%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142901142920%_))))
                        (let ((_%hd142905142925%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142906142922%_)))
                              (_%tl142904142927%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142906142922%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142904142927%_))
                              (let ((_%e142909142930%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142904142927%_))))
                                (let ((_%hd142908142933%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142909142930%_)))
                                      (_%tl142907142935%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142909142930%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142907142935%_))
                                      (let ((_%e142912142938%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142907142935%_))))
                                        (let ((_%hd142911142941%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142912142938%_)))
                                              (_%tl142910142943%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142912142938%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142910142943%_))
                                              ((lambda (_%L142946%_
                                                        _%L142947%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _%self142897%_
                                                    _%L142947%_
                                                    _%L142946%_)))
                                               _%hd142911142941%_
                                               _%hd142908142933%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g142900142917%_
                                                 _%g142901142920%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142900142917%_
                                         _%g142901142920%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g142900142917%_ _%g142901142920%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g142900142917%_ _%g142901142920%_))))))
          (declare (not safe))
          (_%g142899142962%_ _%stx142898%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self142856%_ _%hd142857%_ _%body142858%_)
        (let* ((_%hd142860%_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _%hd142857%_)))
               (_%body142862%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self142856%_ _%body142858%_)))
               (_%body142894%_
                (let* ((_%body142863142871%_ _%body142862%_)
                       (_%else142865142879%_
                        (lambda () (cons _%body142862%_ '())))
                       (_%K142867142884%_
                        (lambda (_%exprs142882%_) _%exprs142882%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body142863142871%_))
                      (let ((_%hd142868142887%_
                             (let ()
                               (declare (not safe))
                               (##car _%body142863142871%_)))
                            (_%tl142869142889%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body142863142871%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd142868142887%_ 'begin))
                            (let ((_%exprs142892%_ _%tl142869142889%_))
                              (declare (not safe))
                              (_%K142867142884%_ _%exprs142892%_))
                            (let ()
                              (declare (not safe))
                              (_%else142865142879%_))))
                      (let () (declare (not safe)) (_%else142865142879%_))))))
          (cons 'lambda (cons _%hd142860%_ _%body142894%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd142854%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd142854%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self141393%_ _%stx141394%_)
        (letrec ((_%dispatch-case?141396%_
                  (lambda (_%hd142084%_ _%body142085%_)
                    (let* ((_%form142087%_
                            (cons _%hd142084%_ (cons _%body142085%_ '())))
                           (_%__stx144409144410%_ _%form142087%_)
                           (_%g142092142249%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144409144410%_)))))
                      (let ((_%__kont144411144412%_
                             (lambda (_%L142774%_ _%L142775%_ _%L142776%_)
                               '#t))
                            (_%__kont144417144418%_
                             (lambda (_%L142562%_
                                      _%L142563%_
                                      _%L142564%_
                                      _%L142565%_
                                      _%L142566%_
                                      _%L142567%_)
                               '#t))
                            (_%__kont144423144424%_
                             (lambda (_%L142357%_
                                      _%L142358%_
                                      _%L142359%_
                                      _%L142360%_)
                               '#t))
                            (_%__kont144425144426%_ (lambda () '#f)))
                        (let* ((_%__match144550144551%_
                                (lambda (_%e142211142261%_
                                         _%hd142210142264%_
                                         _%tl142209142266%_
                                         _%e142214142269%_
                                         _%hd142213142272%_
                                         _%tl142212142274%_
                                         _%e142217142277%_
                                         _%hd142216142280%_
                                         _%tl142215142282%_
                                         _%e142220142285%_
                                         _%hd142219142288%_
                                         _%tl142218142290%_
                                         _%e142223142293%_
                                         _%hd142222142296%_
                                         _%tl142221142298%_
                                         _%e142226142301%_
                                         _%hd142225142304%_
                                         _%tl142224142306%_
                                         _%e142229142309%_
                                         _%hd142228142312%_
                                         _%tl142227142314%_
                                         _%e142232142317%_
                                         _%hd142231142320%_
                                         _%tl142230142322%_
                                         _%e142235142325%_
                                         _%hd142234142328%_
                                         _%tl142233142330%_
                                         _%e142238142333%_
                                         _%hd142237142336%_
                                         _%tl142236142338%_
                                         _%e142241142341%_
                                         _%hd142240142344%_
                                         _%tl142239142346%_
                                         _%e142244142349%_
                                         _%hd142243142352%_
                                         _%tl142242142354%_)
                                  (let ((_%L142357%_ _%hd142243142352%_)
                                        (_%L142358%_ _%hd142234142328%_)
                                        (_%L142359%_ _%hd142225142304%_)
                                        (_%L142360%_ _%hd142210142264%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L142360%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L142359%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L142360%_
                                                _%L142357%_))
                                             (let ((__tmp145709
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _%L142358%_
                                                       _%L142360%_))))
                                               (declare (not safe))
                                               (not __tmp145709)))
                                        (_%__kont144423144424%_
                                         _%L142357%_
                                         _%L142358%_
                                         _%L142359%_
                                         _%L142360%_)
                                        (_%__kont144425144426%_)))))
                               (_%__match144522144523%_
                                (lambda (_%e142211142261%_
                                         _%hd142210142264%_
                                         _%tl142209142266%_
                                         _%e142214142269%_
                                         _%hd142213142272%_
                                         _%tl142212142274%_
                                         _%e142217142277%_
                                         _%hd142216142280%_
                                         _%tl142215142282%_
                                         _%e142220142285%_
                                         _%hd142219142288%_
                                         _%tl142218142290%_
                                         _%e142223142293%_
                                         _%hd142222142296%_
                                         _%tl142221142298%_
                                         _%e142226142301%_
                                         _%hd142225142304%_
                                         _%tl142224142306%_
                                         _%e142229142309%_
                                         _%hd142228142312%_
                                         _%tl142227142314%_
                                         _%e142232142317%_
                                         _%hd142231142320%_
                                         _%tl142230142322%_
                                         _%e142235142325%_
                                         _%hd142234142328%_
                                         _%tl142233142330%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142227142314%_))
                                      (let ((_%e142238142333%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142227142314%_))))
                                        (let ((_%tl142236142338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142238142333%_)))
                                              (_%hd142237142336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142238142333%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd142237142336%_))
                                              (let ((_%e142241142341%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd142237142336%_))))
                                                (let ((_%tl142239142346%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142241142341%_)))
                                                      (_%hd142240142344%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142241142341%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd142240142344%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd142240142344%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl142239142346%_))
                      (let ((_%e142244142349%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl142239142346%_))))
                        (let ((_%tl142242142354%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142244142349%_)))
                              (_%hd142243142352%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142244142349%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl142242142354%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl142236142338%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl142212142274%_))
                                      (_%__match144550144551%_
                                       _%e142211142261%_
                                       _%hd142210142264%_
                                       _%tl142209142266%_
                                       _%e142214142269%_
                                       _%hd142213142272%_
                                       _%tl142212142274%_
                                       _%e142217142277%_
                                       _%hd142216142280%_
                                       _%tl142215142282%_
                                       _%e142220142285%_
                                       _%hd142219142288%_
                                       _%tl142218142290%_
                                       _%e142223142293%_
                                       _%hd142222142296%_
                                       _%tl142221142298%_
                                       _%e142226142301%_
                                       _%hd142225142304%_
                                       _%tl142224142306%_
                                       _%e142229142309%_
                                       _%hd142228142312%_
                                       _%tl142227142314%_
                                       _%e142232142317%_
                                       _%hd142231142320%_
                                       _%tl142230142322%_
                                       _%e142235142325%_
                                       _%hd142234142328%_
                                       _%tl142233142330%_
                                       _%e142238142333%_
                                       _%hd142237142336%_
                                       _%tl142236142338%_
                                       _%e142241142341%_
                                       _%hd142240142344%_
                                       _%tl142239142346%_
                                       _%e142244142349%_
                                       _%hd142243142352%_
                                       _%tl142242142354%_)
                                      (_%__kont144425144426%_))
                                  (_%__kont144425144426%_))
                              (_%__kont144425144426%_))))
                      (_%__kont144425144426%_))
                  (_%__kont144425144426%_))
              (_%__kont144425144426%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont144425144426%_))))
                                      (_%__kont144425144426%_))))
                               (_%__match144452144453%_
                                (lambda (_%e142147142402%_
                                         _%hd142146142405%_
                                         _%tl142145142407%_
                                         _%__splice144419144420%_
                                         _%target142148142410%_
                                         _%tl142150142412%_)
                                  (letrec ((_%loop142151142415%_
                                            (lambda (_%hd142149142418%_
                                                     _%arg142155142420%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142149142418%_))
                                                  (let ((_%e142152142423%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142149142418%_))))
                                                    (let ((_%lp-tl142154142428%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142152142423%_)))
                                                          (_%lp-hd142153142426%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142152142423%_))))
                                                      (let ((__tmp145710
                                                             (cons _%lp-hd142153142426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg142155142420%_)))
                (declare (not safe))
                (_%loop142151142415%_ _%lp-tl142154142428%_ __tmp145710))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg142156142431%_
                                                         (reverse _%arg142155142420%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142145142407%_))
                                                        (let ((_%e142159142434%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142145142407%_))))
                  (let ((_%tl142157142439%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142159142434%_)))
                        (_%hd142158142437%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142159142434%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142158142437%_))
                        (let ((_%e142162142442%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142158142437%_))))
                          (let ((_%tl142160142447%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142162142442%_)))
                                (_%hd142161142445%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142162142442%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142161142445%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd142161142445%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142160142447%_))
                                        (let ((_%e142165142450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142160142447%_))))
                                          (let ((_%tl142163142455%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142165142450%_)))
                                                (_%hd142164142453%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142165142450%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd142164142453%_))
                                                (let ((_%e142168142458%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142164142453%_))))
                                                  (let ((_%tl142166142463%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142168142458%_)))
                                                        (_%hd142167142461%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142168142458%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd142167142461%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd142167142461%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl142166142463%_))
                        (let ((_%e142171142466%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl142166142463%_))))
                          (let ((_%tl142169142471%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142171142466%_)))
                                (_%hd142170142469%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142171142466%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142169142471%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl142163142455%_))
                                    (let ((_%e142174142474%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl142163142455%_))))
                                      (let ((_%tl142172142479%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e142174142474%_)))
                                            (_%hd142173142477%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e142174142474%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd142173142477%_))
                                            (let ((_%e142177142482%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd142173142477%_))))
                                              (let ((_%tl142175142487%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142177142482%_)))
                                                    (_%hd142176142485%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142177142482%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd142176142485%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd142176142485%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl142175142487%_))
                                                            (let ((_%e142180142490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl142175142487%_))))
                      (let ((_%tl142178142495%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142180142490%_)))
                            (_%hd142179142493%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142180142490%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl142178142495%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl142172142479%_))
                                (if (let ((__tmp145711
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl142172142479%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp145711 '1))
                                    (let ((_%__splice144421144422%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl142172142479%_
                                              '1))))
                                      (let ((_%tl142183142500%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144421144422%_
                                                '1)))
                                            (_%target142181142498%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144421144422%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142183142500%_))
                                            (let ((_%e142192142503%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142183142500%_))))
                                              (let ((_%tl142190142508%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142192142503%_)))
                                                    (_%hd142191142506%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142192142503%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd142191142506%_))
                                                    (let ((_%e142195142511%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd142191142506%_))))
                                                      (let ((_%tl142193142516%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e142195142511%_)))
                    (_%hd142194142514%_
                     (let () (declare (not safe)) (##car _%e142195142511%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd142194142514%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd142194142514%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl142193142516%_))
                            (let ((_%e142198142519%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl142193142516%_))))
                              (let ((_%tl142196142524%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e142198142519%_)))
                                    (_%hd142197142522%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e142198142519%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl142196142524%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl142190142508%_))
                                        (letrec ((_%loop142184142527%_
                                                  (lambda (_%hd142182142530%_
                                                           _%xarg142188142532%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd142182142530%_))
                                                        (let ((_%e142185142535%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd142182142530%_))))
                  (let ((_%lp-tl142187142540%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142185142535%_)))
                        (_%lp-hd142186142538%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142185142535%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd142186142538%_))
                        (let ((_%e142201142543%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd142186142538%_))))
                          (let ((_%tl142199142548%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142201142543%_)))
                                (_%hd142200142546%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142201142543%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142200142546%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd142200142546%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142199142548%_))
                                        (let ((_%e142204142551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142199142548%_))))
                                          (let ((_%tl142202142556%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142204142551%_)))
                                                (_%hd142203142554%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142204142551%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142202142556%_))
                                                (let ((__tmp145712
                                                       (cons _%hd142203142554%_
                                                             _%xarg142188142532%_)))
                                                  (declare (not safe))
                                                  (_%loop142184142527%_
                                                   _%lp-tl142187142540%_
                                                   __tmp145712))
                                                (_%__match144522144523%_
                                                 _%e142147142402%_
                                                 _%hd142146142405%_
                                                 _%tl142145142407%_
                                                 _%e142159142434%_
                                                 _%hd142158142437%_
                                                 _%tl142157142439%_
                                                 _%e142162142442%_
                                                 _%hd142161142445%_
                                                 _%tl142160142447%_
                                                 _%e142165142450%_
                                                 _%hd142164142453%_
                                                 _%tl142163142455%_
                                                 _%e142168142458%_
                                                 _%hd142167142461%_
                                                 _%tl142166142463%_
                                                 _%e142171142466%_
                                                 _%hd142170142469%_
                                                 _%tl142169142471%_
                                                 _%e142174142474%_
                                                 _%hd142173142477%_
                                                 _%tl142172142479%_
                                                 _%e142177142482%_
                                                 _%hd142176142485%_
                                                 _%tl142175142487%_
                                                 _%e142180142490%_
                                                 _%hd142179142493%_
                                                 _%tl142178142495%_))))
                                        (_%__match144522144523%_
                                         _%e142147142402%_
                                         _%hd142146142405%_
                                         _%tl142145142407%_
                                         _%e142159142434%_
                                         _%hd142158142437%_
                                         _%tl142157142439%_
                                         _%e142162142442%_
                                         _%hd142161142445%_
                                         _%tl142160142447%_
                                         _%e142165142450%_
                                         _%hd142164142453%_
                                         _%tl142163142455%_
                                         _%e142168142458%_
                                         _%hd142167142461%_
                                         _%tl142166142463%_
                                         _%e142171142466%_
                                         _%hd142170142469%_
                                         _%tl142169142471%_
                                         _%e142174142474%_
                                         _%hd142173142477%_
                                         _%tl142172142479%_
                                         _%e142177142482%_
                                         _%hd142176142485%_
                                         _%tl142175142487%_
                                         _%e142180142490%_
                                         _%hd142179142493%_
                                         _%tl142178142495%_))
                                    (_%__match144522144523%_
                                     _%e142147142402%_
                                     _%hd142146142405%_
                                     _%tl142145142407%_
                                     _%e142159142434%_
                                     _%hd142158142437%_
                                     _%tl142157142439%_
                                     _%e142162142442%_
                                     _%hd142161142445%_
                                     _%tl142160142447%_
                                     _%e142165142450%_
                                     _%hd142164142453%_
                                     _%tl142163142455%_
                                     _%e142168142458%_
                                     _%hd142167142461%_
                                     _%tl142166142463%_
                                     _%e142171142466%_
                                     _%hd142170142469%_
                                     _%tl142169142471%_
                                     _%e142174142474%_
                                     _%hd142173142477%_
                                     _%tl142172142479%_
                                     _%e142177142482%_
                                     _%hd142176142485%_
                                     _%tl142175142487%_
                                     _%e142180142490%_
                                     _%hd142179142493%_
                                     _%tl142178142495%_))
                                (_%__match144522144523%_
                                 _%e142147142402%_
                                 _%hd142146142405%_
                                 _%tl142145142407%_
                                 _%e142159142434%_
                                 _%hd142158142437%_
                                 _%tl142157142439%_
                                 _%e142162142442%_
                                 _%hd142161142445%_
                                 _%tl142160142447%_
                                 _%e142165142450%_
                                 _%hd142164142453%_
                                 _%tl142163142455%_
                                 _%e142168142458%_
                                 _%hd142167142461%_
                                 _%tl142166142463%_
                                 _%e142171142466%_
                                 _%hd142170142469%_
                                 _%tl142169142471%_
                                 _%e142174142474%_
                                 _%hd142173142477%_
                                 _%tl142172142479%_
                                 _%e142177142482%_
                                 _%hd142176142485%_
                                 _%tl142175142487%_
                                 _%e142180142490%_
                                 _%hd142179142493%_
                                 _%tl142178142495%_))))
                        (_%__match144522144523%_
                         _%e142147142402%_
                         _%hd142146142405%_
                         _%tl142145142407%_
                         _%e142159142434%_
                         _%hd142158142437%_
                         _%tl142157142439%_
                         _%e142162142442%_
                         _%hd142161142445%_
                         _%tl142160142447%_
                         _%e142165142450%_
                         _%hd142164142453%_
                         _%tl142163142455%_
                         _%e142168142458%_
                         _%hd142167142461%_
                         _%tl142166142463%_
                         _%e142171142466%_
                         _%hd142170142469%_
                         _%tl142169142471%_
                         _%e142174142474%_
                         _%hd142173142477%_
                         _%tl142172142479%_
                         _%e142177142482%_
                         _%hd142176142485%_
                         _%tl142175142487%_
                         _%e142180142490%_
                         _%hd142179142493%_
                         _%tl142178142495%_))))
                (let ((_%xarg142189142559%_ (reverse _%xarg142188142532%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142157142439%_))
                      (let ((_%L142562%_ _%hd142197142522%_)
                            (_%L142563%_ _%xarg142189142559%_)
                            (_%L142564%_ _%hd142179142493%_)
                            (_%L142565%_ _%hd142170142469%_)
                            (_%L142566%_ _%tl142150142412%_)
                            (_%L142567%_ _%arg142156142431%_))
                        (if (and (let ((__tmp145713
                                        (let ((__tmp145714
                                               (lambda (_%g142610142613%_
                                                        _%g142611142615%_)
                                                 (cons _%g142610142613%_
                                                       _%g142611142615%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145714
                                           '()
                                           _%L142567%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp145713))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L142566%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L142565%_
                                    'apply))
                                 (let ((__tmp145717
                                        (length (let ((__tmp145718
                                                       (lambda (_%g142617142620%_
                                                                _%g142618142622%_)
                                                         (cons _%g142617142620%_
                                                               _%g142618142622%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145718
                                                   '()
                                                   _%L142567%_))))
                                       (__tmp145715
                                        (length (let ((__tmp145716
                                                       (lambda (_%g142624142627%_
                                                                _%g142625142629%_)
                                                         (cons _%g142624142627%_
                                                               _%g142625142629%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145716
                                                   '()
                                                   _%L142563%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp145717 __tmp145715))
                                 (let ((__tmp145721
                                        (let ((__tmp145722
                                               (lambda (_%g142631142634%_
                                                        _%g142632142636%_)
                                                 (cons _%g142631142634%_
                                                       _%g142632142636%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145722
                                           '()
                                           _%L142567%_)))
                                       (__tmp145719
                                        (let ((__tmp145720
                                               (lambda (_%g142638142641%_
                                                        _%g142639142643%_)
                                                 (cons _%g142638142641%_
                                                       _%g142639142643%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145720
                                           '()
                                           _%L142563%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp145721
                                    __tmp145719))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L142566%_
                                    _%L142562%_))
                                 (let ((__tmp145723
                                        (let ((__tmp145727
                                               (lambda (_%g142645142647%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _%g142645142647%_
                                                    _%L142564%_))))
                                              (__tmp145724
                                               (let ((__tmp145726
                                                      (lambda (_%g142649142652%_
                                                               _%g142650142654%_)
                                                        (cons _%g142649142652%_
                                                              _%g142650142654%_)))
                                                     (__tmp145725
                                                      (cons _%L142566%_ '())))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp145726
                                                  __tmp145725
                                                  _%L142567%_))))
                                          (declare (not safe))
                                          (__find __tmp145727 __tmp145724))))
                                   (declare (not safe))
                                   (not __tmp145723)))
                            (_%__kont144417144418%_
                             _%L142562%_
                             _%L142563%_
                             _%L142564%_
                             _%L142565%_
                             _%L142566%_
                             _%L142567%_)
                            (_%__match144522144523%_
                             _%e142147142402%_
                             _%hd142146142405%_
                             _%tl142145142407%_
                             _%e142159142434%_
                             _%hd142158142437%_
                             _%tl142157142439%_
                             _%e142162142442%_
                             _%hd142161142445%_
                             _%tl142160142447%_
                             _%e142165142450%_
                             _%hd142164142453%_
                             _%tl142163142455%_
                             _%e142168142458%_
                             _%hd142167142461%_
                             _%tl142166142463%_
                             _%e142171142466%_
                             _%hd142170142469%_
                             _%tl142169142471%_
                             _%e142174142474%_
                             _%hd142173142477%_
                             _%tl142172142479%_
                             _%e142177142482%_
                             _%hd142176142485%_
                             _%tl142175142487%_
                             _%e142180142490%_
                             _%hd142179142493%_
                             _%tl142178142495%_)))
                      (_%__match144522144523%_
                       _%e142147142402%_
                       _%hd142146142405%_
                       _%tl142145142407%_
                       _%e142159142434%_
                       _%hd142158142437%_
                       _%tl142157142439%_
                       _%e142162142442%_
                       _%hd142161142445%_
                       _%tl142160142447%_
                       _%e142165142450%_
                       _%hd142164142453%_
                       _%tl142163142455%_
                       _%e142168142458%_
                       _%hd142167142461%_
                       _%tl142166142463%_
                       _%e142171142466%_
                       _%hd142170142469%_
                       _%tl142169142471%_
                       _%e142174142474%_
                       _%hd142173142477%_
                       _%tl142172142479%_
                       _%e142177142482%_
                       _%hd142176142485%_
                       _%tl142175142487%_
                       _%e142180142490%_
                       _%hd142179142493%_
                       _%tl142178142495%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop142184142527%_
                                             _%target142181142498%_
                                             '())))
                                        (_%__match144522144523%_
                                         _%e142147142402%_
                                         _%hd142146142405%_
                                         _%tl142145142407%_
                                         _%e142159142434%_
                                         _%hd142158142437%_
                                         _%tl142157142439%_
                                         _%e142162142442%_
                                         _%hd142161142445%_
                                         _%tl142160142447%_
                                         _%e142165142450%_
                                         _%hd142164142453%_
                                         _%tl142163142455%_
                                         _%e142168142458%_
                                         _%hd142167142461%_
                                         _%tl142166142463%_
                                         _%e142171142466%_
                                         _%hd142170142469%_
                                         _%tl142169142471%_
                                         _%e142174142474%_
                                         _%hd142173142477%_
                                         _%tl142172142479%_
                                         _%e142177142482%_
                                         _%hd142176142485%_
                                         _%tl142175142487%_
                                         _%e142180142490%_
                                         _%hd142179142493%_
                                         _%tl142178142495%_))
                                    (_%__match144522144523%_
                                     _%e142147142402%_
                                     _%hd142146142405%_
                                     _%tl142145142407%_
                                     _%e142159142434%_
                                     _%hd142158142437%_
                                     _%tl142157142439%_
                                     _%e142162142442%_
                                     _%hd142161142445%_
                                     _%tl142160142447%_
                                     _%e142165142450%_
                                     _%hd142164142453%_
                                     _%tl142163142455%_
                                     _%e142168142458%_
                                     _%hd142167142461%_
                                     _%tl142166142463%_
                                     _%e142171142466%_
                                     _%hd142170142469%_
                                     _%tl142169142471%_
                                     _%e142174142474%_
                                     _%hd142173142477%_
                                     _%tl142172142479%_
                                     _%e142177142482%_
                                     _%hd142176142485%_
                                     _%tl142175142487%_
                                     _%e142180142490%_
                                     _%hd142179142493%_
                                     _%tl142178142495%_))))
                            (_%__match144522144523%_
                             _%e142147142402%_
                             _%hd142146142405%_
                             _%tl142145142407%_
                             _%e142159142434%_
                             _%hd142158142437%_
                             _%tl142157142439%_
                             _%e142162142442%_
                             _%hd142161142445%_
                             _%tl142160142447%_
                             _%e142165142450%_
                             _%hd142164142453%_
                             _%tl142163142455%_
                             _%e142168142458%_
                             _%hd142167142461%_
                             _%tl142166142463%_
                             _%e142171142466%_
                             _%hd142170142469%_
                             _%tl142169142471%_
                             _%e142174142474%_
                             _%hd142173142477%_
                             _%tl142172142479%_
                             _%e142177142482%_
                             _%hd142176142485%_
                             _%tl142175142487%_
                             _%e142180142490%_
                             _%hd142179142493%_
                             _%tl142178142495%_))
                        (_%__match144522144523%_
                         _%e142147142402%_
                         _%hd142146142405%_
                         _%tl142145142407%_
                         _%e142159142434%_
                         _%hd142158142437%_
                         _%tl142157142439%_
                         _%e142162142442%_
                         _%hd142161142445%_
                         _%tl142160142447%_
                         _%e142165142450%_
                         _%hd142164142453%_
                         _%tl142163142455%_
                         _%e142168142458%_
                         _%hd142167142461%_
                         _%tl142166142463%_
                         _%e142171142466%_
                         _%hd142170142469%_
                         _%tl142169142471%_
                         _%e142174142474%_
                         _%hd142173142477%_
                         _%tl142172142479%_
                         _%e142177142482%_
                         _%hd142176142485%_
                         _%tl142175142487%_
                         _%e142180142490%_
                         _%hd142179142493%_
                         _%tl142178142495%_))
                    (_%__match144522144523%_
                     _%e142147142402%_
                     _%hd142146142405%_
                     _%tl142145142407%_
                     _%e142159142434%_
                     _%hd142158142437%_
                     _%tl142157142439%_
                     _%e142162142442%_
                     _%hd142161142445%_
                     _%tl142160142447%_
                     _%e142165142450%_
                     _%hd142164142453%_
                     _%tl142163142455%_
                     _%e142168142458%_
                     _%hd142167142461%_
                     _%tl142166142463%_
                     _%e142171142466%_
                     _%hd142170142469%_
                     _%tl142169142471%_
                     _%e142174142474%_
                     _%hd142173142477%_
                     _%tl142172142479%_
                     _%e142177142482%_
                     _%hd142176142485%_
                     _%tl142175142487%_
                     _%e142180142490%_
                     _%hd142179142493%_
                     _%tl142178142495%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144522144523%_
                                                     _%e142147142402%_
                                                     _%hd142146142405%_
                                                     _%tl142145142407%_
                                                     _%e142159142434%_
                                                     _%hd142158142437%_
                                                     _%tl142157142439%_
                                                     _%e142162142442%_
                                                     _%hd142161142445%_
                                                     _%tl142160142447%_
                                                     _%e142165142450%_
                                                     _%hd142164142453%_
                                                     _%tl142163142455%_
                                                     _%e142168142458%_
                                                     _%hd142167142461%_
                                                     _%tl142166142463%_
                                                     _%e142171142466%_
                                                     _%hd142170142469%_
                                                     _%tl142169142471%_
                                                     _%e142174142474%_
                                                     _%hd142173142477%_
                                                     _%tl142172142479%_
                                                     _%e142177142482%_
                                                     _%hd142176142485%_
                                                     _%tl142175142487%_
                                                     _%e142180142490%_
                                                     _%hd142179142493%_
                                                     _%tl142178142495%_))))
                                            (_%__match144522144523%_
                                             _%e142147142402%_
                                             _%hd142146142405%_
                                             _%tl142145142407%_
                                             _%e142159142434%_
                                             _%hd142158142437%_
                                             _%tl142157142439%_
                                             _%e142162142442%_
                                             _%hd142161142445%_
                                             _%tl142160142447%_
                                             _%e142165142450%_
                                             _%hd142164142453%_
                                             _%tl142163142455%_
                                             _%e142168142458%_
                                             _%hd142167142461%_
                                             _%tl142166142463%_
                                             _%e142171142466%_
                                             _%hd142170142469%_
                                             _%tl142169142471%_
                                             _%e142174142474%_
                                             _%hd142173142477%_
                                             _%tl142172142479%_
                                             _%e142177142482%_
                                             _%hd142176142485%_
                                             _%tl142175142487%_
                                             _%e142180142490%_
                                             _%hd142179142493%_
                                             _%tl142178142495%_))))
                                    (_%__match144522144523%_
                                     _%e142147142402%_
                                     _%hd142146142405%_
                                     _%tl142145142407%_
                                     _%e142159142434%_
                                     _%hd142158142437%_
                                     _%tl142157142439%_
                                     _%e142162142442%_
                                     _%hd142161142445%_
                                     _%tl142160142447%_
                                     _%e142165142450%_
                                     _%hd142164142453%_
                                     _%tl142163142455%_
                                     _%e142168142458%_
                                     _%hd142167142461%_
                                     _%tl142166142463%_
                                     _%e142171142466%_
                                     _%hd142170142469%_
                                     _%tl142169142471%_
                                     _%e142174142474%_
                                     _%hd142173142477%_
                                     _%tl142172142479%_
                                     _%e142177142482%_
                                     _%hd142176142485%_
                                     _%tl142175142487%_
                                     _%e142180142490%_
                                     _%hd142179142493%_
                                     _%tl142178142495%_))
                                (_%__match144522144523%_
                                 _%e142147142402%_
                                 _%hd142146142405%_
                                 _%tl142145142407%_
                                 _%e142159142434%_
                                 _%hd142158142437%_
                                 _%tl142157142439%_
                                 _%e142162142442%_
                                 _%hd142161142445%_
                                 _%tl142160142447%_
                                 _%e142165142450%_
                                 _%hd142164142453%_
                                 _%tl142163142455%_
                                 _%e142168142458%_
                                 _%hd142167142461%_
                                 _%tl142166142463%_
                                 _%e142171142466%_
                                 _%hd142170142469%_
                                 _%tl142169142471%_
                                 _%e142174142474%_
                                 _%hd142173142477%_
                                 _%tl142172142479%_
                                 _%e142177142482%_
                                 _%hd142176142485%_
                                 _%tl142175142487%_
                                 _%e142180142490%_
                                 _%hd142179142493%_
                                 _%tl142178142495%_))
                            (_%__kont144425144426%_))))
                    (_%__kont144425144426%_))
                (_%__kont144425144426%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144425144426%_))))
                                            (_%__kont144425144426%_))))
                                    (_%__kont144425144426%_))
                                (_%__kont144425144426%_))))
                        (_%__kont144425144426%_))
                    (_%__kont144425144426%_))
                (_%__kont144425144426%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont144425144426%_))))
                                        (_%__kont144425144426%_))
                                    (_%__kont144425144426%_))
                                (_%__kont144425144426%_))))
                        (_%__kont144425144426%_))))
                (_%__kont144425144426%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop142151142415%_
                                       _%target142148142410%_
                                       '())))))
                               (_%__match144440144441%_
                                (lambda (_%e142099142662%_
                                         _%hd142098142665%_
                                         _%tl142097142667%_
                                         _%__splice144413144414%_
                                         _%target142100142670%_
                                         _%tl142102142672%_)
                                  (letrec ((_%loop142103142675%_
                                            (lambda (_%hd142101142678%_
                                                     _%arg142107142680%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142101142678%_))
                                                  (let ((_%e142104142683%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142101142678%_))))
                                                    (let ((_%lp-tl142106142688%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142104142683%_)))
                                                          (_%lp-hd142105142686%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142104142683%_))))
                                                      (let ((__tmp145728
                                                             (cons _%lp-hd142105142686%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg142107142680%_)))
                (declare (not safe))
                (_%loop142103142675%_ _%lp-tl142106142688%_ __tmp145728))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg142108142691%_
                                                         (reverse _%arg142107142680%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142097142667%_))
                                                        (let ((_%e142111142694%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142097142667%_))))
                  (let ((_%tl142109142699%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142111142694%_)))
                        (_%hd142110142697%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142111142694%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142110142697%_))
                        (let ((_%e142114142702%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142110142697%_))))
                          (let ((_%tl142112142707%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142114142702%_)))
                                (_%hd142113142705%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142114142702%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142113142705%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd142113142705%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142112142707%_))
                                        (let ((_%e142117142710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142112142707%_))))
                                          (let ((_%tl142115142715%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142117142710%_)))
                                                (_%hd142116142713%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142117142710%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd142116142713%_))
                                                (let ((_%e142120142718%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142116142713%_))))
                                                  (let ((_%tl142118142723%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142120142718%_)))
                                                        (_%hd142119142721%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142120142718%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd142119142721%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd142119142721%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl142118142723%_))
                        (let ((_%e142123142726%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl142118142723%_))))
                          (let ((_%tl142121142731%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142123142726%_)))
                                (_%hd142122142729%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142123142726%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142121142731%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl142115142715%_))
                                    (let ((_%__splice144415144416%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl142115142715%_
                                              '0))))
                                      (let ((_%tl142126142736%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144415144416%_
                                                '1)))
                                            (_%target142124142734%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144415144416%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl142126142736%_))
                                            (letrec ((_%loop142127142739%_
                                                      (lambda (_%hd142125142742%_
                                                               _%xarg142131142744%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd142125142742%_))
                                                            (let ((_%e142128142747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd142125142742%_))))
                      (let ((_%lp-tl142130142752%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142128142747%_)))
                            (_%lp-hd142129142750%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142128142747%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd142129142750%_))
                            (let ((_%e142135142755%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd142129142750%_))))
                              (let ((_%tl142133142760%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e142135142755%_)))
                                    (_%hd142134142758%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e142135142755%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd142134142758%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd142134142758%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142133142760%_))
                                            (let ((_%e142138142763%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142133142760%_))))
                                              (let ((_%tl142136142768%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142138142763%_)))
                                                    (_%hd142137142766%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142138142763%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl142136142768%_))
                                                    (let ((__tmp145729
                                                           (cons _%hd142137142766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xarg142131142744%_)))
              (declare (not safe))
              (_%loop142127142739%_ _%lp-tl142130142752%_ __tmp145729))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144452144453%_
                                                     _%e142099142662%_
                                                     _%hd142098142665%_
                                                     _%tl142097142667%_
                                                     _%__splice144413144414%_
                                                     _%target142100142670%_
                                                     _%tl142102142672%_))))
                                            (_%__match144452144453%_
                                             _%e142099142662%_
                                             _%hd142098142665%_
                                             _%tl142097142667%_
                                             _%__splice144413144414%_
                                             _%target142100142670%_
                                             _%tl142102142672%_))
                                        (_%__match144452144453%_
                                         _%e142099142662%_
                                         _%hd142098142665%_
                                         _%tl142097142667%_
                                         _%__splice144413144414%_
                                         _%target142100142670%_
                                         _%tl142102142672%_))
                                    (_%__match144452144453%_
                                     _%e142099142662%_
                                     _%hd142098142665%_
                                     _%tl142097142667%_
                                     _%__splice144413144414%_
                                     _%target142100142670%_
                                     _%tl142102142672%_))))
                            (_%__match144452144453%_
                             _%e142099142662%_
                             _%hd142098142665%_
                             _%tl142097142667%_
                             _%__splice144413144414%_
                             _%target142100142670%_
                             _%tl142102142672%_))))
                    (let ((_%xarg142132142771%_
                           (reverse _%xarg142131142744%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl142109142699%_))
                          (let ((_%L142774%_ _%xarg142132142771%_)
                                (_%L142775%_ _%hd142122142729%_)
                                (_%L142776%_ _%arg142108142691%_))
                            (if (and (let ((__tmp145730
                                            (let ((__tmp145731
                                                   (lambda (_%g142804142807%_
                                                            _%g142805142809%_)
                                                     (cons _%g142804142807%_
                                                           _%g142805142809%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145731
                                               '()
                                               _%L142776%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp145730))
                                     (let ((__tmp145734
                                            (length (let ((__tmp145735
                                                           (lambda (_%g142811142814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142812142816%_)
                     (cons _%g142811142814%_ _%g142812142816%_))))
              (declare (not safe))
              (__foldr1 __tmp145735 '() _%L142776%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp145732
                                            (length (let ((__tmp145733
                                                           (lambda (_%g142818142821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142819142823%_)
                     (cons _%g142818142821%_ _%g142819142823%_))))
              (declare (not safe))
              (__foldr1 __tmp145733 '() _%L142774%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145734 __tmp145732))
                                     (let ((__tmp145738
                                            (let ((__tmp145739
                                                   (lambda (_%g142825142828%_
                                                            _%g142826142830%_)
                                                     (cons _%g142825142828%_
                                                           _%g142826142830%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145739
                                               '()
                                               _%L142776%_)))
                                           (__tmp145736
                                            (let ((__tmp145737
                                                   (lambda (_%g142832142835%_
                                                            _%g142833142837%_)
                                                     (cons _%g142832142835%_
                                                           _%g142833142837%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145737
                                               '()
                                               _%L142774%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp145738
                                        __tmp145736))
                                     (let ((__tmp145740
                                            (let ((__tmp145743
                                                   (lambda (_%g142839142841%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g142839142841%_
                                                        _%L142775%_))))
                                                  (__tmp145741
                                                   (let ((__tmp145742
                                                          (lambda (_%g142843142846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g142844142848%_)
                    (cons _%g142843142846%_ _%g142844142848%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp145742
                                                      '()
                                                      _%L142776%_))))
                                              (declare (not safe))
                                              (__find __tmp145743
                                                      __tmp145741))))
                                       (declare (not safe))
                                       (not __tmp145740)))
                                (_%__kont144411144412%_
                                 _%L142774%_
                                 _%L142775%_
                                 _%L142776%_)
                                (_%__match144452144453%_
                                 _%e142099142662%_
                                 _%hd142098142665%_
                                 _%tl142097142667%_
                                 _%__splice144413144414%_
                                 _%target142100142670%_
                                 _%tl142102142672%_)))
                          (_%__match144452144453%_
                           _%e142099142662%_
                           _%hd142098142665%_
                           _%tl142097142667%_
                           _%__splice144413144414%_
                           _%target142100142670%_
                           _%tl142102142672%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop142127142739%_
                                                 _%target142124142734%_
                                                 '())))
                                            (_%__match144452144453%_
                                             _%e142099142662%_
                                             _%hd142098142665%_
                                             _%tl142097142667%_
                                             _%__splice144413144414%_
                                             _%target142100142670%_
                                             _%tl142102142672%_))))
                                    (_%__match144452144453%_
                                     _%e142099142662%_
                                     _%hd142098142665%_
                                     _%tl142097142667%_
                                     _%__splice144413144414%_
                                     _%target142100142670%_
                                     _%tl142102142672%_))
                                (_%__match144452144453%_
                                 _%e142099142662%_
                                 _%hd142098142665%_
                                 _%tl142097142667%_
                                 _%__splice144413144414%_
                                 _%target142100142670%_
                                 _%tl142102142672%_))))
                        (_%__match144452144453%_
                         _%e142099142662%_
                         _%hd142098142665%_
                         _%tl142097142667%_
                         _%__splice144413144414%_
                         _%target142100142670%_
                         _%tl142102142672%_))
                    (_%__match144452144453%_
                     _%e142099142662%_
                     _%hd142098142665%_
                     _%tl142097142667%_
                     _%__splice144413144414%_
                     _%target142100142670%_
                     _%tl142102142672%_))
                (_%__match144452144453%_
                 _%e142099142662%_
                 _%hd142098142665%_
                 _%tl142097142667%_
                 _%__splice144413144414%_
                 _%target142100142670%_
                 _%tl142102142672%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match144452144453%_
                                                 _%e142099142662%_
                                                 _%hd142098142665%_
                                                 _%tl142097142667%_
                                                 _%__splice144413144414%_
                                                 _%target142100142670%_
                                                 _%tl142102142672%_))))
                                        (_%__match144452144453%_
                                         _%e142099142662%_
                                         _%hd142098142665%_
                                         _%tl142097142667%_
                                         _%__splice144413144414%_
                                         _%target142100142670%_
                                         _%tl142102142672%_))
                                    (_%__match144452144453%_
                                     _%e142099142662%_
                                     _%hd142098142665%_
                                     _%tl142097142667%_
                                     _%__splice144413144414%_
                                     _%target142100142670%_
                                     _%tl142102142672%_))
                                (_%__match144452144453%_
                                 _%e142099142662%_
                                 _%hd142098142665%_
                                 _%tl142097142667%_
                                 _%__splice144413144414%_
                                 _%target142100142670%_
                                 _%tl142102142672%_))))
                        (_%__match144452144453%_
                         _%e142099142662%_
                         _%hd142098142665%_
                         _%tl142097142667%_
                         _%__splice144413144414%_
                         _%target142100142670%_
                         _%tl142102142672%_))))
                (_%__match144452144453%_
                 _%e142099142662%_
                 _%hd142098142665%_
                 _%tl142097142667%_
                 _%__splice144413144414%_
                 _%target142100142670%_
                 _%tl142102142672%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop142103142675%_
                                       _%target142100142670%_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144409144410%_))
                              (let ((_%e142099142662%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144409144410%_))))
                                (let ((_%tl142097142667%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142099142662%_)))
                                      (_%hd142098142665%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142099142662%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd142098142665%_))
                                      (let ((_%__splice144413144414%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd142098142665%_
                                                '0))))
                                        (let ((_%tl142102142672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144413144414%_
                                                  '1)))
                                              (_%target142100142670%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144413144414%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142102142672%_))
                                              (_%__match144440144441%_
                                               _%e142099142662%_
                                               _%hd142098142665%_
                                               _%tl142097142667%_
                                               _%__splice144413144414%_
                                               _%target142100142670%_
                                               _%tl142102142672%_)
                                              (_%__match144452144453%_
                                               _%e142099142662%_
                                               _%hd142098142665%_
                                               _%tl142097142667%_
                                               _%__splice144413144414%_
                                               _%target142100142670%_
                                               _%tl142102142672%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl142097142667%_))
                                          (let ((_%e142214142269%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl142097142667%_))))
                                            (let ((_%tl142212142274%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e142214142269%_)))
                                                  (_%hd142213142272%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e142214142269%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142213142272%_))
                                                  (let ((_%e142217142277%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142213142272%_))))
                                                    (let ((_%tl142215142282%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142217142277%_)))
                                                          (_%hd142216142280%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142217142277%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd142216142280%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd142216142280%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142215142282%_))
                          (let ((_%e142220142285%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142215142282%_))))
                            (let ((_%tl142218142290%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142220142285%_)))
                                  (_%hd142219142288%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142220142285%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd142219142288%_))
                                  (let ((_%e142223142293%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd142219142288%_))))
                                    (let ((_%tl142221142298%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142223142293%_)))
                                          (_%hd142222142296%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142223142293%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd142222142296%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd142222142296%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl142221142298%_))
                                                  (let ((_%e142226142301%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl142221142298%_))))
                                                    (let ((_%tl142224142306%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142226142301%_)))
                                                          (_%hd142225142304%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142226142301%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl142224142306%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl142218142290%_))
                      (let ((_%e142229142309%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl142218142290%_))))
                        (let ((_%tl142227142314%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142229142309%_)))
                              (_%hd142228142312%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142229142309%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd142228142312%_))
                              (let ((_%e142232142317%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd142228142312%_))))
                                (let ((_%tl142230142322%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142232142317%_)))
                                      (_%hd142231142320%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142232142317%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd142231142320%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd142231142320%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142230142322%_))
                                              (let ((_%e142235142325%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142230142322%_))))
                                                (let ((_%tl142233142330%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142235142325%_)))
                                                      (_%hd142234142328%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142235142325%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142233142330%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl142227142314%_))
                                                          (let ((_%e142238142333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl142227142314%_))))
                    (let ((_%tl142236142338%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142238142333%_)))
                          (_%hd142237142336%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142238142333%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd142237142336%_))
                          (let ((_%e142241142341%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd142237142336%_))))
                            (let ((_%tl142239142346%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142241142341%_)))
                                  (_%hd142240142344%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142241142341%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd142240142344%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd142240142344%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl142239142346%_))
                                          (let ((_%e142244142349%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl142239142346%_))))
                                            (let ((_%tl142242142354%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e142244142349%_)))
                                                  (_%hd142243142352%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e142244142349%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl142242142354%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142236142338%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl142212142274%_))
                                                          (_%__match144550144551%_
                                                           _%e142099142662%_
                                                           _%hd142098142665%_
                                                           _%tl142097142667%_
                                                           _%e142214142269%_
                                                           _%hd142213142272%_
                                                           _%tl142212142274%_
                                                           _%e142217142277%_
                                                           _%hd142216142280%_
                                                           _%tl142215142282%_
                                                           _%e142220142285%_
                                                           _%hd142219142288%_
                                                           _%tl142218142290%_
                                                           _%e142223142293%_
                                                           _%hd142222142296%_
                                                           _%tl142221142298%_
                                                           _%e142226142301%_
                                                           _%hd142225142304%_
                                                           _%tl142224142306%_
                                                           _%e142229142309%_
                                                           _%hd142228142312%_
                                                           _%tl142227142314%_
                                                           _%e142232142317%_
                                                           _%hd142231142320%_
                                                           _%tl142230142322%_
                                                           _%e142235142325%_
                                                           _%hd142234142328%_
                                                           _%tl142233142330%_
                                                           _%e142238142333%_
                                                           _%hd142237142336%_
                                                           _%tl142236142338%_
                                                           _%e142241142341%_
                                                           _%hd142240142344%_
                                                           _%tl142239142346%_
                                                           _%e142244142349%_
                                                           _%hd142243142352%_
                                                           _%tl142242142354%_)
                                                          (_%__kont144425144426%_))
                                                      (_%__kont144425144426%_))
                                                  (_%__kont144425144426%_))))
                                          (_%__kont144425144426%_))
                                      (_%__kont144425144426%_))
                                  (_%__kont144425144426%_))))
                          (_%__kont144425144426%_))))
                  (_%__kont144425144426%_))
              (_%__kont144425144426%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont144425144426%_))
                                          (_%__kont144425144426%_))
                                      (_%__kont144425144426%_))))
                              (_%__kont144425144426%_))))
                      (_%__kont144425144426%_))
                  (_%__kont144425144426%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144425144426%_))
                                              (_%__kont144425144426%_))
                                          (_%__kont144425144426%_))))
                                  (_%__kont144425144426%_))))
                          (_%__kont144425144426%_))
                      (_%__kont144425144426%_))
                  (_%__kont144425144426%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144425144426%_))))
                                          (_%__kont144425144426%_)))))
                              (_%__kont144425144426%_)))))))
                 (_%dispatch-case-e141397%_
                  (lambda (_%hd141548%_ _%body141549%_)
                    (let* ((_%form141551%_
                            (cons _%hd141548%_ (cons _%body141549%_ '())))
                           (_%__stx144553144554%_ _%form141551%_)
                           (_%g141555141679%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144553144554%_)))))
                      (let ((_%__kont144555144556%_
                             (lambda (_%L142050%_ _%L142051%_ _%L142052%_)
                               (let ((__tmp145744
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L142051%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self141393%_
                                  __tmp145744))))
                            (_%__kont144561144562%_
                             (lambda (_%L141898%_
                                      _%L141899%_
                                      _%L141900%_
                                      _%L141901%_)
                               (let ((__tmp145745
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141898%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self141393%_
                                  __tmp145745))))
                            (_%__kont144565144566%_
                             (lambda (_%L141764%_ _%L141765%_ _%L141766%_)
                               (let ((__tmp145746
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141764%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self141393%_
                                  __tmp145746)))))
                        (let* ((_%__match144662144663%_
                                (lambda (_%e141647141684%_
                                         _%hd141646141687%_
                                         _%tl141645141689%_
                                         _%e141650141692%_
                                         _%hd141649141695%_
                                         _%tl141648141697%_
                                         _%e141653141700%_
                                         _%hd141652141703%_
                                         _%tl141651141705%_
                                         _%e141656141708%_
                                         _%hd141655141711%_
                                         _%tl141654141713%_
                                         _%e141659141716%_
                                         _%hd141658141719%_
                                         _%tl141657141721%_
                                         _%e141662141724%_
                                         _%hd141661141727%_
                                         _%tl141660141729%_
                                         _%e141665141732%_
                                         _%hd141664141735%_
                                         _%tl141663141737%_
                                         _%e141668141740%_
                                         _%hd141667141743%_
                                         _%tl141666141745%_
                                         _%e141671141748%_
                                         _%hd141670141751%_
                                         _%tl141669141753%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141663141737%_))
                                      (let ((_%e141674141756%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141663141737%_))))
                                        (let ((_%tl141672141761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141674141756%_)))
                                              (_%hd141673141759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141674141756%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141672141761%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl141648141697%_))
                                                  (_%__kont144565144566%_
                                                   _%hd141670141751%_
                                                   _%hd141661141727%_
                                                   _%hd141646141687%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141555141679%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g141555141679%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g141555141679%_)))))
                               (_%__match144592144593%_
                                (lambda (_%e141608141802%_
                                         _%hd141607141805%_
                                         _%tl141606141807%_
                                         _%__splice144563144564%_
                                         _%target141609141810%_
                                         _%tl141611141812%_)
                                  (letrec ((_%loop141612141815%_
                                            (lambda (_%hd141610141818%_
                                                     _%arg141616141820%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141610141818%_))
                                                  (let ((_%e141613141823%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141610141818%_))))
                                                    (let ((_%lp-tl141615141828%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141613141823%_)))
                                                          (_%lp-hd141614141826%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141613141823%_))))
                                                      (let ((__tmp145747
                                                             (cons _%lp-hd141614141826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141616141820%_)))
                (declare (not safe))
                (_%loop141612141815%_ _%lp-tl141615141828%_ __tmp145747))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141617141831%_
                                                         (reverse _%arg141616141820%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141606141807%_))
                                                        (let ((_%e141620141834%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141606141807%_))))
                  (let ((_%tl141618141839%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141620141834%_)))
                        (_%hd141619141837%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141620141834%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141619141837%_))
                        (let ((_%e141623141842%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141619141837%_))))
                          (let ((_%tl141621141847%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141623141842%_)))
                                (_%hd141622141845%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141623141842%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141622141845%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141622141845%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141621141847%_))
                                        (let ((_%e141626141850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141621141847%_))))
                                          (let ((_%tl141624141855%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141626141850%_)))
                                                (_%hd141625141853%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141626141850%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141625141853%_))
                                                (let ((_%e141629141858%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141625141853%_))))
                                                  (let ((_%tl141627141863%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141629141858%_)))
                                                        (_%hd141628141861%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141629141858%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141628141861%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141628141861%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141627141863%_))
                        (let ((_%e141632141866%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141627141863%_))))
                          (let ((_%tl141630141871%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141632141866%_)))
                                (_%hd141631141869%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141632141866%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141630141871%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl141624141855%_))
                                    (let ((_%e141635141874%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl141624141855%_))))
                                      (let ((_%tl141633141879%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e141635141874%_)))
                                            (_%hd141634141877%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e141635141874%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd141634141877%_))
                                            (let ((_%e141638141882%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd141634141877%_))))
                                              (let ((_%tl141636141887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141638141882%_)))
                                                    (_%hd141637141885%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141638141882%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd141637141885%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd141637141885%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141636141887%_))
                                                            (let ((_%e141641141890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141636141887%_))))
                      (let ((_%tl141639141895%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141641141890%_)))
                            (_%hd141640141893%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141641141890%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141639141895%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141618141839%_))
                                (_%__kont144561144562%_
                                 _%hd141640141893%_
                                 _%hd141631141869%_
                                 _%tl141611141812%_
                                 _%arg141617141831%_)
                                (_%__match144662144663%_
                                 _%e141608141802%_
                                 _%hd141607141805%_
                                 _%tl141606141807%_
                                 _%e141620141834%_
                                 _%hd141619141837%_
                                 _%tl141618141839%_
                                 _%e141623141842%_
                                 _%hd141622141845%_
                                 _%tl141621141847%_
                                 _%e141626141850%_
                                 _%hd141625141853%_
                                 _%tl141624141855%_
                                 _%e141629141858%_
                                 _%hd141628141861%_
                                 _%tl141627141863%_
                                 _%e141632141866%_
                                 _%hd141631141869%_
                                 _%tl141630141871%_
                                 _%e141635141874%_
                                 _%hd141634141877%_
                                 _%tl141633141879%_
                                 _%e141638141882%_
                                 _%hd141637141885%_
                                 _%tl141636141887%_
                                 _%e141641141890%_
                                 _%hd141640141893%_
                                 _%tl141639141895%_))
                            (let ()
                              (declare (not safe))
                              (_%g141555141679%_)))))
                    (let () (declare (not safe)) (_%g141555141679%_)))
                (let () (declare (not safe)) (_%g141555141679%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g141555141679%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g141555141679%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g141555141679%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g141555141679%_)))))
                        (let () (declare (not safe)) (_%g141555141679%_)))
                    (let () (declare (not safe)) (_%g141555141679%_)))
                (let () (declare (not safe)) (_%g141555141679%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g141555141679%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g141555141679%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g141555141679%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g141555141679%_)))))
                        (let () (declare (not safe)) (_%g141555141679%_)))))
                (let () (declare (not safe)) (_%g141555141679%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141612141815%_
                                       _%target141609141810%_
                                       '())))))
                               (_%__match144580144581%_
                                (lambda (_%e141562141938%_
                                         _%hd141561141941%_
                                         _%tl141560141943%_
                                         _%__splice144557144558%_
                                         _%target141563141946%_
                                         _%tl141565141948%_)
                                  (letrec ((_%loop141566141951%_
                                            (lambda (_%hd141564141954%_
                                                     _%arg141570141956%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141564141954%_))
                                                  (let ((_%e141567141959%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141564141954%_))))
                                                    (let ((_%lp-tl141569141964%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141567141959%_)))
                                                          (_%lp-hd141568141962%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141567141959%_))))
                                                      (let ((__tmp145748
                                                             (cons _%lp-hd141568141962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141570141956%_)))
                (declare (not safe))
                (_%loop141566141951%_ _%lp-tl141569141964%_ __tmp145748))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141571141967%_
                                                         (reverse _%arg141570141956%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141560141943%_))
                                                        (let ((_%e141574141970%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141560141943%_))))
                  (let ((_%tl141572141975%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141574141970%_)))
                        (_%hd141573141973%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141574141970%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141573141973%_))
                        (let ((_%e141577141978%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141573141973%_))))
                          (let ((_%tl141575141983%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141577141978%_)))
                                (_%hd141576141981%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141577141978%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141576141981%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141576141981%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141575141983%_))
                                        (let ((_%e141580141986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141575141983%_))))
                                          (let ((_%tl141578141991%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141580141986%_)))
                                                (_%hd141579141989%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141580141986%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141579141989%_))
                                                (let ((_%e141583141994%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141579141989%_))))
                                                  (let ((_%tl141581141999%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141583141994%_)))
                                                        (_%hd141582141997%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141583141994%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141582141997%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141582141997%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141581141999%_))
                        (let ((_%e141586142002%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141581141999%_))))
                          (let ((_%tl141584142007%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141586142002%_)))
                                (_%hd141585142005%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141586142002%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141584142007%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl141578141991%_))
                                    (let ((_%__splice144559144560%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141578141991%_
                                              '0))))
                                      (let ((_%tl141589142012%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144559144560%_
                                                '1)))
                                            (_%target141587142010%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144559144560%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl141589142012%_))
                                            (letrec ((_%loop141590142015%_
                                                      (lambda (_%hd141588142018%_
                                                               _%xarg141594142020%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd141588142018%_))
                                                            (let ((_%e141591142023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd141588142018%_))))
                      (let ((_%lp-tl141593142028%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141591142023%_)))
                            (_%lp-hd141592142026%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141591142023%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd141592142026%_))
                            (let ((_%e141598142031%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd141592142026%_))))
                              (let ((_%tl141596142036%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141598142031%_)))
                                    (_%hd141597142034%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141598142031%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141597142034%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd141597142034%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141596142036%_))
                                            (let ((_%e141601142039%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141596142036%_))))
                                              (let ((_%tl141599142044%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141601142039%_)))
                                                    (_%hd141600142042%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141601142039%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl141599142044%_))
                                                    (let ((__tmp145749
                                                           (cons _%hd141600142042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xarg141594142020%_)))
              (declare (not safe))
              (_%loop141590142015%_ _%lp-tl141593142028%_ __tmp145749))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144592144593%_
                                                     _%e141562141938%_
                                                     _%hd141561141941%_
                                                     _%tl141560141943%_
                                                     _%__splice144557144558%_
                                                     _%target141563141946%_
                                                     _%tl141565141948%_))))
                                            (_%__match144592144593%_
                                             _%e141562141938%_
                                             _%hd141561141941%_
                                             _%tl141560141943%_
                                             _%__splice144557144558%_
                                             _%target141563141946%_
                                             _%tl141565141948%_))
                                        (_%__match144592144593%_
                                         _%e141562141938%_
                                         _%hd141561141941%_
                                         _%tl141560141943%_
                                         _%__splice144557144558%_
                                         _%target141563141946%_
                                         _%tl141565141948%_))
                                    (_%__match144592144593%_
                                     _%e141562141938%_
                                     _%hd141561141941%_
                                     _%tl141560141943%_
                                     _%__splice144557144558%_
                                     _%target141563141946%_
                                     _%tl141565141948%_))))
                            (_%__match144592144593%_
                             _%e141562141938%_
                             _%hd141561141941%_
                             _%tl141560141943%_
                             _%__splice144557144558%_
                             _%target141563141946%_
                             _%tl141565141948%_))))
                    (let ((_%xarg141595142047%_
                           (reverse _%xarg141594142020%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141572141975%_))
                          (_%__kont144555144556%_
                           _%xarg141595142047%_
                           _%hd141585142005%_
                           _%arg141571141967%_)
                          (_%__match144592144593%_
                           _%e141562141938%_
                           _%hd141561141941%_
                           _%tl141560141943%_
                           _%__splice144557144558%_
                           _%target141563141946%_
                           _%tl141565141948%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop141590142015%_
                                                 _%target141587142010%_
                                                 '())))
                                            (_%__match144592144593%_
                                             _%e141562141938%_
                                             _%hd141561141941%_
                                             _%tl141560141943%_
                                             _%__splice144557144558%_
                                             _%target141563141946%_
                                             _%tl141565141948%_))))
                                    (_%__match144592144593%_
                                     _%e141562141938%_
                                     _%hd141561141941%_
                                     _%tl141560141943%_
                                     _%__splice144557144558%_
                                     _%target141563141946%_
                                     _%tl141565141948%_))
                                (_%__match144592144593%_
                                 _%e141562141938%_
                                 _%hd141561141941%_
                                 _%tl141560141943%_
                                 _%__splice144557144558%_
                                 _%target141563141946%_
                                 _%tl141565141948%_))))
                        (_%__match144592144593%_
                         _%e141562141938%_
                         _%hd141561141941%_
                         _%tl141560141943%_
                         _%__splice144557144558%_
                         _%target141563141946%_
                         _%tl141565141948%_))
                    (_%__match144592144593%_
                     _%e141562141938%_
                     _%hd141561141941%_
                     _%tl141560141943%_
                     _%__splice144557144558%_
                     _%target141563141946%_
                     _%tl141565141948%_))
                (_%__match144592144593%_
                 _%e141562141938%_
                 _%hd141561141941%_
                 _%tl141560141943%_
                 _%__splice144557144558%_
                 _%target141563141946%_
                 _%tl141565141948%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match144592144593%_
                                                 _%e141562141938%_
                                                 _%hd141561141941%_
                                                 _%tl141560141943%_
                                                 _%__splice144557144558%_
                                                 _%target141563141946%_
                                                 _%tl141565141948%_))))
                                        (_%__match144592144593%_
                                         _%e141562141938%_
                                         _%hd141561141941%_
                                         _%tl141560141943%_
                                         _%__splice144557144558%_
                                         _%target141563141946%_
                                         _%tl141565141948%_))
                                    (_%__match144592144593%_
                                     _%e141562141938%_
                                     _%hd141561141941%_
                                     _%tl141560141943%_
                                     _%__splice144557144558%_
                                     _%target141563141946%_
                                     _%tl141565141948%_))
                                (_%__match144592144593%_
                                 _%e141562141938%_
                                 _%hd141561141941%_
                                 _%tl141560141943%_
                                 _%__splice144557144558%_
                                 _%target141563141946%_
                                 _%tl141565141948%_))))
                        (_%__match144592144593%_
                         _%e141562141938%_
                         _%hd141561141941%_
                         _%tl141560141943%_
                         _%__splice144557144558%_
                         _%target141563141946%_
                         _%tl141565141948%_))))
                (_%__match144592144593%_
                 _%e141562141938%_
                 _%hd141561141941%_
                 _%tl141560141943%_
                 _%__splice144557144558%_
                 _%target141563141946%_
                 _%tl141565141948%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141566141951%_
                                       _%target141563141946%_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144553144554%_))
                              (let ((_%e141562141938%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144553144554%_))))
                                (let ((_%tl141560141943%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141562141938%_)))
                                      (_%hd141561141941%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141562141938%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd141561141941%_))
                                      (let ((_%__splice144557144558%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd141561141941%_
                                                '0))))
                                        (let ((_%tl141565141948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144557144558%_
                                                  '1)))
                                              (_%target141563141946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144557144558%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141565141948%_))
                                              (_%__match144580144581%_
                                               _%e141562141938%_
                                               _%hd141561141941%_
                                               _%tl141560141943%_
                                               _%__splice144557144558%_
                                               _%target141563141946%_
                                               _%tl141565141948%_)
                                              (_%__match144592144593%_
                                               _%e141562141938%_
                                               _%hd141561141941%_
                                               _%tl141560141943%_
                                               _%__splice144557144558%_
                                               _%target141563141946%_
                                               _%tl141565141948%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141560141943%_))
                                          (let ((_%e141650141692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141560141943%_))))
                                            (let ((_%tl141648141697%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141650141692%_)))
                                                  (_%hd141649141695%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141650141692%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141649141695%_))
                                                  (let ((_%e141653141700%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141649141695%_))))
                                                    (let ((_%tl141651141705%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141653141700%_)))
                                                          (_%hd141652141703%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141653141700%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd141652141703%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd141652141703%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141651141705%_))
                          (let ((_%e141656141708%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141651141705%_))))
                            (let ((_%tl141654141713%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141656141708%_)))
                                  (_%hd141655141711%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141656141708%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd141655141711%_))
                                  (let ((_%e141659141716%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd141655141711%_))))
                                    (let ((_%tl141657141721%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141659141716%_)))
                                          (_%hd141658141719%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141659141716%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd141658141719%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd141658141719%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl141657141721%_))
                                                  (let ((_%e141662141724%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl141657141721%_))))
                                                    (let ((_%tl141660141729%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141662141724%_)))
                                                          (_%hd141661141727%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141662141724%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141660141729%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141654141713%_))
                      (let ((_%e141665141732%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141654141713%_))))
                        (let ((_%tl141663141737%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141665141732%_)))
                              (_%hd141664141735%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141665141732%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd141664141735%_))
                              (let ((_%e141668141740%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd141664141735%_))))
                                (let ((_%tl141666141745%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141668141740%_)))
                                      (_%hd141667141743%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141668141740%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd141667141743%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd141667141743%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141666141745%_))
                                              (let ((_%e141671141748%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141666141745%_))))
                                                (let ((_%tl141669141753%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141671141748%_)))
                                                      (_%hd141670141751%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141671141748%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141669141753%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl141663141737%_))
                                                          (let ((_%e141674141756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl141663141737%_))))
                    (let ((_%tl141672141761%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141674141756%_)))
                          (_%hd141673141759%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141674141756%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141672141761%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl141648141697%_))
                              (_%__kont144565144566%_
                               _%hd141670141751%_
                               _%hd141661141727%_
                               _%hd141561141941%_)
                              (let ()
                                (declare (not safe))
                                (_%g141555141679%_)))
                          (let () (declare (not safe)) (_%g141555141679%_)))))
                  (let () (declare (not safe)) (_%g141555141679%_)))
              (let () (declare (not safe)) (_%g141555141679%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g141555141679%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141555141679%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g141555141679%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g141555141679%_)))))
                      (let () (declare (not safe)) (_%g141555141679%_)))
                  (let () (declare (not safe)) (_%g141555141679%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141555141679%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g141555141679%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141555141679%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g141555141679%_)))))
                          (let () (declare (not safe)) (_%g141555141679%_)))
                      (let () (declare (not safe)) (_%g141555141679%_)))
                  (let () (declare (not safe)) (_%g141555141679%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141555141679%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141555141679%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g141555141679%_))))))))
                 (_%generate1141398%_
                  (lambda (_%args141533%_
                           _%arglen141534%_
                           _%hd141535%_
                           _%body141536%_)
                    (let* ((_%len141538%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd141535%_)))
                           (_%condition141543%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd141535%_))
                                (let ()
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#current-compile-decls-unsafe?))
                                      (cons '##fx=
                                            (cons _%arglen141534%_
                                                  (cons _%len141538%_ '())))
                                      (cons 'let
                                            (cons '()
                                                  (cons '(declare (not safe))
                                                        (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%arglen141534%_ (cons _%len141538%_ '())))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len141538%_ '0)
                                    (let ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gxc#current-compile-decls-unsafe?))
                                          (cons '##fx>=
                                                (cons _%arglen141534%_
                                                      (cons _%len141538%_
                                                            '())))
                                          (cons 'let
                                                (cons '()
                                                      (cons '(declare
                                                               (not safe))
                                                            (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%arglen141534%_
                                      (cons _%len141538%_ '())))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let () '#t))))
                           (_%dispatch141545%_
                            (if (let ()
                                  (declare (not safe))
                                  (_%dispatch-case?141396%_
                                   _%hd141535%_
                                   _%body141536%_))
                                (let ()
                                  (declare (not safe))
                                  (_%dispatch-case-e141397%_
                                   _%hd141535%_
                                   _%body141536%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _%self141393%_
                                   _%hd141535%_
                                   _%body141536%_)))))
                      (cons _%condition141543%_
                            (cons (cons 'apply
                                        (cons _%dispatch141545%_
                                              (cons _%args141533%_ '())))
                                  '()))))))
          (let* ((_%g141400141428%_
                  (lambda (_%g141401141425%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141401141425%_))))
                 (_%g141399141530%_
                  (lambda (_%g141401141431%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141401141431%_))
                        (let ((_%e141406141433%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141401141431%_))))
                          (let ((_%hd141405141436%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141406141433%_)))
                                (_%tl141404141438%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141406141433%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl141404141438%_))
                                (let ((_g145750_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl141404141438%_
                                          '0))))
                                  (begin
                                    (let ((_g145751_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145750_)
                                                 (##vector-length _g145750_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145751_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145751_)))
                                    (let ((_%target141407141441%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145750_ 0)))
                                          (_%tl141409141443%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145750_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl141409141443%_))
                                          (letrec ((_%loop141410141446%_
                                                    (lambda (_%hd141408141449%_
                                                             _%body141414141451%_
                                                             _%hd141415141453%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd141408141449%_))
                                                          (let ((_%e141411141456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd141408141449%_))))
                    (let ((_%lp-hd141412141459%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141411141456%_)))
                          (_%lp-tl141413141461%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141411141456%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd141412141459%_))
                          (let ((_%e141420141464%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd141412141459%_))))
                            (let ((_%hd141419141467%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141420141464%_)))
                                  (_%tl141418141469%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141420141464%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl141418141469%_))
                                  (let ((_%e141423141472%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl141418141469%_))))
                                    (let ((_%hd141422141475%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141423141472%_)))
                                          (_%tl141421141477%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141423141472%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl141421141477%_))
                                          (let ((__tmp145753
                                                 (cons _%hd141422141475%_
                                                       _%body141414141451%_))
                                                (__tmp145752
                                                 (cons _%hd141419141467%_
                                                       _%hd141415141453%_)))
                                            (declare (not safe))
                                            (_%loop141410141446%_
                                             _%lp-tl141413141461%_
                                             __tmp145753
                                             __tmp145752))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141400141428%_
                                             _%g141401141431%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g141400141428%_ _%g141401141431%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g141400141428%_ _%g141401141431%_)))))
                  (let ((_%body141416141480%_ (reverse _%body141414141451%_))
                        (_%hd141417141482%_ (reverse _%hd141415141453%_)))
                    ((lambda (_%L141485%_ _%L141486%_)
                       (let ((_%args141505%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen141506%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name141507%_
                              (let ((_%$e141502%_
                                     (let ((__tmp145754
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp145754 _%stx141394%_))))
                                (if _%$e141502%_
                                    _%$e141502%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args141505%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen141506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (let ()
                                       (declare (not safe))
                                       (gxc#current-compile-decls-unsafe?))
                                     (cons '##length (cons _%args141505%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args141505%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp145758
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name141507%_
                                                                (cons _%args141505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp145755
                                  (map (lambda (_%g141508141511%_
                                                _%g141509141513%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%generate1141398%_
                                            _%args141505%_
                                            _%arglen141506%_
                                            _%g141508141511%_
                                            _%g141509141513%_)))
                                       (let ((__tmp145756
                                              (lambda (_%g141515141518%_
                                                       _%g141516141520%_)
                                                (cons _%g141515141518%_
                                                      _%g141516141520%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145756
                                          '()
                                          _%L141486%_))
                                       (let ((__tmp145757
                                              (lambda (_%g141522141525%_
                                                       _%g141523141527%_)
                                                (cons _%g141522141525%_
                                                      _%g141523141527%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145757
                                          '()
                                          _%L141485%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp145758 __tmp145755)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body141416141480%_
                     _%hd141417141482%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop141410141446%_
                                               _%target141407141441%_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141400141428%_
                                             _%g141401141431%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g141400141428%_ _%g141401141431%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g141400141428%_ _%g141401141431%_))))))
            (declare (not safe))
            (_%g141399141530%_ _%stx141394%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self140623%_ _%stx140624%_ _%compiled-body?140625%_)
        (letrec ((_%generate-simple140627%_
                  (lambda (_%hd141378%_ _%body141379%_)
                    (let ((__tmp145759
                           (let ((__tmp145760
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _%self140623%_
                                     'let
                                     _%hd141378%_
                                     _%body141379%_
                                     _%compiled-body?140625%_))))
                             (declare (not safe))
                             (_%coalesce-let140629%_ __tmp145760))))
                      (declare (not safe))
                      (_%coalesce-boolean140628%_ __tmp145759))))
                 (_%coalesce-boolean140628%_
                  (lambda (_%code141239%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code141240141266%_ _%code141239%_)
                               (_%else141242141274%_
                                (lambda () _%code141239%_))
                               (_%K141244141311%_
                                (lambda (_%expr2141277%_
                                         _%expr1141278%_
                                         _%id141279%_)
                                  (let* ((_%expr2141280141288%_
                                          _%expr2141277%_)
                                         (_%else141282141296%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1141278%_
                                                        (cons _%expr2141277%_
                                                              '())))))
                                         (_%K141284141301%_
                                          (lambda (_%exprs141299%_)
                                            (cons 'or
                                                  (cons _%expr1141278%_
                                                        _%exprs141299%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2141280141288%_))
                                        (let ((_%hd141285141304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2141280141288%_)))
                                              (_%tl141286141306%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2141280141288%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd141285141304%_ 'or))
                                              (let ((_%exprs141309%_
                                                     _%tl141286141306%_))
                                                (declare (not safe))
                                                (_%K141284141301%_
                                                 _%exprs141309%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%else141282141296%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else141282141296%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code141240141266%_))
                              (let ((_%hd141245141314%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code141240141266%_)))
                                    (_%tl141246141316%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code141240141266%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd141245141314%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl141246141316%_))
                                        (let ((_%hd141247141319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl141246141316%_)))
                                              (_%tl141248141321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl141246141316%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd141247141319%_))
                                              (let ((_%hd141259141324%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd141247141319%_)))
                                                    (_%tl141260141326%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd141247141319%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd141259141324%_))
                                                    (let ((_%hd141261141329%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd141259141324%_)))
                                                          (_%tl141262141331%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd141259141324%_))))
                                                      (let ((_%id141334%_
                                                             _%hd141261141329%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl141262141331%_))
                                                            (let ((_%hd141263141336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl141262141331%_)))
                          (_%tl141264141338%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl141262141331%_))))
                      (let ((_%expr1141341%_ _%hd141263141336%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl141264141338%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl141260141326%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl141248141321%_))
                                    (let ((_%hd141249141343%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl141248141321%_)))
                                          (_%tl141250141345%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl141248141321%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd141249141343%_))
                                          (let ((_%hd141251141348%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd141249141343%_)))
                                                (_%tl141252141350%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd141249141343%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd141251141348%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl141252141350%_))
                                                    (let ((_%hd141253141353%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl141252141350%_)))
                                                          (_%tl141254141355%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl141252141350%_))))
                                                      (if ((lambda (_%g141357141359%_)
                                                             (eq? _%g141357141359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id141334%_))
                   _%hd141253141353%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl141254141355%_))
                      (let ((_%hd141255141362%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl141254141355%_)))
                            (_%tl141256141364%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl141254141355%_))))
                        (if ((lambda (_%g141366141368%_)
                               (eq? _%g141366141368%_ _%id141334%_))
                             _%hd141255141362%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl141256141364%_))
                                (let ((_%hd141257141371%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl141256141364%_)))
                                      (_%tl141258141373%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl141256141364%_))))
                                  (let ((_%expr2141376%_ _%hd141257141371%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl141258141373%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl141250141345%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K141244141311%_
                                               _%expr2141376%_
                                               _%expr1141341%_
                                               _%id141334%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%else141242141274%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%else141242141274%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%else141242141274%_)))
                            (let ()
                              (declare (not safe))
                              (_%else141242141274%_))))
                      (let () (declare (not safe)) (_%else141242141274%_)))
                  (let () (declare (not safe)) (_%else141242141274%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else141242141274%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else141242141274%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else141242141274%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else141242141274%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else141242141274%_)))
                            (let ()
                              (declare (not safe))
                              (_%else141242141274%_)))))
                    (let () (declare (not safe)) (_%else141242141274%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else141242141274%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%else141242141274%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else141242141274%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%else141242141274%_))))
                              (let ()
                                (declare (not safe))
                                (_%else141242141274%_))))
                        _%code141239%_)))
                 (_%coalesce-let140629%_
                  (lambda (_%code140931%_)
                    (let* ((_%code140932141006%_ _%code140931%_)
                           (_%else140937141014%_ (lambda () _%code140931%_)))
                      (let ((_%K140996141214%_
                             (lambda (_%body141212%_)
                               (cons 'let _%body141212%_)))
                            (_%K140979141160%_
                             (lambda (_%body141156%_
                                      _%expr141157%_
                                      _%id141158%_)
                               (cons 'let
                                     (cons (cons (cons _%id141158%_
                                                       (cons _%expr141157%_
                                                             '()))
                                                 '())
                                           _%body141156%_))))
                            (_%K140956141084%_
                             (lambda (_%body141078%_
                                      _%expr2141079%_
                                      _%id2141080%_
                                      _%expr1141081%_
                                      _%id1141082%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1141082%_
                                                       (cons _%expr1141081%_
                                                             '()))
                                                 (cons (cons _%id2141080%_
                                                             (cons _%expr2141079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body141078%_))))
                            (_%K140939141023%_
                             (lambda (_%body141018%_
                                      _%bind141019%_
                                      _%expr1141020%_
                                      _%id1141021%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1141021%_
                                                       (cons _%expr1141020%_
                                                             '()))
                                                 _%bind141019%_)
                                           _%body141018%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code140932141006%_))
                            (let ((_%tl140998141219%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code140932141006%_)))
                                  (_%hd140997141217%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code140932141006%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd140997141217%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl140998141219%_))
                                      (let ((_%tl141000141224%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl140998141219%_)))
                                            (_%hd140999141222%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl140998141219%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%hd140999141222%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tl141000141224%_))
                                                (let ((_%tl141002141229%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl141000141224%_)))
                                                      (_%hd141001141227%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl141000141224%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd141001141227%_))
                                                      (let ((_%tl141004141234%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd141001141227%_)))
                    (_%hd141003141232%_
                     (let () (declare (not safe)) (##car _%hd141001141227%_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _%hd141003141232%_ 'let))
                    (if (let ()
                          (declare (not safe))
                          (##null? _%tl141002141229%_))
                        (let ((_%body141237%_ _%tl141004141234%_))
                          (declare (not safe))
                          (_%K140996141214%_ _%body141237%_))
                        (let () (declare (not safe)) (_%else140937141014%_)))
                    (let () (declare (not safe)) (_%else140937141014%_))))
              (let () (declare (not safe)) (_%else140937141014%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else140937141014%_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd140999141222%_))
                                                (let ((_%tl140991141175%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd140999141222%_)))
                                                      (_%hd140990141173%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd140999141222%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd140990141173%_))
                                                      (let ((_%tl140993141180%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd140990141173%_)))
                    (_%hd140992141178%_
                     (let () (declare (not safe)) (##car _%hd140990141173%_))))
                (if (let () (declare (not safe)) (##pair? _%tl140993141180%_))
                    (let ((_%tl140995141187%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl140993141180%_)))
                          (_%hd140994141185%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl140993141180%_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl140995141187%_))
                          (if (let ()
                                (declare (not safe))
                                (##null? _%tl140991141175%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl141000141224%_))
                                  (let ((_%tl140985141194%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl141000141224%_)))
                                        (_%hd140984141192%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl141000141224%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%hd140984141192%_))
                                        (let ((_%tl140987141199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd140984141192%_)))
                                              (_%hd140986141197%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd140984141192%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd140986141197%_
                                                       'let))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl140987141199%_))
                                                  (let ((_%tl140989141204%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl140987141199%_)))
                                                        (_%hd140988141202%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl140987141199%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%hd140988141202%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##null? _%tl140985141194%_))
                                                            (let ((_%id141183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd140992141178%_)
                          (_%expr141190%_ _%hd140994141185%_)
                          (_%body141207%_ _%tl140989141204%_))
                      (let ()
                        (declare (not safe))
                        (_%K140979141160%_
                         _%body141207%_
                         _%expr141190%_
                         _%id141183%_)))
                    (let () (declare (not safe)) (_%else140937141014%_)))
                (if (let () (declare (not safe)) (##pair? _%hd140988141202%_))
                    (let ((_%tl140968141133%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd140988141202%_)))
                          (_%hd140967141131%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd140988141202%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd140967141131%_))
                          (let ((_%tl140970141138%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd140967141131%_)))
                                (_%hd140969141136%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd140967141131%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl140970141138%_))
                                (let ((_%tl140972141145%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl140970141138%_)))
                                      (_%hd140971141143%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl140970141138%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl140972141145%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl140968141133%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl140985141194%_))
                                              (let ((_%id1141107%_
                                                     _%hd140992141178%_)
                                                    (_%expr1141114%_
                                                     _%hd140994141185%_)
                                                    (_%id2141141%_
                                                     _%hd140969141136%_)
                                                    (_%expr2141148%_
                                                     _%hd140971141143%_)
                                                    (_%body141150%_
                                                     _%tl140989141204%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%K140956141084%_
                                                   _%body141150%_
                                                   _%expr2141148%_
                                                   _%id2141141%_
                                                   _%expr1141114%_
                                                   _%id1141107%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%else140937141014%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else140937141014%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else140937141014%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%else140937141014%_))))
                          (let ()
                            (declare (not safe))
                            (_%else140937141014%_))))
                    (let () (declare (not safe)) (_%else140937141014%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else140937141014%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd140986141197%_
                                                           'let*))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%tl140987141199%_))
                                                      (let ((_%tl140949141067%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl140987141199%_)))
                    (_%hd140948141065%_
                     (let () (declare (not safe)) (##car _%tl140987141199%_))))
                (if (let () (declare (not safe)) (##null? _%tl140985141194%_))
                    (let ((_%id1141046%_ _%hd140992141178%_)
                          (_%expr1141053%_ _%hd140994141185%_)
                          (_%bind141070%_ _%hd140948141065%_)
                          (_%body141072%_ _%tl140949141067%_))
                      (let ()
                        (declare (not safe))
                        (_%K140939141023%_
                         _%body141072%_
                         _%bind141070%_
                         _%expr1141053%_
                         _%id1141046%_)))
                    (let () (declare (not safe)) (_%else140937141014%_))))
              (let () (declare (not safe)) (_%else140937141014%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else140937141014%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else140937141014%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else140937141014%_)))
                              (let ()
                                (declare (not safe))
                                (_%else140937141014%_)))
                          (let ()
                            (declare (not safe))
                            (_%else140937141014%_))))
                    (let () (declare (not safe)) (_%else140937141014%_))))
              (let () (declare (not safe)) (_%else140937141014%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else140937141014%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%else140937141014%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else140937141014%_))))
                            (let ()
                              (declare (not safe))
                              (_%else140937141014%_)))))))
                 (_%generate-values140630%_
                  (lambda (_%hd140744%_ _%body140745%_)
                    (let _%lp140747%_ ((_%rest140749%_ _%hd140744%_)
                                       (_%bind140750%_ '())
                                       (_%check140751%_ '())
                                       (_%post140752%_ '()))
                      (let* ((_%__stx144888144889%_ _%rest140749%_)
                             (_%g140755140766%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144888144889%_)))))
                        (let ((_%__kont144890144891%_
                               (lambda (_%L140793%_ _%L140794%_)
                                 (let* ((_%__stx144844144845%_ _%L140794%_)
                                        (_%g140809140834%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144844144845%_)))))
                                   (let ((_%__kont144846144847%_
                                          (lambda (_%L140907%_ _%L140908%_)
                                            (let ((_%eid140922%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140908%_)))
                                                  (_%expr140923%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self140623%_
                                                      _%L140907%_))))
                                              (let ((__tmp145761
                                                     (cons (cons _%eid140922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140923%_ '()))
                   _%bind140750%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%lp140747%_
                                                 _%L140793%_
                                                 __tmp145761
                                                 _%check140751%_
                                                 _%post140752%_)))))
                                         (_%__kont144848144849%_
                                          (lambda (_%L140855%_ _%L140856%_)
                                            (let* ((_%vals140869%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values140871%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _%vals140869%_
                                                       _%L140856%_
                                                       _%L140855%_)))
                                                   (_%refs140873%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _%vals140869%_
                                                       _%L140856%_)))
                                                   (_%expr140875%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self140623%_
                                                       _%L140855%_))))
                                              (let ((__tmp145764
                                                     (cons (cons _%vals140869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140875%_ '()))
                   _%bind140750%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145763
                                                     (cons _%check-values140871%_
                                                           _%check140751%_))
                                                    (__tmp145762
                                                     (cons _%refs140873%_
                                                           _%post140752%_)))
                                                (declare (not safe))
                                                (_%lp140747%_
                                                 _%L140793%_
                                                 __tmp145764
                                                 __tmp145763
                                                 __tmp145762))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144844144845%_))
                                         (let ((_%e140815140883%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144844144845%_))))
                                           (let ((_%tl140813140888%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140815140883%_)))
                                                 (_%hd140814140886%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140815140883%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd140814140886%_))
                                                 (let ((_%e140818140891%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd140814140886%_))))
                                                   (let ((_%tl140816140896%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140818140891%_)))
                                                         (_%hd140817140894%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140818140891%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140816140896%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140813140888%_))
                     (let ((_%e140821140899%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140813140888%_))))
                       (let ((_%tl140819140904%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140821140899%_)))
                             (_%hd140820140902%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140821140899%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140819140904%_))
                             (_%__kont144846144847%_
                              _%hd140820140902%_
                              _%hd140817140894%_)
                             (let ()
                               (declare (not safe))
                               (_%g140809140834%_)))))
                     (let () (declare (not safe)) (_%g140809140834%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140813140888%_))
                     (let ((_%e140829140847%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140813140888%_))))
                       (let ((_%tl140827140852%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140829140847%_)))
                             (_%hd140828140850%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140829140847%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140827140852%_))
                             (_%__kont144848144849%_
                              _%hd140828140850%_
                              _%hd140814140886%_)
                             (let ()
                               (declare (not safe))
                               (_%g140809140834%_)))))
                     (let () (declare (not safe)) (_%g140809140834%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140813140888%_))
                                                     (let ((_%e140829140847%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140813140888%_))))
                                                       (let ((_%tl140827140852%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140829140847%_)))
                     (_%hd140828140850%_
                      (let () (declare (not safe)) (##car _%e140829140847%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140827140852%_))
                     (_%__kont144848144849%_
                      _%hd140828140850%_
                      _%hd140814140886%_)
                     (let () (declare (not safe)) (_%g140809140834%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140809140834%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g140809140834%_)))))))
                              (_%__kont144892144893%_
                               (lambda ()
                                 (let* ((_%body140773%_
                                         (if _%compiled-body?140625%_
                                             _%body140745%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self140623%_
                                                _%body140745%_))))
                                        (_%body140775%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-post140631%_
                                            _%post140752%_
                                            _%body140773%_)))
                                        (_%body140777%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-check140632%_
                                            _%check140751%_
                                            _%body140775%_))))
                                   (cons 'let
                                         (cons (reverse _%bind140750%_)
                                               (cons _%body140777%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144888144889%_))
                              (let ((_%e140761140785%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144888144889%_))))
                                (let ((_%tl140759140790%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140761140785%_)))
                                      (_%hd140760140788%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140761140785%_))))
                                  (_%__kont144890144891%_
                                   _%tl140759140790%_
                                   _%hd140760140788%_)))
                              (_%__kont144892144893%_)))))))
                 (_%generate-values-post140631%_
                  (lambda (_%post140703%_ _%body140704%_)
                    (let _%lp140706%_ ((_%rest140708%_ _%post140703%_)
                                       (_%body140709%_ _%body140704%_))
                      (let* ((_%rest140710140718%_ _%rest140708%_)
                             (_%else140712140726%_ (lambda () _%body140709%_))
                             (_%K140714140732%_
                              (lambda (_%rest140729%_ _%bind140730%_)
                                (let ((__tmp145765
                                       (cons 'let
                                             (cons _%bind140730%_
                                                   (cons _%body140709%_
                                                         '())))))
                                  (declare (not safe))
                                  (_%lp140706%_ _%rest140729%_ __tmp145765)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140710140718%_))
                            (let ((_%hd140715140735%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140710140718%_)))
                                  (_%tl140716140737%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140710140718%_))))
                              (let* ((_%bind140740%_ _%hd140715140735%_)
                                     (_%rest140742%_ _%tl140716140737%_))
                                (declare (not safe))
                                (_%K140714140732%_
                                 _%rest140742%_
                                 _%bind140740%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140712140726%_)))))))
                 (_%generate-values-check140632%_
                  (lambda (_%check140700%_ _%body140701%_)
                    (cons 'begin
                          (let ((__tmp145767 (cons _%body140701%_ '()))
                                (__tmp145766 (reverse _%check140700%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145767 __tmp145766))))))
          (let* ((_%g140634140651%_
                  (lambda (_%g140635140648%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140635140648%_))))
                 (_%g140633140697%_
                  (lambda (_%g140635140654%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140635140654%_))
                        (let ((_%e140640140656%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140635140654%_))))
                          (let ((_%hd140639140659%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140640140656%_)))
                                (_%tl140638140661%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140640140656%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140638140661%_))
                                (let ((_%e140643140664%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140638140661%_))))
                                  (let ((_%hd140642140667%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140643140664%_)))
                                        (_%tl140641140669%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140643140664%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140641140669%_))
                                        (let ((_%e140646140672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140641140669%_))))
                                          (let ((_%hd140645140675%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140646140672%_)))
                                                (_%tl140644140677%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140646140672%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140644140677%_))
                                                ((lambda (_%L140680%_
                                                          _%L140681%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L140681%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-simple140627%_
                                                          _%L140681%_
                                                          _%L140680%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values140630%_
                                                          _%L140681%_
                                                          _%L140680%_))))
                                                 _%hd140645140675%_
                                                 _%hd140642140667%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g140634140651%_
                                                   _%g140635140654%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140634140651%_
                                           _%g140635140654%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g140634140651%_ _%g140635140654%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g140634140651%_ _%g140635140654%_))))))
            (declare (not safe))
            (_%g140633140697%_ _%stx140624%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self141384%_ _%stx141385%_)
        (let ((_%compiled-body?141387%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _%self141384%_
           _%stx141385%_
           _%compiled-body?141387%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g145769_
        (let ((_g145768_ (let () (declare (not safe)) (##length _g145769_))))
          (cond ((let () (declare (not safe)) (##fx= _g145768_ 2))
                 (apply (lambda (_%self141384%_ _%stx141385%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _%self141384%_
                             _%stx141385%_)))
                        _g145769_))
                ((let () (declare (not safe)) (##fx= _g145768_ 3))
                 (apply (lambda (_%self141389%_
                                 _%stx141390%_
                                 _%compiled-body?141391%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _%self141389%_
                             _%stx141390%_
                             _%compiled-body?141391%_)))
                        _g145769_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g145769_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals140517%_ _%hd140518%_)
        (let _%lp140520%_ ((_%rest140522%_ _%hd140518%_)
                           (_%k140523%_ '0)
                           (_%r140524%_ '()))
          (let* ((_%__stx144902144903%_ _%rest140522%_)
                 (_%g140529140546%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx144902144903%_)))))
            (let ((_%__kont144904144905%_
                   (lambda (_%L140609%_)
                     (let ((__tmp145770
                            (let ()
                              (declare (not safe))
                              (##fx+ _%k140523%_ '1))))
                       (declare (not safe))
                       (_%lp140520%_ _%L140609%_ __tmp145770 _%r140524%_))))
                  (_%__kont144906144907%_
                   (lambda (_%L140582%_ _%L140583%_)
                     (let ((__tmp145772
                            (let ()
                              (declare (not safe))
                              (##fx+ _%k140523%_ '1)))
                           (__tmp145771
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L140583%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#generate-runtime-values-ref
                                                 _%vals140517%_
                                                 _%k140523%_
                                                 _%L140582%_))
                                              '()))
                                  _%r140524%_)))
                       (declare (not safe))
                       (_%lp140520%_ _%L140582%_ __tmp145772 __tmp145771))))
                  (_%__kont144908144909%_
                   (lambda (_%L140558%_)
                     (let ((__tmp145773
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L140558%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#generate-runtime-values->list
                                                 _%vals140517%_
                                                 _%k140523%_))
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp145773 _%r140524%_))))
                  (_%__kont144910144911%_ (lambda () (reverse _%r140524%_))))
              (let ((_%g140527140569%_
                     (lambda ()
                       (let ((_%L140558%_ _%__stx144902144903%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L140558%_))
                             (_%__kont144908144909%_ _%L140558%_)
                             (_%__kont144910144911%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx144902144903%_))
                    (let ((_%e140534140598%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx144902144903%_))))
                      (let ((_%tl140532140603%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140534140598%_)))
                            (_%hd140533140601%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140534140598%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd140533140601%_))
                            (let ((_%e140535140606%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd140533140601%_))))
                              (if (equal? _%e140535140606%_ '#f)
                                  (_%__kont144904144905%_ _%tl140532140603%_)
                                  (_%__kont144906144907%_
                                   _%tl140532140603%_
                                   _%hd140533140601%_)))
                            (_%__kont144906144907%_
                             _%tl140532140603%_
                             _%hd140533140601%_))))
                    (let () (declare (not safe)) (_%g140527140569%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self140196%_ _%stx140197%_ _%compiled-body?140198%_)
        (letrec ((_%generate-simple140200%_
                  (lambda (_%hd140502%_ _%body140503%_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _%self140196%_
                       'letrec
                       _%hd140502%_
                       _%body140503%_
                       _%compiled-body?140198%_))))
                 (_%generate-values140201%_
                  (lambda (_%hd140281%_ _%body140282%_)
                    (let _%lp140284%_ ((_%rest140286%_ _%hd140281%_)
                                       (_%bind140287%_ '())
                                       (_%check140288%_ '())
                                       (_%post140289%_ '()))
                      (let* ((_%__stx144976144977%_ _%rest140286%_)
                             (_%g140292140303%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144976144977%_)))))
                        (let ((_%__kont144978144979%_
                               (lambda (_%L140330%_ _%L140331%_)
                                 (let* ((_%__stx144932144933%_ _%L140331%_)
                                        (_%g140346140371%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144932144933%_)))))
                                   (let ((_%__kont144934144935%_
                                          (lambda (_%L140478%_ _%L140479%_)
                                            (let ((_%eid140493%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140479%_)))
                                                  (_%expr140494%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self140196%_
                                                      _%L140478%_))))
                                              (let ((__tmp145774
                                                     (cons (cons _%eid140493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140494%_ '()))
                   _%bind140287%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%lp140284%_
                                                 _%L140330%_
                                                 __tmp145774
                                                 _%check140288%_
                                                 _%post140289%_)))))
                                         (_%__kont144936144937%_
                                          (lambda (_%L140392%_ _%L140393%_)
                                            (let* ((_%vals140406%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values140408%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _%vals140406%_
                                                       _%L140393%_
                                                       _%L140392%_)))
                                                   (_%refs140410%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _%vals140406%_
                                                       _%L140393%_)))
                                                   (_%expr140412%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self140196%_
                                                       _%L140392%_))))
                                              (let ((__tmp145777
                                                     (let ((__tmp145779
                                                            (cons (cons _%vals140406%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%expr140412%_ '()))
                          _%bind140287%_))
                   (__tmp145778
                    (map (lambda (_%e140414140416%_)
                           (let* ((_%g140418140427%_ _%e140414140416%_)
                                  (_%E140420140431%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%g140418140427%_
                                              '([eid _])))
                                     '#!void))
                                  (_%K140421140436%_
                                   (lambda (_%eid140434%_)
                                     (cons _%eid140434%_ (cons '#!void '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%g140418140427%_))
                                 (let ((_%hd140422140439%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%g140418140427%_)))
                                       (_%tl140423140441%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%g140418140427%_))))
                                   (let ((_%eid140444%_ _%hd140422140439%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _%tl140423140441%_))
                                         (let ((_%tl140425140446%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%tl140423140441%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _%tl140425140446%_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%K140421140436%_
                                                  _%eid140444%_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%E140420140431%_))))
                                         (let ()
                                           (declare (not safe))
                                           (_%E140420140431%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%E140420140431%_)))))
                         _%refs140410%_)))
               (declare (not safe))
               (__foldl1 cons __tmp145779 __tmp145778)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145776
                                                     (cons _%check-values140408%_
                                                           _%check140288%_))
                                                    (__tmp145775
                                                     (let ()
                                                       (declare (not safe))
                                                       (__foldl1
                                                        cons
                                                        _%refs140410%_
                                                        _%post140289%_))))
                                                (declare (not safe))
                                                (_%lp140284%_
                                                 _%L140330%_
                                                 __tmp145777
                                                 __tmp145776
                                                 __tmp145775))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144932144933%_))
                                         (let ((_%e140352140454%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144932144933%_))))
                                           (let ((_%tl140350140459%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140352140454%_)))
                                                 (_%hd140351140457%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140352140454%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd140351140457%_))
                                                 (let ((_%e140355140462%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd140351140457%_))))
                                                   (let ((_%tl140353140467%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140355140462%_)))
                                                         (_%hd140354140465%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140355140462%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140353140467%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140350140459%_))
                     (let ((_%e140358140470%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140350140459%_))))
                       (let ((_%tl140356140475%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140358140470%_)))
                             (_%hd140357140473%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140358140470%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140356140475%_))
                             (_%__kont144934144935%_
                              _%hd140357140473%_
                              _%hd140354140465%_)
                             (let ()
                               (declare (not safe))
                               (_%g140346140371%_)))))
                     (let () (declare (not safe)) (_%g140346140371%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140350140459%_))
                     (let ((_%e140366140384%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140350140459%_))))
                       (let ((_%tl140364140389%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140366140384%_)))
                             (_%hd140365140387%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140366140384%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140364140389%_))
                             (_%__kont144936144937%_
                              _%hd140365140387%_
                              _%hd140351140457%_)
                             (let ()
                               (declare (not safe))
                               (_%g140346140371%_)))))
                     (let () (declare (not safe)) (_%g140346140371%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140350140459%_))
                                                     (let ((_%e140366140384%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140350140459%_))))
                                                       (let ((_%tl140364140389%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140366140384%_)))
                     (_%hd140365140387%_
                      (let () (declare (not safe)) (##car _%e140366140384%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140364140389%_))
                     (_%__kont144936144937%_
                      _%hd140365140387%_
                      _%hd140351140457%_)
                     (let () (declare (not safe)) (_%g140346140371%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140346140371%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g140346140371%_)))))))
                              (_%__kont144980144981%_
                               (lambda ()
                                 (let* ((_%body140310%_
                                         (if _%compiled-body?140198%_
                                             _%body140282%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self140196%_
                                                _%body140282%_))))
                                        (_%body140312%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-post140203%_
                                            _%post140289%_
                                            _%body140310%_)))
                                        (_%body140314%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-check140202%_
                                            _%check140288%_
                                            _%body140312%_))))
                                   (cons 'letrec
                                         (cons (reverse _%bind140287%_)
                                               (cons _%body140314%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144976144977%_))
                              (let ((_%e140298140322%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144976144977%_))))
                                (let ((_%tl140296140327%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140298140322%_)))
                                      (_%hd140297140325%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140298140322%_))))
                                  (_%__kont144978144979%_
                                   _%tl140296140327%_
                                   _%hd140297140325%_)))
                              (_%__kont144980144981%_)))))))
                 (_%generate-values-check140202%_
                  (lambda (_%check140278%_ _%body140279%_)
                    (cons 'begin
                          (let ((__tmp145781 (cons _%body140279%_ '()))
                                (__tmp145780 (reverse _%check140278%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145781 __tmp145780)))))
                 (_%generate-values-post140203%_
                  (lambda (_%post140271%_ _%body140272%_)
                    (cons 'begin
                          (let ((__tmp145785 (cons _%body140272%_ '()))
                                (__tmp145782
                                 (let ((__tmp145784
                                        (lambda (_%g140273140275%_)
                                          (cons 'set! _%g140273140275%_)))
                                       (__tmp145783 (reverse _%post140271%_)))
                                   (declare (not safe))
                                   (##map __tmp145784 __tmp145783))))
                            (declare (not safe))
                            (__foldr1 cons __tmp145785 __tmp145782))))))
          (let* ((_%g140205140222%_
                  (lambda (_%g140206140219%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140206140219%_))))
                 (_%g140204140268%_
                  (lambda (_%g140206140225%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140206140225%_))
                        (let ((_%e140211140227%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140206140225%_))))
                          (let ((_%hd140210140230%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140211140227%_)))
                                (_%tl140209140232%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140211140227%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140209140232%_))
                                (let ((_%e140214140235%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140209140232%_))))
                                  (let ((_%hd140213140238%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140214140235%_)))
                                        (_%tl140212140240%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140214140235%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140212140240%_))
                                        (let ((_%e140217140243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140212140240%_))))
                                          (let ((_%hd140216140246%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140217140243%_)))
                                                (_%tl140215140248%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140217140243%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140215140248%_))
                                                ((lambda (_%L140251%_
                                                          _%L140252%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L140252%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-simple140200%_
                                                          _%L140252%_
                                                          _%L140251%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values140201%_
                                                          _%L140252%_
                                                          _%L140251%_))))
                                                 _%hd140216140246%_
                                                 _%hd140213140238%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g140205140222%_
                                                   _%g140206140225%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140205140222%_
                                           _%g140206140225%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g140205140222%_ _%g140206140225%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g140205140222%_ _%g140206140225%_))))))
            (declare (not safe))
            (_%g140204140268%_ _%stx140197%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self140508%_ _%stx140509%_)
        (let ((_%compiled-body?140511%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _%self140508%_
           _%stx140509%_
           _%compiled-body?140511%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g145787_
        (let ((_g145786_ (let () (declare (not safe)) (##length _g145787_))))
          (cond ((let () (declare (not safe)) (##fx= _g145786_ 2))
                 (apply (lambda (_%self140508%_ _%stx140509%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _%self140508%_
                             _%stx140509%_)))
                        _g145787_))
                ((let () (declare (not safe)) (##fx= _g145786_ 3))
                 (apply (lambda (_%self140513%_
                                 _%stx140514%_
                                 _%compiled-body?140515%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _%self140513%_
                             _%stx140514%_
                             _%compiled-body?140515%_)))
                        _g145787_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g145787_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self139777%_ _%stx139778%_)
        (letrec ((_%generate-values139780%_
                  (lambda (_%hd140023%_ _%body140024%_)
                    (let _%lp140026%_ ((_%rest140028%_ _%hd140023%_)
                                       (_%bind140029%_ '()))
                      (let* ((_%rest140030140038%_ _%rest140028%_)
                             (_%else140032140049%_
                              (lambda ()
                                (let ((_%bind140046%_ (reverse _%bind140029%_))
                                      (_%body140047%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self139777%_
                                          _%body140024%_))))
                                  (cons 'letrec*
                                        (cons _%bind140046%_
                                              (cons _%body140047%_ '()))))))
                             (_%K140034140183%_
                              (lambda (_%rest140052%_ _%hd-bind140053%_)
                                (let* ((_%__stx144990144991%_
                                        _%hd-bind140053%_)
                                       (_%g140056140081%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx144990144991%_)))))
                                  (let ((_%__kont144992144993%_
                                         (lambda (_%L140162%_ _%L140163%_)
                                           (let ((_%eid140177%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L140163%_)))
                                                 (_%expr140178%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self139777%_
                                                     _%L140162%_))))
                                             (let ((__tmp145788
                                                    (cons (cons _%eid140177%_
                                                                (cons _%expr140178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind140029%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp140026%_
                                                _%rest140052%_
                                                __tmp145788)))))
                                        (_%__kont144994144995%_
                                         (lambda (_%L140102%_ _%L140103%_)
                                           (let* ((_%vals140122%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp140124%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values140126%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _%tmp140124%_
                                                      _%L140103%_
                                                      _%L140102%_)))
                                                  (_%refs140128%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _%vals140122%_
                                                      _%L140103%_)))
                                                  (_%expr140130%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139777%_
                                                      _%L140102%_)))
                                                  (__tmp145789
                                                   (let ((__tmp145790
                                                          (cons (cons _%vals140122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons 'let
                                          (cons (cons (cons _%tmp140124%_
                                                            (cons _%expr140130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%check-values140126%_
                                                      (cons _%tmp140124%_
                                                            '()))))
                                    '()))
                        _%bind140029%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldl1
                                                      cons
                                                      __tmp145790
                                                      _%refs140128%_))))
                                             (declare (not safe))
                                             (_%lp140026%_
                                              _%rest140052%_
                                              __tmp145789)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx144990144991%_))
                                        (let ((_%e140062140138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx144990144991%_))))
                                          (let ((_%tl140060140143%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140062140138%_)))
                                                (_%hd140061140141%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140062140138%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd140061140141%_))
                                                (let ((_%e140065140146%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd140061140141%_))))
                                                  (let ((_%tl140063140151%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140065140146%_)))
                                                        (_%hd140064140149%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140065140146%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140063140151%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl140060140143%_))
                                                            (let ((_%e140068140154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl140060140143%_))))
                      (let ((_%tl140066140159%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140068140154%_)))
                            (_%hd140067140157%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140068140154%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl140066140159%_))
                            (_%__kont144992144993%_
                             _%hd140067140157%_
                             _%hd140064140149%_)
                            (let ()
                              (declare (not safe))
                              (_%g140056140081%_)))))
                    (let () (declare (not safe)) (_%g140056140081%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl140060140143%_))
                    (let ((_%e140076140094%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl140060140143%_))))
                      (let ((_%tl140074140099%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140076140094%_)))
                            (_%hd140075140097%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140076140094%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl140074140099%_))
                            (_%__kont144994144995%_
                             _%hd140075140097%_
                             _%hd140061140141%_)
                            (let ()
                              (declare (not safe))
                              (_%g140056140081%_)))))
                    (let () (declare (not safe)) (_%g140056140081%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl140060140143%_))
                                                    (let ((_%e140076140094%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl140060140143%_))))
                                                      (let ((_%tl140074140099%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e140076140094%_)))
                    (_%hd140075140097%_
                     (let () (declare (not safe)) (##car _%e140076140094%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl140074140099%_))
                    (_%__kont144994144995%_
                     _%hd140075140097%_
                     _%hd140061140141%_)
                    (let () (declare (not safe)) (_%g140056140081%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g140056140081%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140056140081%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140030140038%_))
                            (let ((_%hd140035140186%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140030140038%_)))
                                  (_%tl140036140188%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140030140038%_))))
                              (let* ((_%hd-bind140191%_ _%hd140035140186%_)
                                     (_%rest140193%_ _%tl140036140188%_))
                                (declare (not safe))
                                (_%K140034140183%_
                                 _%rest140193%_
                                 _%hd-bind140191%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140032140049%_)))))))
                 (_%generate-letrec?139781%_
                  (lambda (_%hd139913%_)
                    (let _%lp139915%_ ((_%rest139917%_ _%hd139913%_))
                      (let* ((_%rest139918139926%_ _%rest139917%_)
                             (_%else139920139934%_ (lambda () '#t))
                             (_%K139922140011%_
                              (lambda (_%rest139937%_ _%hd-bind139938%_)
                                (let* ((_%g139940139957%_
                                        (lambda (_%g139941139954%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g139941139954%_))))
                                       (_%g139939140008%_
                                        (lambda (_%g139941139960%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g139941139960%_))
                                              (let ((_%e139946139962%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g139941139960%_))))
                                                (let ((_%hd139945139965%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139946139962%_)))
                                                      (_%tl139944139967%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139946139962%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd139945139965%_))
                                                      (let ((_%e139949139970%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd139945139965%_))))
                (let ((_%hd139948139973%_
                       (let () (declare (not safe)) (##car _%e139949139970%_)))
                      (_%tl139947139975%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139949139970%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139947139975%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl139944139967%_))
                          (let ((_%e139952139978%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl139944139967%_))))
                            (let ((_%hd139951139981%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139952139978%_)))
                                  (_%tl139950139983%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139952139978%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl139950139983%_))
                                  ((lambda (_%L139986%_ _%L139987%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_%is-lambda-expr?139782%_
                                            _%L139986%_))
                                         (let ()
                                           (declare (not safe))
                                           (_%lp139915%_ _%rest139937%_))
                                         '#f))
                                   _%hd139951139981%_
                                   _%hd139948139973%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g139940139957%_ _%g139941139960%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g139940139957%_ _%g139941139960%_)))
                      (let ()
                        (declare (not safe))
                        (_%g139940139957%_ _%g139941139960%_)))))
              (let ()
                (declare (not safe))
                (_%g139940139957%_ _%g139941139960%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g139940139957%_
                                                 _%g139941139960%_))))))
                                  (declare (not safe))
                                  (_%g139939140008%_ _%hd-bind139938%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139918139926%_))
                            (let ((_%hd139923140014%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139918139926%_)))
                                  (_%tl139924140016%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139918139926%_))))
                              (let* ((_%hd-bind140019%_ _%hd139923140014%_)
                                     (_%rest140021%_ _%tl139924140016%_))
                                (declare (not safe))
                                (_%K139922140011%_
                                 _%rest140021%_
                                 _%hd-bind140019%_)))
                            (let ()
                              (declare (not safe))
                              (_%else139920139934%_)))))))
                 (_%is-lambda-expr?139782%_
                  (lambda (_%expr139850%_)
                    (let* ((_%__stx145034145035%_ _%expr139850%_)
                           (_%g139853139867%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx145034145035%_)))))
                      (let ((_%__kont145036145037%_
                             (lambda (_%L139895%_ _%L139896%_) '#t))
                            (_%__kont145038145039%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx145034145035%_))
                            (let ((_%e139859139879%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx145034145035%_))))
                              (let ((_%tl139857139884%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e139859139879%_)))
                                    (_%hd139858139882%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e139859139879%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd139858139882%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd139858139882%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl139857139884%_))
                                            (let ((_%e139862139887%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl139857139884%_))))
                                              (let ((_%tl139860139892%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e139862139887%_)))
                                                    (_%hd139861139890%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e139862139887%_))))
                                                (_%__kont145036145037%_
                                                 _%tl139860139892%_
                                                 _%hd139861139890%_)))
                                            (_%__kont145038145039%_))
                                        (_%__kont145038145039%_))
                                    (_%__kont145038145039%_))))
                            (_%__kont145038145039%_)))))))
          (let* ((_%g139784139801%_
                  (lambda (_%g139785139798%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139785139798%_))))
                 (_%g139783139847%_
                  (lambda (_%g139785139804%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139785139804%_))
                        (let ((_%e139790139806%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139785139804%_))))
                          (let ((_%hd139789139809%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139790139806%_)))
                                (_%tl139788139811%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139790139806%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139788139811%_))
                                (let ((_%e139793139814%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139788139811%_))))
                                  (let ((_%hd139792139817%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139793139814%_)))
                                        (_%tl139791139819%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139793139814%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139791139819%_))
                                        (let ((_%e139796139822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139791139819%_))))
                                          (let ((_%hd139795139825%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139796139822%_)))
                                                (_%tl139794139827%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139796139822%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139794139827%_))
                                                ((lambda (_%L139830%_
                                                          _%L139831%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L139831%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-letrec?139781%_
                                                              _%L139831%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _%self139777%_
                                                              'letrec
                                                              _%L139831%_
                                                              _%L139830%_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _%self139777%_
                                                              'letrec*
                                                              _%L139831%_
                                                              _%L139830%_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values139780%_
                                                          _%L139831%_
                                                          _%L139830%_))))
                                                 _%hd139795139825%_
                                                 _%hd139792139817%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g139784139801%_
                                                   _%g139785139804%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139784139801%_
                                           _%g139785139804%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139784139801%_ _%g139785139804%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139784139801%_ _%g139785139804%_))))))
            (declare (not safe))
            (_%g139783139847%_ _%stx139778%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd139714%_)
        (let _%lp139716%_ ((_%rest139718%_ _%hd139714%_))
          (let* ((_%rest139719139735%_ _%rest139718%_)
                 (_%else139722139743%_ (lambda () '#f)))
            (let ((_%K139725139756%_
                   (lambda (_%rest139754%_)
                     (let ()
                       (declare (not safe))
                       (_%lp139716%_ _%rest139754%_))))
                  (_%K139724139748%_ (lambda () '#t)))
              (let ((_%try-match139721139751%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest139719139735%_))
                           (let () (declare (not safe)) (_%K139724139748%_))
                           (let ()
                             (declare (not safe))
                             (_%else139722139743%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest139719139735%_))
                    (let ((_%tl139727139761%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest139719139735%_)))
                          (_%hd139726139759%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest139719139735%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd139726139759%_))
                          (let ((_%tl139729139766%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd139726139759%_)))
                                (_%hd139728139764%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd139726139759%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139728139764%_))
                                (let ((_%tl139733139769%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139728139764%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl139733139769%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl139729139766%_))
                                          (let ((_%tl139731139772%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl139729139766%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl139731139772%_))
                                                (let ((_%rest139775%_
                                                       _%tl139727139761%_))
                                                  (declare (not safe))
                                                  (_%lp139716%_
                                                   _%rest139775%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else139722139743%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else139722139743%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else139722139743%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%else139722139743%_))))
                          (let ()
                            (declare (not safe))
                            (_%else139722139743%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match139721139751%_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self139625%_
               _%form139626%_
               _%hd139627%_
               _%body139628%_
               _%compiled-body?139629%_)
        (letrec ((_%generate1139631%_
                  (lambda (_%bind139670%_)
                    (let* ((_%bind139671139682%_ _%bind139670%_)
                           (_%E139673139686%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind139671139682%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K139674139692%_
                            (lambda (_%expr139689%_ _%id139690%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id139690%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self139625%_
                                             _%expr139689%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind139671139682%_))
                          (let ((_%hd139675139695%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind139671139682%_)))
                                (_%tl139676139697%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind139671139682%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139675139695%_))
                                (let ((_%hd139679139700%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd139675139695%_)))
                                      (_%tl139680139702%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139675139695%_))))
                                  (let ((_%id139705%_ _%hd139679139700%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl139680139702%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl139676139697%_))
                                            (let ((_%hd139677139707%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl139676139697%_)))
                                                  (_%tl139678139709%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl139676139697%_))))
                                              (let ((_%expr139712%_
                                                     _%hd139677139707%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl139678139709%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%K139674139692%_
                                                       _%expr139712%_
                                                       _%id139705%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E139673139686%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%E139673139686%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E139673139686%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%E139673139686%_))))
                          (let ()
                            (declare (not safe))
                            (_%E139673139686%_)))))))
          (let* ((_%bind139633%_ (map _%generate1139631%_ _%hd139627%_))
                 (_%body139635%_
                  (if _%compiled-body?139629%_
                      _%body139628%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self139625%_ _%body139628%_))))
                 (_%body139667%_
                  (let* ((_%body139636139644%_ _%body139635%_)
                         (_%else139638139652%_
                          (lambda () (cons _%body139635%_ '())))
                         (_%K139640139657%_
                          (lambda (_%exprs139655%_) _%exprs139655%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body139636139644%_))
                        (let ((_%hd139641139660%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body139636139644%_)))
                              (_%tl139642139662%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body139636139644%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd139641139660%_ 'begin))
                              (let ((_%exprs139665%_ _%tl139642139662%_))
                                (declare (not safe))
                                (_%K139640139657%_ _%exprs139665%_))
                              (let ()
                                (declare (not safe))
                                (_%else139638139652%_))))
                        (let ()
                          (declare (not safe))
                          (_%else139638139652%_))))))
            (cons _%form139626%_ (cons _%bind139633%_ _%body139667%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self139525%_ _%stx139526%_)
        (letrec ((_%generate1139528%_
                  (lambda (_%datum139580%_)
                    (if (or (let ()
                              (declare (not safe))
                              (null? _%datum139580%_))
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum139580%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum139580%_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _%datum139580%_)))
                        (let () _%datum139580%_)
                        (if (uninterned-symbol? _%datum139580%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum139580%_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _%datum139580%_))
                                (let ()
                                  (cons (let ((__tmp145791
                                               (car _%datum139580%_)))
                                          (declare (not safe))
                                          (_%generate1139528%_ __tmp145791))
                                        (let ((__tmp145792
                                               (cdr _%datum139580%_)))
                                          (declare (not safe))
                                          (_%generate1139528%_ __tmp145792))))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _%datum139580%_))
                                    (let ()
                                      (box (let ((__tmp145793
                                                  (unbox _%datum139580%_)))
                                             (declare (not safe))
                                             (_%generate1139528%_
                                              __tmp145793))))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _%datum139580%_))
                                        (let ()
                                          (vector-map
                                           _%generate1139528%_
                                           _%datum139580%_))
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (s8vector? _%datum139580%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _%datum139580%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s16vector? _%datum139580%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u16vector? _%datum139580%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s32vector? _%datum139580%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u32vector? _%datum139580%_))
                                                (s64vector? _%datum139580%_)
                                                (u64vector? _%datum139580%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (f32vector? _%datum139580%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (f64vector?
                                                   _%datum139580%_)))
                                            (let () _%datum139580%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx139526%_)))))))))))
          (let* ((_%g139530139543%_
                  (lambda (_%g139531139540%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139531139540%_))))
                 (_%g139529139577%_
                  (lambda (_%g139531139546%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139531139546%_))
                        (let ((_%e139535139548%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139531139546%_))))
                          (let ((_%hd139534139551%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139535139548%_)))
                                (_%tl139533139553%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139535139548%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139533139553%_))
                                (let ((_%e139538139556%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139533139553%_))))
                                  (let ((_%hd139537139559%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139538139556%_)))
                                        (_%tl139536139561%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139538139556%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl139536139561%_))
                                        ((lambda (_%L139564%_)
                                           (cons 'quote
                                                 (cons (let ((__tmp145794
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%L139564%_))))
                 (declare (not safe))
                 (_%generate1139528%_ __tmp145794))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd139537139559%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g139530139543%_
                                           _%g139531139546%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139530139543%_ _%g139531139546%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139530139543%_ _%g139531139546%_))))))
            (declare (not safe))
            (_%g139529139577%_ _%stx139526%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self138966%_ _%stx138967%_)
        (letrec ((_%compile-call138969%_
                  (lambda (_%rator139258%_ _%rands139259%_)
                    (let ((_%rator139265%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self138966%_
                              _%rator139258%_)))
                          (_%rands139266%_
                           (map (lambda (_%g139260139262%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self138966%_
                                     _%g139260139262%_)))
                                _%rands139259%_)))
                      (let* ((_%__stx145081145082%_ _%rator139265%_)
                             (_%g139269139321%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx145081145082%_)))))
                        (let ((_%__kont145083145084%_
                               (lambda (_%L139445%_
                                        _%L139446%_
                                        _%L139447%_
                                        _%L139448%_)
                                 (if (let ((__tmp145797
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands139266%_)))
                                           (__tmp145795
                                            (length (let ((__tmp145796
                                                           (lambda (_%g139484139487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g139485139489%_)
                     (cons _%g139484139487%_ _%g139485139489%_))))
              (declare (not safe))
              (__foldr1 __tmp145796 '() _%L139447%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145797 __tmp145795))
                                     (let* ((_%id139492%_ _%L139448%_)
                                            (_%args139501%_
                                             (let ((__tmp145798
                                                    (lambda (_%g139493139496%_
                                                             _%g139494139498%_)
                                                      (cons _%g139493139496%_
                                                            _%g139494139498%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145798
                                                '()
                                                _%L139447%_)))
                                            (_%body139510%_
                                             (let ((__tmp145799
                                                    (lambda (_%g139502139505%_
                                                             _%g139503139507%_)
                                                      (cons _%g139502139505%_
                                                            _%g139503139507%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145799
                                                '()
                                                _%L139446%_)))
                                            (_%init139512%_
                                             (map list
                                                  _%args139501%_
                                                  _%rands139266%_)))
                                       (cons 'let
                                             (cons _%id139492%_
                                                   (cons _%init139512%_
                                                         _%body139510%_))))
                                     (let ((__tmp145800
                                            (let ((__tmp145801
                                                   (lambda (_%g139514139517%_
                                                            _%g139515139519%_)
                                                     (cons _%g139514139517%_
                                                           _%g139515139519%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145801
                                               '()
                                               _%L139447%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx138967%_
                                        __tmp145800
                                        _%rands139266%_)))))
                              (_%__kont145089145090%_
                               (lambda ()
                                 (cons _%rator139265%_ _%rands139266%_))))
                          (let ((_%__match145148145149%_
                                 (lambda (_%e139277139333%_
                                          _%hd139276139336%_
                                          _%tl139275139338%_
                                          _%e139280139341%_
                                          _%hd139279139344%_
                                          _%tl139278139346%_
                                          _%e139283139349%_
                                          _%hd139282139352%_
                                          _%tl139281139354%_
                                          _%e139286139357%_
                                          _%hd139285139360%_
                                          _%tl139284139362%_
                                          _%e139289139365%_
                                          _%hd139288139368%_
                                          _%tl139287139370%_
                                          _%e139292139373%_
                                          _%hd139291139376%_
                                          _%tl139290139378%_
                                          _%e139295139381%_
                                          _%hd139294139384%_
                                          _%tl139293139386%_
                                          _%__splice145085145086%_
                                          _%target139296139389%_
                                          _%tl139298139391%_)
                                   (letrec ((_%loop139299139394%_
                                             (lambda (_%hd139297139397%_
                                                      _%arg139303139399%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd139297139397%_))
                                                   (let ((_%e139300139402%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd139297139397%_))))
                                                     (let ((_%lp-tl139302139407%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e139300139402%_)))
                                                           (_%lp-hd139301139405%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e139300139402%_))))
                                                       (let ((__tmp145802
                                                              (cons _%lp-hd139301139405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%arg139303139399%_)))
                 (declare (not safe))
                 (_%loop139299139394%_ _%lp-tl139302139407%_ __tmp145802))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%arg139304139410%_
                                                          (reverse _%arg139303139399%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl139293139386%_))
                                                         (let ((_%__splice145087145088%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl139293139386%_ '0))))
                   (let ((_%tl139307139415%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice145087145088%_ '1)))
                         (_%target139305139413%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice145087145088%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl139307139415%_))
                         (letrec ((_%loop139308139418%_
                                   (lambda (_%hd139306139421%_
                                            _%body139312139423%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd139306139421%_))
                                         (let ((_%e139309139426%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd139306139421%_))))
                                           (let ((_%lp-tl139311139431%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e139309139426%_)))
                                                 (_%lp-hd139310139429%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e139309139426%_))))
                                             (let ((__tmp145803
                                                    (cons _%lp-hd139310139429%_
                                                          _%body139312139423%_)))
                                               (declare (not safe))
                                               (_%loop139308139418%_
                                                _%lp-tl139311139431%_
                                                __tmp145803))))
                                         (let ((_%body139313139434%_
                                                (reverse _%body139312139423%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl139287139370%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl139281139354%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl139278139346%_))
                                                       (let ((_%e139316139437%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl139278139346%_))))
                 (let ((_%tl139314139442%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e139316139437%_)))
                       (_%hd139315139440%_
                        (let ()
                          (declare (not safe))
                          (##car _%e139316139437%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl139314139442%_))
                       (let ((_%L139445%_ _%hd139315139440%_)
                             (_%L139446%_ _%body139313139434%_)
                             (_%L139447%_ _%arg139304139410%_)
                             (_%L139448%_ _%hd139285139360%_))
                         (if (eq? _%L139448%_ _%L139445%_)
                             (_%__kont145083145084%_
                              _%L139445%_
                              _%L139446%_
                              _%L139447%_
                              _%L139448%_)
                             (_%__kont145089145090%_)))
                       (_%__kont145089145090%_))))
               (_%__kont145089145090%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont145089145090%_))
                                               (_%__kont145089145090%_)))))))
                           (let ()
                             (declare (not safe))
                             (_%loop139308139418%_
                              _%target139305139413%_
                              '())))
                         (_%__kont145089145090%_))))
                 (_%__kont145089145090%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_%loop139299139394%_
                                        _%target139296139389%_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx145081145082%_))
                                (let ((_%e139277139333%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx145081145082%_))))
                                  (let ((_%tl139275139338%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139277139333%_)))
                                        (_%hd139276139336%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139277139333%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd139276139336%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd139276139336%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl139275139338%_))
                                                (let ((_%e139280139341%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl139275139338%_))))
                                                  (let ((_%tl139278139346%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139280139341%_)))
                                                        (_%hd139279139344%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139280139341%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd139279139344%_))
                                                        (let ((_%e139283139349%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd139279139344%_))))
                  (let ((_%tl139281139354%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e139283139349%_)))
                        (_%hd139282139352%_
                         (let ()
                           (declare (not safe))
                           (##car _%e139283139349%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd139282139352%_))
                        (let ((_%e139286139357%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd139282139352%_))))
                          (let ((_%tl139284139362%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139286139357%_)))
                                (_%hd139285139360%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139286139357%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139284139362%_))
                                (let ((_%e139289139365%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139284139362%_))))
                                  (let ((_%tl139287139370%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139289139365%_)))
                                        (_%hd139288139368%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139289139365%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd139288139368%_))
                                        (let ((_%e139292139373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd139288139368%_))))
                                          (let ((_%tl139290139378%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139292139373%_)))
                                                (_%hd139291139376%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139292139373%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd139291139376%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd139291139376%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl139290139378%_))
                                                        (let ((_%e139295139381%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl139290139378%_))))
                  (let ((_%tl139293139386%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e139295139381%_)))
                        (_%hd139294139384%_
                         (let ()
                           (declare (not safe))
                           (##car _%e139295139381%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd139294139384%_))
                        (let ((_%__splice145085145086%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd139294139384%_
                                  '0))))
                          (let ((_%tl139298139391%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice145085145086%_ '1)))
                                (_%target139296139389%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice145085145086%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl139298139391%_))
                                (_%__match145148145149%_
                                 _%e139277139333%_
                                 _%hd139276139336%_
                                 _%tl139275139338%_
                                 _%e139280139341%_
                                 _%hd139279139344%_
                                 _%tl139278139346%_
                                 _%e139283139349%_
                                 _%hd139282139352%_
                                 _%tl139281139354%_
                                 _%e139286139357%_
                                 _%hd139285139360%_
                                 _%tl139284139362%_
                                 _%e139289139365%_
                                 _%hd139288139368%_
                                 _%tl139287139370%_
                                 _%e139292139373%_
                                 _%hd139291139376%_
                                 _%tl139290139378%_
                                 _%e139295139381%_
                                 _%hd139294139384%_
                                 _%tl139293139386%_
                                 _%__splice145085145086%_
                                 _%target139296139389%_
                                 _%tl139298139391%_)
                                (_%__kont145089145090%_))))
                        (_%__kont145089145090%_))))
                (_%__kont145089145090%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont145089145090%_))
                                                (_%__kont145089145090%_))))
                                        (_%__kont145089145090%_))))
                                (_%__kont145089145090%_))))
                        (_%__kont145089145090%_))))
                (_%__kont145089145090%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont145089145090%_))
                                            (_%__kont145089145090%_))
                                        (_%__kont145089145090%_))))
                                (_%__kont145089145090%_)))))))))
          (let* ((_%g138971138994%_
                  (lambda (_%g138972138991%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138972138991%_))))
                 (_%g138970139255%_
                  (lambda (_%g138972138997%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138972138997%_))
                        (let ((_%e138977138999%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138972138997%_))))
                          (let ((_%hd138976139002%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138977138999%_)))
                                (_%tl138975139004%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138977138999%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138975139004%_))
                                (let ((_%e138980139007%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138975139004%_))))
                                  (let ((_%hd138979139010%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138980139007%_)))
                                        (_%tl138978139012%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138980139007%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl138978139012%_))
                                        (let ((_g145804_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl138978139012%_
                                                  '0))))
                                          (begin
                                            (let ((_g145805_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g145804_)
                                                         (##vector-length
                                                          _g145804_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g145805_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g145805_)))
                                            (let ((_%target138981139015%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145804_
                                                      0)))
                                                  (_%tl138983139017%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145804_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl138983139017%_))
                                                  (letrec ((_%loop138984139020%_
                                                            (lambda (_%hd138982139023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand138988139025%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd138982139023%_))
                          (let ((_%e138985139028%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd138982139023%_))))
                            (let ((_%lp-hd138986139031%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138985139028%_)))
                                  (_%lp-tl138987139033%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138985139028%_))))
                              (let ((__tmp145806
                                     (cons _%lp-hd138986139031%_
                                           _%rand138988139025%_)))
                                (declare (not safe))
                                (_%loop138984139020%_
                                 _%lp-tl138987139033%_
                                 __tmp145806))))
                          (let ((_%rand138989139036%_
                                 (reverse _%rand138988139025%_)))
                            ((lambda (_%L139039%_ _%L139040%_)
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls-unsafe?))
                                   (let ((__tmp145807
                                          (let ((__tmp145808
                                                 (lambda (_%g139057139060%_
                                                          _%g139058139062%_)
                                                   (cons _%g139057139060%_
                                                         _%g139058139062%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp145808
                                             '()
                                             _%L139039%_))))
                                     (declare (not safe))
                                     (_%compile-call138969%_
                                      _%L139040%_
                                      __tmp145807))
                                   (let* ((_%__stx145197145198%_ _%L139040%_)
                                          (_%g139066139078%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx145197145198%_)))))
                                     (let ((_%__kont145199145200%_
                                            (lambda ()
                                              (let ((_%f139115%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self138966%_
                                                        _%L139040%_))))
                                                (if (and (let ((__tmp145809
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f139115%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp145809))
                 (let ((__tmp145810
                        (let ()
                          (declare (not safe))
                          (##memq _%f139115%_ gxc#checked-primitives))))
                   (declare (not safe))
                   (not __tmp145810)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp139117%_ ((_%rest139120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp145816
                                                (lambda (_%g139237139240%_
                                                         _%g139238139242%_)
                                                  (cons _%g139237139240%_
                                                        _%g139238139242%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp145816
                                            '()
                                            _%L139039%_))))
                               (_%bind139122%_ '())
                               (_%args139123%_ '()))
              (let* ((_%rest139124139132%_ _%rest139120%_)
                     (_%else139126139140%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind139122%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f139115%_
                                                      _%args139123%_)
                                                '()))))))
                     (_%K139128139226%_
                      (lambda (_%rest139143%_ _%e139144%_)
                        (let* ((_%__stx145151145152%_ _%e139144%_)
                               (_%g139149139167%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx145151145152%_)))))
                          (let ((_%__kont145153145154%_
                                 (lambda ()
                                   (let ((__tmp145811
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e139144%_))
                                                _%args139123%_)))
                                     (declare (not safe))
                                     (_%lp139117%_
                                      _%rest139143%_
                                      _%bind139122%_
                                      __tmp145811))))
                                (_%__kont145155145156%_
                                 (lambda ()
                                   (let ((__tmp145812
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e139144%_))
                                                _%args139123%_)))
                                     (declare (not safe))
                                     (_%lp139117%_
                                      _%rest139143%_
                                      _%bind139122%_
                                      __tmp145812))))
                                (_%__kont145157145158%_
                                 (lambda ()
                                   (let ((_%tmp139174%_
                                          (let ((__tmp145813
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp145813))))
                                     (let ((__tmp145815
                                            (cons (cons _%tmp139174%_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _%e139144%_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind139122%_))
                                           (__tmp145814
                                            (cons _%tmp139174%_
                                                  _%args139123%_)))
                                       (declare (not safe))
                                       (_%lp139117%_
                                        _%rest139143%_
                                        __tmp145815
                                        __tmp145814))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx145151145152%_))
                                (let ((_%e139153139205%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx145151145152%_))))
                                  (let ((_%tl139151139210%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139153139205%_)))
                                        (_%hd139152139208%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139153139205%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd139152139208%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd139152139208%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl139151139210%_))
                                                (let ((_%e139156139213%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl139151139210%_))))
                                                  (let ((_%tl139154139218%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139156139213%_)))
                                                        (_%hd139155139216%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139156139213%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139154139218%_))
                                                        (_%__kont145153145154%_)
                                                        (_%__kont145157145158%_))))
                                                (_%__kont145157145158%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd139152139208%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl139151139210%_))
                                                    (let ((_%e139162139190%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl139151139210%_))))
                                                      (let ((_%tl139160139195%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e139162139190%_)))
                    (_%hd139161139193%_
                     (let () (declare (not safe)) (##car _%e139162139190%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl139160139195%_))
                    (_%__kont145155145156%_)
                    (_%__kont145157145158%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont145157145158%_))
                                                (_%__kont145157145158%_)))
                                        (_%__kont145157145158%_))))
                                (_%__kont145157145158%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest139124139132%_))
                    (let ((_%hd139129139229%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest139124139132%_)))
                          (_%tl139130139231%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest139124139132%_))))
                      (let* ((_%e139234%_ _%hd139129139229%_)
                             (_%rest139236%_ _%tl139130139231%_))
                        (declare (not safe))
                        (_%K139128139226%_ _%rest139236%_ _%e139234%_)))
                    (let () (declare (not safe)) (_%else139126139140%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp145817
                                                           (let ((__tmp145818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g139244139247%_ _%g139245139249%_)
                            (cons _%g139244139247%_ _%g139245139249%_))))
                     (declare (not safe))
                     (__foldr1 __tmp145818 '() _%L139039%_))))
              (declare (not safe))
              (_%compile-call138969%_ _%L139040%_ __tmp145817))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont145201145202%_
                                            (lambda ()
                                              (let ((__tmp145819
                                                     (let ((__tmp145820
                                                            (lambda (_%g139084139087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g139085139089%_)
                      (cons _%g139084139087%_ _%g139085139089%_))))
               (declare (not safe))
               (__foldr1 __tmp145820 '() _%L139039%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%compile-call138969%_
                                                 _%L139040%_
                                                 __tmp145819)))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx145197145198%_))
                                           (let ((_%e139070139097%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx145197145198%_))))
                                             (let ((_%tl139068139102%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e139070139097%_)))
                                                   (_%hd139069139100%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e139070139097%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd139069139100%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd139069139100%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl139068139102%_))
                                                           (let ((_%e139073139105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl139068139102%_))))
                     (let ((_%tl139071139110%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e139073139105%_)))
                           (_%hd139072139108%_
                            (let ()
                              (declare (not safe))
                              (##car _%e139073139105%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl139071139110%_))
                           (_%__kont145199145200%_)
                           (_%__kont145201145202%_))))
                   (_%__kont145201145202%_))
               (_%__kont145201145202%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont145201145202%_))))
                                           (_%__kont145201145202%_))))))
                             _%rand138989139036%_
                             _%hd138979139010%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%loop138984139020%_
                                                       _%target138981139015%_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g138971138994%_
                                                     _%g138972138997%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g138971138994%_
                                           _%g138972138997%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g138971138994%_ _%g138972138997%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g138971138994%_ _%g138972138997%_))))))
            (declare (not safe))
            (_%g138970139255%_ _%stx138967%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self138709%_ _%stx138710%_)
        (let* ((_%__stx145269145270%_ _%stx138710%_)
               (_%g138713138742%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx145269145270%_)))))
          (let ((_%__kont145271145272%_
                 (lambda (_%L138810%_ _%L138811%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call%
                          _%self138709%_
                          _%stx138710%_))
                       (let ((_%f138833%_
                              (let ((__tmp145821
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L138811%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self138709%_
                                 __tmp145821))))
                         (let _%lp138835%_ ((_%rest138838%_
                                             (reverse (let ((__tmp145827
                                                             (lambda (_%g138955138958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g138956138960%_)
                       (cons _%g138955138958%_ _%g138956138960%_))))
                (declare (not safe))
                (__foldr1 __tmp145827 '() _%L138810%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind138840%_ '())
                                            (_%args138841%_ '()))
                           (let* ((_%rest138842138850%_ _%rest138838%_)
                                  (_%else138844138858%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind138840%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f138833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args138841%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K138846138944%_
                                   (lambda (_%rest138861%_ _%e138862%_)
                                     (let* ((_%__stx145223145224%_ _%e138862%_)
                                            (_%g138867138885%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx145223145224%_)))))
                                       (let ((_%__kont145225145226%_
                                              (lambda ()
                                                (let ((__tmp145822
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__0 _%e138862%_))
                     _%args138841%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_%lp138835%_
                                                   _%rest138861%_
                                                   _%bind138840%_
                                                   __tmp145822))))
                                             (_%__kont145227145228%_
                                              (lambda ()
                                                (let ((__tmp145823
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__0 _%e138862%_))
                     _%args138841%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_%lp138835%_
                                                   _%rest138861%_
                                                   _%bind138840%_
                                                   __tmp145823))))
                                             (_%__kont145229145230%_
                                              (lambda ()
                                                (let ((_%tmp138892%_
                                                       (let ((__tmp145824
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp145824))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp145826
                                                         (cons (cons _%tmp138892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__0 _%e138862%_))
                                   '()))
                       _%bind138840%_))
                (__tmp145825 (cons _%tmp138892%_ _%args138841%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%lp138835%_
                                                     _%rest138861%_
                                                     __tmp145826
                                                     __tmp145825))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx145223145224%_))
                                             (let ((_%e138871138923%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx145223145224%_))))
                                               (let ((_%tl138869138928%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e138871138923%_)))
                                                     (_%hd138870138926%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e138871138923%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd138870138926%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd138870138926%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl138869138928%_))
                     (let ((_%e138874138931%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl138869138928%_))))
                       (let ((_%tl138872138936%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e138874138931%_)))
                             (_%hd138873138934%_
                              (let ()
                                (declare (not safe))
                                (##car _%e138874138931%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl138872138936%_))
                             (_%__kont145225145226%_)
                             (_%__kont145229145230%_))))
                     (_%__kont145229145230%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd138870138926%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl138869138928%_))
                         (let ((_%e138880138908%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl138869138928%_))))
                           (let ((_%tl138878138913%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e138880138908%_)))
                                 (_%hd138879138911%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e138880138908%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl138878138913%_))
                                 (_%__kont145227145228%_)
                                 (_%__kont145229145230%_))))
                         (_%__kont145229145230%_))
                     (_%__kont145229145230%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145229145230%_))))
                                             (_%__kont145229145230%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest138842138850%_))
                                 (let ((_%hd138847138947%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest138842138850%_)))
                                       (_%tl138848138949%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest138842138850%_))))
                                   (let* ((_%e138952%_ _%hd138847138947%_)
                                          (_%rest138954%_ _%tl138848138949%_))
                                     (declare (not safe))
                                     (_%K138846138944%_
                                      _%rest138954%_
                                      _%e138952%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%else138844138858%_)))))))))
                (_%__kont145275145276%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call%
                      _%self138709%_
                      _%stx138710%_)))))
            (let ((_%__match145314145315%_
                   (lambda (_%e138719138754%_
                            _%hd138718138757%_
                            _%tl138717138759%_
                            _%e138722138762%_
                            _%hd138721138765%_
                            _%tl138720138767%_
                            _%e138725138770%_
                            _%hd138724138773%_
                            _%tl138723138775%_
                            _%e138728138778%_
                            _%hd138727138781%_
                            _%tl138726138783%_
                            _%__splice145273145274%_
                            _%target138729138786%_
                            _%tl138731138788%_)
                     (letrec ((_%loop138732138791%_
                               (lambda (_%hd138730138794%_
                                        _%rand138736138796%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd138730138794%_))
                                     (let ((_%e138733138799%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd138730138794%_))))
                                       (let ((_%lp-tl138735138804%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e138733138799%_)))
                                             (_%lp-hd138734138802%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e138733138799%_))))
                                         (let ((__tmp145828
                                                (cons _%lp-hd138734138802%_
                                                      _%rand138736138796%_)))
                                           (declare (not safe))
                                           (_%loop138732138791%_
                                            _%lp-tl138735138804%_
                                            __tmp145828))))
                                     (let ((_%rand138737138807%_
                                            (reverse _%rand138736138796%_)))
                                       (_%__kont145271145272%_
                                        _%rand138737138807%_
                                        _%hd138727138781%_))))))
                       (let ()
                         (declare (not safe))
                         (_%loop138732138791%_ _%target138729138786%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx145269145270%_))
                  (let ((_%e138719138754%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx145269145270%_))))
                    (let ((_%tl138717138759%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e138719138754%_)))
                          (_%hd138718138757%_
                           (let ()
                             (declare (not safe))
                             (##car _%e138719138754%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl138717138759%_))
                          (let ((_%e138722138762%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl138717138759%_))))
                            (let ((_%tl138720138767%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138722138762%_)))
                                  (_%hd138721138765%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138722138762%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd138721138765%_))
                                  (let ((_%e138725138770%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd138721138765%_))))
                                    (let ((_%tl138723138775%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e138725138770%_)))
                                          (_%hd138724138773%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e138725138770%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd138724138773%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd138724138773%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl138723138775%_))
                                                  (let ((_%e138728138778%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl138723138775%_))))
                                                    (let ((_%tl138726138783%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e138728138778%_)))
                                                          (_%hd138727138781%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e138728138778%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl138726138783%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl138720138767%_))
                      (let ((_%__splice145273145274%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl138720138767%_
                                '0))))
                        (let ((_%tl138731138788%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145273145274%_ '1)))
                              (_%target138729138786%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145273145274%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl138731138788%_))
                              (_%__match145314145315%_
                               _%e138719138754%_
                               _%hd138718138757%_
                               _%tl138717138759%_
                               _%e138722138762%_
                               _%hd138721138765%_
                               _%tl138720138767%_
                               _%e138725138770%_
                               _%hd138724138773%_
                               _%tl138723138775%_
                               _%e138728138778%_
                               _%hd138727138781%_
                               _%tl138726138783%_
                               _%__splice145273145274%_
                               _%target138729138786%_
                               _%tl138731138788%_)
                              (_%__kont145275145276%_))))
                      (_%__kont145275145276%_))
                  (_%__kont145275145276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145275145276%_))
                                              (_%__kont145275145276%_))
                                          (_%__kont145275145276%_))))
                                  (_%__kont145275145276%_))))
                          (_%__kont145275145276%_))))
                  (_%__kont145275145276%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self138521%_ _%stx138522%_)
        (letrec ((_%simplify138524%_
                  (lambda (_%code138609%_)
                    (let* ((_%code138610138628%_ _%code138609%_)
                           (_%else138612138636%_ (lambda () _%code138609%_))
                           (_%K138614138672%_
                            (lambda (_%expr138639%_ _%test138640%_)
                              (let* ((_%expr138641138649%_ _%expr138639%_)
                                     (_%else138643138657%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test138640%_
                                                    (cons _%expr138639%_
                                                          '())))))
                                     (_%K138645138662%_
                                      (lambda (_%exprs138660%_)
                                        (cons 'and
                                              (cons _%test138640%_
                                                    _%exprs138660%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr138641138649%_))
                                    (let ((_%hd138646138665%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr138641138649%_)))
                                          (_%tl138647138667%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr138641138649%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd138646138665%_ 'and))
                                          (let ((_%exprs138670%_
                                                 _%tl138647138667%_))
                                            (declare (not safe))
                                            (_%K138645138662%_
                                             _%exprs138670%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else138643138657%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else138643138657%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code138610138628%_))
                          (let ((_%hd138615138675%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code138610138628%_)))
                                (_%tl138616138677%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code138610138628%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd138615138675%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl138616138677%_))
                                    (let ((_%hd138617138680%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl138616138677%_)))
                                          (_%tl138618138682%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl138616138677%_))))
                                      (let ((_%test138685%_
                                             _%hd138617138680%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl138618138682%_))
                                            (let ((_%hd138619138687%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl138618138682%_)))
                                                  (_%tl138620138689%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl138618138682%_))))
                                              (let ((_%expr138692%_
                                                     _%hd138619138687%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl138620138689%_))
                                                    (let ((_%hd138621138694%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl138620138689%_)))
                                                          (_%tl138622138696%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl138620138689%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd138621138694%_))
                                                          (let ((_%hd138623138699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd138621138694%_)))
                        (_%tl138624138701%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd138621138694%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd138623138699%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl138624138701%_))
                            (let ((_%hd138625138704%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl138624138701%_)))
                                  (_%tl138626138706%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl138624138701%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd138625138704%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl138626138706%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl138622138696%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%K138614138672%_
                                             _%expr138692%_
                                             _%test138685%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else138612138636%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else138612138636%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else138612138636%_))))
                            (let ()
                              (declare (not safe))
                              (_%else138612138636%_)))
                        (let () (declare (not safe)) (_%else138612138636%_))))
                  (let () (declare (not safe)) (_%else138612138636%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else138612138636%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%else138612138636%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else138612138636%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else138612138636%_))))
                          (let ()
                            (declare (not safe))
                            (_%else138612138636%_)))))))
          (let* ((_%g138526138547%_
                  (lambda (_%g138527138544%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138527138544%_))))
                 (_%g138525138606%_
                  (lambda (_%g138527138550%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138527138550%_))
                        (let ((_%e138533138552%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138527138550%_))))
                          (let ((_%hd138532138555%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138533138552%_)))
                                (_%tl138531138557%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138533138552%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138531138557%_))
                                (let ((_%e138536138560%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138531138557%_))))
                                  (let ((_%hd138535138563%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138536138560%_)))
                                        (_%tl138534138565%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138536138560%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl138534138565%_))
                                        (let ((_%e138539138568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl138534138565%_))))
                                          (let ((_%hd138538138571%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138539138568%_)))
                                                (_%tl138537138573%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138539138568%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138537138573%_))
                                                (let ((_%e138542138576%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138537138573%_))))
                                                  (let ((_%hd138541138579%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138542138576%_)))
                                                        (_%tl138540138581%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138542138576%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl138540138581%_))
                                                        ((lambda (_%L138584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L138585%_
                          _%L138586%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (let ((__tmp145829
                              (cons 'if
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self138521%_
                                             _%L138586%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self138521%_
                                                   _%L138585%_))
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self138521%_
                                                         _%L138584%_))
                                                      '()))))))
                         (declare (not safe))
                         (_%simplify138524%_ __tmp145829))
                       (cons 'if
                             (cons (let ((__tmp145830
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self138521%_
                                               _%L138586%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp145830
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self138521%_
                                            _%L138585%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self138521%_
                                                  _%L138584%_))
                                               '()))))))
                 _%hd138541138579%_
                 _%hd138538138571%_
                 _%hd138535138563%_)
                (let ()
                  (declare (not safe))
                  (_%g138526138547%_ _%g138527138550%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g138526138547%_
                                                   _%g138527138550%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g138526138547%_
                                           _%g138527138550%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g138526138547%_ _%g138527138550%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g138526138547%_ _%g138527138550%_))))))
            (declare (not safe))
            (_%g138525138606%_ _%stx138522%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self138469%_ _%stx138470%_)
        (let* ((_%g138472138485%_
                (lambda (_%g138473138482%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138473138482%_))))
               (_%g138471138518%_
                (lambda (_%g138473138488%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138473138488%_))
                      (let ((_%e138477138490%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138473138488%_))))
                        (let ((_%hd138476138493%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138477138490%_)))
                              (_%tl138475138495%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138477138490%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138475138495%_))
                              (let ((_%e138480138498%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138475138495%_))))
                                (let ((_%hd138479138501%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138480138498%_)))
                                      (_%tl138478138503%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138480138498%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl138478138503%_))
                                      ((lambda (_%L138506%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L138506%_)))
                                       _%hd138479138501%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g138472138485%_
                                         _%g138473138488%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138472138485%_ _%g138473138488%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138472138485%_ _%g138473138488%_))))))
          (declare (not safe))
          (_%g138471138518%_ _%stx138470%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self138401%_ _%stx138402%_)
        (let* ((_%g138404138421%_
                (lambda (_%g138405138418%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138405138418%_))))
               (_%g138403138466%_
                (lambda (_%g138405138424%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138405138424%_))
                      (let ((_%e138410138426%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138405138424%_))))
                        (let ((_%hd138409138429%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138410138426%_)))
                              (_%tl138408138431%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138410138426%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138408138431%_))
                              (let ((_%e138413138434%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138408138431%_))))
                                (let ((_%hd138412138437%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138413138434%_)))
                                      (_%tl138411138439%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138413138434%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138411138439%_))
                                      (let ((_%e138416138442%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138411138439%_))))
                                        (let ((_%hd138415138445%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138416138442%_)))
                                              (_%tl138414138447%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138416138442%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138414138447%_))
                                              ((lambda (_%L138450%_
                                                        _%L138451%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L138451%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self138401%_ _%L138450%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138415138445%_
                                               _%hd138412138437%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g138404138421%_
                                                 _%g138405138424%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g138404138421%_
                                         _%g138405138424%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138404138421%_ _%g138405138424%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138404138421%_ _%g138405138424%_))))))
          (declare (not safe))
          (_%g138403138466%_ _%stx138402%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self138212%_ _%stx138213%_)
        (let* ((_%g138215138232%_
                (lambda (_%g138216138229%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138216138229%_))))
               (_%g138214138398%_
                (lambda (_%g138216138235%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138216138235%_))
                      (let ((_%e138221138237%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138216138235%_))))
                        (let ((_%hd138220138240%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138221138237%_)))
                              (_%tl138219138242%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138221138237%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138219138242%_))
                              (let ((_%e138224138245%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138219138242%_))))
                                (let ((_%hd138223138248%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138224138245%_)))
                                      (_%tl138222138250%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138224138245%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138222138250%_))
                                      (let ((_%e138227138253%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138222138250%_))))
                                        (let ((_%hd138226138256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138227138253%_)))
                                              (_%tl138225138258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138227138253%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138225138258%_))
                                              ((lambda (_%L138261%_
                                                        _%L138262%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self138212%_ _%L138261%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self138212%_ _%L138262%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp138277%_ ((_%rest138280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L138262%_ (cons _%L138261%_ '())))
                                (_%bind138282%_ '())
                                (_%args138283%_ '()))
               (let* ((_%rest138284138292%_ _%rest138280%_)
                      (_%else138286138300%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind138282%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args138283%_)
                                                 '()))))))
                      (_%K138288138386%_
                       (lambda (_%rest138303%_ _%e138304%_)
                         (let* ((_%__stx145317145318%_ _%e138304%_)
                                (_%g138309138327%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx145317145318%_)))))
                           (let ((_%__kont145319145320%_
                                  (lambda ()
                                    (let ((__tmp145831
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e138304%_))
                                                 _%args138283%_)))
                                      (declare (not safe))
                                      (_%lp138277%_
                                       _%rest138303%_
                                       _%bind138282%_
                                       __tmp145831))))
                                 (_%__kont145321145322%_
                                  (lambda ()
                                    (let ((__tmp145832
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e138304%_))
                                                 _%args138283%_)))
                                      (declare (not safe))
                                      (_%lp138277%_
                                       _%rest138303%_
                                       _%bind138282%_
                                       __tmp145832))))
                                 (_%__kont145323145324%_
                                  (lambda ()
                                    (let ((_%tmp138334%_
                                           (let ((__tmp145833
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145833))))
                                      (let ((__tmp145835
                                             (cons (cons _%tmp138334%_
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#compile-e__0 _%e138304%_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%bind138282%_))
                                            (__tmp145834
                                             (cons _%tmp138334%_
                                                   _%args138283%_)))
                                        (declare (not safe))
                                        (_%lp138277%_
                                         _%rest138303%_
                                         __tmp145835
                                         __tmp145834))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx145317145318%_))
                                 (let ((_%e138313138365%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx145317145318%_))))
                                   (let ((_%tl138311138370%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e138313138365%_)))
                                         (_%hd138312138368%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e138313138365%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd138312138368%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd138312138368%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl138311138370%_))
                                                 (let ((_%e138316138373%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl138311138370%_))))
                                                   (let ((_%tl138314138378%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e138316138373%_)))
                                                         (_%hd138315138376%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e138316138373%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl138314138378%_))
                                                         (_%__kont145319145320%_)
                                                         (_%__kont145323145324%_))))
                                                 (_%__kont145323145324%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd138312138368%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl138311138370%_))
                                                     (let ((_%e138322138350%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl138311138370%_))))
                                                       (let ((_%tl138320138355%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e138322138350%_)))
                     (_%hd138321138353%_
                      (let () (declare (not safe)) (##car _%e138322138350%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl138320138355%_))
                     (_%__kont145321145322%_)
                     (_%__kont145323145324%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145323145324%_))
                                                 (_%__kont145323145324%_)))
                                         (_%__kont145323145324%_))))
                                 (_%__kont145323145324%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest138284138292%_))
                     (let ((_%hd138289138389%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest138284138292%_)))
                           (_%tl138290138391%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest138284138292%_))))
                       (let* ((_%e138394%_ _%hd138289138389%_)
                              (_%rest138396%_ _%tl138290138391%_))
                         (declare (not safe))
                         (_%K138288138386%_ _%rest138396%_ _%e138394%_)))
                     (let () (declare (not safe)) (_%else138286138300%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138226138256%_
                                               _%hd138223138248%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g138215138232%_
                                                 _%g138216138235%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g138215138232%_
                                         _%g138216138235%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138215138232%_ _%g138216138235%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138215138232%_ _%g138216138235%_))))))
          (declare (not safe))
          (_%g138214138398%_ _%stx138213%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self138023%_ _%stx138024%_)
        (let* ((_%g138026138043%_
                (lambda (_%g138027138040%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138027138040%_))))
               (_%g138025138209%_
                (lambda (_%g138027138046%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138027138046%_))
                      (let ((_%e138032138048%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138027138046%_))))
                        (let ((_%hd138031138051%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138032138048%_)))
                              (_%tl138030138053%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138032138048%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138030138053%_))
                              (let ((_%e138035138056%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138030138053%_))))
                                (let ((_%hd138034138059%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138035138056%_)))
                                      (_%tl138033138061%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138035138056%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138033138061%_))
                                      (let ((_%e138038138064%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138033138061%_))))
                                        (let ((_%hd138037138067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138038138064%_)))
                                              (_%tl138036138069%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138038138064%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138036138069%_))
                                              ((lambda (_%L138072%_
                                                        _%L138073%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self138023%_ _%L138072%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self138023%_ _%L138073%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp138088%_ ((_%rest138091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L138073%_ (cons _%L138072%_ '())))
                                (_%bind138093%_ '())
                                (_%args138094%_ '()))
               (let* ((_%rest138095138103%_ _%rest138091%_)
                      (_%else138097138111%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind138093%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args138094%_)
                                                 '()))))))
                      (_%K138099138197%_
                       (lambda (_%rest138114%_ _%e138115%_)
                         (let* ((_%__stx145363145364%_ _%e138115%_)
                                (_%g138120138138%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx145363145364%_)))))
                           (let ((_%__kont145365145366%_
                                  (lambda ()
                                    (let ((__tmp145836
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e138115%_))
                                                 _%args138094%_)))
                                      (declare (not safe))
                                      (_%lp138088%_
                                       _%rest138114%_
                                       _%bind138093%_
                                       __tmp145836))))
                                 (_%__kont145367145368%_
                                  (lambda ()
                                    (let ((__tmp145837
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e138115%_))
                                                 _%args138094%_)))
                                      (declare (not safe))
                                      (_%lp138088%_
                                       _%rest138114%_
                                       _%bind138093%_
                                       __tmp145837))))
                                 (_%__kont145369145370%_
                                  (lambda ()
                                    (let ((_%tmp138145%_
                                           (let ((__tmp145838
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145838))))
                                      (let ((__tmp145840
                                             (cons (cons _%tmp138145%_
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#compile-e__0 _%e138115%_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%bind138093%_))
                                            (__tmp145839
                                             (cons _%tmp138145%_
                                                   _%args138094%_)))
                                        (declare (not safe))
                                        (_%lp138088%_
                                         _%rest138114%_
                                         __tmp145840
                                         __tmp145839))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx145363145364%_))
                                 (let ((_%e138124138176%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx145363145364%_))))
                                   (let ((_%tl138122138181%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e138124138176%_)))
                                         (_%hd138123138179%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e138124138176%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd138123138179%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd138123138179%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl138122138181%_))
                                                 (let ((_%e138127138184%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl138122138181%_))))
                                                   (let ((_%tl138125138189%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e138127138184%_)))
                                                         (_%hd138126138187%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e138127138184%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl138125138189%_))
                                                         (_%__kont145365145366%_)
                                                         (_%__kont145369145370%_))))
                                                 (_%__kont145369145370%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd138123138179%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl138122138181%_))
                                                     (let ((_%e138133138161%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl138122138181%_))))
                                                       (let ((_%tl138131138166%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e138133138161%_)))
                     (_%hd138132138164%_
                      (let () (declare (not safe)) (##car _%e138133138161%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl138131138166%_))
                     (_%__kont145367145368%_)
                     (_%__kont145369145370%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145369145370%_))
                                                 (_%__kont145369145370%_)))
                                         (_%__kont145369145370%_))))
                                 (_%__kont145369145370%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest138095138103%_))
                     (let ((_%hd138100138200%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest138095138103%_)))
                           (_%tl138101138202%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest138095138103%_))))
                       (let* ((_%e138205%_ _%hd138100138200%_)
                              (_%rest138207%_ _%tl138101138202%_))
                         (declare (not safe))
                         (_%K138099138197%_ _%rest138207%_ _%e138205%_)))
                     (let () (declare (not safe)) (_%else138097138111%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138037138067%_
                                               _%hd138034138059%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g138026138043%_
                                                 _%g138027138046%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g138026138043%_
                                         _%g138027138046%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138026138043%_ _%g138027138046%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138026138043%_ _%g138027138046%_))))))
          (declare (not safe))
          (_%g138025138209%_ _%stx138024%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self137939%_ _%stx137940%_)
        (let* ((_%g137942137963%_
                (lambda (_%g137943137960%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137943137960%_))))
               (_%g137941138020%_
                (lambda (_%g137943137966%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137943137966%_))
                      (let ((_%e137949137968%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137943137966%_))))
                        (let ((_%hd137948137971%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137949137968%_)))
                              (_%tl137947137973%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137949137968%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137947137973%_))
                              (let ((_%e137952137976%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137947137973%_))))
                                (let ((_%hd137951137979%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137952137976%_)))
                                      (_%tl137950137981%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137952137976%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137950137981%_))
                                      (let ((_%e137955137984%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137950137981%_))))
                                        (let ((_%hd137954137987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137955137984%_)))
                                              (_%tl137953137989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137955137984%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137953137989%_))
                                              (let ((_%e137958137992%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137953137989%_))))
                                                (let ((_%hd137957137995%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137958137992%_)))
                                                      (_%tl137956137997%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137958137992%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137956137997%_))
                                                      ((lambda (_%L138000%_
                                                                _%L138001%_
                                                                _%L138002%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137939%_ _%L138000%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137939%_
                                      _%L138001%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137939%_
                                            _%L138002%_))
                                         (cons ''#f '()))))))
               _%hd137957137995%_
               _%hd137954137987%_
               _%hd137951137979%_)
              (let ()
                (declare (not safe))
                (_%g137942137963%_ _%g137943137966%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137942137963%_
                                                 _%g137943137966%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137942137963%_
                                         _%g137943137966%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137942137963%_ _%g137943137966%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137942137963%_ _%g137943137966%_))))))
          (declare (not safe))
          (_%g137941138020%_ _%stx137940%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self137839%_ _%stx137840%_)
        (let* ((_%g137842137867%_
                (lambda (_%g137843137864%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137843137864%_))))
               (_%g137841137936%_
                (lambda (_%g137843137870%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137843137870%_))
                      (let ((_%e137850137872%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137843137870%_))))
                        (let ((_%hd137849137875%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137850137872%_)))
                              (_%tl137848137877%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137850137872%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137848137877%_))
                              (let ((_%e137853137880%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137848137877%_))))
                                (let ((_%hd137852137883%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137853137880%_)))
                                      (_%tl137851137885%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137853137880%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137851137885%_))
                                      (let ((_%e137856137888%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137851137885%_))))
                                        (let ((_%hd137855137891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137856137888%_)))
                                              (_%tl137854137893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137856137888%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137854137893%_))
                                              (let ((_%e137859137896%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137854137893%_))))
                                                (let ((_%hd137858137899%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137859137896%_)))
                                                      (_%tl137857137901%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137859137896%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137857137901%_))
                                                      (let ((_%e137862137904%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137857137901%_))))
                (let ((_%hd137861137907%_
                       (let () (declare (not safe)) (##car _%e137862137904%_)))
                      (_%tl137860137909%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137862137904%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137860137909%_))
                      ((lambda (_%L137912%_
                                _%L137913%_
                                _%L137914%_
                                _%L137915%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137839%_
                                        _%L137913%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137839%_
                                              _%L137912%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137839%_
                                                    _%L137914%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137839%_
                                                          _%L137915%_))
                                                       (cons ''#f '())))))))
                       _%hd137861137907%_
                       _%hd137858137899%_
                       _%hd137855137891%_
                       _%hd137852137883%_)
                      (let ()
                        (declare (not safe))
                        (_%g137842137867%_ _%g137843137870%_)))))
              (let ()
                (declare (not safe))
                (_%g137842137867%_ _%g137843137870%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137842137867%_
                                                 _%g137843137870%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137842137867%_
                                         _%g137843137870%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137842137867%_ _%g137843137870%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137842137867%_ _%g137843137870%_))))))
          (declare (not safe))
          (_%g137841137936%_ _%stx137840%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self137755%_ _%stx137756%_)
        (let* ((_%g137758137779%_
                (lambda (_%g137759137776%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137759137776%_))))
               (_%g137757137836%_
                (lambda (_%g137759137782%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137759137782%_))
                      (let ((_%e137765137784%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137759137782%_))))
                        (let ((_%hd137764137787%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137765137784%_)))
                              (_%tl137763137789%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137765137784%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137763137789%_))
                              (let ((_%e137768137792%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137763137789%_))))
                                (let ((_%hd137767137795%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137768137792%_)))
                                      (_%tl137766137797%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137768137792%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137766137797%_))
                                      (let ((_%e137771137800%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137766137797%_))))
                                        (let ((_%hd137770137803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137771137800%_)))
                                              (_%tl137769137805%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137771137800%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137769137805%_))
                                              (let ((_%e137774137808%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137769137805%_))))
                                                (let ((_%hd137773137811%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137774137808%_)))
                                                      (_%tl137772137813%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137774137808%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137772137813%_))
                                                      ((lambda (_%L137816%_
                                                                _%L137817%_
                                                                _%L137818%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137755%_ _%L137816%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137755%_
                                      _%L137817%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137755%_
                                            _%L137818%_))
                                         (cons ''#f '()))))))
               _%hd137773137811%_
               _%hd137770137803%_
               _%hd137767137795%_)
              (let ()
                (declare (not safe))
                (_%g137758137779%_ _%g137759137782%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137758137779%_
                                                 _%g137759137782%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137758137779%_
                                         _%g137759137782%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137758137779%_ _%g137759137782%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137758137779%_ _%g137759137782%_))))))
          (declare (not safe))
          (_%g137757137836%_ _%stx137756%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self137655%_ _%stx137656%_)
        (let* ((_%g137658137683%_
                (lambda (_%g137659137680%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137659137680%_))))
               (_%g137657137752%_
                (lambda (_%g137659137686%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137659137686%_))
                      (let ((_%e137666137688%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137659137686%_))))
                        (let ((_%hd137665137691%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137666137688%_)))
                              (_%tl137664137693%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137666137688%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137664137693%_))
                              (let ((_%e137669137696%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137664137693%_))))
                                (let ((_%hd137668137699%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137669137696%_)))
                                      (_%tl137667137701%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137669137696%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137667137701%_))
                                      (let ((_%e137672137704%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137667137701%_))))
                                        (let ((_%hd137671137707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137672137704%_)))
                                              (_%tl137670137709%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137672137704%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137670137709%_))
                                              (let ((_%e137675137712%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137670137709%_))))
                                                (let ((_%hd137674137715%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137675137712%_)))
                                                      (_%tl137673137717%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137675137712%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137673137717%_))
                                                      (let ((_%e137678137720%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137673137717%_))))
                (let ((_%hd137677137723%_
                       (let () (declare (not safe)) (##car _%e137678137720%_)))
                      (_%tl137676137725%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137678137720%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137676137725%_))
                      ((lambda (_%L137728%_
                                _%L137729%_
                                _%L137730%_
                                _%L137731%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137655%_
                                        _%L137729%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137655%_
                                              _%L137728%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137655%_
                                                    _%L137730%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137655%_
                                                          _%L137731%_))
                                                       (cons ''#f '())))))))
                       _%hd137677137723%_
                       _%hd137674137715%_
                       _%hd137671137707%_
                       _%hd137668137699%_)
                      (let ()
                        (declare (not safe))
                        (_%g137658137683%_ _%g137659137686%_)))))
              (let ()
                (declare (not safe))
                (_%g137658137683%_ _%g137659137686%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137658137683%_
                                                 _%g137659137686%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137658137683%_
                                         _%g137659137686%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137658137683%_ _%g137659137686%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137658137683%_ _%g137659137686%_))))))
          (declare (not safe))
          (_%g137657137752%_ _%stx137656%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self137450%_ _%stx137451%_)
        (let* ((_%g137453137474%_
                (lambda (_%g137454137471%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137454137471%_))))
               (_%g137452137652%_
                (lambda (_%g137454137477%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137454137477%_))
                      (let ((_%e137460137479%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137454137477%_))))
                        (let ((_%hd137459137482%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137460137479%_)))
                              (_%tl137458137484%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137460137479%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137458137484%_))
                              (let ((_%e137463137487%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137458137484%_))))
                                (let ((_%hd137462137490%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137463137487%_)))
                                      (_%tl137461137492%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137463137487%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137461137492%_))
                                      (let ((_%e137466137495%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137461137492%_))))
                                        (let ((_%hd137465137498%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137466137495%_)))
                                              (_%tl137464137500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137466137495%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137464137500%_))
                                              (let ((_%e137469137503%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137464137500%_))))
                                                (let ((_%hd137468137506%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137469137503%_)))
                                                      (_%tl137467137508%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137469137503%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137467137508%_))
                                                      ((lambda (_%L137511%_
                                                                _%L137512%_
                                                                _%L137513%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (cons '##unchecked-structure-ref
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self137450%_
                                    _%L137511%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self137450%_
                                          _%L137512%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp137531%_ ((_%rest137534%_
                                         (cons _%L137512%_
                                               (cons _%L137511%_ '())))
                                        (_%bind137536%_ '())
                                        (_%args137537%_ '()))
                       (let* ((_%rest137538137546%_ _%rest137534%_)
                              (_%else137540137554%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind137536%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp145841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp145841 _%args137537%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K137542137640%_
                               (lambda (_%rest137557%_ _%e137558%_)
                                 (let* ((_%__stx145409145410%_ _%e137558%_)
                                        (_%g137563137581%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx145409145410%_)))))
                                   (let ((_%__kont145411145412%_
                                          (lambda ()
                                            (let ((__tmp145842
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137558%_))
                                                         _%args137537%_)))
                                              (declare (not safe))
                                              (_%lp137531%_
                                               _%rest137557%_
                                               _%bind137536%_
                                               __tmp145842))))
                                         (_%__kont145413145414%_
                                          (lambda ()
                                            (let ((__tmp145843
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137558%_))
                                                         _%args137537%_)))
                                              (declare (not safe))
                                              (_%lp137531%_
                                               _%rest137557%_
                                               _%bind137536%_
                                               __tmp145843))))
                                         (_%__kont145415145416%_
                                          (lambda ()
                                            (let ((_%tmp137588%_
                                                   (let ((__tmp145844
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp145844))))
                                              (let ((__tmp145846
                                                     (cons (cons _%tmp137588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__0 _%e137558%_))
                               '()))
                   _%bind137536%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145845
                                                     (cons _%tmp137588%_
                                                           _%args137537%_)))
                                                (declare (not safe))
                                                (_%lp137531%_
                                                 _%rest137557%_
                                                 __tmp145846
                                                 __tmp145845))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx145409145410%_))
                                         (let ((_%e137567137619%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx145409145410%_))))
                                           (let ((_%tl137565137624%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e137567137619%_)))
                                                 (_%hd137566137622%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e137567137619%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd137566137622%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd137566137622%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl137565137624%_))
                                                         (let ((_%e137570137627%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl137565137624%_))))
                   (let ((_%tl137568137632%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e137570137627%_)))
                         (_%hd137569137630%_
                          (let ()
                            (declare (not safe))
                            (##car _%e137570137627%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl137568137632%_))
                         (_%__kont145411145412%_)
                         (_%__kont145415145416%_))))
                 (_%__kont145415145416%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd137566137622%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl137565137624%_))
                     (let ((_%e137576137604%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl137565137624%_))))
                       (let ((_%tl137574137609%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e137576137604%_)))
                             (_%hd137575137607%_
                              (let ()
                                (declare (not safe))
                                (##car _%e137576137604%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl137574137609%_))
                             (_%__kont145413145414%_)
                             (_%__kont145415145416%_))))
                     (_%__kont145415145416%_))
                 (_%__kont145415145416%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145415145416%_))))
                                         (_%__kont145415145416%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest137538137546%_))
                             (let ((_%hd137543137643%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest137538137546%_)))
                                   (_%tl137544137645%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest137538137546%_))))
                               (let* ((_%e137648%_ _%hd137543137643%_)
                                      (_%rest137650%_ _%tl137544137645%_))
                                 (declare (not safe))
                                 (_%K137542137640%_
                                  _%rest137650%_
                                  _%e137648%_)))
                             (let ()
                               (declare (not safe))
                               (_%else137540137554%_)))))))
               _%hd137468137506%_
               _%hd137465137498%_
               _%hd137462137490%_)
              (let ()
                (declare (not safe))
                (_%g137453137474%_ _%g137454137477%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137453137474%_
                                                 _%g137454137477%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137453137474%_
                                         _%g137454137477%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137453137474%_ _%g137454137477%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137453137474%_ _%g137454137477%_))))))
          (declare (not safe))
          (_%g137452137652%_ _%stx137451%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self137229%_ _%stx137230%_)
        (let* ((_%g137232137257%_
                (lambda (_%g137233137254%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137233137254%_))))
               (_%g137231137447%_
                (lambda (_%g137233137260%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137233137260%_))
                      (let ((_%e137240137262%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137233137260%_))))
                        (let ((_%hd137239137265%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137240137262%_)))
                              (_%tl137238137267%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137240137262%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137238137267%_))
                              (let ((_%e137243137270%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137238137267%_))))
                                (let ((_%hd137242137273%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137243137270%_)))
                                      (_%tl137241137275%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137243137270%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137241137275%_))
                                      (let ((_%e137246137278%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137241137275%_))))
                                        (let ((_%hd137245137281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137246137278%_)))
                                              (_%tl137244137283%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137246137278%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137244137283%_))
                                              (let ((_%e137249137286%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137244137283%_))))
                                                (let ((_%hd137248137289%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137249137286%_)))
                                                      (_%tl137247137291%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137249137286%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137247137291%_))
                                                      (let ((_%e137252137294%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137247137291%_))))
                (let ((_%hd137251137297%_
                       (let () (declare (not safe)) (##car _%e137252137294%_)))
                      (_%tl137250137299%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137252137294%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137250137299%_))
                      ((lambda (_%L137302%_
                                _%L137303%_
                                _%L137304%_
                                _%L137305%_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137229%_
                                            _%L137303%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self137229%_
                                                  _%L137302%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self137229%_
                                                        _%L137304%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp137326%_ ((_%rest137329%_
                                                 (cons _%L137304%_
                                                       (cons _%L137302%_
                                                             (cons _%L137303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind137331%_ '())
                                                (_%args137332%_ '()))
                               (let* ((_%rest137333137341%_ _%rest137329%_)
                                      (_%else137335137349%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind137331%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp145847 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp145847 _%args137332%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K137337137435%_
                                       (lambda (_%rest137352%_ _%e137353%_)
                                         (let* ((_%__stx145455145456%_
                                                 _%e137353%_)
                                                (_%g137358137376%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx145455145456%_)))))
                                           (let ((_%__kont145457145458%_
                                                  (lambda ()
                                                    (let ((__tmp145848
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e137353%_))
                         _%args137332%_)))
              (declare (not safe))
              (_%lp137326%_ _%rest137352%_ _%bind137331%_ __tmp145848))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145459145460%_
                                                  (lambda ()
                                                    (let ((__tmp145849
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e137353%_))
                         _%args137332%_)))
              (declare (not safe))
              (_%lp137326%_ _%rest137352%_ _%bind137331%_ __tmp145849))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145461145462%_
                                                  (lambda ()
                                                    (let ((_%tmp137383%_
                                                           (let ((__tmp145850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp145850))))
              (let ((__tmp145852
                     (cons (cons _%tmp137383%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e137353%_))
                                       '()))
                           _%bind137331%_))
                    (__tmp145851 (cons _%tmp137383%_ _%args137332%_)))
                (declare (not safe))
                (_%lp137326%_ _%rest137352%_ __tmp145852 __tmp145851))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx145455145456%_))
                                                 (let ((_%e137362137414%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx145455145456%_))))
                                                   (let ((_%tl137360137419%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137362137414%_)))
                                                         (_%hd137361137417%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137362137414%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd137361137417%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd137361137417%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl137360137419%_))
                         (let ((_%e137365137422%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl137360137419%_))))
                           (let ((_%tl137363137427%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e137365137422%_)))
                                 (_%hd137364137425%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e137365137422%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl137363137427%_))
                                 (_%__kont145457145458%_)
                                 (_%__kont145461145462%_))))
                         (_%__kont145461145462%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd137361137417%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl137360137419%_))
                             (let ((_%e137371137399%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl137360137419%_))))
                               (let ((_%tl137369137404%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e137371137399%_)))
                                     (_%hd137370137402%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e137371137399%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl137369137404%_))
                                     (_%__kont145459145460%_)
                                     (_%__kont145461145462%_))))
                             (_%__kont145461145462%_))
                         (_%__kont145461145462%_)))
                 (_%__kont145461145462%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145461145462%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest137333137341%_))
                                     (let ((_%hd137338137438%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest137333137341%_)))
                                           (_%tl137339137440%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest137333137341%_))))
                                       (let* ((_%e137443%_ _%hd137338137438%_)
                                              (_%rest137445%_
                                               _%tl137339137440%_))
                                         (declare (not safe))
                                         (_%K137337137435%_
                                          _%rest137445%_
                                          _%e137443%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%else137335137349%_)))))))
                       _%hd137251137297%_
                       _%hd137248137289%_
                       _%hd137245137281%_
                       _%hd137242137273%_)
                      (let ()
                        (declare (not safe))
                        (_%g137232137257%_ _%g137233137260%_)))))
              (let ()
                (declare (not safe))
                (_%g137232137257%_ _%g137233137260%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137232137257%_
                                                 _%g137233137260%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137232137257%_
                                         _%g137233137260%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137232137257%_ _%g137233137260%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137232137257%_ _%g137233137260%_))))))
          (declare (not safe))
          (_%g137231137447%_ _%stx137230%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self137068%_ _%stx137069%_)
        (letrec ((_%import-set-template137071%_
                  (lambda (_%in137174%_ _%phi137175%_)
                    (let ((_%iphi137177%_
                           (fx+ _%phi137175%_
                                (##direct-structure-ref
                                 _%in137174%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports137178%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in137174%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp137180%_ ((_%rest137182%_ _%imports137178%_)
                                         (_%r137183%_ '()))
                        (let* ((_%rest137184137192%_ _%rest137182%_)
                               (_%else137186137200%_ (lambda () _%r137183%_))
                               (_%K137188137217%_
                                (lambda (_%rest137203%_ _%in137204%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in137204%_
                                         'gx#module-context::t))
                                      (let ()
                                        (if (let ()
                                              (declare (not safe))
                                              (##fxzero? _%iphi137177%_))
                                            (let ((__tmp145853
                                                   (cons _%in137204%_
                                                         _%r137183%_)))
                                              (declare (not safe))
                                              (_%lp137180%_
                                               _%rest137203%_
                                               __tmp145853))
                                            (let ()
                                              (declare (not safe))
                                              (_%lp137180%_
                                               _%rest137203%_
                                               _%r137183%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in137204%_
                                             'gx#module-import::t))
                                          (let ((_%iphi137208%_
                                                 (fx+ _%phi137175%_
                                                      (##direct-structure-ref
                                                       _%in137204%_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi137208%_))
                                                (let ((__tmp145854
                                                       (cons (##direct-structure-ref
                                                              (##direct-structure-ref
                                                               _%in137204%_
                                                               '1
                                                               gx#module-import::t
                                                               '#f)
                                                              '1
                                                              gx#module-export::t
                                                              '#f)
                                                             _%r137183%_)))
                                                  (declare (not safe))
                                                  (_%lp137180%_
                                                   _%rest137203%_
                                                   __tmp145854))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%lp137180%_
                                                   _%rest137203%_
                                                   _%r137183%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in137204%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi137211%_
                                                     (fx+ _%iphi137177%_
                                                          (##direct-structure-ref
                                                           _%in137204%_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi137211%_))
                                                    (let ((__tmp145855
                                                           (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in137204%_
                          '1
                          gx#import-set::t
                          '#f)
                         _%r137183%_)))
              (declare (not safe))
              (_%lp137180%_ _%rest137203%_ __tmp145855))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi137211%_))
                                                        (let ((__tmp145856
                                                               (let ((__tmp145857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_%import-set-template137071%_
                                 _%in137204%_
                                 _%iphi137177%_))))
                         (declare (not safe))
                         (__foldl1 cons _%r137183%_ __tmp145857))))
                  (declare (not safe))
                  (_%lp137180%_ _%rest137203%_ __tmp145856))
                (let ()
                  (declare (not safe))
                  (_%lp137180%_ _%rest137203%_ _%r137183%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%lp137180%_
                                                 _%rest137203%_
                                                 _%r137183%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest137184137192%_))
                              (let ((_%hd137189137220%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest137184137192%_)))
                                    (_%tl137190137222%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest137184137192%_))))
                                (let* ((_%in137225%_ _%hd137189137220%_)
                                       (_%rest137227%_ _%tl137190137222%_))
                                  (declare (not safe))
                                  (_%K137188137217%_
                                   _%rest137227%_
                                   _%in137225%_)))
                              (let ()
                                (declare (not safe))
                                (_%else137186137200%_)))))))))
          (let* ((_%g137073137083%_
                  (lambda (_%g137074137080%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137074137080%_))))
                 (_%g137072137171%_
                  (lambda (_%g137074137086%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137074137086%_))
                        (let ((_%e137078137088%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137074137086%_))))
                          (let ((_%hd137077137091%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137078137088%_)))
                                (_%tl137076137093%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137078137088%_))))
                            ((lambda (_%L137096%_)
                               (let ((_%ht137107%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp137109%_ ((_%rest137111%_
                                                     _%L137096%_)
                                                    (_%loads137112%_ '()))
                                   (letrec ((_%K137114%_
                                             (lambda (_%ctx137164%_
                                                      _%rest137165%_)
                                               (let ((_%id137167%_
                                                      (##structure-ref
                                                       _%ctx137164%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _%ht137107%_
                                                        _%id137167%_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%lp137109%_
                                                        _%rest137165%_
                                                        _%loads137112%_))
                                                     (let ((_%rt137169%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id137167%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%ht137107%_
                                                          _%id137167%_
                                                          _%rt137169%_))
                                                       (let ((__tmp145858
                                                              (cons _%rt137169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%loads137112%_)))
                 (declare (not safe))
                 (_%lp137109%_ _%rest137165%_ __tmp145858))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_%rest137115137123%_
                                             _%rest137111%_)
                                            (_%else137117137135%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp145860
                                                            (lambda (_%g137130137132%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g137130137132%_)))
                   (__tmp145859 (reverse _%loads137112%_)))
               (declare (not safe))
               (##map __tmp145860 __tmp145859)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K137119137152%_
                                             (lambda (_%rest137138%_
                                                      _%in137139%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in137139%_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%K137114%_
                                                      _%in137139%_
                                                      _%rest137138%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in137139%_
                                                          'gx#module-import::t))
                                                       (let ()
                                                         (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%in137139%_
                               '3
                               gx#module-import::t
                               '#f))
                     (let ((__tmp145861
                            (##direct-structure-ref
                             (##direct-structure-ref
                              _%in137139%_
                              '1
                              gx#module-import::t
                              '#f)
                             '1
                             gx#module-export::t
                             '#f)))
                       (declare (not safe))
                       (_%K137114%_ __tmp145861 _%rest137138%_))
                     (let ()
                       (declare (not safe))
                       (_%lp137109%_ _%rest137138%_ _%loads137112%_))))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in137139%_
                      'gx#import-set::t))
                   (let ((_%phi137144%_
                          (##direct-structure-ref
                           _%in137139%_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (fxzero? _%phi137144%_)
                         (let ((__tmp145862
                                (##direct-structure-ref
                                 _%in137139%_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_%K137114%_ __tmp145862 _%rest137138%_))
                         (if (fxpositive? _%phi137144%_)
                             (let ()
                               (let* ((_%deps137148%_
                                       (let ()
                                         (declare (not safe))
                                         (_%import-set-template137071%_
                                          _%in137139%_
                                          '0)))
                                      (__tmp145863
                                       (let ()
                                         (declare (not safe))
                                         (__foldl1
                                          cons
                                          _%rest137138%_
                                          _%deps137148%_))))
                                 (declare (not safe))
                                 (_%lp137109%_ __tmp145863 _%loads137112%_)))
                             (let ()
                               (declare (not safe))
                               (_%lp137109%_
                                _%rest137138%_
                                _%loads137112%_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx137069%_
                      _%in137139%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest137115137123%_))
                                           (let ((_%hd137120137155%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest137115137123%_)))
                                                 (_%tl137121137157%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest137115137123%_))))
                                             (let* ((_%in137160%_
                                                     _%hd137120137155%_)
                                                    (_%rest137162%_
                                                     _%tl137121137157%_))
                                               (declare (not safe))
                                               (_%K137119137152%_
                                                _%rest137162%_
                                                _%in137160%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%else137117137135%_))))))))
                             _%tl137076137093%_)))
                        (let ()
                          (declare (not safe))
                          (_%g137073137083%_ _%g137074137086%_))))))
            (declare (not safe))
            (_%g137072137171%_ _%stx137069%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self136881%_ _%stx136882%_)
        (letrec ((_%add-lift!136884%_
                  (lambda (_%expr137066%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr137066%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote136885%_
                  (lambda (_%id137063%_ _%marks137064%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id137063%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks137064%_
                                                        '()))))))))
                 (_%generate-simple136886%_
                  (lambda (_%stxq137058%_)
                    (let ((_%gid137060%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid137061%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq137058%_))))
                      (let ((__tmp145864
                             (cons 'define
                                   (cons _%gid137060%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_%generate-syntax-quote136885%_
                                                  _%qid137061%_
                                                  ''()))
                                               '())))))
                        (declare (not safe))
                        (_%add-lift!136884%_ __tmp145864))
                      (let ((__tmp145865
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145865 _%stxq137058%_ _%gid137060%_))
                      _%gid137060%_)))
                 (_%generate-serialized136887%_
                  (lambda (_%stxq137048%_ _%marks137049%_)
                    (let* ((_%mark-refs137051%_
                            (map _%generate-mark136888%_ _%marks137049%_))
                           (_%gid137053%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid137055%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq137048%_))))
                      (let ((__tmp145866
                             (cons 'define
                                   (cons _%gid137053%_
                                         (cons (let ((__tmp145867
                                                      (cons 'list
                                                            _%mark-refs137051%_)))
                                                 (declare (not safe))
                                                 (_%generate-syntax-quote136885%_
                                                  _%qid137055%_
                                                  __tmp145867))
                                               '())))))
                        (declare (not safe))
                        (_%add-lift!136884%_ __tmp145866))
                      (let ((__tmp145868
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145868 _%stxq137048%_ _%gid137053%_))
                      _%gid137053%_)))
                 (_%generate-mark136888%_
                  (lambda (_%mark137033%_)
                    (let ((_%$e137035%_
                           (let ((__tmp145869
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp145869 _%mark137033%_))))
                      (if _%$e137035%_
                          (values _%$e137035%_)
                          (let ()
                            (let* ((_%gid137039%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-temporary__% '#t)))
                                   (_%repr137041%_
                                    (let ()
                                      (declare (not safe))
                                      (_%serialize-mark136889%_
                                       _%mark137033%_)))
                                   (_%ctx137043%_
                                    (let ((__tmp145870
                                           (##structure-ref
                                            _%mark137033%_
                                            '2
                                            gx#expander-mark::t
                                            '#f)))
                                      (declare (not safe))
                                      (gx#core-context-top__1 __tmp145870)))
                                   (_%ctx-ref137045%_
                                    (if (eq? _%ctx137043%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#current-expander-context)))
                                        '(gx#current-expander-context)
                                        (cons 'gx#import-module
                                              (cons (cons 'quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_%context-ref136890%_ _%ctx137043%_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              (let ((__tmp145871
                                     (let ()
                                       (declare (not safe))
                                       (gxc#current-compile-marks))))
                                (declare (not safe))
                                (hash-put!
                                 __tmp145871
                                 _%mark137033%_
                                 _%gid137039%_))
                              (let ((__tmp145872
                                     (cons 'define
                                           (cons _%gid137039%_
                                                 (cons (cons 'gx#core-deserialize-mark
                                                             (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%repr137041%_ '()))
                           (cons _%ctx-ref137045%_ '())))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (declare (not safe))
                                (_%add-lift!136884%_ __tmp145872))
                              _%gid137039%_))))))
                 (_%serialize-mark136889%_
                  (lambda (_%mark136980%_)
                    (letrec ((_%quote-e136982%_
                              (lambda (_%sym137031%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym137031%_))
                                    _%sym137031%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym137031%_))))))
                      (let* ((_%mark136983136992%_ _%mark136980%_)
                             (_%E136985136996%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark136983136992%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K136986137008%_
                              (lambda (_%trace136999%_
                                       _%phi137000%_
                                       _%ctx137001%_
                                       _%subst137002%_)
                                (let ((_%subs137004%_
                                       (if _%subst137002%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst137002%_))
                                           '())))
                                  (cons _%phi137000%_
                                        (map (lambda (_%pair137006%_)
                                               (cons (let ((__tmp145873
                                                            (car _%pair137006%_)))
                                                       (declare (not safe))
                                                       (_%quote-e136982%_
                                                        __tmp145873))
                                                     (let ((__tmp145874
                                                            (cdr _%pair137006%_)))
                                                       (declare (not safe))
                                                       (_%quote-e136982%_
                                                        __tmp145874))))
                                             _%subs137004%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark136983136992%_
                               'gx#expander-mark::t))
                            (let* ((_%e136987137011%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136983136992%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst137014%_ _%e136987137011%_)
                                   (_%e136988137016%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136983136992%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx137019%_ _%e136988137016%_)
                                   (_%e136989137021%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136983136992%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi137024%_ _%e136989137021%_)
                                   (_%e136990137026%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136983136992%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace137029%_ _%e136990137026%_))
                              (declare (not safe))
                              (_%K136986137008%_
                               _%trace137029%_
                               _%phi137024%_
                               _%ctx137019%_
                               _%subst137014%_))
                            (let ()
                              (declare (not safe))
                              (_%E136985136996%_)))))))
                 (_%context-ref136890%_
                  (lambda (_%ctx136967%_)
                    (if (let ((__tmp145875
                               (##structure-ref
                                _%ctx136967%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp145875
                           'gx#module-context::t))
                        (let ((_%ctx-ref136969%_
                               (let ()
                                 (declare (not safe))
                                 (_%context-ref-nested136892%_ _%ctx136967%_)))
                              (_%ctx-origin136970%_
                               (let ()
                                 (declare (not safe))
                                 (_%context-ref-origin136891%_ _%ctx136967%_)))
                              (_%origin136971%_
                               (let ((__tmp145876
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (_%context-ref-origin136891%_ __tmp145876))))
                          (if (eq? _%origin136971%_ _%ctx-origin136970%_)
                              (let ((_%ref136973%_
                                     (let ((__tmp145877
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-context))))
                                       (declare (not safe))
                                       (_%context-ref-nested136892%_
                                        __tmp145877))))
                                (let _%lp136975%_ ((_%ref136977%_
                                                    (cdr _%ref136973%_))
                                                   (_%ctx-ref136978%_
                                                    (cdr _%ctx-ref136969%_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _%ref136977%_))
                                           (eq? (car _%ref136977%_)
                                                (car _%ctx-ref136978%_)))
                                      (let ((__tmp145879 (cdr _%ref136977%_))
                                            (__tmp145878
                                             (cdr _%ctx-ref136978%_)))
                                        (declare (not safe))
                                        (_%lp136975%_ __tmp145879 __tmp145878))
                                      (cons '#f _%ctx-ref136978%_))))
                              _%ctx-ref136969%_))
                        (let ((__tmp145880
                               (##structure-ref
                                _%ctx136967%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp145880)))))
                 (_%context-ref-origin136891%_
                  (lambda (_%ctx136959%_)
                    (let _%lp136961%_ ((_%ctx136963%_ _%ctx136959%_))
                      (let ((_%super136965%_
                             (##structure-ref
                              _%ctx136963%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136965%_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_%lp136961%_ _%super136965%_))
                            _%ctx136963%_)))))
                 (_%context-ref-nested136892%_
                  (lambda (_%ctx136950%_)
                    (let _%lp136952%_ ((_%ctx136954%_ _%ctx136950%_)
                                       (_%r136955%_ '()))
                      (let ((_%super136957%_
                             (##structure-ref
                              _%ctx136954%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136957%_
                               'gx#module-context::t))
                            (let ((__tmp145881
                                   (cons (car (##structure-ref
                                               _%ctx136954%_
                                               '7
                                               gx#module-context::t
                                               '#f))
                                         _%r136955%_)))
                              (declare (not safe))
                              (_%lp136952%_ _%super136957%_ __tmp145881))
                            (cons (let ((__tmp145882
                                         (##structure-ref
                                          _%ctx136954%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp145882))
                                  _%r136955%_)))))))
          (let* ((_%g136894136907%_
                  (lambda (_%g136895136904%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136895136904%_))))
                 (_%g136893136947%_
                  (lambda (_%g136895136910%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136895136910%_))
                        (let ((_%e136899136912%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136895136910%_))))
                          (let ((_%hd136898136915%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136899136912%_)))
                                (_%tl136897136917%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136899136912%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl136897136917%_))
                                (let ((_%e136902136920%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl136897136917%_))))
                                  (let ((_%hd136901136923%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136902136920%_)))
                                        (_%tl136900136925%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136902136920%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136900136925%_))
                                        ((lambda (_%L136928%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L136928%_))
                                               (let ((_%$e136941%_
                                                      (let ((__tmp145883
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp145883 _%L136928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e136941%_
                                                     (values _%$e136941%_)
                                                     (let ((_%marks136945%_
                                                            (##direct-structure-ref
                                                             _%L136928%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _%marks136945%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-simple136886%_
                                                              _%L136928%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-serialized136887%_
                                                              _%L136928%_
                                                              _%marks136945%_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L136928%_))))
                                         _%hd136901136923%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g136894136907%_
                                           _%g136895136910%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g136894136907%_ _%g136895136910%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g136894136907%_ _%g136895136910%_))))))
            (declare (not safe))
            (_%g136893136947%_ _%stx136882%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self136813%_ _%stx136814%_)
        (let* ((_%g136816136833%_
                (lambda (_%g136817136830%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136817136830%_))))
               (_%g136815136878%_
                (lambda (_%g136817136836%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136817136836%_))
                      (let ((_%e136822136838%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136817136836%_))))
                        (let ((_%hd136821136841%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136822136838%_)))
                              (_%tl136820136843%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136822136838%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136820136843%_))
                              (let ((_%e136825136846%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136820136843%_))))
                                (let ((_%hd136824136849%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136825136846%_)))
                                      (_%tl136823136851%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136825136846%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136823136851%_))
                                      (let ((_%e136828136854%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136823136851%_))))
                                        (let ((_%hd136827136857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136828136854%_)))
                                              (_%tl136826136859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136828136854%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136826136859%_))
                                              ((lambda (_%L136862%_
                                                        _%L136863%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L136863%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self136813%_ _%L136862%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd136827136857%_
                                               _%hd136824136849%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g136816136833%_
                                                 _%g136817136836%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g136816136833%_
                                         _%g136817136836%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g136816136833%_ _%g136817136836%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136816136833%_ _%g136817136836%_))))))
          (declare (not safe))
          (_%g136815136878%_ _%stx136814%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self136762%_ _%stx136763%_)
        (let* ((_%g136765136775%_
                (lambda (_%g136766136772%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136766136772%_))))
               (_%g136764136810%_
                (lambda (_%g136766136778%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136766136778%_))
                      (let ((_%e136770136780%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136766136778%_))))
                        (let ((_%hd136769136783%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136770136780%_)))
                              (_%tl136768136785%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136770136780%_))))
                          ((lambda (_%L136788%_)
                             (let* ((_%c-body136802%_
                                     (map (lambda (_%g136797136799%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self136762%_
                                               _%g136797136799%_)))
                                          _%L136788%_))
                                    (_%c-body136807%_
                                     (let ((__tmp145884
                                            (lambda (_%$obj136804%_)
                                              (let ((__tmp145885
                                                     (let ()
                                                       (declare (not safe))
                                                       (eq? _%$obj136804%_
                                                            '#!void))))
                                                (declare (not safe))
                                                (not __tmp145885)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp145884
                                        _%c-body136802%_))))
                               (cons '%#begin _%c-body136807%_)))
                           _%tl136768136785%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136765136775%_ _%g136766136778%_))))))
          (declare (not safe))
          (_%g136764136810%_ _%stx136763%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self136667%_ _%stx136668%_)
        (let* ((_%g136670136680%_
                (lambda (_%g136671136677%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136671136677%_))))
               (_%g136669136759%_
                (lambda (_%g136671136683%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136671136683%_))
                      (let ((_%e136675136685%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136671136683%_))))
                        (let ((_%hd136674136688%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136675136685%_)))
                              (_%tl136673136690%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136675136685%_))))
                          ((lambda (_%L136693%_)
                             (let* ((_%phi136703%_
                                     (let ((__tmp145886
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp145886 '1)))
                                    (_%block136705%_
                                     (let ((__tmp145887
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _%self136667%_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp145887
                                        _%phi136703%_)))
                                    (_%compiled136708%_
                                     (let ((__tmp145888
                                            (lambda ()
                                              (let ((__tmp145890
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self136667%_
                                                        'state)))
                                                    (__tmp145889
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%L136693%_)))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi__%
                                                 '#f
                                                 __tmp145890
                                                 __tmp145889)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp145888
                                        gx#current-expander-phi
                                        _%phi136703%_))))
                               (let* ((_%g136711136721%_
                                       (lambda (_%g136712136718%_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g136712136718%_))))
                                      (_%g136710136756%_
                                       (lambda (_%g136712136724%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%g136712136724%_))
                                             (let ((_%e136716136726%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%g136712136724%_))))
                                               (let ((_%hd136715136729%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e136716136726%_)))
                                                     (_%tl136714136731%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e136716136726%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd136715136729%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _%hd136715136729%_))
                                                         ((lambda (_%L136734%_)
                                                            (let ((_%c-body136751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_%$obj136748%_)
                                     (let ((__tmp145891
                                            (let ()
                                              (declare (not safe))
                                              (eq? _%$obj136748%_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp145891)))
                                   _%L136734%_)))
                      (if _%block136705%_
                          (let ()
                            (cons '%#begin-syntax
                                  (cons (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'load-module
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons _%block136705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%c-body136751%_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _%c-body136751%_))
                              (let () '#!void)
                              (let ()
                                (cons '%#begin-syntax _%c-body136751%_))))))
                  _%tl136714136731%_)
                 (let ()
                   (declare (not safe))
                   (_%g136711136721%_ _%g136712136724%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g136711136721%_
                                                        _%g136712136724%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g136711136721%_
                                                _%g136712136724%_))))))
                                 (declare (not safe))
                                 (_%g136710136756%_ _%compiled136708%_))))
                           _%tl136673136690%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136670136680%_ _%g136671136683%_))))))
          (declare (not safe))
          (_%g136669136759%_ _%stx136668%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self136598%_ _%stx136599%_)
        (let ((__tmp145892
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self136598%_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp145892))
        (let* ((_%g136601136615%_
                (lambda (_%g136602136612%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136602136612%_))))
               (_%g136600136664%_
                (lambda (_%g136602136618%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136602136618%_))
                      (let ((_%e136607136620%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136602136618%_))))
                        (let ((_%hd136606136623%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136607136620%_)))
                              (_%tl136605136625%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136607136620%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136605136625%_))
                              (let ((_%e136610136628%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136605136625%_))))
                                (let ((_%hd136609136631%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136610136628%_)))
                                      (_%tl136608136633%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136610136628%_))))
                                  ((lambda (_%L136636%_ _%L136637%_)
                                     (let ((_%key136650%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L136637%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key136650%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx136599%_
                                              _%L136637%_
                                              _%key136650%_)))
                                       (let* ((_%ctx136652%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L136637%_)))
                                              (_%code136655%_
                                               (let ((__tmp145893
                                                      (lambda ()
                                                        (let ((__tmp145894
                                                               (##structure-ref
                                                                _%ctx136652%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self136598%_
                                                           __tmp145894)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp145893
                                                  gx#current-expander-context
                                                  _%ctx136652%_)))
                                              (_%rt136657%_
                                               (let ((__tmp145895
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp145895
                                                  _%ctx136652%_)))
                                              (_%loader136659%_
                                               (if _%rt136657%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt136657%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid136661%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L136637%_))))
                                         (let ((__tmp145896
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self136598%_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp145896))
                                         (cons '%#module
                                               (cons _%modid136661%_
                                                     (cons _%code136655%_
                                                           _%loader136659%_))))))
                                   _%tl136608136633%_
                                   _%hd136609136631%_)))
                              (let ()
                                (declare (not safe))
                                (_%g136601136615%_ _%g136602136618%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136601136615%_ _%g136602136618%_))))))
          (declare (not safe))
          (_%g136600136664%_ _%stx136599%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx136585%_ _%context-chain136586%_)
        (let _%lp136588%_ ((_%ctx136590%_ _%ctx136585%_) (_%path136591%_ '()))
          (let ((_%super136593%_
                 (##structure-ref _%ctx136590%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super136593%_ _%context-chain136586%_)
                (let ((__tmp145897
                       (let ((__tmp145898
                              (car (##structure-ref
                                    _%ctx136590%_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp145898 _%path136591%_))))
                  (declare (not safe))
                  (cons '#f __tmp145897))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super136593%_
                       'gx#module-context::t))
                    (let ((__tmp145899
                           (cons (car (##structure-ref
                                       _%ctx136590%_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _%path136591%_)))
                      (declare (not safe))
                      (_%lp136588%_ _%super136593%_ __tmp145899))
                    (let ()
                      (cons (let ((__tmp145900
                                   (##structure-ref
                                    _%ctx136590%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (make-symbol__1 '":" __tmp145900))
                            _%path136591%_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp136578%_ ((_%ctx136580%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r136581%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx136580%_ 'gx#module-context::t))
              (let ((__tmp145902
                     (##structure-ref _%ctx136580%_ '3 gx#phi-context::t '#f))
                    (__tmp145901 (cons _%ctx136580%_ _%r136581%_)))
                (declare (not safe))
                (_%lp136578%_ __tmp145902 __tmp145901))
              (let () _%r136581%_)))))
    (define gxc#generate-meta-import%
      (lambda (_%self136341%_ _%stx136342%_)
        (letrec* ((_%context-chain136344%_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_%make-import-spec136345%_
                   (lambda (_%in136514%_)
                     (let* ((_%in136515136527%_ _%in136514%_)
                            (_%E136517136531%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in136515136527%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K136518136541%_
                             (lambda (_%phi136534%_
                                      _%name136535%_
                                      _%src-name136536%_
                                      _%src-phi136537%_
                                      _%src-key136538%_
                                      _%src-ctx136539%_)
                               (cons _%phi136534%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name136535%_))
                                           (cons _%src-phi136537%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name136536%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in136515136527%_
                              'gx#module-import::t))
                           (let ((_%e136519136544%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in136515136527%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e136519136544%_
                                    'gx#module-export::t))
                                 (let* ((_%e136522136547%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136519136544%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx136550%_ _%e136522136547%_)
                                        (_%e136523136552%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136519136544%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key136555%_ _%e136523136552%_)
                                        (_%e136524136557%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136519136544%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi136560%_ _%e136524136557%_)
                                        (_%e136525136562%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136519136544%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name136565%_ _%e136525136562%_)
                                        (_%e136520136567%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in136515136527%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name136570%_ _%e136520136567%_)
                                        (_%e136521136572%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in136515136527%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi136575%_ _%e136521136572%_))
                                   (declare (not safe))
                                   (_%K136518136541%_
                                    _%phi136575%_
                                    _%name136570%_
                                    _%src-name136565%_
                                    _%src-phi136560%_
                                    _%src-key136555%_
                                    _%src-ctx136550%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%E136517136531%_))))
                           (let ()
                             (declare (not safe))
                             (_%E136517136531%_))))))
                  (_%make-import-path136346%_
                   (lambda (_%ctx136512%_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _%ctx136512%_
                        _%context-chain136344%_))))
                  (_%make-import-spec-in136347%_
                   (lambda (_%ctx136509%_ _%in136510%_)
                     (cons 'spec:
                           (cons (let ()
                                   (declare (not safe))
                                   (_%make-import-path136346%_ _%ctx136509%_))
                                 (reverse _%in136510%_))))))
          (let ((__tmp145903
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self136341%_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp145903))
          (let* ((_%g136349136359%_
                  (lambda (_%g136350136356%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136350136356%_))))
                 (_%g136348136506%_
                  (lambda (_%g136350136362%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136350136362%_))
                        (let ((_%e136354136364%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136350136362%_))))
                          (let ((_%hd136353136367%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136354136364%_)))
                                (_%tl136352136369%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136354136364%_))))
                            ((lambda (_%L136372%_)
                               (let _%lp136383%_ ((_%rest136385%_ _%L136372%_)
                                                  (_%current-src136386%_ '#f)
                                                  (_%current-in136387%_ '())
                                                  (_%r136388%_ '()))
                                 (let* ((_%rest136389136397%_ _%rest136385%_)
                                        (_%else136391136407%_
                                         (lambda ()
                                           (let ((_%r136405%_
                                                  (if _%current-src136386%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%make-import-spec-in136347%_
                                                               _%current-src136386%_
                                                               _%current-in136387%_))
                                                            _%r136388%_)
                                                      _%r136388%_)))
                                             (cons '%#import
                                                   (reverse _%r136405%_)))))
                                        (_%K136393136494%_
                                         (lambda (_%rest136410%_ _%in136411%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in136411%_
                                                  'gx#module-import::t))
                                               (let ()
                                                 (let* ((_%in136413136420%_
                                                         _%in136411%_)
                                                        (_%E136415136424%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%in136413136420%_
                            '((module-import (module-export src-ctx)))))
                   '#!void))
                (_%K136416136432%_
                 (lambda (_%src-ctx136427%_)
                   (if (eq? _%current-src136386%_ _%src-ctx136427%_)
                       (let ((__tmp145904
                              (cons (let ()
                                      (declare (not safe))
                                      (_%make-import-spec136345%_
                                       _%in136411%_))
                                    _%current-in136387%_)))
                         (declare (not safe))
                         (_%lp136383%_
                          _%rest136410%_
                          _%current-src136386%_
                          __tmp145904
                          _%r136388%_))
                       (if _%current-src136386%_
                           (let ((__tmp145906
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%make-import-spec136345%_
                                           _%in136411%_))
                                        '()))
                                 (__tmp145905
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%make-import-spec-in136347%_
                                           _%current-src136386%_
                                           _%current-in136387%_))
                                        _%r136388%_)))
                             (declare (not safe))
                             (_%lp136383%_
                              _%rest136410%_
                              _%src-ctx136427%_
                              __tmp145906
                              __tmp145905))
                           (let ((__tmp145907
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%make-import-spec136345%_
                                           _%in136411%_))
                                        '())))
                             (declare (not safe))
                             (_%lp136383%_
                              _%rest136410%_
                              _%src-ctx136427%_
                              __tmp145907
                              _%r136388%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in136413136420%_
                                                          'gx#module-import::t))
                                                       (let ((_%e136417136435%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%in136413136420%_
                         '1
                         '#f
                         '#f))))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        _%e136417136435%_
                        'gx#module-export::t))
                     (let* ((_%e136418136438%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%e136417136435%_
                                '1
                                '#f
                                '#f)))
                            (_%src-ctx136441%_ _%e136418136438%_))
                       (declare (not safe))
                       (_%K136416136432%_ _%src-ctx136441%_))
                     (let () (declare (not safe)) (_%E136415136424%_))))
               (let () (declare (not safe)) (_%E136415136424%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in136411%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (let* ((_%phi136444%_
                                                             (##direct-structure-ref
                                                              _%in136411%_
                                                              '2
                                                              gx#import-set::t
                                                              '#f))
                                                            (_%src136446%_
                                                             (##direct-structure-ref
                                                              _%in136411%_
                                                              '1
                                                              gx#import-set::t
                                                              '#f))
                                                            (_%src-in136486%_
                                                             (let* ((_%g136447136456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_%make-import-path136346%_ _%src136446%_)))
                            (_%E136450136460%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g136447136456%_
                                        '([path])
                                        '(path)))
                               '#!void)))
                       (let ((_%K136452136476%_
                              (lambda (_%path136474%_) _%path136474%_))
                             (_%K136451136466%_
                              (lambda (_%path136464%_)
                                (cons 'in: _%path136464%_))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%g136447136456%_))
                             (let ((_%tl136454136481%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g136447136456%_)))
                                   (_%hd136453136479%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g136447136456%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl136454136481%_))
                                   (let ((_%path136484%_ _%hd136453136479%_))
                                     (declare (not safe))
                                     (_%K136452136476%_ _%path136484%_))
                                   (let ((_%path136469%_ _%g136447136456%_))
                                     (declare (not safe))
                                     (_%K136451136466%_ _%path136469%_))))
                             (let ((_%path136469%_ _%g136447136456%_))
                               (declare (not safe))
                               (_%K136451136466%_ _%path136469%_))))))
                    (_%r136488%_
                     (if _%current-src136386%_
                         (cons (let ()
                                 (declare (not safe))
                                 (_%make-import-spec-in136347%_
                                  _%current-src136386%_
                                  _%current-in136387%_))
                               _%r136388%_)
                         _%r136388%_))
                    (__tmp145908
                     (cons (if (fxzero? _%phi136444%_)
                               _%src-in136486%_
                               (cons 'phi:
                                     (cons _%phi136444%_
                                           (cons _%src-in136486%_ '()))))
                           _%r136488%_)))
               (declare (not safe))
               (_%lp136383%_ _%rest136410%_ '#f '() __tmp145908)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in136411%_
                                                          'gx#module-context::t))
                                                       (let ()
                                                         (let* ((_%r136492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if _%current-src136386%_
                             (cons (let ()
                                     (declare (not safe))
                                     (_%make-import-spec-in136347%_
                                      _%current-src136386%_
                                      _%current-in136387%_))
                                   _%r136388%_)
                             _%r136388%_))
                        (__tmp145909
                         (cons (cons 'runtime:
                                     (let ()
                                       (declare (not safe))
                                       (_%make-import-path136346%_
                                        _%in136411%_)))
                               _%r136492%_)))
                   (declare (not safe))
                   (_%lp136383%_ _%rest136410%_ '#f '() __tmp145909)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest136389136397%_))
                                       (let ((_%hd136394136497%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest136389136397%_)))
                                             (_%tl136395136499%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest136389136397%_))))
                                         (let* ((_%in136502%_
                                                 _%hd136394136497%_)
                                                (_%rest136504%_
                                                 _%tl136395136499%_))
                                           (declare (not safe))
                                           (_%K136393136494%_
                                            _%rest136504%_
                                            _%in136502%_)))
                                       (let ()
                                         (declare (not safe))
                                         (_%else136391136407%_))))))
                             _%tl136352136369%_)))
                        (let ()
                          (declare (not safe))
                          (_%g136349136359%_ _%g136350136362%_))))))
            (declare (not safe))
            (_%g136348136506%_ _%stx136342%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self136151%_ _%stx136152%_)
        (letrec* ((_%context-chain136154%_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_%make-import-path136155%_
                   (lambda (_%ctx136339%_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _%ctx136339%_
                        _%context-chain136154%_)))))
          (let* ((_%g136157136167%_
                  (lambda (_%g136158136164%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136158136164%_))))
                 (_%g136156136336%_
                  (lambda (_%g136158136170%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136158136170%_))
                        (let ((_%e136162136172%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136158136170%_))))
                          (let ((_%hd136161136175%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136162136172%_)))
                                (_%tl136160136177%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136162136172%_))))
                            ((lambda (_%L136180%_)
                               (let _%lp136191%_ ((_%rest136193%_ _%L136180%_)
                                                  (_%r136194%_ '()))
                                 (let* ((_%rest136195136203%_ _%rest136193%_)
                                        (_%else136197136211%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r136194%_))))
                                        (_%K136199136324%_
                                         (lambda (_%rest136214%_ _%out136215%_)
                                           (let* ((_%out136216136229%_
                                                   _%out136215%_)
                                                  (_%E136219136233%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out136216136229%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K136223136303%_
                                                    (lambda (_%name136299%_
                                                             _%phi136300%_
                                                             _%key136301%_)
                                                      (let ((__tmp145910
                                                             (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%phi136300%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%key136301%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-identifier-key
                                                      _%name136299%_))
                                                   '()))))
                           _%r136194%_)))
                (declare (not safe))
                (_%lp136191%_ _%rest136214%_ __tmp145910))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K136220136283%_
                                                    (lambda (_%phi136237%_
                                                             _%src136238%_)
                                                      (let* ((_%out136278%_
                                                              (if _%src136238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g136239136248%_
                                              (let ()
                                                (declare (not safe))
                                                (_%make-import-path136155%_
                                                 _%src136238%_)))
                                             (_%E136242136252%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g136239136248%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K136244136268%_
                                               (lambda (_%path136266%_)
                                                 _%path136266%_))
                                              (_%K136243136258%_
                                               (lambda (_%path136256%_)
                                                 (cons 'in: _%path136256%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g136239136248%_))
                                              (let ((_%tl136246136273%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g136239136248%_)))
                                                    (_%hd136245136271%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g136239136248%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl136246136273%_))
                                                    (let ((_%path136276%_
                                                           _%hd136245136271%_))
                                                      (declare (not safe))
                                                      (_%K136244136268%_
                                                       _%path136276%_))
                                                    (let ((_%path136261%_
                                                           _%g136239136248%_))
                                                      (declare (not safe))
                                                      (_%K136243136258%_
                                                       _%path136261%_))))
                                              (let ((_%path136261%_
                                                     _%g136239136248%_))
                                                (declare (not safe))
                                                (_%K136243136258%_
                                                 _%path136261%_)))))
                                      '()))
                          '#t))
                     (_%out136280%_
                      (if (fxzero? _%phi136237%_)
                          _%out136278%_
                          (cons 'phi:
                                (cons _%phi136237%_
                                      (cons _%out136278%_ '())))))
                     (__tmp145911 (cons _%out136280%_ _%r136194%_)))
                (declare (not safe))
                (_%lp136191%_ _%rest136214%_ __tmp145911)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match136218136296%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out136216136229%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e136221136286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out136216136229%_
                               '1
                               '#f
                               '#f)))
                           (_%e136222136291%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out136216136229%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src136289%_ _%e136221136286%_)
                            (_%phi136294%_ _%e136222136291%_))
                        (let ()
                          (declare (not safe))
                          (_%K136220136283%_ _%phi136294%_ _%src136289%_))))
                    (let () (declare (not safe)) (_%E136219136233%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out136216136229%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e136224136306%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out136216136229%_
                        '1
                        '#f
                        '#f)))
                    (_%e136225136309%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136216136229%_
                        '2
                        '#f
                        '#f)))
                    (_%e136226136314%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136216136229%_
                        '3
                        '#f
                        '#f)))
                    (_%e136227136319%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136216136229%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key136312%_ _%e136225136309%_)
                     (_%phi136317%_ _%e136226136314%_)
                     (_%name136322%_ _%e136227136319%_))
                 (let ()
                   (declare (not safe))
                   (_%K136223136303%_
                    _%name136322%_
                    _%phi136317%_
                    _%key136312%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%try-match136218136296%_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest136195136203%_))
                                       (let ((_%hd136200136327%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest136195136203%_)))
                                             (_%tl136201136329%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest136195136203%_))))
                                         (let* ((_%out136332%_
                                                 _%hd136200136327%_)
                                                (_%rest136334%_
                                                 _%tl136201136329%_))
                                           (declare (not safe))
                                           (_%K136199136324%_
                                            _%rest136334%_
                                            _%out136332%_)))
                                       (let ()
                                         (declare (not safe))
                                         (_%else136197136211%_))))))
                             _%tl136160136177%_)))
                        (let ()
                          (declare (not safe))
                          (_%g136157136167%_ _%g136158136170%_))))))
            (declare (not safe))
            (_%g136156136336%_ _%stx136152%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self136112%_ _%stx136113%_)
        (let ((__tmp145912
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self136112%_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp145912))
        (let* ((_%g136115136125%_
                (lambda (_%g136116136122%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136116136122%_))))
               (_%g136114136148%_
                (lambda (_%g136116136128%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136116136128%_))
                      (let ((_%e136120136130%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136116136128%_))))
                        (let ((_%hd136119136133%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136120136130%_)))
                              (_%tl136118136135%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136120136130%_))))
                          ((lambda (_%L136138%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L136138%_)))
                           _%tl136118136135%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136115136125%_ _%g136116136128%_))))))
          (declare (not safe))
          (_%g136114136148%_ _%stx136113%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self135983%_ _%stx135984%_)
        (letrec ((_%generate1135986%_
                  (lambda (_%id136107%_ _%eid136108%_)
                    (let ((_%eid136110%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid136108%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid136110%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx135984%_
                             _%eid136110%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id136107%_))
                            (cons _%eid136110%_ '()))))))
          (let* ((_%g135988136016%_
                  (lambda (_%g135989136013%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135989136013%_))))
                 (_%g135987136104%_
                  (lambda (_%g135989136019%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135989136019%_))
                        (let ((_%e135994136021%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135989136019%_))))
                          (let ((_%hd135993136024%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135994136021%_)))
                                (_%tl135992136026%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135994136021%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl135992136026%_))
                                (let ((_g145913_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl135992136026%_
                                          '0))))
                                  (begin
                                    (let ((_g145914_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145913_)
                                                 (##vector-length _g145913_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145914_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145914_)))
                                    (let ((_%target135995136029%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145913_ 0)))
                                          (_%tl135997136031%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145913_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl135997136031%_))
                                          (letrec ((_%loop135998136034%_
                                                    (lambda (_%hd135996136037%_
                                                             _%eid136002136039%_
                                                             _%id136003136041%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd135996136037%_))
                                                          (let ((_%e135999136044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd135996136037%_))))
                    (let ((_%lp-hd136000136047%_
                           (let ()
                             (declare (not safe))
                             (##car _%e135999136044%_)))
                          (_%lp-tl136001136049%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e135999136044%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd136000136047%_))
                          (let ((_%e136008136052%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd136000136047%_))))
                            (let ((_%hd136007136055%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e136008136052%_)))
                                  (_%tl136006136057%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e136008136052%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl136006136057%_))
                                  (let ((_%e136011136060%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl136006136057%_))))
                                    (let ((_%hd136010136063%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e136011136060%_)))
                                          (_%tl136009136065%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e136011136060%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl136009136065%_))
                                          (let ((__tmp145916
                                                 (cons _%hd136010136063%_
                                                       _%eid136002136039%_))
                                                (__tmp145915
                                                 (cons _%hd136007136055%_
                                                       _%id136003136041%_)))
                                            (declare (not safe))
                                            (_%loop135998136034%_
                                             _%lp-tl136001136049%_
                                             __tmp145916
                                             __tmp145915))
                                          (let ()
                                            (declare (not safe))
                                            (_%g135988136016%_
                                             _%g135989136019%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g135988136016%_ _%g135989136019%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g135988136016%_ _%g135989136019%_)))))
                  (let ((_%eid136004136068%_ (reverse _%eid136002136039%_))
                        (_%id136005136070%_ (reverse _%id136003136041%_)))
                    ((lambda (_%L136073%_ _%L136074%_)
                       (cons '%#extern
                             (map _%generate1135986%_
                                  (let ((__tmp145917
                                         (lambda (_%g136089136092%_
                                                  _%g136090136094%_)
                                           (cons _%g136089136092%_
                                                 _%g136090136094%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145917 '() _%L136074%_))
                                  (let ((__tmp145918
                                         (lambda (_%g136096136099%_
                                                  _%g136097136101%_)
                                           (cons _%g136096136099%_
                                                 _%g136097136101%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145918 '() _%L136073%_)))))
                     _%eid136004136068%_
                     _%id136005136070%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop135998136034%_
                                               _%target135995136029%_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g135988136016%_
                                             _%g135989136019%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g135988136016%_ _%g135989136019%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g135988136016%_ _%g135989136019%_))))))
            (declare (not safe))
            (_%g135987136104%_ _%stx135984%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self135773%_ _%stx135774%_)
        (letrec ((_%generate1135776%_
                  (lambda (_%id135978%_)
                    (let ((_%eid135980%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id135978%_)))
                          (_%ident135981%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id135978%_))))
                      (cons '%#define-runtime
                            (cons _%ident135981%_ (cons _%eid135980%_ '()))))))
                 (_%generate*135777%_
                  (lambda (_%all135946%_)
                    (let* ((_%all135947135955%_ _%all135946%_)
                           (_%else135949135963%_
                            (lambda () (cons '%#begin _%all135946%_)))
                           (_%K135951135968%_
                            (lambda (_%one135966%_) _%one135966%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all135947135955%_))
                          (let ((_%hd135952135971%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all135947135955%_)))
                                (_%tl135953135973%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all135947135955%_))))
                            (let ((_%one135976%_ _%hd135952135971%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl135953135973%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K135951135968%_ _%one135976%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%else135949135963%_)))))
                          (let ()
                            (declare (not safe))
                            (_%else135949135963%_)))))))
          (let* ((_%g135779135796%_
                  (lambda (_%g135780135793%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135780135793%_))))
                 (_%g135778135943%_
                  (lambda (_%g135780135799%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135780135799%_))
                        (let ((_%e135785135801%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135780135799%_))))
                          (let ((_%hd135784135804%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135785135801%_)))
                                (_%tl135783135806%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135785135801%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl135783135806%_))
                                (let ((_%e135788135809%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl135783135806%_))))
                                  (let ((_%hd135787135812%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135788135809%_)))
                                        (_%tl135786135814%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135788135809%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135786135814%_))
                                        (let ((_%e135791135817%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135786135814%_))))
                                          (let ((_%hd135790135820%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135791135817%_)))
                                                (_%tl135789135822%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135791135817%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135789135822%_))
                                                ((lambda (_%L135825%_
                                                          _%L135826%_)
                                                   (let _%lp135842%_ ((_%rest135844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L135826%_)
                              (_%r135845%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx145534145535%_
                                                             _%rest135844%_)
                                                            (_%g135850135867%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx145534145535%_)))))
               (let ((_%__kont145536145537%_
                      (lambda (_%L135930%_)
                        (let ()
                          (declare (not safe))
                          (_%lp135842%_ _%L135930%_ _%r135845%_))))
                     (_%__kont145538145539%_
                      (lambda (_%L135903%_ _%L135904%_)
                        (let ((__tmp145919
                               (cons (let ()
                                       (declare (not safe))
                                       (_%generate1135776%_ _%L135904%_))
                                     _%r135845%_)))
                          (declare (not safe))
                          (_%lp135842%_ _%L135903%_ __tmp145919))))
                     (_%__kont145540145541%_
                      (lambda (_%L135879%_)
                        (let ((__tmp145920
                               (let ((__tmp145921
                                      (cons (let ()
                                              (declare (not safe))
                                              (_%generate1135776%_
                                               _%L135879%_))
                                            '())))
                                 (declare (not safe))
                                 (__foldl1 cons __tmp145921 _%r135845%_))))
                          (declare (not safe))
                          (_%generate*135777%_ __tmp145920))))
                     (_%__kont145542145543%_
                      (lambda ()
                        (let ((__tmp145922 (reverse _%r135845%_)))
                          (declare (not safe))
                          (_%generate*135777%_ __tmp145922)))))
                 (let ((_%g135848135890%_
                        (lambda ()
                          (let ((_%L135879%_ _%__stx145534145535%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L135879%_))
                                (_%__kont145540145541%_ _%L135879%_)
                                (_%__kont145542145543%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx145534145535%_))
                       (let ((_%e135855135919%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx145534145535%_))))
                         (let ((_%tl135853135924%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e135855135919%_)))
                               (_%hd135854135922%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e135855135919%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd135854135922%_))
                               (let ((_%e135856135927%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd135854135922%_))))
                                 (if (equal? _%e135856135927%_ '#f)
                                     (_%__kont145536145537%_
                                      _%tl135853135924%_)
                                     (_%__kont145538145539%_
                                      _%tl135853135924%_
                                      _%hd135854135922%_)))
                               (_%__kont145538145539%_
                                _%tl135853135924%_
                                _%hd135854135922%_))))
                       (let () (declare (not safe)) (_%g135848135890%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd135790135820%_
                                                 _%hd135787135812%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g135779135796%_
                                                   _%g135780135799%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g135779135796%_
                                           _%g135780135799%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g135779135796%_ _%g135780135799%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g135779135796%_ _%g135780135799%_))))))
            (declare (not safe))
            (_%g135778135943%_ _%stx135774%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self135670%_ _%stx135671%_)
        (let* ((_%g135673135690%_
                (lambda (_%g135674135687%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135674135687%_))))
               (_%g135672135770%_
                (lambda (_%g135674135693%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135674135693%_))
                      (let ((_%e135679135695%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135674135693%_))))
                        (let ((_%hd135678135698%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135679135695%_)))
                              (_%tl135677135700%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135679135695%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135677135700%_))
                              (let ((_%e135682135703%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135677135700%_))))
                                (let ((_%hd135681135706%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135682135703%_)))
                                      (_%tl135680135708%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135682135703%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135680135708%_))
                                      (let ((_%e135685135711%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135680135708%_))))
                                        (let ((_%hd135684135714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135685135711%_)))
                                              (_%tl135683135716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135685135711%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135683135716%_))
                                              ((lambda (_%L135719%_
                                                        _%L135720%_)
                                                 (let* ((_%eid135735%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L135720%_)))
                                                        (_%phi135737%_
                                                         (let ((__tmp145923
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp145923 '1)))
                (_%block135739%_
                 (let ((__tmp145924
                        (let ()
                          (declare (not safe))
                          (slot-ref__0 _%self135670%_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp145924 _%phi135737%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g135742135749%_
                                                           (lambda (_%g135743135746%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g135743135746%_))))
                  (_%g135741135767%_
                   (lambda (_%g135743135752%_)
                     ((lambda (_%L135754%_)
                        (let ((__tmp145926
                               (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self135670%_ 'state)))
                              (__tmp145925
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        '%#define-runtime))
                                     (cons _%L135754%_
                                           (cons _%L135719%_ '())))))
                          (declare (not safe))
                          (gxc#meta-state-add-phi!
                           __tmp145926
                           _%phi135737%_
                           __tmp145925)))
                      _%g135743135752%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_%g135741135767%_
                                                      _%eid135735%_))
                                                   (if _%block135739%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block135739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%L135720%_))
                                             (cons _%eid135735%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%L135720%_))
                           (cons _%eid135735%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135684135714%_
                                               _%hd135681135706%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135673135690%_
                                                 _%g135674135693%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135673135690%_
                                         _%g135674135693%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135673135690%_ _%g135674135693%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135673135690%_ _%g135674135693%_))))))
          (declare (not safe))
          (_%g135672135770%_ _%stx135671%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self135602%_ _%stx135603%_)
        (let* ((_%g135605135622%_
                (lambda (_%g135606135619%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135606135619%_))))
               (_%g135604135667%_
                (lambda (_%g135606135625%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135606135625%_))
                      (let ((_%e135611135627%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135606135625%_))))
                        (let ((_%hd135610135630%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135611135627%_)))
                              (_%tl135609135632%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135611135627%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135609135632%_))
                              (let ((_%e135614135635%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135609135632%_))))
                                (let ((_%hd135613135638%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135614135635%_)))
                                      (_%tl135612135640%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135614135635%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135612135640%_))
                                      (let ((_%e135617135643%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135612135640%_))))
                                        (let ((_%hd135616135646%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135617135643%_)))
                                              (_%tl135615135648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135617135643%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135615135648%_))
                                              ((lambda (_%L135651%_
                                                        _%L135652%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%L135652%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%L135651%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135616135646%_
                                               _%hd135613135638%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135605135622%_
                                                 _%g135606135625%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135605135622%_
                                         _%g135606135625%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135605135622%_ _%g135606135625%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135605135622%_ _%g135606135625%_))))))
          (declare (not safe))
          (_%g135604135667%_ _%stx135603%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self135599%_ _%stx135600%_)
        (let ((__tmp145928
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135599%_ 'state)))
              (__tmp145927
               (let () (declare (not safe)) (gx#current-expander-phi))))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp145928 __tmp145927 _%stx135600%_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _%self135599%_ _%stx135600%_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self135596%_ _%stx135597%_)
        (let ((__tmp145930
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135596%_ 'state)))
              (__tmp145929
               (let () (declare (not safe)) (gx#current-expander-phi))))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp145930 __tmp145929 _%stx135597%_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp145932 (list)) (__tmp145931 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp145932
         '(src n open blocks)
         __tmp145931
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args135593%_
        (apply make-instance gxc#meta-state::t _%$args135593%_)))
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
      (lambda (_%self135579%_ _%ctx135580%_)
        (let ((_%self135583%_ _%self135579%_))
          (if (let ((__tmp145933
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self135583%_))))
                (declare (not safe))
                (##fx< '4 __tmp145933))
              (begin
                (let ((__tmp145934
                       (let ((__tmp145935
                              (##structure-ref
                               _%ctx135580%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp145935))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self135583%_
                   __tmp145934
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self135583%_ '1 '2 '#f '#f))
                (let ((__tmp145936
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self135583%_
                   __tmp145936
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self135583%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp145937
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self135583%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self135583%_
                       '4
                       __tmp145937))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp145939 (list)) (__tmp145938 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp145939
         '(ctx phi n code)
         __tmp145938
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args135454%_
        (apply make-instance gxc#meta-state-block::t _%$args135454%_)))
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
      (lambda (_%state135413%_ _%phi135414%_)
        (let* ((_%state135415135423%_ _%state135413%_)
               (_%E135417135427%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state135415135423%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K135418135436%_
                (lambda (_%open135430%_ _%n135431%_ _%src135432%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open135430%_ _%phi135414%_))
                      '#f
                      (let ((_%block-ref135434%_
                             (let ((__tmp145940 (number->string _%n135431%_)))
                               (declare (not safe))
                               (##string-append
                                _%src135432%_
                                '"~"
                                __tmp145940))))
                        (##structure-set!
                         _%state135413%_
                         (let () (declare (not safe)) (##fx+ _%n135431%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp145941
                               (let ((__tmp145942
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp145942
                                  _%phi135414%_
                                  _%n135431%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open135430%_ _%phi135414%_ __tmp145941))
                        _%block-ref135434%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state135415135423%_
                 'gxc#meta-state::t))
              (let* ((_%e135419135439%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state135415135423%_
                         '1
                         '#f
                         '#f)))
                     (_%src135442%_ _%e135419135439%_)
                     (_%e135420135444%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state135415135423%_
                         '2
                         '#f
                         '#f)))
                     (_%n135447%_ _%e135420135444%_)
                     (_%e135421135449%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state135415135423%_
                         '3
                         '#f
                         '#f)))
                     (_%open135452%_ _%e135421135449%_))
                (declare (not safe))
                (_%K135418135436%_ _%open135452%_ _%n135447%_ _%src135442%_))
              (let () (declare (not safe)) (_%E135417135427%_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state135407%_ _%phi135408%_ _%stx135409%_)
        (let ((_%block135411%_
               (let ((__tmp145943
                      (##structure-ref
                       _%state135407%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp145943 _%phi135408%_))))
          (##structure-set!
           _%block135411%_
           (cons _%stx135409%_
                 (##structure-ref
                  _%block135411%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state135401%_)
        (##structure-set!
         _%state135401%_
         (let ((__tmp145946
                (lambda (_%_135403%_ _%block135404%_ _%r135405%_)
                  (cons _%block135404%_ _%r135405%_)))
               (__tmp145945
                (##structure-ref _%state135401%_ '4 gxc#meta-state::t '#f))
               (__tmp145944
                (##structure-ref _%state135401%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp145946 __tmp145945 __tmp145944))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state135401%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state135353%_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _%state135353%_))
        (let ((__tmp145948
               (lambda (_%block135355%_ _%r135356%_)
                 (let* ((_%block135357135366%_ _%block135355%_)
                        (_%E135359135370%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block135357135366%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K135360135378%_
                         (lambda (_%code135373%_
                                  _%n135374%_
                                  _%phi135375%_
                                  _%ctx135376%_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _%code135373%_))
                               _%r135356%_
                               (cons (cons _%ctx135376%_
                                           (cons _%phi135375%_
                                                 (cons _%n135374%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code135373%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r135356%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block135357135366%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e135361135381%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135357135366%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx135384%_ _%e135361135381%_)
                              (_%e135362135386%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135357135366%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi135389%_ _%e135362135386%_)
                              (_%e135363135391%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135357135366%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n135394%_ _%e135363135391%_)
                              (_%e135364135396%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135357135366%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code135399%_ _%e135364135396%_))
                         (declare (not safe))
                         (_%K135360135378%_
                          _%code135399%_
                          _%n135394%_
                          _%phi135389%_
                          _%ctx135384%_))
                       (let () (declare (not safe)) (_%E135359135370%_))))))
              (__tmp145947
               (##structure-ref _%state135353%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp145948 '() __tmp145947))))
    (define gxc#collect-expression-refs
      (lambda (_%stx135349%_)
        (let ((_%ht135351%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs__%
             '#f
             _%ht135351%_
             _%stx135349%_))
          _%ht135351%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self135292%_ _%stx135293%_)
        (let* ((_%g135295135308%_
                (lambda (_%g135296135305%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135296135305%_))))
               (_%g135294135346%_
                (lambda (_%g135296135311%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135296135311%_))
                      (let ((_%e135300135313%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135296135311%_))))
                        (let ((_%hd135299135316%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135300135313%_)))
                              (_%tl135298135318%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135300135313%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135298135318%_))
                              (let ((_%e135303135321%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135298135318%_))))
                                (let ((_%hd135302135324%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135303135321%_)))
                                      (_%tl135301135326%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135303135321%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl135301135326%_))
                                      ((lambda (_%L135329%_)
                                         (let* ((_%bind135341%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L135329%_)))
                                                (_%eid135343%_
                                                 (if _%bind135341%_
                                                     (##structure-ref
                                                      _%bind135341%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L135329%_))))
                                                (__tmp145949
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self135292%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp145949
                                            _%eid135343%_
                                            _%eid135343%_)))
                                       _%hd135302135324%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g135295135308%_
                                         _%g135296135311%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135295135308%_ _%g135296135311%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135295135308%_ _%g135296135311%_))))))
          (declare (not safe))
          (_%g135294135346%_ _%stx135293%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self135219%_ _%stx135220%_)
        (let* ((_%g135222135239%_
                (lambda (_%g135223135236%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135223135236%_))))
               (_%g135221135289%_
                (lambda (_%g135223135242%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135223135242%_))
                      (let ((_%e135228135244%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135223135242%_))))
                        (let ((_%hd135227135247%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135228135244%_)))
                              (_%tl135226135249%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135228135244%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135226135249%_))
                              (let ((_%e135231135252%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135226135249%_))))
                                (let ((_%hd135230135255%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135231135252%_)))
                                      (_%tl135229135257%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135231135252%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135229135257%_))
                                      (let ((_%e135234135260%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135229135257%_))))
                                        (let ((_%hd135233135263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135234135260%_)))
                                              (_%tl135232135265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135234135260%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135232135265%_))
                                              ((lambda (_%L135268%_
                                                        _%L135269%_)
                                                 (let* ((_%bind135284%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L135269%_)))
                                                        (_%eid135286%_
                                                         (if _%bind135284%_
                                                             (##structure-ref
                                                              _%bind135284%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L135269%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp145950
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self135219%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp145950
                                                      _%eid135286%_
                                                      _%eid135286%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self135219%_
                                                      _%L135268%_))))
                                               _%hd135233135263%_
                                               _%hd135230135255%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135222135239%_
                                                 _%g135223135242%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135222135239%_
                                         _%g135223135242%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135222135239%_ _%g135223135242%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135222135239%_ _%g135223135242%_))))))
          (declare (not safe))
          (_%g135221135289%_ _%stx135220%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self135176%_ _%stx135177%_)
        (let* ((_%g135179135189%_
                (lambda (_%g135180135186%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135180135186%_))))
               (_%g135178135216%_
                (lambda (_%g135180135192%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135180135192%_))
                      (let ((_%e135184135194%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135180135192%_))))
                        (let ((_%hd135183135197%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135184135194%_)))
                              (_%tl135182135199%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135184135194%_))))
                          ((lambda (_%L135202%_)
                             (let ((__tmp145951
                                    (lambda (_%g135211135213%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self135176%_
                                         _%g135211135213%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp145951 _%L135202%_)))
                           _%tl135182135199%_)))
                      (let ()
                        (declare (not safe))
                        (_%g135179135189%_ _%g135180135192%_))))))
          (declare (not safe))
          (_%g135178135216%_ _%stx135177%_))))
    (define gxc#count-values-single%
      (lambda (_%self135173%_ _%stx135174%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self135039%_ _%stx135040%_)
        (let* ((_%__stx145564145565%_ _%stx135040%_)
               (_%g135043135072%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx145564145565%_)))))
          (let ((_%__kont145566145567%_
                 (lambda (_%L135140%_ _%L135141%_)
                   (length (let ((__tmp145952
                                  (lambda (_%g135162135165%_ _%g135163135167%_)
                                    (cons _%g135162135165%_
                                          _%g135163135167%_))))
                             (declare (not safe))
                             (__foldr1 __tmp145952 '() _%L135140%_)))))
                (_%__kont145570145571%_ (lambda () '#f)))
            (let ((_%__match145609145610%_
                   (lambda (_%e135049135084%_
                            _%hd135048135087%_
                            _%tl135047135089%_
                            _%e135052135092%_
                            _%hd135051135095%_
                            _%tl135050135097%_
                            _%e135055135100%_
                            _%hd135054135103%_
                            _%tl135053135105%_
                            _%e135058135108%_
                            _%hd135057135111%_
                            _%tl135056135113%_
                            _%__splice145568145569%_
                            _%target135059135116%_
                            _%tl135061135118%_)
                     (letrec ((_%loop135062135121%_
                               (lambda (_%hd135060135124%_
                                        _%rand135066135126%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd135060135124%_))
                                     (let ((_%e135063135129%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd135060135124%_))))
                                       (let ((_%lp-tl135065135134%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e135063135129%_)))
                                             (_%lp-hd135064135132%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e135063135129%_))))
                                         (let ((__tmp145953
                                                (cons _%lp-hd135064135132%_
                                                      _%rand135066135126%_)))
                                           (declare (not safe))
                                           (_%loop135062135121%_
                                            _%lp-tl135065135134%_
                                            __tmp145953))))
                                     (let ((_%rand135067135137%_
                                            (reverse _%rand135066135126%_)))
                                       (let ((_%L135140%_ _%rand135067135137%_)
                                             (_%L135141%_ _%hd135057135111%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L135141%_
                                                'values))
                                             (_%__kont145566145567%_
                                              _%L135140%_
                                              _%L135141%_)
                                             (_%__kont145570145571%_))))))))
                       (let ()
                         (declare (not safe))
                         (_%loop135062135121%_ _%target135059135116%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx145564145565%_))
                  (let ((_%e135049135084%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx145564145565%_))))
                    (let ((_%tl135047135089%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e135049135084%_)))
                          (_%hd135048135087%_
                           (let ()
                             (declare (not safe))
                             (##car _%e135049135084%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl135047135089%_))
                          (let ((_%e135052135092%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl135047135089%_))))
                            (let ((_%tl135050135097%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e135052135092%_)))
                                  (_%hd135051135095%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e135052135092%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd135051135095%_))
                                  (let ((_%e135055135100%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd135051135095%_))))
                                    (let ((_%tl135053135105%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e135055135100%_)))
                                          (_%hd135054135103%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e135055135100%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd135054135103%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd135054135103%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl135053135105%_))
                                                  (let ((_%e135058135108%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl135053135105%_))))
                                                    (let ((_%tl135056135113%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e135058135108%_)))
                                                          (_%hd135057135111%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e135058135108%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl135056135113%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl135050135097%_))
                      (let ((_%__splice145568145569%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl135050135097%_
                                '0))))
                        (let ((_%tl135061135118%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145568145569%_ '1)))
                              (_%target135059135116%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145568145569%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl135061135118%_))
                              (_%__match145609145610%_
                               _%e135049135084%_
                               _%hd135048135087%_
                               _%tl135047135089%_
                               _%e135052135092%_
                               _%hd135051135095%_
                               _%tl135050135097%_
                               _%e135055135100%_
                               _%hd135054135103%_
                               _%tl135053135105%_
                               _%e135058135108%_
                               _%hd135057135111%_
                               _%tl135056135113%_
                               _%__splice145568145569%_
                               _%target135059135116%_
                               _%tl135061135118%_)
                              (_%__kont145570145571%_))))
                      (_%__kont145570145571%_))
                  (_%__kont145570145571%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145570145571%_))
                                              (_%__kont145570145571%_))
                                          (_%__kont145570145571%_))))
                                  (_%__kont145570145571%_))))
                          (_%__kont145570145571%_))))
                  (_%__kont145570145571%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self134942%_ _%stx134943%_)
        (let* ((_%g134945134966%_
                (lambda (_%g134946134963%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134946134963%_))))
               (_%g134944135036%_
                (lambda (_%g134946134969%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134946134969%_))
                      (let ((_%e134952134971%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134946134969%_))))
                        (let ((_%hd134951134974%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134952134971%_)))
                              (_%tl134950134976%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134952134971%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134950134976%_))
                              (let ((_%e134955134979%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134950134976%_))))
                                (let ((_%hd134954134982%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134955134979%_)))
                                      (_%tl134953134984%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134955134979%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134953134984%_))
                                      (let ((_%e134958134987%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134953134984%_))))
                                        (let ((_%hd134957134990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134958134987%_)))
                                              (_%tl134956134992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134958134987%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl134956134992%_))
                                              (let ((_%e134961134995%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl134956134992%_))))
                                                (let ((_%hd134960134998%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e134961134995%_)))
                                                      (_%tl134959135000%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e134961134995%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl134959135000%_))
                                                      ((lambda (_%L135003%_
                                                                _%L135004%_
                                                                _%L135005%_)
                                                         (let ((_%c1135022135024%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self134942%_ _%L135004%_))))
                   (if _%c1135022135024%_
                       (let* ((_%c1135027%_ _%c1135022135024%_)
                              (_%c2135028135030%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self134942%_
                                  _%L135003%_))))
                         (if _%c2135028135030%_
                             (let ((_%c2135033%_ _%c2135028135030%_))
                               (if (fx= _%c1135027%_ _%c2135033%_)
                                   _%c1135027%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd134960134998%_
               _%hd134957134990%_
               _%hd134954134982%_)
              (let ()
                (declare (not safe))
                (_%g134945134966%_ _%g134946134969%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g134945134966%_
                                                 _%g134946134969%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g134945134966%_
                                         _%g134946134969%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134945134966%_ _%g134946134969%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134945134966%_ _%g134946134969%_))))))
          (declare (not safe))
          (_%g134944135036%_ _%stx134943%_))))))
