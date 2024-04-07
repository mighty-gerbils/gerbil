(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1712526091)
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
        (letrec ((_%hash-e144245%_
                  (lambda (_%id144247%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id144247%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e144245%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp145638 (list gxc#::void::t))
            (__tmp145637 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp145638
         '()
         __tmp145637
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args144241%_
        (apply make-instance gxc#::collect-bindings::t _%$args144241%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp145639
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
        (__make-promise __tmp145639)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx144233%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self144236%_
                (let ((__obj145613
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj145613))
               (__tmp145640
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144236%_ _%stx144233%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145640
           gxc#current-compile-method
           _%self144236%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp145642 (list gxc#::void::t))
            (__tmp145641 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp145642
         '(modules)
         __tmp145641
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args144230%_
        (apply make-instance gxc#::lift-modules::t _%$args144230%_)))
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
      (let ((__tmp145643
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
        (__make-promise __tmp145643)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords144204%_ _%modules144201144205%_ _%stx144207%_)
        (let ((_%modules144210%_
               (if (eq? _%modules144201144205%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules144201144205%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self144212%_
                  (let ((__obj145615
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145615
                       _%modules144210%_
                       '1
                       '#f
                       '#f))
                    __obj145615))
                 (__tmp145644
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144212%_ _%stx144207%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145644
             gxc#current-compile-method
             _%self144212%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords144219%_ . _%args144220%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords144219%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144219%_
                  'modules:
                  absent-value))
               _%args144220%_)))
    (define gxc#apply-lift-modules
      (lambda _%args144202144226%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args144202144226%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp145646 (list)) (__tmp145645 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp145646
         '()
         __tmp145645
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args144197%_
        (apply make-instance gxc#::find-runtime-code::t _%$args144197%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp145647
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
        (__make-promise __tmp145647)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx144189%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self144192%_
                (let ((__obj145617
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj145617))
               (__tmp145648
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144192%_ _%stx144189%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145648
           gxc#current-compile-method
           _%self144192%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp145650 (list gxc#::false::t))
            (__tmp145649 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp145650
         '()
         __tmp145649
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args144186%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args144186%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp145651
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
        (__make-promise __tmp145651)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx144178%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self144181%_
                (let ((__obj145619
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj145619))
               (__tmp145652
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144181%_ _%stx144178%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145652
           gxc#current-compile-method
           _%self144181%_))))
    (define gxc#::count-values::t
      (let ((__tmp145654 (list gxc#::false-expression::t))
            (__tmp145653 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp145654
         '()
         __tmp145653
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args144175%_
        (apply make-instance gxc#::count-values::t _%$args144175%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp145655
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
        (__make-promise __tmp145655)))
    (define gxc#apply-count-values
      (lambda (_%stx144167%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self144170%_
                (let ((__obj145621
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj145621))
               (__tmp145656
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144170%_ _%stx144167%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145656
           gxc#current-compile-method
           _%self144170%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp145657 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp145657
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args144164%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args144164%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp145658
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
        (__make-promise __tmp145658)))
    (define gxc#::generate-loader::t
      (let ((__tmp145660 (list gxc#::generate-runtime-empty::t))
            (__tmp145659 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp145660
         '()
         __tmp145659
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args144160%_
        (apply make-instance gxc#::generate-loader::t _%$args144160%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp145661
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
        (__make-promise __tmp145661)))
    (define gxc#apply-generate-loader
      (lambda (_%stx144152%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self144155%_
                (let ((__obj145624
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj145624))
               (__tmp145662
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144155%_ _%stx144152%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145662
           gxc#current-compile-method
           _%self144155%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp145663 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp145663
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args144149%_
        (apply make-instance gxc#::generate-runtime::t _%$args144149%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp145664
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
        (__make-promise __tmp145664)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx144141%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self144144%_
                (let ((__obj145626
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj145626))
               (__tmp145665
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144144%_ _%stx144141%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145665
           gxc#current-compile-method
           _%self144144%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp145667 (list gxc#::generate-runtime::t))
            (__tmp145666 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp145667
         '()
         __tmp145666
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args144138%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args144138%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp145668
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
        (__make-promise __tmp145668)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx144130%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self144133%_
                (let ((__obj145628
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj145628))
               (__tmp145669
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144133%_ _%stx144130%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145669
           gxc#current-compile-method
           _%self144133%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp145670 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp145670
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args144127%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args144127%_)))
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
      (let ((__tmp145671
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
        (__make-promise __tmp145671)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords144101%_ _%table144098144102%_ _%stx144104%_)
        (let ((_%table144107%_
               (if (eq? _%table144098144102%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table144098144102%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self144109%_
                  (let ((__obj145630
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145630
                       _%table144107%_
                       '1
                       '#f
                       '#f))
                    __obj145630))
                 (__tmp145672
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144109%_ _%stx144104%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145672
             gxc#current-compile-method
             _%self144109%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords144116%_ . _%args144117%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords144116%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144116%_
                  'table:
                  absent-value))
               _%args144117%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args144099144123%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args144099144123%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp145674 (list gxc#::void-expression::t))
            (__tmp145673 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp145674
         '(state)
         __tmp145673
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args144094%_
        (apply make-instance gxc#::generate-meta::t _%$args144094%_)))
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
      (let ((__tmp145675
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
        (__make-promise __tmp145675)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords144068%_ _%state144065144069%_ _%stx144071%_)
        (let ((_%state144074%_
               (if (eq? _%state144065144069%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state144065144069%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self144076%_
                  (let ((__obj145632
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145632
                       _%state144074%_
                       '1
                       '#f
                       '#f))
                    __obj145632))
                 (__tmp145676
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144076%_ _%stx144071%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145676
             gxc#current-compile-method
             _%self144076%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords144083%_ . _%args144084%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords144083%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144083%_
                  'state:
                  absent-value))
               _%args144084%_)))
    (define gxc#apply-generate-meta
      (lambda _%args144066144090%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args144066144090%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp145678 (list)) (__tmp145677 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp145678
         '(state)
         __tmp145677
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args144061%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args144061%_)))
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
      (let ((__tmp145679
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
        (__make-promise __tmp145679)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords144035%_ _%state144032144036%_ _%stx144038%_)
        (let ((_%state144041%_
               (if (eq? _%state144032144036%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state144032144036%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self144043%_
                  (let ((__obj145634
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145634
                       _%state144041%_
                       '1
                       '#f
                       '#f))
                    __obj145634))
                 (__tmp145680
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144043%_ _%stx144038%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145680
             gxc#current-compile-method
             _%self144043%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords144050%_ . _%args144051%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords144050%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144050%_
                  'state:
                  absent-value))
               _%args144051%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args144033144057%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args144033144057%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self143961%_ _%stx143962%_)
        (let* ((_%g143964143981%_
                (lambda (_%g143965143978%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143965143978%_))))
               (_%g143963144028%_
                (lambda (_%g143965143984%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143965143984%_))
                      (let ((_%e143970143986%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143965143984%_))))
                        (let ((_%hd143969143989%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143970143986%_)))
                              (_%tl143968143991%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143970143986%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143968143991%_))
                              (let ((_%e143973143994%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143968143991%_))))
                                (let ((_%hd143972143997%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143973143994%_)))
                                      (_%tl143971143999%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143973143994%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143971143999%_))
                                      (let ((_%e143976144002%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143971143999%_))))
                                        (let ((_%hd143975144005%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143976144002%_)))
                                              (_%tl143974144007%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143976144002%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143974144007%_))
                                              ((lambda (_%L144010%_
                                                        _%L144011%_)
                                                 (let ((__tmp145681
                                                        (lambda (_%bind144026%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind144026%_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _%bind144026%_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp145681
                                                    _%L144011%_)))
                                               _%hd143975144005%_
                                               _%hd143972143997%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g143964143981%_
                                                 _%g143965143984%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143964143981%_
                                         _%g143965143984%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143964143981%_ _%g143965143984%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143964143981%_ _%g143965143984%_))))))
          (declare (not safe))
          (_%g143963144028%_ _%stx143962%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self143893%_ _%stx143894%_)
        (let* ((_%g143896143913%_
                (lambda (_%g143897143910%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143897143910%_))))
               (_%g143895143958%_
                (lambda (_%g143897143916%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143897143916%_))
                      (let ((_%e143902143918%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143897143916%_))))
                        (let ((_%hd143901143921%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143902143918%_)))
                              (_%tl143900143923%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143902143918%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143900143923%_))
                              (let ((_%e143905143926%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143900143923%_))))
                                (let ((_%hd143904143929%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143905143926%_)))
                                      (_%tl143903143931%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143905143926%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143903143931%_))
                                      (let ((_%e143908143934%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143903143931%_))))
                                        (let ((_%hd143907143937%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143908143934%_)))
                                              (_%tl143906143939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143908143934%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143906143939%_))
                                              ((lambda (_%L143942%_
                                                        _%L143943%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _%L143943%_
                                                    '#t)))
                                               _%hd143907143937%_
                                               _%hd143904143929%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g143896143913%_
                                                 _%g143897143916%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143896143913%_
                                         _%g143897143916%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143896143913%_ _%g143897143916%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143896143913%_ _%g143897143916%_))))))
          (declare (not safe))
          (_%g143895143958%_ _%stx143894%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self143835%_ _%stx143836%_)
        (let* ((_%g143838143852%_
                (lambda (_%g143839143849%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143839143849%_))))
               (_%g143837143890%_
                (lambda (_%g143839143855%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143839143855%_))
                      (let ((_%e143844143857%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143839143855%_))))
                        (let ((_%hd143843143860%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143844143857%_)))
                              (_%tl143842143862%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143844143857%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143842143862%_))
                              (let ((_%e143847143865%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143842143862%_))))
                                (let ((_%hd143846143868%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143847143865%_)))
                                      (_%tl143845143870%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143847143865%_))))
                                  ((lambda (_%L143873%_ _%L143874%_)
                                     (let ((_%ctx143887%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L143874%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self143835%_
                                           'modules))
                                        (cons _%ctx143887%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self143835%_
                                                        'modules)))))
                                       (let ((__tmp145682
                                              (lambda ()
                                                (let ((__tmp145683
                                                       (##structure-ref
                                                        _%ctx143887%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143835%_
                                                   __tmp145683)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp145682
                                          gx#current-expander-context
                                          _%ctx143887%_))))
                                   _%tl143845143870%_
                                   _%hd143846143868%_)))
                              (let ()
                                (declare (not safe))
                                (_%g143838143852%_ _%g143839143855%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143838143852%_ _%g143839143855%_))))))
          (declare (not safe))
          (_%g143837143890%_ _%stx143836%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls143788143790%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls143788143790%_
              (let ((_%decls143793%_ _%decls143788143790%_))
                (let _%lp143795%_ ((_%rest143797%_ _%decls143793%_))
                  (let* ((_%rest143798143806%_ _%rest143797%_)
                         (_%else143800143814%_ (lambda () '#f))
                         (_%K143802143823%_
                          (lambda (_%decls143817%_ _%decl143818%_)
                            (if (equal? _%decl143818%_ '(not safe))
                                (let () '#t)
                                (if (equal? _%decl143818%_ '(safe))
                                    (let () '#f)
                                    (let ()
                                      (declare (not safe))
                                      (_%lp143795%_ _%decls143817%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest143798143806%_))
                        (let ((_%hd143803143826%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest143798143806%_)))
                              (_%tl143804143828%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest143798143806%_))))
                          (let* ((_%decl143831%_ _%hd143803143826%_)
                                 (_%decls143833%_ _%tl143804143828%_))
                            (declare (not safe))
                            (_%K143802143823%_
                             _%decls143833%_
                             _%decl143831%_)))
                        (let ()
                          (declare (not safe))
                          (_%else143800143814%_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id143782%_ _%syntax?143783%_)
        (let ((_%eid143785%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id143782%_))
                '1
                gx#binding::t
                '#f))
              (_%ht143786%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid143785%_))
              '#!void
              (let ((__tmp145684
                     (let ((__tmp145685
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid143785%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp145685 _%syntax?143783%_))))
                (declare (not safe))
                (hash-put! _%ht143786%_ _%eid143785%_ __tmp145684))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id143780%_)
        (let ((__tmp145686
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _%id143780%_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp145686))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key143735%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key143735%_))
            (let () _%key143735%_)
            (if (uninterned-symbol? _%key143735%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key143735%_))
                (let ()
                  (let* ((_%key143739143746%_ _%key143735%_)
                         (_%E143741143750%_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _%key143739143746%_
                                     '([eid . mark])))
                            '#!void))
                         (_%K143742143768%_
                          (lambda (_%mark143753%_ _%eid143754%_)
                            (let ((_%$e143756%_
                                   (##structure-ref
                                    _%mark143753%_
                                    '1
                                    gx#expander-mark::t
                                    '#f)))
                              (if _%$e143756%_
                                  ((lambda (_%ht143759%_)
                                     (let ((_%$e143761%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-get
                                               _%ht143759%_
                                               _%eid143754%_))))
                                       (if _%$e143761%_
                                           ((lambda (_%id143764%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (interned-symbol?
                                                     _%id143764%_))
                                                  _%id143764%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _%id143764%_))))
                                            _%$e143761%_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%eid143754%_)))))
                                   _%$e143756%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-identifier-key
                                     _%eid143754%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%key143739143746%_))
                        (let ((_%hd143743143771%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%key143739143746%_)))
                              (_%tl143744143773%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%key143739143746%_))))
                          (let* ((_%eid143776%_ _%hd143743143771%_)
                                 (_%mark143778%_ _%tl143744143773%_))
                            (declare (not safe))
                            (_%K143742143768%_ _%mark143778%_ _%eid143776%_)))
                        (let ()
                          (declare (not safe))
                          (_%E143741143750%_)))))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self143732%_ _%stx143733%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self143579%_ _%stx143580%_)
        (letrec ((_%simplify143582%_
                  (lambda (_%body143630%_)
                    (let _%lp143632%_ ((_%rest143634%_ _%body143630%_)
                                       (_%r143635%_ '()))
                      (let* ((_%rest143636143644%_ _%rest143634%_)
                             (_%else143638143652%_
                              (lambda () (reverse _%r143635%_)))
                             (_%K143640143720%_
                              (lambda (_%rest143655%_ _%hd143656%_)
                                (let* ((_%hd143657143673%_ _%hd143656%_)
                                       (_%else143661143681%_
                                        (lambda ()
                                          (let ((__tmp145687
                                                 (cons _%hd143656%_
                                                       _%r143635%_)))
                                            (declare (not safe))
                                            (_%lp143632%_
                                             _%rest143655%_
                                             __tmp145687)))))
                                  (let ((_%K143669143710%_
                                         (lambda (_%exprs143708%_)
                                           (let ((__tmp145688
                                                  (let ()
                                                    (declare (not safe))
                                                    (__foldr1
                                                     cons
                                                     _%rest143655%_
                                                     _%exprs143708%_))))
                                             (declare (not safe))
                                             (_%lp143632%_
                                              __tmp145688
                                              _%r143635%_))))
                                        (_%K143664143694%_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _%rest143655%_))
                                               (let ((__tmp145689
                                                      (cons _%hd143656%_
                                                            _%r143635%_)))
                                                 (declare (not safe))
                                                 (_%lp143632%_
                                                  _%rest143655%_
                                                  __tmp145689))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp143632%_
                                                  _%rest143655%_
                                                  _%r143635%_)))))
                                        (_%K143663143686%_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _%rest143655%_))
                                               (let ((__tmp145690
                                                      (cons _%hd143656%_
                                                            _%r143635%_)))
                                                 (declare (not safe))
                                                 (_%lp143632%_
                                                  _%rest143655%_
                                                  __tmp145690))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp143632%_
                                                  _%rest143655%_
                                                  _%r143635%_))))))
                                    (let ((_%try-match143660143689%_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _%hd143657143673%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%K143663143686%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%else143661143681%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd143657143673%_))
                                          (let ((_%tl143671143715%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd143657143673%_)))
                                                (_%hd143670143713%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd143657143673%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd143670143713%_
                                                         'begin))
                                                (let ((_%exprs143718%_
                                                       _%tl143671143715%_))
                                                  (declare (not safe))
                                                  (_%K143669143710%_
                                                   _%exprs143718%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd143670143713%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl143671143715%_))
                                                        (let ((_%tl143668143702%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl143671143715%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl143668143702%_))
                      (let () (declare (not safe)) (_%K143664143694%_))
                      (let ()
                        (declare (not safe))
                        (_%try-match143660143689%_))))
                (let () (declare (not safe)) (_%try-match143660143689%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%try-match143660143689%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%try-match143660143689%_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest143636143644%_))
                            (let ((_%hd143641143723%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest143636143644%_)))
                                  (_%tl143642143725%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest143636143644%_))))
                              (let* ((_%hd143728%_ _%hd143641143723%_)
                                     (_%rest143730%_ _%tl143642143725%_))
                                (declare (not safe))
                                (_%K143640143720%_
                                 _%rest143730%_
                                 _%hd143728%_)))
                            (let ()
                              (declare (not safe))
                              (_%else143638143652%_))))))))
          (let* ((_%g143584143594%_
                  (lambda (_%g143585143591%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143585143591%_))))
                 (_%g143583143627%_
                  (lambda (_%g143585143597%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143585143597%_))
                        (let ((_%e143589143599%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143585143597%_))))
                          (let ((_%hd143588143602%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143589143599%_)))
                                (_%tl143587143604%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143589143599%_))))
                            ((lambda (_%L143607%_)
                               (let* ((_%body143622%_
                                       (map (lambda (_%g143617143619%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self143579%_
                                                 _%g143617143619%_)))
                                            _%L143607%_))
                                      (_%body143624%_
                                       (let ()
                                         (declare (not safe))
                                         (_%simplify143582%_ _%body143622%_))))
                                 (if (let ((__tmp145691
                                            (length _%body143624%_)))
                                       (declare (not safe))
                                       (##fx= __tmp145691 '1))
                                     (car _%body143624%_)
                                     (cons 'begin _%body143624%_))))
                             _%tl143587143604%_)))
                        (let ()
                          (declare (not safe))
                          (_%g143584143594%_ _%g143585143597%_))))))
            (declare (not safe))
            (_%g143583143627%_ _%stx143580%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self143540%_ _%stx143541%_)
        (let* ((_%g143543143553%_
                (lambda (_%g143544143550%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143544143550%_))))
               (_%g143542143576%_
                (lambda (_%g143544143556%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143544143556%_))
                      (let ((_%e143548143558%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143544143556%_))))
                        (let ((_%hd143547143561%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143548143558%_)))
                              (_%tl143546143563%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143548143558%_))))
                          ((lambda (_%L143566%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L143566%_))))
                           _%tl143546143563%_)))
                      (let ()
                        (declare (not safe))
                        (_%g143543143553%_ _%g143544143556%_))))))
          (declare (not safe))
          (_%g143542143576%_ _%stx143541%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self143304%_ _%stx143305%_)
        (let* ((_%__stx144270144271%_ _%stx143305%_)
               (_%g143309143361%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144270144271%_)))))
          (let ((_%__kont144272144273%_
                 (lambda (_%L143522%_ _%L143523%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self143304%_ _%L143522%_))))
                (_%__kont144274144275%_
                 (lambda (_%L143470%_ _%L143471%_ _%L143472%_)
                   (if (let ((__tmp145692
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L143472%_))))
                         (declare (not safe))
                         (##memq __tmp145692 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self143304%_ _%L143470%_)))))
                (_%__kont144278144279%_
                 (lambda (_%L143390%_ _%L143391%_)
                   (let ((_%decls143406%_ (map gx#syntax->datum _%L143391%_)))
                     (let ((__tmp145695
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls143406%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143304%_
                                                   _%L143390%_))
                                                '())))))
                           (__tmp145693
                            (let ((__tmp145694
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp145694 _%decls143406%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp145695
                        gxc#current-compile-decls
                        __tmp145693))))))
            (let* ((_%__match144325144326%_
                    (lambda (_%e143327143414%_
                             _%hd143326143417%_
                             _%tl143325143419%_
                             _%e143330143422%_
                             _%hd143329143425%_
                             _%tl143328143427%_
                             _%e143333143430%_
                             _%hd143332143433%_
                             _%tl143331143435%_
                             _%__splice144276144277%_
                             _%target143334143438%_
                             _%tl143336143440%_)
                      (letrec ((_%loop143337143443%_
                                (lambda (_%hd143335143446%_
                                         _%param143341143448%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd143335143446%_))
                                      (let ((_%e143338143451%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd143335143446%_))))
                                        (let ((_%lp-tl143340143456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143338143451%_)))
                                              (_%lp-hd143339143454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143338143451%_))))
                                          (let ((__tmp145696
                                                 (cons _%lp-hd143339143454%_
                                                       _%param143341143448%_)))
                                            (declare (not safe))
                                            (_%loop143337143443%_
                                             _%lp-tl143340143456%_
                                             __tmp145696))))
                                      (let ((_%param143342143459%_
                                             (reverse _%param143341143448%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143328143427%_))
                                            (let ((_%e143345143462%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143328143427%_))))
                                              (let ((_%tl143343143467%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143345143462%_)))
                                                    (_%hd143344143465%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143345143462%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl143343143467%_))
                                                    (let ((_%L143470%_
                                                           _%hd143344143465%_)
                                                          (_%L143471%_
                                                           _%param143342143459%_)
                                                          (_%L143472%_
                                                           _%hd143332143433%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L143472%_))
                       (let ((__tmp145697
                              (let ((__tmp145698
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L143472%_))))
                                (declare (not safe))
                                (##memq __tmp145698 gxc#gambit-annotations))))
                         (declare (not safe))
                         (not __tmp145697)))
                  (_%__kont144274144275%_ _%L143470%_ _%L143471%_ _%L143472%_)
                  (_%__kont144278144279%_
                   _%hd143344143465%_
                   _%hd143329143425%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g143309143361%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g143309143361%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop143337143443%_ _%target143334143438%_ '())))))
                   (_%__match144299144300%_
                    (lambda (_%e143315143498%_
                             _%hd143314143501%_
                             _%tl143313143503%_
                             _%e143318143506%_
                             _%hd143317143509%_
                             _%tl143316143511%_
                             _%e143321143514%_
                             _%hd143320143517%_
                             _%tl143319143519%_)
                      (let ((_%L143522%_ _%hd143320143517%_)
                            (_%L143523%_ _%hd143317143509%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L143523%_))
                            (_%__kont144272144273%_ _%L143522%_ _%L143523%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd143317143509%_))
                                (let ((_%e143333143430%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd143317143509%_))))
                                  (let ((_%tl143331143435%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143333143430%_)))
                                        (_%hd143332143433%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143333143430%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl143331143435%_))
                                        (let ((_%__splice144276144277%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl143331143435%_
                                                  '0))))
                                          (let ((_%tl143336143440%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice144276144277%_
                                                    '1)))
                                                (_%target143334143438%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice144276144277%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143336143440%_))
                                                (_%__match144325144326%_
                                                 _%e143315143498%_
                                                 _%hd143314143501%_
                                                 _%tl143313143503%_
                                                 _%e143318143506%_
                                                 _%hd143317143509%_
                                                 _%tl143316143511%_
                                                 _%e143333143430%_
                                                 _%hd143332143433%_
                                                 _%tl143331143435%_
                                                 _%__splice144276144277%_
                                                 _%target143334143438%_
                                                 _%tl143336143440%_)
                                                (_%__kont144278144279%_
                                                 _%hd143320143517%_
                                                 _%hd143317143509%_))))
                                        (_%__kont144278144279%_
                                         _%hd143320143517%_
                                         _%hd143317143509%_))))
                                (_%__kont144278144279%_
                                 _%hd143320143517%_
                                 _%hd143317143509%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144270144271%_))
                  (let ((_%e143315143498%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144270144271%_))))
                    (let ((_%tl143313143503%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143315143498%_)))
                          (_%hd143314143501%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143315143498%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143313143503%_))
                          (let ((_%e143318143506%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143313143503%_))))
                            (let ((_%tl143316143511%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143318143506%_)))
                                  (_%hd143317143509%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143318143506%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl143316143511%_))
                                  (let ((_%e143321143514%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl143316143511%_))))
                                    (let ((_%tl143319143519%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143321143514%_)))
                                          (_%hd143320143517%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143321143514%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl143319143519%_))
                                          (_%__match144299144300%_
                                           _%e143315143498%_
                                           _%hd143314143501%_
                                           _%tl143313143503%_
                                           _%e143318143506%_
                                           _%hd143317143509%_
                                           _%tl143316143511%_
                                           _%e143321143514%_
                                           _%hd143320143517%_
                                           _%tl143319143519%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd143317143509%_))
                                              (let ((_%e143333143430%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd143317143509%_))))
                                                (let ((_%tl143331143435%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143333143430%_)))
                                                      (_%hd143332143433%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143333143430%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl143331143435%_))
                                                      (let ((_%__splice144276144277%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl143331143435%_ '0))))
                (let ((_%tl143336143440%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice144276144277%_ '1)))
                      (_%target143334143438%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice144276144277%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl143336143440%_))
                      (_%__match144325144326%_
                       _%e143315143498%_
                       _%hd143314143501%_
                       _%tl143313143503%_
                       _%e143318143506%_
                       _%hd143317143509%_
                       _%tl143316143511%_
                       _%e143333143430%_
                       _%hd143332143433%_
                       _%tl143331143435%_
                       _%__splice144276144277%_
                       _%target143334143438%_
                       _%tl143336143440%_)
                      (let () (declare (not safe)) (_%g143309143361%_)))))
              (let () (declare (not safe)) (_%g143309143361%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g143309143361%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd143317143509%_))
                                      (let ((_%e143333143430%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd143317143509%_))))
                                        (let ((_%tl143331143435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143333143430%_)))
                                              (_%hd143332143433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143333143430%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl143331143435%_))
                                              (let ((_%__splice144276144277%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl143331143435%_
                                                        '0))))
                                                (let ((_%tl143336143440%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice144276144277%_
                                                          '1)))
                                                      (_%target143334143438%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice144276144277%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143336143440%_))
                                                      (_%__match144325144326%_
                                                       _%e143315143498%_
                                                       _%hd143314143501%_
                                                       _%tl143313143503%_
                                                       _%e143318143506%_
                                                       _%hd143317143509%_
                                                       _%tl143316143511%_
                                                       _%e143333143430%_
                                                       _%hd143332143433%_
                                                       _%tl143331143435%_
                                                       _%__splice144276144277%_
                                                       _%target143334143438%_
                                                       _%tl143336143440%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g143309143361%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g143309143361%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143309143361%_))))))
                          (let () (declare (not safe)) (_%g143309143361%_)))))
                  (let () (declare (not safe)) (_%g143309143361%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self143263%_ _%stx143264%_)
        (let* ((_%g143266143276%_
                (lambda (_%g143267143273%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143267143273%_))))
               (_%g143265143301%_
                (lambda (_%g143267143279%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143267143279%_))
                      (let ((_%e143271143281%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143267143279%_))))
                        (let ((_%hd143270143284%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143271143281%_)))
                              (_%tl143269143286%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143271143281%_))))
                          ((lambda (_%L143289%_)
                             (let ((_%decls143299%_
                                    (map gx#syntax->datum _%L143289%_)))
                               (let ((__tmp145699
                                      (let ((__tmp145700
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp145700
                                         _%decls143299%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp145699))
                               (cons 'declare _%decls143299%_)))
                           _%tl143269143286%_)))
                      (let ()
                        (declare (not safe))
                        (_%g143266143276%_ _%g143267143279%_))))))
          (declare (not safe))
          (_%g143265143301%_ _%stx143264%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self143009%_ _%stx143010%_)
        (let* ((_%g143012143029%_
                (lambda (_%g143013143026%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143013143026%_))))
               (_%g143011143260%_
                (lambda (_%g143013143032%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143013143032%_))
                      (let ((_%e143018143034%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143013143032%_))))
                        (let ((_%hd143017143037%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143018143034%_)))
                              (_%tl143016143039%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143018143034%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143016143039%_))
                              (let ((_%e143021143042%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143016143039%_))))
                                (let ((_%hd143020143045%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143021143042%_)))
                                      (_%tl143019143047%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143021143042%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143019143047%_))
                                      (let ((_%e143024143050%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143019143047%_))))
                                        (let ((_%hd143023143053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143024143050%_)))
                                              (_%tl143022143055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143024143050%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143022143055%_))
                                              ((lambda (_%L143058%_
                                                        _%L143059%_)
                                                 (let* ((_%__stx144378144379%_
                                                         _%L143059%_)
                                                        (_%g143076143090%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx144378144379%_)))))
                                                   (let ((_%__kont144380144381%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self143009%_
                                                               _%L143058%_))))
                                                         (_%__kont144382144383%_
                                                          (lambda (_%L143222%_)
                                                            (let ((_%eid143231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L143222%_))))
                      (let ((_%lambda-expr143232143234%_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression
                                _%L143058%_))))
                        (if _%lambda-expr143232143234%_
                            (let* ((_%lambda-expr143237%_
                                    _%lambda-expr143232143234%_)
                                   (__tmp145701
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp145701
                               _%lambda-expr143237%_
                               _%eid143231%_))
                            '#f))
                      (cons 'define
                            (cons _%eid143231%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self143009%_
                                           _%L143058%_))
                                        '()))))))
                 (_%__kont144384144385%_
                  (lambda ()
                    (let* ((_%tmp143097%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body143206%_
                            (let _%lp143099%_ ((_%rest143101%_ _%L143059%_)
                                               (_%k143102%_ '0)
                                               (_%r143103%_ '()))
                              (let* ((_%__stx144348144349%_ _%rest143101%_)
                                     (_%g143108143125%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx144348144349%_)))))
                                (let ((_%__kont144350144351%_
                                       (lambda (_%L143193%_)
                                         (let ((__tmp145702
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%k143102%_ '1))))
                                           (declare (not safe))
                                           (_%lp143099%_
                                            _%L143193%_
                                            __tmp145702
                                            _%r143103%_))))
                                      (_%__kont144352144353%_
                                       (lambda (_%L143166%_ _%L143167%_)
                                         (let ((__tmp145704
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%k143102%_ '1)))
                                               (__tmp145703
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L143167%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-values-ref
                                   _%tmp143097%_
                                   _%k143102%_
                                   _%L143166%_))
                                '())))
              _%r143103%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%lp143099%_
                                            _%L143166%_
                                            __tmp145704
                                            __tmp145703))))
                                      (_%__kont144354144355%_
                                       (lambda (_%L143137%_)
                                         (let ((__tmp145705
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L143137%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-values->list
                                   _%tmp143097%_
                                   _%k143102%_))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp145705
                                            _%r143103%_))))
                                      (_%__kont144356144357%_
                                       (lambda () (reverse _%r143103%_))))
                                  (let ((_%g143106143153%_
                                         (lambda ()
                                           (let ((_%L143137%_
                                                  _%__stx144348144349%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L143137%_))
                                                 (_%__kont144354144355%_
                                                  _%L143137%_)
                                                 (_%__kont144356144357%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx144348144349%_))
                                        (let ((_%e143113143182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx144348144349%_))))
                                          (let ((_%tl143111143187%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143113143182%_)))
                                                (_%hd143112143185%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143113143182%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd143112143185%_))
                                                (let ((_%e143114143190%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143112143185%_))))
                                                  (if (equal? _%e143114143190%_
                                                              '#f)
                                                      (_%__kont144350144351%_
                                                       _%tl143111143187%_)
                                                      (_%__kont144352144353%_
                                                       _%tl143111143187%_
                                                       _%hd143112143185%_)))
                                                (_%__kont144352144353%_
                                                 _%tl143111143187%_
                                                 _%hd143112143185%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g143106143153%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp143097%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self143009%_
                                                       _%L143058%_))
                                                    '())))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-check-values
                                           _%tmp143097%_
                                           _%L143059%_
                                           _%L143058%_))
                                        _%body143206%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx144378144379%_))
                                                         (let ((_%e143080143244%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx144378144379%_))))
                   (let ((_%tl143078143249%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e143080143244%_)))
                         (_%hd143079143247%_
                          (let ()
                            (declare (not safe))
                            (##car _%e143080143244%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd143079143247%_))
                         (let ((_%e143081143252%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd143079143247%_))))
                           (if (equal? _%e143081143252%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl143078143249%_))
                                   (_%__kont144380144381%_)
                                   (_%__kont144384144385%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl143078143249%_))
                                   (_%__kont144382144383%_ _%hd143079143247%_)
                                   (_%__kont144384144385%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143078143249%_))
                             (_%__kont144382144383%_ _%hd143079143247%_)
                             (_%__kont144384144385%_)))))
                 (_%__kont144384144385%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd143023143053%_
                                               _%hd143020143045%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g143012143029%_
                                                 _%g143013143032%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143012143029%_
                                         _%g143013143032%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143012143029%_ _%g143013143032%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143012143029%_ _%g143013143032%_))))))
          (declare (not safe))
          (_%g143011143260%_ _%stx143010%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals142984%_ _%hd142985%_ _%expr142986%_)
        (let ((_%$e142988%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _%expr142986%_))))
          (if _%$e142988%_
              ((lambda (_%count142991%_)
                 (let ((_%len142993%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd142985%_)))
                       (_%cmp142994%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd142985%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len142993%_ '0))
                           (_%cmp142994%_ _%count142991%_ _%len142993%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr142986%_
                          _%hd142985%_)))))
               _%$e142988%_)
              (let ()
                (let* ((_%len143000%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd142985%_)))
                       (_%cmp143002%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd142985%_))
                            '##fx=
                            '##fx>=))
                       (_%errmsg143004%_
                        (let ((__tmp145707
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-list? _%hd142985%_))
                                   '"Context expects "
                                   '"Context expects at least "))
                              (__tmp145706 (number->string _%len143000%_)))
                          (declare (not safe))
                          (##string-append
                           __tmp145707
                           __tmp145706
                           '" values")))
                       (_%count143006%_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-temporary__0))))
                  (if (and (let ((__tmp145708
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-list? _%hd142985%_))))
                             (declare (not safe))
                             (not __tmp145708))
                           (let ()
                             (declare (not safe))
                             (##fx= _%len143000%_ '0)))
                      '#!void
                      (cons 'let
                            (cons (cons (cons _%count143006%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-values-count
                                                       _%vals142984%_))
                                                    '()))
                                        '())
                                  (cons (cons 'if
                                              (cons (cons 'not
                                                          (cons (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#current-compile-decls-unsafe?))
                            (cons _%cmp143002%_
                                  (cons _%count143006%_
                                        (cons _%len143000%_ '())))
                            (cons 'let
                                  (cons '()
                                        (cons '(declare (not safe))
                                              (cons (cons _%cmp143002%_
                                                          (cons _%count143006%_
                                                                (cons _%len143000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'error
                                                                (cons _%errmsg143004%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%count143006%_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var142979%_)
        (letrec ((_%generate-inline142981%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var142979%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var142979%_ '()))
                                      (cons '1 '())))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_%generate-inline142981%_))
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (let ()
                                        (declare (not safe))
                                        (_%generate-inline142981%_))
                                      '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var142972%_ _%i142973%_ _%rest142974%_)
        (letrec ((_%generate-inline142976%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i142973%_ '0))
                             (let ((__tmp145709
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%rest142974%_))))
                               (declare (not safe))
                               (not __tmp145709)))
                        (cons 'if
                              (cons (cons '##values? (cons _%var142972%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var142972%_
                                                      (cons '0 '())))
                                          (cons _%var142972%_ '()))))
                        (cons '##vector-ref
                              (cons _%var142972%_ (cons _%i142973%_ '())))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_%generate-inline142976%_))
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (let ()
                                        (declare (not safe))
                                        (_%generate-inline142976%_))
                                      '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var142966%_ _%i142967%_)
        (if (let () (declare (not safe)) (##fx= _%i142967%_ '0))
            (let ()
              (if (let ()
                    (declare (not safe))
                    (gxc#current-compile-decls-unsafe?))
                  (cons 'if
                        (cons (cons '##values? (cons _%var142966%_ '()))
                              (cons (cons '##vector->list
                                          (cons _%var142966%_ '()))
                                    (cons (cons 'list (cons _%var142966%_ '()))
                                          '()))))
                  (cons 'let
                        (cons '()
                              (cons '(declare (not safe))
                                    (cons (cons 'if
                                                (cons (cons '##values?
                                                            (cons _%var142966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '##vector->list (cons _%var142966%_ '()))
                    (cons (cons 'list (cons _%var142966%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))))
            (if (let () (declare (not safe)) (##fx= _%i142967%_ '1))
                (let ()
                  (if (let ()
                        (declare (not safe))
                        (gxc#current-compile-decls-unsafe?))
                      (cons 'if
                            (cons (cons '##values? (cons _%var142966%_ '()))
                                  (cons (cons '##cdr
                                              (cons (cons '##vector->list
                                                          (cons _%var142966%_
                                                                '()))
                                                    '()))
                                        (cons ''() '()))))
                      (cons 'let
                            (cons '()
                                  (cons '(declare (not safe))
                                        (cons (cons 'if
                                                    (cons (cons '##values?
                                                                (cons _%var142966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '##cdr
                              (cons (cons '##vector->list
                                          (cons _%var142966%_ '()))
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
                                        (cons _%var142966%_ '()))
                                  (cons _%i142967%_ '())))
                      (cons 'let
                            (cons '()
                                  (cons '(declare (not safe))
                                        (cons (cons '##list-tail
                                                    (cons (cons '##vector->list
                                                                (cons _%var142966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons _%i142967%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self142898%_ _%stx142899%_)
        (let* ((_%g142901142918%_
                (lambda (_%g142902142915%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142902142915%_))))
               (_%g142900142963%_
                (lambda (_%g142902142921%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142902142921%_))
                      (let ((_%e142907142923%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142902142921%_))))
                        (let ((_%hd142906142926%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142907142923%_)))
                              (_%tl142905142928%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142907142923%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142905142928%_))
                              (let ((_%e142910142931%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142905142928%_))))
                                (let ((_%hd142909142934%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142910142931%_)))
                                      (_%tl142908142936%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142910142931%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142908142936%_))
                                      (let ((_%e142913142939%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142908142936%_))))
                                        (let ((_%hd142912142942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142913142939%_)))
                                              (_%tl142911142944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142913142939%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142911142944%_))
                                              ((lambda (_%L142947%_
                                                        _%L142948%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _%self142898%_
                                                    _%L142948%_
                                                    _%L142947%_)))
                                               _%hd142912142942%_
                                               _%hd142909142934%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g142901142918%_
                                                 _%g142902142921%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142901142918%_
                                         _%g142902142921%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g142901142918%_ _%g142902142921%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g142901142918%_ _%g142902142921%_))))))
          (declare (not safe))
          (_%g142900142963%_ _%stx142899%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self142857%_ _%hd142858%_ _%body142859%_)
        (let* ((_%hd142861%_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _%hd142858%_)))
               (_%body142863%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self142857%_ _%body142859%_)))
               (_%body142895%_
                (let* ((_%body142864142872%_ _%body142863%_)
                       (_%else142866142880%_
                        (lambda () (cons _%body142863%_ '())))
                       (_%K142868142885%_
                        (lambda (_%exprs142883%_) _%exprs142883%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body142864142872%_))
                      (let ((_%hd142869142888%_
                             (let ()
                               (declare (not safe))
                               (##car _%body142864142872%_)))
                            (_%tl142870142890%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body142864142872%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd142869142888%_ 'begin))
                            (let ((_%exprs142893%_ _%tl142870142890%_))
                              (declare (not safe))
                              (_%K142868142885%_ _%exprs142893%_))
                            (let ()
                              (declare (not safe))
                              (_%else142866142880%_))))
                      (let () (declare (not safe)) (_%else142866142880%_))))))
          (cons 'lambda (cons _%hd142861%_ _%body142895%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd142855%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd142855%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self141394%_ _%stx141395%_)
        (letrec ((_%dispatch-case?141397%_
                  (lambda (_%hd142085%_ _%body142086%_)
                    (let* ((_%form142088%_
                            (cons _%hd142085%_ (cons _%body142086%_ '())))
                           (_%__stx144410144411%_ _%form142088%_)
                           (_%g142093142250%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144410144411%_)))))
                      (let ((_%__kont144412144413%_
                             (lambda (_%L142775%_ _%L142776%_ _%L142777%_)
                               '#t))
                            (_%__kont144418144419%_
                             (lambda (_%L142563%_
                                      _%L142564%_
                                      _%L142565%_
                                      _%L142566%_
                                      _%L142567%_
                                      _%L142568%_)
                               '#t))
                            (_%__kont144424144425%_
                             (lambda (_%L142358%_
                                      _%L142359%_
                                      _%L142360%_
                                      _%L142361%_)
                               '#t))
                            (_%__kont144426144427%_ (lambda () '#f)))
                        (let* ((_%__match144551144552%_
                                (lambda (_%e142212142262%_
                                         _%hd142211142265%_
                                         _%tl142210142267%_
                                         _%e142215142270%_
                                         _%hd142214142273%_
                                         _%tl142213142275%_
                                         _%e142218142278%_
                                         _%hd142217142281%_
                                         _%tl142216142283%_
                                         _%e142221142286%_
                                         _%hd142220142289%_
                                         _%tl142219142291%_
                                         _%e142224142294%_
                                         _%hd142223142297%_
                                         _%tl142222142299%_
                                         _%e142227142302%_
                                         _%hd142226142305%_
                                         _%tl142225142307%_
                                         _%e142230142310%_
                                         _%hd142229142313%_
                                         _%tl142228142315%_
                                         _%e142233142318%_
                                         _%hd142232142321%_
                                         _%tl142231142323%_
                                         _%e142236142326%_
                                         _%hd142235142329%_
                                         _%tl142234142331%_
                                         _%e142239142334%_
                                         _%hd142238142337%_
                                         _%tl142237142339%_
                                         _%e142242142342%_
                                         _%hd142241142345%_
                                         _%tl142240142347%_
                                         _%e142245142350%_
                                         _%hd142244142353%_
                                         _%tl142243142355%_)
                                  (let ((_%L142358%_ _%hd142244142353%_)
                                        (_%L142359%_ _%hd142235142329%_)
                                        (_%L142360%_ _%hd142226142305%_)
                                        (_%L142361%_ _%hd142211142265%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L142361%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L142360%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L142361%_
                                                _%L142358%_))
                                             (let ((__tmp145710
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _%L142359%_
                                                       _%L142361%_))))
                                               (declare (not safe))
                                               (not __tmp145710)))
                                        (_%__kont144424144425%_
                                         _%L142358%_
                                         _%L142359%_
                                         _%L142360%_
                                         _%L142361%_)
                                        (_%__kont144426144427%_)))))
                               (_%__match144523144524%_
                                (lambda (_%e142212142262%_
                                         _%hd142211142265%_
                                         _%tl142210142267%_
                                         _%e142215142270%_
                                         _%hd142214142273%_
                                         _%tl142213142275%_
                                         _%e142218142278%_
                                         _%hd142217142281%_
                                         _%tl142216142283%_
                                         _%e142221142286%_
                                         _%hd142220142289%_
                                         _%tl142219142291%_
                                         _%e142224142294%_
                                         _%hd142223142297%_
                                         _%tl142222142299%_
                                         _%e142227142302%_
                                         _%hd142226142305%_
                                         _%tl142225142307%_
                                         _%e142230142310%_
                                         _%hd142229142313%_
                                         _%tl142228142315%_
                                         _%e142233142318%_
                                         _%hd142232142321%_
                                         _%tl142231142323%_
                                         _%e142236142326%_
                                         _%hd142235142329%_
                                         _%tl142234142331%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142228142315%_))
                                      (let ((_%e142239142334%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142228142315%_))))
                                        (let ((_%tl142237142339%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142239142334%_)))
                                              (_%hd142238142337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142239142334%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd142238142337%_))
                                              (let ((_%e142242142342%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd142238142337%_))))
                                                (let ((_%tl142240142347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142242142342%_)))
                                                      (_%hd142241142345%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142242142342%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd142241142345%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd142241142345%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl142240142347%_))
                      (let ((_%e142245142350%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl142240142347%_))))
                        (let ((_%tl142243142355%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142245142350%_)))
                              (_%hd142244142353%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142245142350%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl142243142355%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl142237142339%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl142213142275%_))
                                      (_%__match144551144552%_
                                       _%e142212142262%_
                                       _%hd142211142265%_
                                       _%tl142210142267%_
                                       _%e142215142270%_
                                       _%hd142214142273%_
                                       _%tl142213142275%_
                                       _%e142218142278%_
                                       _%hd142217142281%_
                                       _%tl142216142283%_
                                       _%e142221142286%_
                                       _%hd142220142289%_
                                       _%tl142219142291%_
                                       _%e142224142294%_
                                       _%hd142223142297%_
                                       _%tl142222142299%_
                                       _%e142227142302%_
                                       _%hd142226142305%_
                                       _%tl142225142307%_
                                       _%e142230142310%_
                                       _%hd142229142313%_
                                       _%tl142228142315%_
                                       _%e142233142318%_
                                       _%hd142232142321%_
                                       _%tl142231142323%_
                                       _%e142236142326%_
                                       _%hd142235142329%_
                                       _%tl142234142331%_
                                       _%e142239142334%_
                                       _%hd142238142337%_
                                       _%tl142237142339%_
                                       _%e142242142342%_
                                       _%hd142241142345%_
                                       _%tl142240142347%_
                                       _%e142245142350%_
                                       _%hd142244142353%_
                                       _%tl142243142355%_)
                                      (_%__kont144426144427%_))
                                  (_%__kont144426144427%_))
                              (_%__kont144426144427%_))))
                      (_%__kont144426144427%_))
                  (_%__kont144426144427%_))
              (_%__kont144426144427%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont144426144427%_))))
                                      (_%__kont144426144427%_))))
                               (_%__match144453144454%_
                                (lambda (_%e142148142403%_
                                         _%hd142147142406%_
                                         _%tl142146142408%_
                                         _%__splice144420144421%_
                                         _%target142149142411%_
                                         _%tl142151142413%_)
                                  (letrec ((_%loop142152142416%_
                                            (lambda (_%hd142150142419%_
                                                     _%arg142156142421%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142150142419%_))
                                                  (let ((_%e142153142424%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142150142419%_))))
                                                    (let ((_%lp-tl142155142429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142153142424%_)))
                                                          (_%lp-hd142154142427%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142153142424%_))))
                                                      (let ((__tmp145711
                                                             (cons _%lp-hd142154142427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg142156142421%_)))
                (declare (not safe))
                (_%loop142152142416%_ _%lp-tl142155142429%_ __tmp145711))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg142157142432%_
                                                         (reverse _%arg142156142421%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142146142408%_))
                                                        (let ((_%e142160142435%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142146142408%_))))
                  (let ((_%tl142158142440%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142160142435%_)))
                        (_%hd142159142438%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142160142435%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142159142438%_))
                        (let ((_%e142163142443%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142159142438%_))))
                          (let ((_%tl142161142448%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142163142443%_)))
                                (_%hd142162142446%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142163142443%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142162142446%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd142162142446%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142161142448%_))
                                        (let ((_%e142166142451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142161142448%_))))
                                          (let ((_%tl142164142456%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142166142451%_)))
                                                (_%hd142165142454%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142166142451%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd142165142454%_))
                                                (let ((_%e142169142459%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142165142454%_))))
                                                  (let ((_%tl142167142464%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142169142459%_)))
                                                        (_%hd142168142462%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142169142459%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd142168142462%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd142168142462%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl142167142464%_))
                        (let ((_%e142172142467%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl142167142464%_))))
                          (let ((_%tl142170142472%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142172142467%_)))
                                (_%hd142171142470%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142172142467%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142170142472%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl142164142456%_))
                                    (let ((_%e142175142475%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl142164142456%_))))
                                      (let ((_%tl142173142480%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e142175142475%_)))
                                            (_%hd142174142478%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e142175142475%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd142174142478%_))
                                            (let ((_%e142178142483%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd142174142478%_))))
                                              (let ((_%tl142176142488%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142178142483%_)))
                                                    (_%hd142177142486%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142178142483%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd142177142486%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd142177142486%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl142176142488%_))
                                                            (let ((_%e142181142491%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl142176142488%_))))
                      (let ((_%tl142179142496%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142181142491%_)))
                            (_%hd142180142494%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142181142491%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl142179142496%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl142173142480%_))
                                (if (let ((__tmp145712
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl142173142480%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp145712 '1))
                                    (let ((_%__splice144422144423%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl142173142480%_
                                              '1))))
                                      (let ((_%tl142184142501%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144422144423%_
                                                '1)))
                                            (_%target142182142499%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144422144423%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142184142501%_))
                                            (let ((_%e142193142504%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142184142501%_))))
                                              (let ((_%tl142191142509%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142193142504%_)))
                                                    (_%hd142192142507%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142193142504%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd142192142507%_))
                                                    (let ((_%e142196142512%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd142192142507%_))))
                                                      (let ((_%tl142194142517%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e142196142512%_)))
                    (_%hd142195142515%_
                     (let () (declare (not safe)) (##car _%e142196142512%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd142195142515%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd142195142515%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl142194142517%_))
                            (let ((_%e142199142520%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl142194142517%_))))
                              (let ((_%tl142197142525%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e142199142520%_)))
                                    (_%hd142198142523%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e142199142520%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl142197142525%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl142191142509%_))
                                        (letrec ((_%loop142185142528%_
                                                  (lambda (_%hd142183142531%_
                                                           _%xarg142189142533%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd142183142531%_))
                                                        (let ((_%e142186142536%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd142183142531%_))))
                  (let ((_%lp-tl142188142541%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142186142536%_)))
                        (_%lp-hd142187142539%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142186142536%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd142187142539%_))
                        (let ((_%e142202142544%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd142187142539%_))))
                          (let ((_%tl142200142549%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142202142544%_)))
                                (_%hd142201142547%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142202142544%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142201142547%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd142201142547%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142200142549%_))
                                        (let ((_%e142205142552%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142200142549%_))))
                                          (let ((_%tl142203142557%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142205142552%_)))
                                                (_%hd142204142555%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142205142552%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142203142557%_))
                                                (let ((__tmp145713
                                                       (cons _%hd142204142555%_
                                                             _%xarg142189142533%_)))
                                                  (declare (not safe))
                                                  (_%loop142185142528%_
                                                   _%lp-tl142188142541%_
                                                   __tmp145713))
                                                (_%__match144523144524%_
                                                 _%e142148142403%_
                                                 _%hd142147142406%_
                                                 _%tl142146142408%_
                                                 _%e142160142435%_
                                                 _%hd142159142438%_
                                                 _%tl142158142440%_
                                                 _%e142163142443%_
                                                 _%hd142162142446%_
                                                 _%tl142161142448%_
                                                 _%e142166142451%_
                                                 _%hd142165142454%_
                                                 _%tl142164142456%_
                                                 _%e142169142459%_
                                                 _%hd142168142462%_
                                                 _%tl142167142464%_
                                                 _%e142172142467%_
                                                 _%hd142171142470%_
                                                 _%tl142170142472%_
                                                 _%e142175142475%_
                                                 _%hd142174142478%_
                                                 _%tl142173142480%_
                                                 _%e142178142483%_
                                                 _%hd142177142486%_
                                                 _%tl142176142488%_
                                                 _%e142181142491%_
                                                 _%hd142180142494%_
                                                 _%tl142179142496%_))))
                                        (_%__match144523144524%_
                                         _%e142148142403%_
                                         _%hd142147142406%_
                                         _%tl142146142408%_
                                         _%e142160142435%_
                                         _%hd142159142438%_
                                         _%tl142158142440%_
                                         _%e142163142443%_
                                         _%hd142162142446%_
                                         _%tl142161142448%_
                                         _%e142166142451%_
                                         _%hd142165142454%_
                                         _%tl142164142456%_
                                         _%e142169142459%_
                                         _%hd142168142462%_
                                         _%tl142167142464%_
                                         _%e142172142467%_
                                         _%hd142171142470%_
                                         _%tl142170142472%_
                                         _%e142175142475%_
                                         _%hd142174142478%_
                                         _%tl142173142480%_
                                         _%e142178142483%_
                                         _%hd142177142486%_
                                         _%tl142176142488%_
                                         _%e142181142491%_
                                         _%hd142180142494%_
                                         _%tl142179142496%_))
                                    (_%__match144523144524%_
                                     _%e142148142403%_
                                     _%hd142147142406%_
                                     _%tl142146142408%_
                                     _%e142160142435%_
                                     _%hd142159142438%_
                                     _%tl142158142440%_
                                     _%e142163142443%_
                                     _%hd142162142446%_
                                     _%tl142161142448%_
                                     _%e142166142451%_
                                     _%hd142165142454%_
                                     _%tl142164142456%_
                                     _%e142169142459%_
                                     _%hd142168142462%_
                                     _%tl142167142464%_
                                     _%e142172142467%_
                                     _%hd142171142470%_
                                     _%tl142170142472%_
                                     _%e142175142475%_
                                     _%hd142174142478%_
                                     _%tl142173142480%_
                                     _%e142178142483%_
                                     _%hd142177142486%_
                                     _%tl142176142488%_
                                     _%e142181142491%_
                                     _%hd142180142494%_
                                     _%tl142179142496%_))
                                (_%__match144523144524%_
                                 _%e142148142403%_
                                 _%hd142147142406%_
                                 _%tl142146142408%_
                                 _%e142160142435%_
                                 _%hd142159142438%_
                                 _%tl142158142440%_
                                 _%e142163142443%_
                                 _%hd142162142446%_
                                 _%tl142161142448%_
                                 _%e142166142451%_
                                 _%hd142165142454%_
                                 _%tl142164142456%_
                                 _%e142169142459%_
                                 _%hd142168142462%_
                                 _%tl142167142464%_
                                 _%e142172142467%_
                                 _%hd142171142470%_
                                 _%tl142170142472%_
                                 _%e142175142475%_
                                 _%hd142174142478%_
                                 _%tl142173142480%_
                                 _%e142178142483%_
                                 _%hd142177142486%_
                                 _%tl142176142488%_
                                 _%e142181142491%_
                                 _%hd142180142494%_
                                 _%tl142179142496%_))))
                        (_%__match144523144524%_
                         _%e142148142403%_
                         _%hd142147142406%_
                         _%tl142146142408%_
                         _%e142160142435%_
                         _%hd142159142438%_
                         _%tl142158142440%_
                         _%e142163142443%_
                         _%hd142162142446%_
                         _%tl142161142448%_
                         _%e142166142451%_
                         _%hd142165142454%_
                         _%tl142164142456%_
                         _%e142169142459%_
                         _%hd142168142462%_
                         _%tl142167142464%_
                         _%e142172142467%_
                         _%hd142171142470%_
                         _%tl142170142472%_
                         _%e142175142475%_
                         _%hd142174142478%_
                         _%tl142173142480%_
                         _%e142178142483%_
                         _%hd142177142486%_
                         _%tl142176142488%_
                         _%e142181142491%_
                         _%hd142180142494%_
                         _%tl142179142496%_))))
                (let ((_%xarg142190142560%_ (reverse _%xarg142189142533%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142158142440%_))
                      (let ((_%L142563%_ _%hd142198142523%_)
                            (_%L142564%_ _%xarg142190142560%_)
                            (_%L142565%_ _%hd142180142494%_)
                            (_%L142566%_ _%hd142171142470%_)
                            (_%L142567%_ _%tl142151142413%_)
                            (_%L142568%_ _%arg142157142432%_))
                        (if (and (let ((__tmp145714
                                        (let ((__tmp145715
                                               (lambda (_%g142611142614%_
                                                        _%g142612142616%_)
                                                 (cons _%g142611142614%_
                                                       _%g142612142616%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145715
                                           '()
                                           _%L142568%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp145714))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L142567%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L142566%_
                                    'apply))
                                 (let ((__tmp145718
                                        (length (let ((__tmp145719
                                                       (lambda (_%g142618142621%_
                                                                _%g142619142623%_)
                                                         (cons _%g142618142621%_
                                                               _%g142619142623%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145719
                                                   '()
                                                   _%L142568%_))))
                                       (__tmp145716
                                        (length (let ((__tmp145717
                                                       (lambda (_%g142625142628%_
                                                                _%g142626142630%_)
                                                         (cons _%g142625142628%_
                                                               _%g142626142630%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145717
                                                   '()
                                                   _%L142564%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp145718 __tmp145716))
                                 (let ((__tmp145722
                                        (let ((__tmp145723
                                               (lambda (_%g142632142635%_
                                                        _%g142633142637%_)
                                                 (cons _%g142632142635%_
                                                       _%g142633142637%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145723
                                           '()
                                           _%L142568%_)))
                                       (__tmp145720
                                        (let ((__tmp145721
                                               (lambda (_%g142639142642%_
                                                        _%g142640142644%_)
                                                 (cons _%g142639142642%_
                                                       _%g142640142644%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145721
                                           '()
                                           _%L142564%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp145722
                                    __tmp145720))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L142567%_
                                    _%L142563%_))
                                 (let ((__tmp145724
                                        (let ((__tmp145728
                                               (lambda (_%g142646142648%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _%g142646142648%_
                                                    _%L142565%_))))
                                              (__tmp145725
                                               (let ((__tmp145727
                                                      (lambda (_%g142650142653%_
                                                               _%g142651142655%_)
                                                        (cons _%g142650142653%_
                                                              _%g142651142655%_)))
                                                     (__tmp145726
                                                      (cons _%L142567%_ '())))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp145727
                                                  __tmp145726
                                                  _%L142568%_))))
                                          (declare (not safe))
                                          (__find __tmp145728 __tmp145725))))
                                   (declare (not safe))
                                   (not __tmp145724)))
                            (_%__kont144418144419%_
                             _%L142563%_
                             _%L142564%_
                             _%L142565%_
                             _%L142566%_
                             _%L142567%_
                             _%L142568%_)
                            (_%__match144523144524%_
                             _%e142148142403%_
                             _%hd142147142406%_
                             _%tl142146142408%_
                             _%e142160142435%_
                             _%hd142159142438%_
                             _%tl142158142440%_
                             _%e142163142443%_
                             _%hd142162142446%_
                             _%tl142161142448%_
                             _%e142166142451%_
                             _%hd142165142454%_
                             _%tl142164142456%_
                             _%e142169142459%_
                             _%hd142168142462%_
                             _%tl142167142464%_
                             _%e142172142467%_
                             _%hd142171142470%_
                             _%tl142170142472%_
                             _%e142175142475%_
                             _%hd142174142478%_
                             _%tl142173142480%_
                             _%e142178142483%_
                             _%hd142177142486%_
                             _%tl142176142488%_
                             _%e142181142491%_
                             _%hd142180142494%_
                             _%tl142179142496%_)))
                      (_%__match144523144524%_
                       _%e142148142403%_
                       _%hd142147142406%_
                       _%tl142146142408%_
                       _%e142160142435%_
                       _%hd142159142438%_
                       _%tl142158142440%_
                       _%e142163142443%_
                       _%hd142162142446%_
                       _%tl142161142448%_
                       _%e142166142451%_
                       _%hd142165142454%_
                       _%tl142164142456%_
                       _%e142169142459%_
                       _%hd142168142462%_
                       _%tl142167142464%_
                       _%e142172142467%_
                       _%hd142171142470%_
                       _%tl142170142472%_
                       _%e142175142475%_
                       _%hd142174142478%_
                       _%tl142173142480%_
                       _%e142178142483%_
                       _%hd142177142486%_
                       _%tl142176142488%_
                       _%e142181142491%_
                       _%hd142180142494%_
                       _%tl142179142496%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop142185142528%_
                                             _%target142182142499%_
                                             '())))
                                        (_%__match144523144524%_
                                         _%e142148142403%_
                                         _%hd142147142406%_
                                         _%tl142146142408%_
                                         _%e142160142435%_
                                         _%hd142159142438%_
                                         _%tl142158142440%_
                                         _%e142163142443%_
                                         _%hd142162142446%_
                                         _%tl142161142448%_
                                         _%e142166142451%_
                                         _%hd142165142454%_
                                         _%tl142164142456%_
                                         _%e142169142459%_
                                         _%hd142168142462%_
                                         _%tl142167142464%_
                                         _%e142172142467%_
                                         _%hd142171142470%_
                                         _%tl142170142472%_
                                         _%e142175142475%_
                                         _%hd142174142478%_
                                         _%tl142173142480%_
                                         _%e142178142483%_
                                         _%hd142177142486%_
                                         _%tl142176142488%_
                                         _%e142181142491%_
                                         _%hd142180142494%_
                                         _%tl142179142496%_))
                                    (_%__match144523144524%_
                                     _%e142148142403%_
                                     _%hd142147142406%_
                                     _%tl142146142408%_
                                     _%e142160142435%_
                                     _%hd142159142438%_
                                     _%tl142158142440%_
                                     _%e142163142443%_
                                     _%hd142162142446%_
                                     _%tl142161142448%_
                                     _%e142166142451%_
                                     _%hd142165142454%_
                                     _%tl142164142456%_
                                     _%e142169142459%_
                                     _%hd142168142462%_
                                     _%tl142167142464%_
                                     _%e142172142467%_
                                     _%hd142171142470%_
                                     _%tl142170142472%_
                                     _%e142175142475%_
                                     _%hd142174142478%_
                                     _%tl142173142480%_
                                     _%e142178142483%_
                                     _%hd142177142486%_
                                     _%tl142176142488%_
                                     _%e142181142491%_
                                     _%hd142180142494%_
                                     _%tl142179142496%_))))
                            (_%__match144523144524%_
                             _%e142148142403%_
                             _%hd142147142406%_
                             _%tl142146142408%_
                             _%e142160142435%_
                             _%hd142159142438%_
                             _%tl142158142440%_
                             _%e142163142443%_
                             _%hd142162142446%_
                             _%tl142161142448%_
                             _%e142166142451%_
                             _%hd142165142454%_
                             _%tl142164142456%_
                             _%e142169142459%_
                             _%hd142168142462%_
                             _%tl142167142464%_
                             _%e142172142467%_
                             _%hd142171142470%_
                             _%tl142170142472%_
                             _%e142175142475%_
                             _%hd142174142478%_
                             _%tl142173142480%_
                             _%e142178142483%_
                             _%hd142177142486%_
                             _%tl142176142488%_
                             _%e142181142491%_
                             _%hd142180142494%_
                             _%tl142179142496%_))
                        (_%__match144523144524%_
                         _%e142148142403%_
                         _%hd142147142406%_
                         _%tl142146142408%_
                         _%e142160142435%_
                         _%hd142159142438%_
                         _%tl142158142440%_
                         _%e142163142443%_
                         _%hd142162142446%_
                         _%tl142161142448%_
                         _%e142166142451%_
                         _%hd142165142454%_
                         _%tl142164142456%_
                         _%e142169142459%_
                         _%hd142168142462%_
                         _%tl142167142464%_
                         _%e142172142467%_
                         _%hd142171142470%_
                         _%tl142170142472%_
                         _%e142175142475%_
                         _%hd142174142478%_
                         _%tl142173142480%_
                         _%e142178142483%_
                         _%hd142177142486%_
                         _%tl142176142488%_
                         _%e142181142491%_
                         _%hd142180142494%_
                         _%tl142179142496%_))
                    (_%__match144523144524%_
                     _%e142148142403%_
                     _%hd142147142406%_
                     _%tl142146142408%_
                     _%e142160142435%_
                     _%hd142159142438%_
                     _%tl142158142440%_
                     _%e142163142443%_
                     _%hd142162142446%_
                     _%tl142161142448%_
                     _%e142166142451%_
                     _%hd142165142454%_
                     _%tl142164142456%_
                     _%e142169142459%_
                     _%hd142168142462%_
                     _%tl142167142464%_
                     _%e142172142467%_
                     _%hd142171142470%_
                     _%tl142170142472%_
                     _%e142175142475%_
                     _%hd142174142478%_
                     _%tl142173142480%_
                     _%e142178142483%_
                     _%hd142177142486%_
                     _%tl142176142488%_
                     _%e142181142491%_
                     _%hd142180142494%_
                     _%tl142179142496%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144523144524%_
                                                     _%e142148142403%_
                                                     _%hd142147142406%_
                                                     _%tl142146142408%_
                                                     _%e142160142435%_
                                                     _%hd142159142438%_
                                                     _%tl142158142440%_
                                                     _%e142163142443%_
                                                     _%hd142162142446%_
                                                     _%tl142161142448%_
                                                     _%e142166142451%_
                                                     _%hd142165142454%_
                                                     _%tl142164142456%_
                                                     _%e142169142459%_
                                                     _%hd142168142462%_
                                                     _%tl142167142464%_
                                                     _%e142172142467%_
                                                     _%hd142171142470%_
                                                     _%tl142170142472%_
                                                     _%e142175142475%_
                                                     _%hd142174142478%_
                                                     _%tl142173142480%_
                                                     _%e142178142483%_
                                                     _%hd142177142486%_
                                                     _%tl142176142488%_
                                                     _%e142181142491%_
                                                     _%hd142180142494%_
                                                     _%tl142179142496%_))))
                                            (_%__match144523144524%_
                                             _%e142148142403%_
                                             _%hd142147142406%_
                                             _%tl142146142408%_
                                             _%e142160142435%_
                                             _%hd142159142438%_
                                             _%tl142158142440%_
                                             _%e142163142443%_
                                             _%hd142162142446%_
                                             _%tl142161142448%_
                                             _%e142166142451%_
                                             _%hd142165142454%_
                                             _%tl142164142456%_
                                             _%e142169142459%_
                                             _%hd142168142462%_
                                             _%tl142167142464%_
                                             _%e142172142467%_
                                             _%hd142171142470%_
                                             _%tl142170142472%_
                                             _%e142175142475%_
                                             _%hd142174142478%_
                                             _%tl142173142480%_
                                             _%e142178142483%_
                                             _%hd142177142486%_
                                             _%tl142176142488%_
                                             _%e142181142491%_
                                             _%hd142180142494%_
                                             _%tl142179142496%_))))
                                    (_%__match144523144524%_
                                     _%e142148142403%_
                                     _%hd142147142406%_
                                     _%tl142146142408%_
                                     _%e142160142435%_
                                     _%hd142159142438%_
                                     _%tl142158142440%_
                                     _%e142163142443%_
                                     _%hd142162142446%_
                                     _%tl142161142448%_
                                     _%e142166142451%_
                                     _%hd142165142454%_
                                     _%tl142164142456%_
                                     _%e142169142459%_
                                     _%hd142168142462%_
                                     _%tl142167142464%_
                                     _%e142172142467%_
                                     _%hd142171142470%_
                                     _%tl142170142472%_
                                     _%e142175142475%_
                                     _%hd142174142478%_
                                     _%tl142173142480%_
                                     _%e142178142483%_
                                     _%hd142177142486%_
                                     _%tl142176142488%_
                                     _%e142181142491%_
                                     _%hd142180142494%_
                                     _%tl142179142496%_))
                                (_%__match144523144524%_
                                 _%e142148142403%_
                                 _%hd142147142406%_
                                 _%tl142146142408%_
                                 _%e142160142435%_
                                 _%hd142159142438%_
                                 _%tl142158142440%_
                                 _%e142163142443%_
                                 _%hd142162142446%_
                                 _%tl142161142448%_
                                 _%e142166142451%_
                                 _%hd142165142454%_
                                 _%tl142164142456%_
                                 _%e142169142459%_
                                 _%hd142168142462%_
                                 _%tl142167142464%_
                                 _%e142172142467%_
                                 _%hd142171142470%_
                                 _%tl142170142472%_
                                 _%e142175142475%_
                                 _%hd142174142478%_
                                 _%tl142173142480%_
                                 _%e142178142483%_
                                 _%hd142177142486%_
                                 _%tl142176142488%_
                                 _%e142181142491%_
                                 _%hd142180142494%_
                                 _%tl142179142496%_))
                            (_%__kont144426144427%_))))
                    (_%__kont144426144427%_))
                (_%__kont144426144427%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144426144427%_))))
                                            (_%__kont144426144427%_))))
                                    (_%__kont144426144427%_))
                                (_%__kont144426144427%_))))
                        (_%__kont144426144427%_))
                    (_%__kont144426144427%_))
                (_%__kont144426144427%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont144426144427%_))))
                                        (_%__kont144426144427%_))
                                    (_%__kont144426144427%_))
                                (_%__kont144426144427%_))))
                        (_%__kont144426144427%_))))
                (_%__kont144426144427%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop142152142416%_
                                       _%target142149142411%_
                                       '())))))
                               (_%__match144441144442%_
                                (lambda (_%e142100142663%_
                                         _%hd142099142666%_
                                         _%tl142098142668%_
                                         _%__splice144414144415%_
                                         _%target142101142671%_
                                         _%tl142103142673%_)
                                  (letrec ((_%loop142104142676%_
                                            (lambda (_%hd142102142679%_
                                                     _%arg142108142681%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142102142679%_))
                                                  (let ((_%e142105142684%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142102142679%_))))
                                                    (let ((_%lp-tl142107142689%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142105142684%_)))
                                                          (_%lp-hd142106142687%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142105142684%_))))
                                                      (let ((__tmp145729
                                                             (cons _%lp-hd142106142687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg142108142681%_)))
                (declare (not safe))
                (_%loop142104142676%_ _%lp-tl142107142689%_ __tmp145729))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg142109142692%_
                                                         (reverse _%arg142108142681%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142098142668%_))
                                                        (let ((_%e142112142695%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142098142668%_))))
                  (let ((_%tl142110142700%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142112142695%_)))
                        (_%hd142111142698%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142112142695%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142111142698%_))
                        (let ((_%e142115142703%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142111142698%_))))
                          (let ((_%tl142113142708%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142115142703%_)))
                                (_%hd142114142706%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142115142703%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142114142706%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd142114142706%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142113142708%_))
                                        (let ((_%e142118142711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142113142708%_))))
                                          (let ((_%tl142116142716%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142118142711%_)))
                                                (_%hd142117142714%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142118142711%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd142117142714%_))
                                                (let ((_%e142121142719%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142117142714%_))))
                                                  (let ((_%tl142119142724%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142121142719%_)))
                                                        (_%hd142120142722%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142121142719%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd142120142722%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd142120142722%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl142119142724%_))
                        (let ((_%e142124142727%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl142119142724%_))))
                          (let ((_%tl142122142732%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142124142727%_)))
                                (_%hd142123142730%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142124142727%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142122142732%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl142116142716%_))
                                    (let ((_%__splice144416144417%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl142116142716%_
                                              '0))))
                                      (let ((_%tl142127142737%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144416144417%_
                                                '1)))
                                            (_%target142125142735%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144416144417%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl142127142737%_))
                                            (letrec ((_%loop142128142740%_
                                                      (lambda (_%hd142126142743%_
                                                               _%xarg142132142745%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd142126142743%_))
                                                            (let ((_%e142129142748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd142126142743%_))))
                      (let ((_%lp-tl142131142753%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142129142748%_)))
                            (_%lp-hd142130142751%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142129142748%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd142130142751%_))
                            (let ((_%e142136142756%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd142130142751%_))))
                              (let ((_%tl142134142761%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e142136142756%_)))
                                    (_%hd142135142759%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e142136142756%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd142135142759%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd142135142759%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142134142761%_))
                                            (let ((_%e142139142764%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142134142761%_))))
                                              (let ((_%tl142137142769%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142139142764%_)))
                                                    (_%hd142138142767%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142139142764%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl142137142769%_))
                                                    (let ((__tmp145730
                                                           (cons _%hd142138142767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xarg142132142745%_)))
              (declare (not safe))
              (_%loop142128142740%_ _%lp-tl142131142753%_ __tmp145730))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144453144454%_
                                                     _%e142100142663%_
                                                     _%hd142099142666%_
                                                     _%tl142098142668%_
                                                     _%__splice144414144415%_
                                                     _%target142101142671%_
                                                     _%tl142103142673%_))))
                                            (_%__match144453144454%_
                                             _%e142100142663%_
                                             _%hd142099142666%_
                                             _%tl142098142668%_
                                             _%__splice144414144415%_
                                             _%target142101142671%_
                                             _%tl142103142673%_))
                                        (_%__match144453144454%_
                                         _%e142100142663%_
                                         _%hd142099142666%_
                                         _%tl142098142668%_
                                         _%__splice144414144415%_
                                         _%target142101142671%_
                                         _%tl142103142673%_))
                                    (_%__match144453144454%_
                                     _%e142100142663%_
                                     _%hd142099142666%_
                                     _%tl142098142668%_
                                     _%__splice144414144415%_
                                     _%target142101142671%_
                                     _%tl142103142673%_))))
                            (_%__match144453144454%_
                             _%e142100142663%_
                             _%hd142099142666%_
                             _%tl142098142668%_
                             _%__splice144414144415%_
                             _%target142101142671%_
                             _%tl142103142673%_))))
                    (let ((_%xarg142133142772%_
                           (reverse _%xarg142132142745%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl142110142700%_))
                          (let ((_%L142775%_ _%xarg142133142772%_)
                                (_%L142776%_ _%hd142123142730%_)
                                (_%L142777%_ _%arg142109142692%_))
                            (if (and (let ((__tmp145731
                                            (let ((__tmp145732
                                                   (lambda (_%g142805142808%_
                                                            _%g142806142810%_)
                                                     (cons _%g142805142808%_
                                                           _%g142806142810%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145732
                                               '()
                                               _%L142777%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp145731))
                                     (let ((__tmp145735
                                            (length (let ((__tmp145736
                                                           (lambda (_%g142812142815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142813142817%_)
                     (cons _%g142812142815%_ _%g142813142817%_))))
              (declare (not safe))
              (__foldr1 __tmp145736 '() _%L142777%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp145733
                                            (length (let ((__tmp145734
                                                           (lambda (_%g142819142822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142820142824%_)
                     (cons _%g142819142822%_ _%g142820142824%_))))
              (declare (not safe))
              (__foldr1 __tmp145734 '() _%L142775%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145735 __tmp145733))
                                     (let ((__tmp145739
                                            (let ((__tmp145740
                                                   (lambda (_%g142826142829%_
                                                            _%g142827142831%_)
                                                     (cons _%g142826142829%_
                                                           _%g142827142831%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145740
                                               '()
                                               _%L142777%_)))
                                           (__tmp145737
                                            (let ((__tmp145738
                                                   (lambda (_%g142833142836%_
                                                            _%g142834142838%_)
                                                     (cons _%g142833142836%_
                                                           _%g142834142838%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145738
                                               '()
                                               _%L142775%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp145739
                                        __tmp145737))
                                     (let ((__tmp145741
                                            (let ((__tmp145744
                                                   (lambda (_%g142840142842%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g142840142842%_
                                                        _%L142776%_))))
                                                  (__tmp145742
                                                   (let ((__tmp145743
                                                          (lambda (_%g142844142847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g142845142849%_)
                    (cons _%g142844142847%_ _%g142845142849%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp145743
                                                      '()
                                                      _%L142777%_))))
                                              (declare (not safe))
                                              (__find __tmp145744
                                                      __tmp145742))))
                                       (declare (not safe))
                                       (not __tmp145741)))
                                (_%__kont144412144413%_
                                 _%L142775%_
                                 _%L142776%_
                                 _%L142777%_)
                                (_%__match144453144454%_
                                 _%e142100142663%_
                                 _%hd142099142666%_
                                 _%tl142098142668%_
                                 _%__splice144414144415%_
                                 _%target142101142671%_
                                 _%tl142103142673%_)))
                          (_%__match144453144454%_
                           _%e142100142663%_
                           _%hd142099142666%_
                           _%tl142098142668%_
                           _%__splice144414144415%_
                           _%target142101142671%_
                           _%tl142103142673%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop142128142740%_
                                                 _%target142125142735%_
                                                 '())))
                                            (_%__match144453144454%_
                                             _%e142100142663%_
                                             _%hd142099142666%_
                                             _%tl142098142668%_
                                             _%__splice144414144415%_
                                             _%target142101142671%_
                                             _%tl142103142673%_))))
                                    (_%__match144453144454%_
                                     _%e142100142663%_
                                     _%hd142099142666%_
                                     _%tl142098142668%_
                                     _%__splice144414144415%_
                                     _%target142101142671%_
                                     _%tl142103142673%_))
                                (_%__match144453144454%_
                                 _%e142100142663%_
                                 _%hd142099142666%_
                                 _%tl142098142668%_
                                 _%__splice144414144415%_
                                 _%target142101142671%_
                                 _%tl142103142673%_))))
                        (_%__match144453144454%_
                         _%e142100142663%_
                         _%hd142099142666%_
                         _%tl142098142668%_
                         _%__splice144414144415%_
                         _%target142101142671%_
                         _%tl142103142673%_))
                    (_%__match144453144454%_
                     _%e142100142663%_
                     _%hd142099142666%_
                     _%tl142098142668%_
                     _%__splice144414144415%_
                     _%target142101142671%_
                     _%tl142103142673%_))
                (_%__match144453144454%_
                 _%e142100142663%_
                 _%hd142099142666%_
                 _%tl142098142668%_
                 _%__splice144414144415%_
                 _%target142101142671%_
                 _%tl142103142673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match144453144454%_
                                                 _%e142100142663%_
                                                 _%hd142099142666%_
                                                 _%tl142098142668%_
                                                 _%__splice144414144415%_
                                                 _%target142101142671%_
                                                 _%tl142103142673%_))))
                                        (_%__match144453144454%_
                                         _%e142100142663%_
                                         _%hd142099142666%_
                                         _%tl142098142668%_
                                         _%__splice144414144415%_
                                         _%target142101142671%_
                                         _%tl142103142673%_))
                                    (_%__match144453144454%_
                                     _%e142100142663%_
                                     _%hd142099142666%_
                                     _%tl142098142668%_
                                     _%__splice144414144415%_
                                     _%target142101142671%_
                                     _%tl142103142673%_))
                                (_%__match144453144454%_
                                 _%e142100142663%_
                                 _%hd142099142666%_
                                 _%tl142098142668%_
                                 _%__splice144414144415%_
                                 _%target142101142671%_
                                 _%tl142103142673%_))))
                        (_%__match144453144454%_
                         _%e142100142663%_
                         _%hd142099142666%_
                         _%tl142098142668%_
                         _%__splice144414144415%_
                         _%target142101142671%_
                         _%tl142103142673%_))))
                (_%__match144453144454%_
                 _%e142100142663%_
                 _%hd142099142666%_
                 _%tl142098142668%_
                 _%__splice144414144415%_
                 _%target142101142671%_
                 _%tl142103142673%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop142104142676%_
                                       _%target142101142671%_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144410144411%_))
                              (let ((_%e142100142663%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144410144411%_))))
                                (let ((_%tl142098142668%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142100142663%_)))
                                      (_%hd142099142666%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142100142663%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd142099142666%_))
                                      (let ((_%__splice144414144415%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd142099142666%_
                                                '0))))
                                        (let ((_%tl142103142673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144414144415%_
                                                  '1)))
                                              (_%target142101142671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144414144415%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142103142673%_))
                                              (_%__match144441144442%_
                                               _%e142100142663%_
                                               _%hd142099142666%_
                                               _%tl142098142668%_
                                               _%__splice144414144415%_
                                               _%target142101142671%_
                                               _%tl142103142673%_)
                                              (_%__match144453144454%_
                                               _%e142100142663%_
                                               _%hd142099142666%_
                                               _%tl142098142668%_
                                               _%__splice144414144415%_
                                               _%target142101142671%_
                                               _%tl142103142673%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl142098142668%_))
                                          (let ((_%e142215142270%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl142098142668%_))))
                                            (let ((_%tl142213142275%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e142215142270%_)))
                                                  (_%hd142214142273%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e142215142270%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142214142273%_))
                                                  (let ((_%e142218142278%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142214142273%_))))
                                                    (let ((_%tl142216142283%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142218142278%_)))
                                                          (_%hd142217142281%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142218142278%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd142217142281%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd142217142281%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142216142283%_))
                          (let ((_%e142221142286%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142216142283%_))))
                            (let ((_%tl142219142291%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142221142286%_)))
                                  (_%hd142220142289%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142221142286%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd142220142289%_))
                                  (let ((_%e142224142294%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd142220142289%_))))
                                    (let ((_%tl142222142299%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142224142294%_)))
                                          (_%hd142223142297%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142224142294%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd142223142297%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd142223142297%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl142222142299%_))
                                                  (let ((_%e142227142302%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl142222142299%_))))
                                                    (let ((_%tl142225142307%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142227142302%_)))
                                                          (_%hd142226142305%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142227142302%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl142225142307%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl142219142291%_))
                      (let ((_%e142230142310%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl142219142291%_))))
                        (let ((_%tl142228142315%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142230142310%_)))
                              (_%hd142229142313%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142230142310%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd142229142313%_))
                              (let ((_%e142233142318%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd142229142313%_))))
                                (let ((_%tl142231142323%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142233142318%_)))
                                      (_%hd142232142321%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142233142318%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd142232142321%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd142232142321%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142231142323%_))
                                              (let ((_%e142236142326%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142231142323%_))))
                                                (let ((_%tl142234142331%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142236142326%_)))
                                                      (_%hd142235142329%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142236142326%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142234142331%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl142228142315%_))
                                                          (let ((_%e142239142334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl142228142315%_))))
                    (let ((_%tl142237142339%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142239142334%_)))
                          (_%hd142238142337%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142239142334%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd142238142337%_))
                          (let ((_%e142242142342%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd142238142337%_))))
                            (let ((_%tl142240142347%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142242142342%_)))
                                  (_%hd142241142345%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142242142342%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd142241142345%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd142241142345%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl142240142347%_))
                                          (let ((_%e142245142350%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl142240142347%_))))
                                            (let ((_%tl142243142355%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e142245142350%_)))
                                                  (_%hd142244142353%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e142245142350%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl142243142355%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142237142339%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl142213142275%_))
                                                          (_%__match144551144552%_
                                                           _%e142100142663%_
                                                           _%hd142099142666%_
                                                           _%tl142098142668%_
                                                           _%e142215142270%_
                                                           _%hd142214142273%_
                                                           _%tl142213142275%_
                                                           _%e142218142278%_
                                                           _%hd142217142281%_
                                                           _%tl142216142283%_
                                                           _%e142221142286%_
                                                           _%hd142220142289%_
                                                           _%tl142219142291%_
                                                           _%e142224142294%_
                                                           _%hd142223142297%_
                                                           _%tl142222142299%_
                                                           _%e142227142302%_
                                                           _%hd142226142305%_
                                                           _%tl142225142307%_
                                                           _%e142230142310%_
                                                           _%hd142229142313%_
                                                           _%tl142228142315%_
                                                           _%e142233142318%_
                                                           _%hd142232142321%_
                                                           _%tl142231142323%_
                                                           _%e142236142326%_
                                                           _%hd142235142329%_
                                                           _%tl142234142331%_
                                                           _%e142239142334%_
                                                           _%hd142238142337%_
                                                           _%tl142237142339%_
                                                           _%e142242142342%_
                                                           _%hd142241142345%_
                                                           _%tl142240142347%_
                                                           _%e142245142350%_
                                                           _%hd142244142353%_
                                                           _%tl142243142355%_)
                                                          (_%__kont144426144427%_))
                                                      (_%__kont144426144427%_))
                                                  (_%__kont144426144427%_))))
                                          (_%__kont144426144427%_))
                                      (_%__kont144426144427%_))
                                  (_%__kont144426144427%_))))
                          (_%__kont144426144427%_))))
                  (_%__kont144426144427%_))
              (_%__kont144426144427%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont144426144427%_))
                                          (_%__kont144426144427%_))
                                      (_%__kont144426144427%_))))
                              (_%__kont144426144427%_))))
                      (_%__kont144426144427%_))
                  (_%__kont144426144427%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144426144427%_))
                                              (_%__kont144426144427%_))
                                          (_%__kont144426144427%_))))
                                  (_%__kont144426144427%_))))
                          (_%__kont144426144427%_))
                      (_%__kont144426144427%_))
                  (_%__kont144426144427%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144426144427%_))))
                                          (_%__kont144426144427%_)))))
                              (_%__kont144426144427%_)))))))
                 (_%dispatch-case-e141398%_
                  (lambda (_%hd141549%_ _%body141550%_)
                    (let* ((_%form141552%_
                            (cons _%hd141549%_ (cons _%body141550%_ '())))
                           (_%__stx144554144555%_ _%form141552%_)
                           (_%g141556141680%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144554144555%_)))))
                      (let ((_%__kont144556144557%_
                             (lambda (_%L142051%_ _%L142052%_ _%L142053%_)
                               (let ((__tmp145745
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L142052%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self141394%_
                                  __tmp145745))))
                            (_%__kont144562144563%_
                             (lambda (_%L141899%_
                                      _%L141900%_
                                      _%L141901%_
                                      _%L141902%_)
                               (let ((__tmp145746
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141899%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self141394%_
                                  __tmp145746))))
                            (_%__kont144566144567%_
                             (lambda (_%L141765%_ _%L141766%_ _%L141767%_)
                               (let ((__tmp145747
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141765%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self141394%_
                                  __tmp145747)))))
                        (let* ((_%__match144663144664%_
                                (lambda (_%e141648141685%_
                                         _%hd141647141688%_
                                         _%tl141646141690%_
                                         _%e141651141693%_
                                         _%hd141650141696%_
                                         _%tl141649141698%_
                                         _%e141654141701%_
                                         _%hd141653141704%_
                                         _%tl141652141706%_
                                         _%e141657141709%_
                                         _%hd141656141712%_
                                         _%tl141655141714%_
                                         _%e141660141717%_
                                         _%hd141659141720%_
                                         _%tl141658141722%_
                                         _%e141663141725%_
                                         _%hd141662141728%_
                                         _%tl141661141730%_
                                         _%e141666141733%_
                                         _%hd141665141736%_
                                         _%tl141664141738%_
                                         _%e141669141741%_
                                         _%hd141668141744%_
                                         _%tl141667141746%_
                                         _%e141672141749%_
                                         _%hd141671141752%_
                                         _%tl141670141754%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141664141738%_))
                                      (let ((_%e141675141757%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141664141738%_))))
                                        (let ((_%tl141673141762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141675141757%_)))
                                              (_%hd141674141760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141675141757%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141673141762%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl141649141698%_))
                                                  (_%__kont144566144567%_
                                                   _%hd141671141752%_
                                                   _%hd141662141728%_
                                                   _%hd141647141688%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141556141680%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g141556141680%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g141556141680%_)))))
                               (_%__match144593144594%_
                                (lambda (_%e141609141803%_
                                         _%hd141608141806%_
                                         _%tl141607141808%_
                                         _%__splice144564144565%_
                                         _%target141610141811%_
                                         _%tl141612141813%_)
                                  (letrec ((_%loop141613141816%_
                                            (lambda (_%hd141611141819%_
                                                     _%arg141617141821%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141611141819%_))
                                                  (let ((_%e141614141824%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141611141819%_))))
                                                    (let ((_%lp-tl141616141829%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141614141824%_)))
                                                          (_%lp-hd141615141827%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141614141824%_))))
                                                      (let ((__tmp145748
                                                             (cons _%lp-hd141615141827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141617141821%_)))
                (declare (not safe))
                (_%loop141613141816%_ _%lp-tl141616141829%_ __tmp145748))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141618141832%_
                                                         (reverse _%arg141617141821%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141607141808%_))
                                                        (let ((_%e141621141835%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141607141808%_))))
                  (let ((_%tl141619141840%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141621141835%_)))
                        (_%hd141620141838%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141621141835%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141620141838%_))
                        (let ((_%e141624141843%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141620141838%_))))
                          (let ((_%tl141622141848%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141624141843%_)))
                                (_%hd141623141846%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141624141843%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141623141846%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141623141846%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141622141848%_))
                                        (let ((_%e141627141851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141622141848%_))))
                                          (let ((_%tl141625141856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141627141851%_)))
                                                (_%hd141626141854%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141627141851%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141626141854%_))
                                                (let ((_%e141630141859%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141626141854%_))))
                                                  (let ((_%tl141628141864%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141630141859%_)))
                                                        (_%hd141629141862%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141630141859%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141629141862%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141629141862%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141628141864%_))
                        (let ((_%e141633141867%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141628141864%_))))
                          (let ((_%tl141631141872%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141633141867%_)))
                                (_%hd141632141870%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141633141867%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141631141872%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl141625141856%_))
                                    (let ((_%e141636141875%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl141625141856%_))))
                                      (let ((_%tl141634141880%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e141636141875%_)))
                                            (_%hd141635141878%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e141636141875%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd141635141878%_))
                                            (let ((_%e141639141883%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd141635141878%_))))
                                              (let ((_%tl141637141888%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141639141883%_)))
                                                    (_%hd141638141886%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141639141883%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd141638141886%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd141638141886%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141637141888%_))
                                                            (let ((_%e141642141891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141637141888%_))))
                      (let ((_%tl141640141896%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141642141891%_)))
                            (_%hd141641141894%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141642141891%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141640141896%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141619141840%_))
                                (_%__kont144562144563%_
                                 _%hd141641141894%_
                                 _%hd141632141870%_
                                 _%tl141612141813%_
                                 _%arg141618141832%_)
                                (_%__match144663144664%_
                                 _%e141609141803%_
                                 _%hd141608141806%_
                                 _%tl141607141808%_
                                 _%e141621141835%_
                                 _%hd141620141838%_
                                 _%tl141619141840%_
                                 _%e141624141843%_
                                 _%hd141623141846%_
                                 _%tl141622141848%_
                                 _%e141627141851%_
                                 _%hd141626141854%_
                                 _%tl141625141856%_
                                 _%e141630141859%_
                                 _%hd141629141862%_
                                 _%tl141628141864%_
                                 _%e141633141867%_
                                 _%hd141632141870%_
                                 _%tl141631141872%_
                                 _%e141636141875%_
                                 _%hd141635141878%_
                                 _%tl141634141880%_
                                 _%e141639141883%_
                                 _%hd141638141886%_
                                 _%tl141637141888%_
                                 _%e141642141891%_
                                 _%hd141641141894%_
                                 _%tl141640141896%_))
                            (let ()
                              (declare (not safe))
                              (_%g141556141680%_)))))
                    (let () (declare (not safe)) (_%g141556141680%_)))
                (let () (declare (not safe)) (_%g141556141680%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g141556141680%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g141556141680%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g141556141680%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g141556141680%_)))))
                        (let () (declare (not safe)) (_%g141556141680%_)))
                    (let () (declare (not safe)) (_%g141556141680%_)))
                (let () (declare (not safe)) (_%g141556141680%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g141556141680%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g141556141680%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g141556141680%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g141556141680%_)))))
                        (let () (declare (not safe)) (_%g141556141680%_)))))
                (let () (declare (not safe)) (_%g141556141680%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141613141816%_
                                       _%target141610141811%_
                                       '())))))
                               (_%__match144581144582%_
                                (lambda (_%e141563141939%_
                                         _%hd141562141942%_
                                         _%tl141561141944%_
                                         _%__splice144558144559%_
                                         _%target141564141947%_
                                         _%tl141566141949%_)
                                  (letrec ((_%loop141567141952%_
                                            (lambda (_%hd141565141955%_
                                                     _%arg141571141957%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141565141955%_))
                                                  (let ((_%e141568141960%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141565141955%_))))
                                                    (let ((_%lp-tl141570141965%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141568141960%_)))
                                                          (_%lp-hd141569141963%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141568141960%_))))
                                                      (let ((__tmp145749
                                                             (cons _%lp-hd141569141963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141571141957%_)))
                (declare (not safe))
                (_%loop141567141952%_ _%lp-tl141570141965%_ __tmp145749))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141572141968%_
                                                         (reverse _%arg141571141957%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141561141944%_))
                                                        (let ((_%e141575141971%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141561141944%_))))
                  (let ((_%tl141573141976%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141575141971%_)))
                        (_%hd141574141974%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141575141971%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141574141974%_))
                        (let ((_%e141578141979%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141574141974%_))))
                          (let ((_%tl141576141984%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141578141979%_)))
                                (_%hd141577141982%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141578141979%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141577141982%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141577141982%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141576141984%_))
                                        (let ((_%e141581141987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141576141984%_))))
                                          (let ((_%tl141579141992%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141581141987%_)))
                                                (_%hd141580141990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141581141987%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141580141990%_))
                                                (let ((_%e141584141995%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141580141990%_))))
                                                  (let ((_%tl141582142000%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141584141995%_)))
                                                        (_%hd141583141998%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141584141995%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141583141998%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141583141998%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141582142000%_))
                        (let ((_%e141587142003%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141582142000%_))))
                          (let ((_%tl141585142008%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141587142003%_)))
                                (_%hd141586142006%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141587142003%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141585142008%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl141579141992%_))
                                    (let ((_%__splice144560144561%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141579141992%_
                                              '0))))
                                      (let ((_%tl141590142013%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144560144561%_
                                                '1)))
                                            (_%target141588142011%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144560144561%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl141590142013%_))
                                            (letrec ((_%loop141591142016%_
                                                      (lambda (_%hd141589142019%_
                                                               _%xarg141595142021%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd141589142019%_))
                                                            (let ((_%e141592142024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd141589142019%_))))
                      (let ((_%lp-tl141594142029%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141592142024%_)))
                            (_%lp-hd141593142027%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141592142024%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd141593142027%_))
                            (let ((_%e141599142032%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd141593142027%_))))
                              (let ((_%tl141597142037%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141599142032%_)))
                                    (_%hd141598142035%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141599142032%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141598142035%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd141598142035%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141597142037%_))
                                            (let ((_%e141602142040%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141597142037%_))))
                                              (let ((_%tl141600142045%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141602142040%_)))
                                                    (_%hd141601142043%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141602142040%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl141600142045%_))
                                                    (let ((__tmp145750
                                                           (cons _%hd141601142043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xarg141595142021%_)))
              (declare (not safe))
              (_%loop141591142016%_ _%lp-tl141594142029%_ __tmp145750))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144593144594%_
                                                     _%e141563141939%_
                                                     _%hd141562141942%_
                                                     _%tl141561141944%_
                                                     _%__splice144558144559%_
                                                     _%target141564141947%_
                                                     _%tl141566141949%_))))
                                            (_%__match144593144594%_
                                             _%e141563141939%_
                                             _%hd141562141942%_
                                             _%tl141561141944%_
                                             _%__splice144558144559%_
                                             _%target141564141947%_
                                             _%tl141566141949%_))
                                        (_%__match144593144594%_
                                         _%e141563141939%_
                                         _%hd141562141942%_
                                         _%tl141561141944%_
                                         _%__splice144558144559%_
                                         _%target141564141947%_
                                         _%tl141566141949%_))
                                    (_%__match144593144594%_
                                     _%e141563141939%_
                                     _%hd141562141942%_
                                     _%tl141561141944%_
                                     _%__splice144558144559%_
                                     _%target141564141947%_
                                     _%tl141566141949%_))))
                            (_%__match144593144594%_
                             _%e141563141939%_
                             _%hd141562141942%_
                             _%tl141561141944%_
                             _%__splice144558144559%_
                             _%target141564141947%_
                             _%tl141566141949%_))))
                    (let ((_%xarg141596142048%_
                           (reverse _%xarg141595142021%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141573141976%_))
                          (_%__kont144556144557%_
                           _%xarg141596142048%_
                           _%hd141586142006%_
                           _%arg141572141968%_)
                          (_%__match144593144594%_
                           _%e141563141939%_
                           _%hd141562141942%_
                           _%tl141561141944%_
                           _%__splice144558144559%_
                           _%target141564141947%_
                           _%tl141566141949%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop141591142016%_
                                                 _%target141588142011%_
                                                 '())))
                                            (_%__match144593144594%_
                                             _%e141563141939%_
                                             _%hd141562141942%_
                                             _%tl141561141944%_
                                             _%__splice144558144559%_
                                             _%target141564141947%_
                                             _%tl141566141949%_))))
                                    (_%__match144593144594%_
                                     _%e141563141939%_
                                     _%hd141562141942%_
                                     _%tl141561141944%_
                                     _%__splice144558144559%_
                                     _%target141564141947%_
                                     _%tl141566141949%_))
                                (_%__match144593144594%_
                                 _%e141563141939%_
                                 _%hd141562141942%_
                                 _%tl141561141944%_
                                 _%__splice144558144559%_
                                 _%target141564141947%_
                                 _%tl141566141949%_))))
                        (_%__match144593144594%_
                         _%e141563141939%_
                         _%hd141562141942%_
                         _%tl141561141944%_
                         _%__splice144558144559%_
                         _%target141564141947%_
                         _%tl141566141949%_))
                    (_%__match144593144594%_
                     _%e141563141939%_
                     _%hd141562141942%_
                     _%tl141561141944%_
                     _%__splice144558144559%_
                     _%target141564141947%_
                     _%tl141566141949%_))
                (_%__match144593144594%_
                 _%e141563141939%_
                 _%hd141562141942%_
                 _%tl141561141944%_
                 _%__splice144558144559%_
                 _%target141564141947%_
                 _%tl141566141949%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match144593144594%_
                                                 _%e141563141939%_
                                                 _%hd141562141942%_
                                                 _%tl141561141944%_
                                                 _%__splice144558144559%_
                                                 _%target141564141947%_
                                                 _%tl141566141949%_))))
                                        (_%__match144593144594%_
                                         _%e141563141939%_
                                         _%hd141562141942%_
                                         _%tl141561141944%_
                                         _%__splice144558144559%_
                                         _%target141564141947%_
                                         _%tl141566141949%_))
                                    (_%__match144593144594%_
                                     _%e141563141939%_
                                     _%hd141562141942%_
                                     _%tl141561141944%_
                                     _%__splice144558144559%_
                                     _%target141564141947%_
                                     _%tl141566141949%_))
                                (_%__match144593144594%_
                                 _%e141563141939%_
                                 _%hd141562141942%_
                                 _%tl141561141944%_
                                 _%__splice144558144559%_
                                 _%target141564141947%_
                                 _%tl141566141949%_))))
                        (_%__match144593144594%_
                         _%e141563141939%_
                         _%hd141562141942%_
                         _%tl141561141944%_
                         _%__splice144558144559%_
                         _%target141564141947%_
                         _%tl141566141949%_))))
                (_%__match144593144594%_
                 _%e141563141939%_
                 _%hd141562141942%_
                 _%tl141561141944%_
                 _%__splice144558144559%_
                 _%target141564141947%_
                 _%tl141566141949%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141567141952%_
                                       _%target141564141947%_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144554144555%_))
                              (let ((_%e141563141939%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144554144555%_))))
                                (let ((_%tl141561141944%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141563141939%_)))
                                      (_%hd141562141942%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141563141939%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd141562141942%_))
                                      (let ((_%__splice144558144559%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd141562141942%_
                                                '0))))
                                        (let ((_%tl141566141949%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144558144559%_
                                                  '1)))
                                              (_%target141564141947%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144558144559%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141566141949%_))
                                              (_%__match144581144582%_
                                               _%e141563141939%_
                                               _%hd141562141942%_
                                               _%tl141561141944%_
                                               _%__splice144558144559%_
                                               _%target141564141947%_
                                               _%tl141566141949%_)
                                              (_%__match144593144594%_
                                               _%e141563141939%_
                                               _%hd141562141942%_
                                               _%tl141561141944%_
                                               _%__splice144558144559%_
                                               _%target141564141947%_
                                               _%tl141566141949%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141561141944%_))
                                          (let ((_%e141651141693%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141561141944%_))))
                                            (let ((_%tl141649141698%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141651141693%_)))
                                                  (_%hd141650141696%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141651141693%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141650141696%_))
                                                  (let ((_%e141654141701%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141650141696%_))))
                                                    (let ((_%tl141652141706%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141654141701%_)))
                                                          (_%hd141653141704%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141654141701%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd141653141704%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd141653141704%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141652141706%_))
                          (let ((_%e141657141709%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141652141706%_))))
                            (let ((_%tl141655141714%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141657141709%_)))
                                  (_%hd141656141712%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141657141709%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd141656141712%_))
                                  (let ((_%e141660141717%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd141656141712%_))))
                                    (let ((_%tl141658141722%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141660141717%_)))
                                          (_%hd141659141720%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141660141717%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd141659141720%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd141659141720%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl141658141722%_))
                                                  (let ((_%e141663141725%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl141658141722%_))))
                                                    (let ((_%tl141661141730%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141663141725%_)))
                                                          (_%hd141662141728%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141663141725%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141661141730%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141655141714%_))
                      (let ((_%e141666141733%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141655141714%_))))
                        (let ((_%tl141664141738%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141666141733%_)))
                              (_%hd141665141736%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141666141733%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd141665141736%_))
                              (let ((_%e141669141741%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd141665141736%_))))
                                (let ((_%tl141667141746%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141669141741%_)))
                                      (_%hd141668141744%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141669141741%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd141668141744%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd141668141744%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141667141746%_))
                                              (let ((_%e141672141749%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141667141746%_))))
                                                (let ((_%tl141670141754%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141672141749%_)))
                                                      (_%hd141671141752%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141672141749%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141670141754%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl141664141738%_))
                                                          (let ((_%e141675141757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl141664141738%_))))
                    (let ((_%tl141673141762%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141675141757%_)))
                          (_%hd141674141760%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141675141757%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141673141762%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl141649141698%_))
                              (_%__kont144566144567%_
                               _%hd141671141752%_
                               _%hd141662141728%_
                               _%hd141562141942%_)
                              (let ()
                                (declare (not safe))
                                (_%g141556141680%_)))
                          (let () (declare (not safe)) (_%g141556141680%_)))))
                  (let () (declare (not safe)) (_%g141556141680%_)))
              (let () (declare (not safe)) (_%g141556141680%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g141556141680%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141556141680%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g141556141680%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g141556141680%_)))))
                      (let () (declare (not safe)) (_%g141556141680%_)))
                  (let () (declare (not safe)) (_%g141556141680%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141556141680%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g141556141680%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141556141680%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g141556141680%_)))))
                          (let () (declare (not safe)) (_%g141556141680%_)))
                      (let () (declare (not safe)) (_%g141556141680%_)))
                  (let () (declare (not safe)) (_%g141556141680%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141556141680%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141556141680%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g141556141680%_))))))))
                 (_%generate1141399%_
                  (lambda (_%args141534%_
                           _%arglen141535%_
                           _%hd141536%_
                           _%body141537%_)
                    (let* ((_%len141539%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd141536%_)))
                           (_%condition141544%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd141536%_))
                                (let ()
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#current-compile-decls-unsafe?))
                                      (cons '##fx=
                                            (cons _%arglen141535%_
                                                  (cons _%len141539%_ '())))
                                      (cons 'let
                                            (cons '()
                                                  (cons '(declare (not safe))
                                                        (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%arglen141535%_ (cons _%len141539%_ '())))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len141539%_ '0)
                                    (let ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gxc#current-compile-decls-unsafe?))
                                          (cons '##fx>=
                                                (cons _%arglen141535%_
                                                      (cons _%len141539%_
                                                            '())))
                                          (cons 'let
                                                (cons '()
                                                      (cons '(declare
                                                               (not safe))
                                                            (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%arglen141535%_
                                      (cons _%len141539%_ '())))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let () '#t))))
                           (_%dispatch141546%_
                            (if (let ()
                                  (declare (not safe))
                                  (_%dispatch-case?141397%_
                                   _%hd141536%_
                                   _%body141537%_))
                                (let ()
                                  (declare (not safe))
                                  (_%dispatch-case-e141398%_
                                   _%hd141536%_
                                   _%body141537%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _%self141394%_
                                   _%hd141536%_
                                   _%body141537%_)))))
                      (cons _%condition141544%_
                            (cons (cons 'apply
                                        (cons _%dispatch141546%_
                                              (cons _%args141534%_ '())))
                                  '()))))))
          (let* ((_%g141401141429%_
                  (lambda (_%g141402141426%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141402141426%_))))
                 (_%g141400141531%_
                  (lambda (_%g141402141432%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141402141432%_))
                        (let ((_%e141407141434%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141402141432%_))))
                          (let ((_%hd141406141437%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141407141434%_)))
                                (_%tl141405141439%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141407141434%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl141405141439%_))
                                (let ((_g145751_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl141405141439%_
                                          '0))))
                                  (begin
                                    (let ((_g145752_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145751_)
                                                 (##vector-length _g145751_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145752_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145752_)))
                                    (let ((_%target141408141442%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145751_ 0)))
                                          (_%tl141410141444%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145751_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl141410141444%_))
                                          (letrec ((_%loop141411141447%_
                                                    (lambda (_%hd141409141450%_
                                                             _%body141415141452%_
                                                             _%hd141416141454%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd141409141450%_))
                                                          (let ((_%e141412141457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd141409141450%_))))
                    (let ((_%lp-hd141413141460%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141412141457%_)))
                          (_%lp-tl141414141462%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141412141457%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd141413141460%_))
                          (let ((_%e141421141465%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd141413141460%_))))
                            (let ((_%hd141420141468%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141421141465%_)))
                                  (_%tl141419141470%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141421141465%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl141419141470%_))
                                  (let ((_%e141424141473%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl141419141470%_))))
                                    (let ((_%hd141423141476%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141424141473%_)))
                                          (_%tl141422141478%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141424141473%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl141422141478%_))
                                          (let ((__tmp145754
                                                 (cons _%hd141423141476%_
                                                       _%body141415141452%_))
                                                (__tmp145753
                                                 (cons _%hd141420141468%_
                                                       _%hd141416141454%_)))
                                            (declare (not safe))
                                            (_%loop141411141447%_
                                             _%lp-tl141414141462%_
                                             __tmp145754
                                             __tmp145753))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141401141429%_
                                             _%g141402141432%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g141401141429%_ _%g141402141432%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g141401141429%_ _%g141402141432%_)))))
                  (let ((_%body141417141481%_ (reverse _%body141415141452%_))
                        (_%hd141418141483%_ (reverse _%hd141416141454%_)))
                    ((lambda (_%L141486%_ _%L141487%_)
                       (let ((_%args141506%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen141507%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name141508%_
                              (let ((_%$e141503%_
                                     (let ((__tmp145755
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp145755 _%stx141395%_))))
                                (if _%$e141503%_
                                    _%$e141503%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args141506%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen141507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (let ()
                                       (declare (not safe))
                                       (gxc#current-compile-decls-unsafe?))
                                     (cons '##length (cons _%args141506%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args141506%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp145759
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name141508%_
                                                                (cons _%args141506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp145756
                                  (map (lambda (_%g141509141512%_
                                                _%g141510141514%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%generate1141399%_
                                            _%args141506%_
                                            _%arglen141507%_
                                            _%g141509141512%_
                                            _%g141510141514%_)))
                                       (let ((__tmp145757
                                              (lambda (_%g141516141519%_
                                                       _%g141517141521%_)
                                                (cons _%g141516141519%_
                                                      _%g141517141521%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145757
                                          '()
                                          _%L141487%_))
                                       (let ((__tmp145758
                                              (lambda (_%g141523141526%_
                                                       _%g141524141528%_)
                                                (cons _%g141523141526%_
                                                      _%g141524141528%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145758
                                          '()
                                          _%L141486%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp145759 __tmp145756)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body141417141481%_
                     _%hd141418141483%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop141411141447%_
                                               _%target141408141442%_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141401141429%_
                                             _%g141402141432%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g141401141429%_ _%g141402141432%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g141401141429%_ _%g141402141432%_))))))
            (declare (not safe))
            (_%g141400141531%_ _%stx141395%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self140624%_ _%stx140625%_ _%compiled-body?140626%_)
        (letrec ((_%generate-simple140628%_
                  (lambda (_%hd141379%_ _%body141380%_)
                    (let ((__tmp145760
                           (let ((__tmp145761
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _%self140624%_
                                     'let
                                     _%hd141379%_
                                     _%body141380%_
                                     _%compiled-body?140626%_))))
                             (declare (not safe))
                             (_%coalesce-let140630%_ __tmp145761))))
                      (declare (not safe))
                      (_%coalesce-boolean140629%_ __tmp145760))))
                 (_%coalesce-boolean140629%_
                  (lambda (_%code141240%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code141241141267%_ _%code141240%_)
                               (_%else141243141275%_
                                (lambda () _%code141240%_))
                               (_%K141245141312%_
                                (lambda (_%expr2141278%_
                                         _%expr1141279%_
                                         _%id141280%_)
                                  (let* ((_%expr2141281141289%_
                                          _%expr2141278%_)
                                         (_%else141283141297%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1141279%_
                                                        (cons _%expr2141278%_
                                                              '())))))
                                         (_%K141285141302%_
                                          (lambda (_%exprs141300%_)
                                            (cons 'or
                                                  (cons _%expr1141279%_
                                                        _%exprs141300%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2141281141289%_))
                                        (let ((_%hd141286141305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2141281141289%_)))
                                              (_%tl141287141307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2141281141289%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd141286141305%_ 'or))
                                              (let ((_%exprs141310%_
                                                     _%tl141287141307%_))
                                                (declare (not safe))
                                                (_%K141285141302%_
                                                 _%exprs141310%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%else141283141297%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else141283141297%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code141241141267%_))
                              (let ((_%hd141246141315%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code141241141267%_)))
                                    (_%tl141247141317%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code141241141267%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd141246141315%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl141247141317%_))
                                        (let ((_%hd141248141320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl141247141317%_)))
                                              (_%tl141249141322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl141247141317%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd141248141320%_))
                                              (let ((_%hd141260141325%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd141248141320%_)))
                                                    (_%tl141261141327%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd141248141320%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd141260141325%_))
                                                    (let ((_%hd141262141330%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd141260141325%_)))
                                                          (_%tl141263141332%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd141260141325%_))))
                                                      (let ((_%id141335%_
                                                             _%hd141262141330%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl141263141332%_))
                                                            (let ((_%hd141264141337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl141263141332%_)))
                          (_%tl141265141339%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl141263141332%_))))
                      (let ((_%expr1141342%_ _%hd141264141337%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl141265141339%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl141261141327%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl141249141322%_))
                                    (let ((_%hd141250141344%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl141249141322%_)))
                                          (_%tl141251141346%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl141249141322%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd141250141344%_))
                                          (let ((_%hd141252141349%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd141250141344%_)))
                                                (_%tl141253141351%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd141250141344%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd141252141349%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl141253141351%_))
                                                    (let ((_%hd141254141354%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl141253141351%_)))
                                                          (_%tl141255141356%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl141253141351%_))))
                                                      (if ((lambda (_%g141358141360%_)
                                                             (eq? _%g141358141360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id141335%_))
                   _%hd141254141354%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl141255141356%_))
                      (let ((_%hd141256141363%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl141255141356%_)))
                            (_%tl141257141365%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl141255141356%_))))
                        (if ((lambda (_%g141367141369%_)
                               (eq? _%g141367141369%_ _%id141335%_))
                             _%hd141256141363%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl141257141365%_))
                                (let ((_%hd141258141372%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl141257141365%_)))
                                      (_%tl141259141374%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl141257141365%_))))
                                  (let ((_%expr2141377%_ _%hd141258141372%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl141259141374%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl141251141346%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K141245141312%_
                                               _%expr2141377%_
                                               _%expr1141342%_
                                               _%id141335%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%else141243141275%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%else141243141275%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%else141243141275%_)))
                            (let ()
                              (declare (not safe))
                              (_%else141243141275%_))))
                      (let () (declare (not safe)) (_%else141243141275%_)))
                  (let () (declare (not safe)) (_%else141243141275%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else141243141275%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else141243141275%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else141243141275%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else141243141275%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else141243141275%_)))
                            (let ()
                              (declare (not safe))
                              (_%else141243141275%_)))))
                    (let () (declare (not safe)) (_%else141243141275%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else141243141275%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%else141243141275%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else141243141275%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%else141243141275%_))))
                              (let ()
                                (declare (not safe))
                                (_%else141243141275%_))))
                        _%code141240%_)))
                 (_%coalesce-let140630%_
                  (lambda (_%code140932%_)
                    (let* ((_%code140933141007%_ _%code140932%_)
                           (_%else140938141015%_ (lambda () _%code140932%_)))
                      (let ((_%K140997141215%_
                             (lambda (_%body141213%_)
                               (cons 'let _%body141213%_)))
                            (_%K140980141161%_
                             (lambda (_%body141157%_
                                      _%expr141158%_
                                      _%id141159%_)
                               (cons 'let
                                     (cons (cons (cons _%id141159%_
                                                       (cons _%expr141158%_
                                                             '()))
                                                 '())
                                           _%body141157%_))))
                            (_%K140957141085%_
                             (lambda (_%body141079%_
                                      _%expr2141080%_
                                      _%id2141081%_
                                      _%expr1141082%_
                                      _%id1141083%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1141083%_
                                                       (cons _%expr1141082%_
                                                             '()))
                                                 (cons (cons _%id2141081%_
                                                             (cons _%expr2141080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body141079%_))))
                            (_%K140940141024%_
                             (lambda (_%body141019%_
                                      _%bind141020%_
                                      _%expr1141021%_
                                      _%id1141022%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1141022%_
                                                       (cons _%expr1141021%_
                                                             '()))
                                                 _%bind141020%_)
                                           _%body141019%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code140933141007%_))
                            (let ((_%tl140999141220%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code140933141007%_)))
                                  (_%hd140998141218%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code140933141007%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd140998141218%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl140999141220%_))
                                      (let ((_%tl141001141225%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl140999141220%_)))
                                            (_%hd141000141223%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl140999141220%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%hd141000141223%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tl141001141225%_))
                                                (let ((_%tl141003141230%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl141001141225%_)))
                                                      (_%hd141002141228%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl141001141225%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd141002141228%_))
                                                      (let ((_%tl141005141235%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd141002141228%_)))
                    (_%hd141004141233%_
                     (let () (declare (not safe)) (##car _%hd141002141228%_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _%hd141004141233%_ 'let))
                    (if (let ()
                          (declare (not safe))
                          (##null? _%tl141003141230%_))
                        (let ((_%body141238%_ _%tl141005141235%_))
                          (declare (not safe))
                          (_%K140997141215%_ _%body141238%_))
                        (let () (declare (not safe)) (_%else140938141015%_)))
                    (let () (declare (not safe)) (_%else140938141015%_))))
              (let () (declare (not safe)) (_%else140938141015%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else140938141015%_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd141000141223%_))
                                                (let ((_%tl140992141176%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd141000141223%_)))
                                                      (_%hd140991141174%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd141000141223%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd140991141174%_))
                                                      (let ((_%tl140994141181%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd140991141174%_)))
                    (_%hd140993141179%_
                     (let () (declare (not safe)) (##car _%hd140991141174%_))))
                (if (let () (declare (not safe)) (##pair? _%tl140994141181%_))
                    (let ((_%tl140996141188%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl140994141181%_)))
                          (_%hd140995141186%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl140994141181%_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl140996141188%_))
                          (if (let ()
                                (declare (not safe))
                                (##null? _%tl140992141176%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl141001141225%_))
                                  (let ((_%tl140986141195%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl141001141225%_)))
                                        (_%hd140985141193%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl141001141225%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%hd140985141193%_))
                                        (let ((_%tl140988141200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd140985141193%_)))
                                              (_%hd140987141198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd140985141193%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd140987141198%_
                                                       'let))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl140988141200%_))
                                                  (let ((_%tl140990141205%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl140988141200%_)))
                                                        (_%hd140989141203%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl140988141200%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%hd140989141203%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##null? _%tl140986141195%_))
                                                            (let ((_%id141184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd140993141179%_)
                          (_%expr141191%_ _%hd140995141186%_)
                          (_%body141208%_ _%tl140990141205%_))
                      (let ()
                        (declare (not safe))
                        (_%K140980141161%_
                         _%body141208%_
                         _%expr141191%_
                         _%id141184%_)))
                    (let () (declare (not safe)) (_%else140938141015%_)))
                (if (let () (declare (not safe)) (##pair? _%hd140989141203%_))
                    (let ((_%tl140969141134%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd140989141203%_)))
                          (_%hd140968141132%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd140989141203%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd140968141132%_))
                          (let ((_%tl140971141139%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd140968141132%_)))
                                (_%hd140970141137%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd140968141132%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl140971141139%_))
                                (let ((_%tl140973141146%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl140971141139%_)))
                                      (_%hd140972141144%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl140971141139%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl140973141146%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl140969141134%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl140986141195%_))
                                              (let ((_%id1141108%_
                                                     _%hd140993141179%_)
                                                    (_%expr1141115%_
                                                     _%hd140995141186%_)
                                                    (_%id2141142%_
                                                     _%hd140970141137%_)
                                                    (_%expr2141149%_
                                                     _%hd140972141144%_)
                                                    (_%body141151%_
                                                     _%tl140990141205%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%K140957141085%_
                                                   _%body141151%_
                                                   _%expr2141149%_
                                                   _%id2141142%_
                                                   _%expr1141115%_
                                                   _%id1141108%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%else140938141015%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else140938141015%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else140938141015%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%else140938141015%_))))
                          (let ()
                            (declare (not safe))
                            (_%else140938141015%_))))
                    (let () (declare (not safe)) (_%else140938141015%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else140938141015%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd140987141198%_
                                                           'let*))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%tl140988141200%_))
                                                      (let ((_%tl140950141068%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl140988141200%_)))
                    (_%hd140949141066%_
                     (let () (declare (not safe)) (##car _%tl140988141200%_))))
                (if (let () (declare (not safe)) (##null? _%tl140986141195%_))
                    (let ((_%id1141047%_ _%hd140993141179%_)
                          (_%expr1141054%_ _%hd140995141186%_)
                          (_%bind141071%_ _%hd140949141066%_)
                          (_%body141073%_ _%tl140950141068%_))
                      (let ()
                        (declare (not safe))
                        (_%K140940141024%_
                         _%body141073%_
                         _%bind141071%_
                         _%expr1141054%_
                         _%id1141047%_)))
                    (let () (declare (not safe)) (_%else140938141015%_))))
              (let () (declare (not safe)) (_%else140938141015%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else140938141015%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else140938141015%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else140938141015%_)))
                              (let ()
                                (declare (not safe))
                                (_%else140938141015%_)))
                          (let ()
                            (declare (not safe))
                            (_%else140938141015%_))))
                    (let () (declare (not safe)) (_%else140938141015%_))))
              (let () (declare (not safe)) (_%else140938141015%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else140938141015%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%else140938141015%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else140938141015%_))))
                            (let ()
                              (declare (not safe))
                              (_%else140938141015%_)))))))
                 (_%generate-values140631%_
                  (lambda (_%hd140745%_ _%body140746%_)
                    (let _%lp140748%_ ((_%rest140750%_ _%hd140745%_)
                                       (_%bind140751%_ '())
                                       (_%check140752%_ '())
                                       (_%post140753%_ '()))
                      (let* ((_%__stx144889144890%_ _%rest140750%_)
                             (_%g140756140767%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144889144890%_)))))
                        (let ((_%__kont144891144892%_
                               (lambda (_%L140794%_ _%L140795%_)
                                 (let* ((_%__stx144845144846%_ _%L140795%_)
                                        (_%g140810140835%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144845144846%_)))))
                                   (let ((_%__kont144847144848%_
                                          (lambda (_%L140908%_ _%L140909%_)
                                            (let ((_%eid140923%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140909%_)))
                                                  (_%expr140924%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self140624%_
                                                      _%L140908%_))))
                                              (let ((__tmp145762
                                                     (cons (cons _%eid140923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140924%_ '()))
                   _%bind140751%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%lp140748%_
                                                 _%L140794%_
                                                 __tmp145762
                                                 _%check140752%_
                                                 _%post140753%_)))))
                                         (_%__kont144849144850%_
                                          (lambda (_%L140856%_ _%L140857%_)
                                            (let* ((_%vals140870%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values140872%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _%vals140870%_
                                                       _%L140857%_
                                                       _%L140856%_)))
                                                   (_%refs140874%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _%vals140870%_
                                                       _%L140857%_)))
                                                   (_%expr140876%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self140624%_
                                                       _%L140856%_))))
                                              (let ((__tmp145765
                                                     (cons (cons _%vals140870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140876%_ '()))
                   _%bind140751%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145764
                                                     (cons _%check-values140872%_
                                                           _%check140752%_))
                                                    (__tmp145763
                                                     (cons _%refs140874%_
                                                           _%post140753%_)))
                                                (declare (not safe))
                                                (_%lp140748%_
                                                 _%L140794%_
                                                 __tmp145765
                                                 __tmp145764
                                                 __tmp145763))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144845144846%_))
                                         (let ((_%e140816140884%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144845144846%_))))
                                           (let ((_%tl140814140889%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140816140884%_)))
                                                 (_%hd140815140887%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140816140884%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd140815140887%_))
                                                 (let ((_%e140819140892%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd140815140887%_))))
                                                   (let ((_%tl140817140897%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140819140892%_)))
                                                         (_%hd140818140895%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140819140892%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140817140897%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140814140889%_))
                     (let ((_%e140822140900%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140814140889%_))))
                       (let ((_%tl140820140905%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140822140900%_)))
                             (_%hd140821140903%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140822140900%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140820140905%_))
                             (_%__kont144847144848%_
                              _%hd140821140903%_
                              _%hd140818140895%_)
                             (let ()
                               (declare (not safe))
                               (_%g140810140835%_)))))
                     (let () (declare (not safe)) (_%g140810140835%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140814140889%_))
                     (let ((_%e140830140848%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140814140889%_))))
                       (let ((_%tl140828140853%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140830140848%_)))
                             (_%hd140829140851%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140830140848%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140828140853%_))
                             (_%__kont144849144850%_
                              _%hd140829140851%_
                              _%hd140815140887%_)
                             (let ()
                               (declare (not safe))
                               (_%g140810140835%_)))))
                     (let () (declare (not safe)) (_%g140810140835%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140814140889%_))
                                                     (let ((_%e140830140848%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140814140889%_))))
                                                       (let ((_%tl140828140853%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140830140848%_)))
                     (_%hd140829140851%_
                      (let () (declare (not safe)) (##car _%e140830140848%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140828140853%_))
                     (_%__kont144849144850%_
                      _%hd140829140851%_
                      _%hd140815140887%_)
                     (let () (declare (not safe)) (_%g140810140835%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140810140835%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g140810140835%_)))))))
                              (_%__kont144893144894%_
                               (lambda ()
                                 (let* ((_%body140774%_
                                         (if _%compiled-body?140626%_
                                             _%body140746%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self140624%_
                                                _%body140746%_))))
                                        (_%body140776%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-post140632%_
                                            _%post140753%_
                                            _%body140774%_)))
                                        (_%body140778%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-check140633%_
                                            _%check140752%_
                                            _%body140776%_))))
                                   (cons 'let
                                         (cons (reverse _%bind140751%_)
                                               (cons _%body140778%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144889144890%_))
                              (let ((_%e140762140786%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144889144890%_))))
                                (let ((_%tl140760140791%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140762140786%_)))
                                      (_%hd140761140789%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140762140786%_))))
                                  (_%__kont144891144892%_
                                   _%tl140760140791%_
                                   _%hd140761140789%_)))
                              (_%__kont144893144894%_)))))))
                 (_%generate-values-post140632%_
                  (lambda (_%post140704%_ _%body140705%_)
                    (let _%lp140707%_ ((_%rest140709%_ _%post140704%_)
                                       (_%body140710%_ _%body140705%_))
                      (let* ((_%rest140711140719%_ _%rest140709%_)
                             (_%else140713140727%_ (lambda () _%body140710%_))
                             (_%K140715140733%_
                              (lambda (_%rest140730%_ _%bind140731%_)
                                (let ((__tmp145766
                                       (cons 'let
                                             (cons _%bind140731%_
                                                   (cons _%body140710%_
                                                         '())))))
                                  (declare (not safe))
                                  (_%lp140707%_ _%rest140730%_ __tmp145766)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140711140719%_))
                            (let ((_%hd140716140736%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140711140719%_)))
                                  (_%tl140717140738%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140711140719%_))))
                              (let* ((_%bind140741%_ _%hd140716140736%_)
                                     (_%rest140743%_ _%tl140717140738%_))
                                (declare (not safe))
                                (_%K140715140733%_
                                 _%rest140743%_
                                 _%bind140741%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140713140727%_)))))))
                 (_%generate-values-check140633%_
                  (lambda (_%check140701%_ _%body140702%_)
                    (cons 'begin
                          (let ((__tmp145768 (cons _%body140702%_ '()))
                                (__tmp145767 (reverse _%check140701%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145768 __tmp145767))))))
          (let* ((_%g140635140652%_
                  (lambda (_%g140636140649%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140636140649%_))))
                 (_%g140634140698%_
                  (lambda (_%g140636140655%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140636140655%_))
                        (let ((_%e140641140657%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140636140655%_))))
                          (let ((_%hd140640140660%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140641140657%_)))
                                (_%tl140639140662%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140641140657%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140639140662%_))
                                (let ((_%e140644140665%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140639140662%_))))
                                  (let ((_%hd140643140668%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140644140665%_)))
                                        (_%tl140642140670%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140644140665%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140642140670%_))
                                        (let ((_%e140647140673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140642140670%_))))
                                          (let ((_%hd140646140676%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140647140673%_)))
                                                (_%tl140645140678%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140647140673%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140645140678%_))
                                                ((lambda (_%L140681%_
                                                          _%L140682%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L140682%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-simple140628%_
                                                          _%L140682%_
                                                          _%L140681%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values140631%_
                                                          _%L140682%_
                                                          _%L140681%_))))
                                                 _%hd140646140676%_
                                                 _%hd140643140668%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g140635140652%_
                                                   _%g140636140655%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140635140652%_
                                           _%g140636140655%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g140635140652%_ _%g140636140655%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g140635140652%_ _%g140636140655%_))))))
            (declare (not safe))
            (_%g140634140698%_ _%stx140625%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self141385%_ _%stx141386%_)
        (let ((_%compiled-body?141388%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _%self141385%_
           _%stx141386%_
           _%compiled-body?141388%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g145770_
        (let ((_g145769_ (let () (declare (not safe)) (##length _g145770_))))
          (cond ((let () (declare (not safe)) (##fx= _g145769_ 2))
                 (apply (lambda (_%self141385%_ _%stx141386%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _%self141385%_
                             _%stx141386%_)))
                        _g145770_))
                ((let () (declare (not safe)) (##fx= _g145769_ 3))
                 (apply (lambda (_%self141390%_
                                 _%stx141391%_
                                 _%compiled-body?141392%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _%self141390%_
                             _%stx141391%_
                             _%compiled-body?141392%_)))
                        _g145770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g145770_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals140518%_ _%hd140519%_)
        (let _%lp140521%_ ((_%rest140523%_ _%hd140519%_)
                           (_%k140524%_ '0)
                           (_%r140525%_ '()))
          (let* ((_%__stx144903144904%_ _%rest140523%_)
                 (_%g140530140547%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx144903144904%_)))))
            (let ((_%__kont144905144906%_
                   (lambda (_%L140610%_)
                     (let ((__tmp145771
                            (let ()
                              (declare (not safe))
                              (##fx+ _%k140524%_ '1))))
                       (declare (not safe))
                       (_%lp140521%_ _%L140610%_ __tmp145771 _%r140525%_))))
                  (_%__kont144907144908%_
                   (lambda (_%L140583%_ _%L140584%_)
                     (let ((__tmp145773
                            (let ()
                              (declare (not safe))
                              (##fx+ _%k140524%_ '1)))
                           (__tmp145772
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L140584%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#generate-runtime-values-ref
                                                 _%vals140518%_
                                                 _%k140524%_
                                                 _%L140583%_))
                                              '()))
                                  _%r140525%_)))
                       (declare (not safe))
                       (_%lp140521%_ _%L140583%_ __tmp145773 __tmp145772))))
                  (_%__kont144909144910%_
                   (lambda (_%L140559%_)
                     (let ((__tmp145774
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L140559%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#generate-runtime-values->list
                                                 _%vals140518%_
                                                 _%k140524%_))
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp145774 _%r140525%_))))
                  (_%__kont144911144912%_ (lambda () (reverse _%r140525%_))))
              (let ((_%g140528140570%_
                     (lambda ()
                       (let ((_%L140559%_ _%__stx144903144904%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L140559%_))
                             (_%__kont144909144910%_ _%L140559%_)
                             (_%__kont144911144912%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx144903144904%_))
                    (let ((_%e140535140599%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx144903144904%_))))
                      (let ((_%tl140533140604%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140535140599%_)))
                            (_%hd140534140602%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140535140599%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd140534140602%_))
                            (let ((_%e140536140607%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd140534140602%_))))
                              (if (equal? _%e140536140607%_ '#f)
                                  (_%__kont144905144906%_ _%tl140533140604%_)
                                  (_%__kont144907144908%_
                                   _%tl140533140604%_
                                   _%hd140534140602%_)))
                            (_%__kont144907144908%_
                             _%tl140533140604%_
                             _%hd140534140602%_))))
                    (let () (declare (not safe)) (_%g140528140570%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self140197%_ _%stx140198%_ _%compiled-body?140199%_)
        (letrec ((_%generate-simple140201%_
                  (lambda (_%hd140503%_ _%body140504%_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _%self140197%_
                       'letrec
                       _%hd140503%_
                       _%body140504%_
                       _%compiled-body?140199%_))))
                 (_%generate-values140202%_
                  (lambda (_%hd140282%_ _%body140283%_)
                    (let _%lp140285%_ ((_%rest140287%_ _%hd140282%_)
                                       (_%bind140288%_ '())
                                       (_%check140289%_ '())
                                       (_%post140290%_ '()))
                      (let* ((_%__stx144977144978%_ _%rest140287%_)
                             (_%g140293140304%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144977144978%_)))))
                        (let ((_%__kont144979144980%_
                               (lambda (_%L140331%_ _%L140332%_)
                                 (let* ((_%__stx144933144934%_ _%L140332%_)
                                        (_%g140347140372%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144933144934%_)))))
                                   (let ((_%__kont144935144936%_
                                          (lambda (_%L140479%_ _%L140480%_)
                                            (let ((_%eid140494%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140480%_)))
                                                  (_%expr140495%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self140197%_
                                                      _%L140479%_))))
                                              (let ((__tmp145775
                                                     (cons (cons _%eid140494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140495%_ '()))
                   _%bind140288%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%lp140285%_
                                                 _%L140331%_
                                                 __tmp145775
                                                 _%check140289%_
                                                 _%post140290%_)))))
                                         (_%__kont144937144938%_
                                          (lambda (_%L140393%_ _%L140394%_)
                                            (let* ((_%vals140407%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values140409%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _%vals140407%_
                                                       _%L140394%_
                                                       _%L140393%_)))
                                                   (_%refs140411%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _%vals140407%_
                                                       _%L140394%_)))
                                                   (_%expr140413%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self140197%_
                                                       _%L140393%_))))
                                              (let ((__tmp145778
                                                     (let ((__tmp145780
                                                            (cons (cons _%vals140407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%expr140413%_ '()))
                          _%bind140288%_))
                   (__tmp145779
                    (map (lambda (_%e140415140417%_)
                           (let* ((_%g140419140428%_ _%e140415140417%_)
                                  (_%E140421140432%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%g140419140428%_
                                              '([eid _])))
                                     '#!void))
                                  (_%K140422140437%_
                                   (lambda (_%eid140435%_)
                                     (cons _%eid140435%_ (cons '#!void '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%g140419140428%_))
                                 (let ((_%hd140423140440%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%g140419140428%_)))
                                       (_%tl140424140442%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%g140419140428%_))))
                                   (let ((_%eid140445%_ _%hd140423140440%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _%tl140424140442%_))
                                         (let ((_%tl140426140447%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%tl140424140442%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _%tl140426140447%_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%K140422140437%_
                                                  _%eid140445%_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%E140421140432%_))))
                                         (let ()
                                           (declare (not safe))
                                           (_%E140421140432%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%E140421140432%_)))))
                         _%refs140411%_)))
               (declare (not safe))
               (__foldl1 cons __tmp145780 __tmp145779)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145777
                                                     (cons _%check-values140409%_
                                                           _%check140289%_))
                                                    (__tmp145776
                                                     (let ()
                                                       (declare (not safe))
                                                       (__foldl1
                                                        cons
                                                        _%refs140411%_
                                                        _%post140290%_))))
                                                (declare (not safe))
                                                (_%lp140285%_
                                                 _%L140331%_
                                                 __tmp145778
                                                 __tmp145777
                                                 __tmp145776))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144933144934%_))
                                         (let ((_%e140353140455%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144933144934%_))))
                                           (let ((_%tl140351140460%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140353140455%_)))
                                                 (_%hd140352140458%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140353140455%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd140352140458%_))
                                                 (let ((_%e140356140463%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd140352140458%_))))
                                                   (let ((_%tl140354140468%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140356140463%_)))
                                                         (_%hd140355140466%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140356140463%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140354140468%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140351140460%_))
                     (let ((_%e140359140471%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140351140460%_))))
                       (let ((_%tl140357140476%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140359140471%_)))
                             (_%hd140358140474%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140359140471%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140357140476%_))
                             (_%__kont144935144936%_
                              _%hd140358140474%_
                              _%hd140355140466%_)
                             (let ()
                               (declare (not safe))
                               (_%g140347140372%_)))))
                     (let () (declare (not safe)) (_%g140347140372%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140351140460%_))
                     (let ((_%e140367140385%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140351140460%_))))
                       (let ((_%tl140365140390%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140367140385%_)))
                             (_%hd140366140388%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140367140385%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140365140390%_))
                             (_%__kont144937144938%_
                              _%hd140366140388%_
                              _%hd140352140458%_)
                             (let ()
                               (declare (not safe))
                               (_%g140347140372%_)))))
                     (let () (declare (not safe)) (_%g140347140372%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140351140460%_))
                                                     (let ((_%e140367140385%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140351140460%_))))
                                                       (let ((_%tl140365140390%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140367140385%_)))
                     (_%hd140366140388%_
                      (let () (declare (not safe)) (##car _%e140367140385%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140365140390%_))
                     (_%__kont144937144938%_
                      _%hd140366140388%_
                      _%hd140352140458%_)
                     (let () (declare (not safe)) (_%g140347140372%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140347140372%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g140347140372%_)))))))
                              (_%__kont144981144982%_
                               (lambda ()
                                 (let* ((_%body140311%_
                                         (if _%compiled-body?140199%_
                                             _%body140283%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self140197%_
                                                _%body140283%_))))
                                        (_%body140313%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-post140204%_
                                            _%post140290%_
                                            _%body140311%_)))
                                        (_%body140315%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-check140203%_
                                            _%check140289%_
                                            _%body140313%_))))
                                   (cons 'letrec
                                         (cons (reverse _%bind140288%_)
                                               (cons _%body140315%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144977144978%_))
                              (let ((_%e140299140323%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144977144978%_))))
                                (let ((_%tl140297140328%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140299140323%_)))
                                      (_%hd140298140326%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140299140323%_))))
                                  (_%__kont144979144980%_
                                   _%tl140297140328%_
                                   _%hd140298140326%_)))
                              (_%__kont144981144982%_)))))))
                 (_%generate-values-check140203%_
                  (lambda (_%check140279%_ _%body140280%_)
                    (cons 'begin
                          (let ((__tmp145782 (cons _%body140280%_ '()))
                                (__tmp145781 (reverse _%check140279%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145782 __tmp145781)))))
                 (_%generate-values-post140204%_
                  (lambda (_%post140272%_ _%body140273%_)
                    (cons 'begin
                          (let ((__tmp145786 (cons _%body140273%_ '()))
                                (__tmp145783
                                 (let ((__tmp145785
                                        (lambda (_%g140274140276%_)
                                          (cons 'set! _%g140274140276%_)))
                                       (__tmp145784 (reverse _%post140272%_)))
                                   (declare (not safe))
                                   (##map __tmp145785 __tmp145784))))
                            (declare (not safe))
                            (__foldr1 cons __tmp145786 __tmp145783))))))
          (let* ((_%g140206140223%_
                  (lambda (_%g140207140220%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140207140220%_))))
                 (_%g140205140269%_
                  (lambda (_%g140207140226%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140207140226%_))
                        (let ((_%e140212140228%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140207140226%_))))
                          (let ((_%hd140211140231%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140212140228%_)))
                                (_%tl140210140233%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140212140228%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140210140233%_))
                                (let ((_%e140215140236%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140210140233%_))))
                                  (let ((_%hd140214140239%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140215140236%_)))
                                        (_%tl140213140241%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140215140236%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140213140241%_))
                                        (let ((_%e140218140244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140213140241%_))))
                                          (let ((_%hd140217140247%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140218140244%_)))
                                                (_%tl140216140249%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140218140244%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140216140249%_))
                                                ((lambda (_%L140252%_
                                                          _%L140253%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L140253%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-simple140201%_
                                                          _%L140253%_
                                                          _%L140252%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values140202%_
                                                          _%L140253%_
                                                          _%L140252%_))))
                                                 _%hd140217140247%_
                                                 _%hd140214140239%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g140206140223%_
                                                   _%g140207140226%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140206140223%_
                                           _%g140207140226%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g140206140223%_ _%g140207140226%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g140206140223%_ _%g140207140226%_))))))
            (declare (not safe))
            (_%g140205140269%_ _%stx140198%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self140509%_ _%stx140510%_)
        (let ((_%compiled-body?140512%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _%self140509%_
           _%stx140510%_
           _%compiled-body?140512%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g145788_
        (let ((_g145787_ (let () (declare (not safe)) (##length _g145788_))))
          (cond ((let () (declare (not safe)) (##fx= _g145787_ 2))
                 (apply (lambda (_%self140509%_ _%stx140510%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _%self140509%_
                             _%stx140510%_)))
                        _g145788_))
                ((let () (declare (not safe)) (##fx= _g145787_ 3))
                 (apply (lambda (_%self140514%_
                                 _%stx140515%_
                                 _%compiled-body?140516%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _%self140514%_
                             _%stx140515%_
                             _%compiled-body?140516%_)))
                        _g145788_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g145788_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self139778%_ _%stx139779%_)
        (letrec ((_%generate-values139781%_
                  (lambda (_%hd140024%_ _%body140025%_)
                    (let _%lp140027%_ ((_%rest140029%_ _%hd140024%_)
                                       (_%bind140030%_ '()))
                      (let* ((_%rest140031140039%_ _%rest140029%_)
                             (_%else140033140050%_
                              (lambda ()
                                (let ((_%bind140047%_ (reverse _%bind140030%_))
                                      (_%body140048%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self139778%_
                                          _%body140025%_))))
                                  (cons 'letrec*
                                        (cons _%bind140047%_
                                              (cons _%body140048%_ '()))))))
                             (_%K140035140184%_
                              (lambda (_%rest140053%_ _%hd-bind140054%_)
                                (let* ((_%__stx144991144992%_
                                        _%hd-bind140054%_)
                                       (_%g140057140082%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx144991144992%_)))))
                                  (let ((_%__kont144993144994%_
                                         (lambda (_%L140163%_ _%L140164%_)
                                           (let ((_%eid140178%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L140164%_)))
                                                 (_%expr140179%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self139778%_
                                                     _%L140163%_))))
                                             (let ((__tmp145789
                                                    (cons (cons _%eid140178%_
                                                                (cons _%expr140179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind140030%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp140027%_
                                                _%rest140053%_
                                                __tmp145789)))))
                                        (_%__kont144995144996%_
                                         (lambda (_%L140103%_ _%L140104%_)
                                           (let* ((_%vals140123%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp140125%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values140127%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _%tmp140125%_
                                                      _%L140104%_
                                                      _%L140103%_)))
                                                  (_%refs140129%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _%vals140123%_
                                                      _%L140104%_)))
                                                  (_%expr140131%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139778%_
                                                      _%L140103%_)))
                                                  (__tmp145790
                                                   (let ((__tmp145791
                                                          (cons (cons _%vals140123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons 'let
                                          (cons (cons (cons _%tmp140125%_
                                                            (cons _%expr140131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%check-values140127%_
                                                      (cons _%tmp140125%_
                                                            '()))))
                                    '()))
                        _%bind140030%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldl1
                                                      cons
                                                      __tmp145791
                                                      _%refs140129%_))))
                                             (declare (not safe))
                                             (_%lp140027%_
                                              _%rest140053%_
                                              __tmp145790)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx144991144992%_))
                                        (let ((_%e140063140139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx144991144992%_))))
                                          (let ((_%tl140061140144%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140063140139%_)))
                                                (_%hd140062140142%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140063140139%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd140062140142%_))
                                                (let ((_%e140066140147%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd140062140142%_))))
                                                  (let ((_%tl140064140152%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140066140147%_)))
                                                        (_%hd140065140150%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140066140147%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140064140152%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl140061140144%_))
                                                            (let ((_%e140069140155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl140061140144%_))))
                      (let ((_%tl140067140160%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140069140155%_)))
                            (_%hd140068140158%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140069140155%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl140067140160%_))
                            (_%__kont144993144994%_
                             _%hd140068140158%_
                             _%hd140065140150%_)
                            (let ()
                              (declare (not safe))
                              (_%g140057140082%_)))))
                    (let () (declare (not safe)) (_%g140057140082%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl140061140144%_))
                    (let ((_%e140077140095%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl140061140144%_))))
                      (let ((_%tl140075140100%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140077140095%_)))
                            (_%hd140076140098%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140077140095%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl140075140100%_))
                            (_%__kont144995144996%_
                             _%hd140076140098%_
                             _%hd140062140142%_)
                            (let ()
                              (declare (not safe))
                              (_%g140057140082%_)))))
                    (let () (declare (not safe)) (_%g140057140082%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl140061140144%_))
                                                    (let ((_%e140077140095%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl140061140144%_))))
                                                      (let ((_%tl140075140100%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e140077140095%_)))
                    (_%hd140076140098%_
                     (let () (declare (not safe)) (##car _%e140077140095%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl140075140100%_))
                    (_%__kont144995144996%_
                     _%hd140076140098%_
                     _%hd140062140142%_)
                    (let () (declare (not safe)) (_%g140057140082%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g140057140082%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140057140082%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140031140039%_))
                            (let ((_%hd140036140187%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140031140039%_)))
                                  (_%tl140037140189%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140031140039%_))))
                              (let* ((_%hd-bind140192%_ _%hd140036140187%_)
                                     (_%rest140194%_ _%tl140037140189%_))
                                (declare (not safe))
                                (_%K140035140184%_
                                 _%rest140194%_
                                 _%hd-bind140192%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140033140050%_)))))))
                 (_%generate-letrec?139782%_
                  (lambda (_%hd139914%_)
                    (let _%lp139916%_ ((_%rest139918%_ _%hd139914%_))
                      (let* ((_%rest139919139927%_ _%rest139918%_)
                             (_%else139921139935%_ (lambda () '#t))
                             (_%K139923140012%_
                              (lambda (_%rest139938%_ _%hd-bind139939%_)
                                (let* ((_%g139941139958%_
                                        (lambda (_%g139942139955%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g139942139955%_))))
                                       (_%g139940140009%_
                                        (lambda (_%g139942139961%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g139942139961%_))
                                              (let ((_%e139947139963%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g139942139961%_))))
                                                (let ((_%hd139946139966%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139947139963%_)))
                                                      (_%tl139945139968%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139947139963%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd139946139966%_))
                                                      (let ((_%e139950139971%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd139946139966%_))))
                (let ((_%hd139949139974%_
                       (let () (declare (not safe)) (##car _%e139950139971%_)))
                      (_%tl139948139976%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139950139971%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139948139976%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl139945139968%_))
                          (let ((_%e139953139979%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl139945139968%_))))
                            (let ((_%hd139952139982%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139953139979%_)))
                                  (_%tl139951139984%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139953139979%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl139951139984%_))
                                  ((lambda (_%L139987%_ _%L139988%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_%is-lambda-expr?139783%_
                                            _%L139987%_))
                                         (let ()
                                           (declare (not safe))
                                           (_%lp139916%_ _%rest139938%_))
                                         '#f))
                                   _%hd139952139982%_
                                   _%hd139949139974%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g139941139958%_ _%g139942139961%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g139941139958%_ _%g139942139961%_)))
                      (let ()
                        (declare (not safe))
                        (_%g139941139958%_ _%g139942139961%_)))))
              (let ()
                (declare (not safe))
                (_%g139941139958%_ _%g139942139961%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g139941139958%_
                                                 _%g139942139961%_))))))
                                  (declare (not safe))
                                  (_%g139940140009%_ _%hd-bind139939%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139919139927%_))
                            (let ((_%hd139924140015%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139919139927%_)))
                                  (_%tl139925140017%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139919139927%_))))
                              (let* ((_%hd-bind140020%_ _%hd139924140015%_)
                                     (_%rest140022%_ _%tl139925140017%_))
                                (declare (not safe))
                                (_%K139923140012%_
                                 _%rest140022%_
                                 _%hd-bind140020%_)))
                            (let ()
                              (declare (not safe))
                              (_%else139921139935%_)))))))
                 (_%is-lambda-expr?139783%_
                  (lambda (_%expr139851%_)
                    (let* ((_%__stx145035145036%_ _%expr139851%_)
                           (_%g139854139868%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx145035145036%_)))))
                      (let ((_%__kont145037145038%_
                             (lambda (_%L139896%_ _%L139897%_) '#t))
                            (_%__kont145039145040%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx145035145036%_))
                            (let ((_%e139860139880%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx145035145036%_))))
                              (let ((_%tl139858139885%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e139860139880%_)))
                                    (_%hd139859139883%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e139860139880%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd139859139883%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd139859139883%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl139858139885%_))
                                            (let ((_%e139863139888%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl139858139885%_))))
                                              (let ((_%tl139861139893%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e139863139888%_)))
                                                    (_%hd139862139891%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e139863139888%_))))
                                                (_%__kont145037145038%_
                                                 _%tl139861139893%_
                                                 _%hd139862139891%_)))
                                            (_%__kont145039145040%_))
                                        (_%__kont145039145040%_))
                                    (_%__kont145039145040%_))))
                            (_%__kont145039145040%_)))))))
          (let* ((_%g139785139802%_
                  (lambda (_%g139786139799%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139786139799%_))))
                 (_%g139784139848%_
                  (lambda (_%g139786139805%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139786139805%_))
                        (let ((_%e139791139807%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139786139805%_))))
                          (let ((_%hd139790139810%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139791139807%_)))
                                (_%tl139789139812%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139791139807%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139789139812%_))
                                (let ((_%e139794139815%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139789139812%_))))
                                  (let ((_%hd139793139818%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139794139815%_)))
                                        (_%tl139792139820%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139794139815%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139792139820%_))
                                        (let ((_%e139797139823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139792139820%_))))
                                          (let ((_%hd139796139826%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139797139823%_)))
                                                (_%tl139795139828%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139797139823%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139795139828%_))
                                                ((lambda (_%L139831%_
                                                          _%L139832%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L139832%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-letrec?139782%_
                                                              _%L139832%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _%self139778%_
                                                              'letrec
                                                              _%L139832%_
                                                              _%L139831%_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _%self139778%_
                                                              'letrec*
                                                              _%L139832%_
                                                              _%L139831%_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values139781%_
                                                          _%L139832%_
                                                          _%L139831%_))))
                                                 _%hd139796139826%_
                                                 _%hd139793139818%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g139785139802%_
                                                   _%g139786139805%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139785139802%_
                                           _%g139786139805%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139785139802%_ _%g139786139805%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139785139802%_ _%g139786139805%_))))))
            (declare (not safe))
            (_%g139784139848%_ _%stx139779%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd139715%_)
        (let _%lp139717%_ ((_%rest139719%_ _%hd139715%_))
          (let* ((_%rest139720139736%_ _%rest139719%_)
                 (_%else139723139744%_ (lambda () '#f)))
            (let ((_%K139726139757%_
                   (lambda (_%rest139755%_)
                     (let ()
                       (declare (not safe))
                       (_%lp139717%_ _%rest139755%_))))
                  (_%K139725139749%_ (lambda () '#t)))
              (let ((_%try-match139722139752%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest139720139736%_))
                           (let () (declare (not safe)) (_%K139725139749%_))
                           (let ()
                             (declare (not safe))
                             (_%else139723139744%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest139720139736%_))
                    (let ((_%tl139728139762%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest139720139736%_)))
                          (_%hd139727139760%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest139720139736%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd139727139760%_))
                          (let ((_%tl139730139767%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd139727139760%_)))
                                (_%hd139729139765%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd139727139760%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139729139765%_))
                                (let ((_%tl139734139770%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139729139765%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl139734139770%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl139730139767%_))
                                          (let ((_%tl139732139773%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl139730139767%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl139732139773%_))
                                                (let ((_%rest139776%_
                                                       _%tl139728139762%_))
                                                  (declare (not safe))
                                                  (_%lp139717%_
                                                   _%rest139776%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else139723139744%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else139723139744%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else139723139744%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%else139723139744%_))))
                          (let ()
                            (declare (not safe))
                            (_%else139723139744%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match139722139752%_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self139626%_
               _%form139627%_
               _%hd139628%_
               _%body139629%_
               _%compiled-body?139630%_)
        (letrec ((_%generate1139632%_
                  (lambda (_%bind139671%_)
                    (let* ((_%bind139672139683%_ _%bind139671%_)
                           (_%E139674139687%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind139672139683%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K139675139693%_
                            (lambda (_%expr139690%_ _%id139691%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id139691%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self139626%_
                                             _%expr139690%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind139672139683%_))
                          (let ((_%hd139676139696%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind139672139683%_)))
                                (_%tl139677139698%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind139672139683%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139676139696%_))
                                (let ((_%hd139680139701%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd139676139696%_)))
                                      (_%tl139681139703%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139676139696%_))))
                                  (let ((_%id139706%_ _%hd139680139701%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl139681139703%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl139677139698%_))
                                            (let ((_%hd139678139708%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl139677139698%_)))
                                                  (_%tl139679139710%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl139677139698%_))))
                                              (let ((_%expr139713%_
                                                     _%hd139678139708%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl139679139710%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%K139675139693%_
                                                       _%expr139713%_
                                                       _%id139706%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E139674139687%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%E139674139687%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E139674139687%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%E139674139687%_))))
                          (let ()
                            (declare (not safe))
                            (_%E139674139687%_)))))))
          (let* ((_%bind139634%_ (map _%generate1139632%_ _%hd139628%_))
                 (_%body139636%_
                  (if _%compiled-body?139630%_
                      _%body139629%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self139626%_ _%body139629%_))))
                 (_%body139668%_
                  (let* ((_%body139637139645%_ _%body139636%_)
                         (_%else139639139653%_
                          (lambda () (cons _%body139636%_ '())))
                         (_%K139641139658%_
                          (lambda (_%exprs139656%_) _%exprs139656%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body139637139645%_))
                        (let ((_%hd139642139661%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body139637139645%_)))
                              (_%tl139643139663%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body139637139645%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd139642139661%_ 'begin))
                              (let ((_%exprs139666%_ _%tl139643139663%_))
                                (declare (not safe))
                                (_%K139641139658%_ _%exprs139666%_))
                              (let ()
                                (declare (not safe))
                                (_%else139639139653%_))))
                        (let ()
                          (declare (not safe))
                          (_%else139639139653%_))))))
            (cons _%form139627%_ (cons _%bind139634%_ _%body139668%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self139526%_ _%stx139527%_)
        (letrec ((_%generate1139529%_
                  (lambda (_%datum139581%_)
                    (if (or (let ()
                              (declare (not safe))
                              (null? _%datum139581%_))
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum139581%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum139581%_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _%datum139581%_)))
                        (let () _%datum139581%_)
                        (if (uninterned-symbol? _%datum139581%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum139581%_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _%datum139581%_))
                                (let ()
                                  (cons (let ((__tmp145792
                                               (car _%datum139581%_)))
                                          (declare (not safe))
                                          (_%generate1139529%_ __tmp145792))
                                        (let ((__tmp145793
                                               (cdr _%datum139581%_)))
                                          (declare (not safe))
                                          (_%generate1139529%_ __tmp145793))))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _%datum139581%_))
                                    (let ()
                                      (box (let ((__tmp145794
                                                  (unbox _%datum139581%_)))
                                             (declare (not safe))
                                             (_%generate1139529%_
                                              __tmp145794))))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _%datum139581%_))
                                        (let ()
                                          (vector-map
                                           _%generate1139529%_
                                           _%datum139581%_))
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (s8vector? _%datum139581%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _%datum139581%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s16vector? _%datum139581%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u16vector? _%datum139581%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s32vector? _%datum139581%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u32vector? _%datum139581%_))
                                                (s64vector? _%datum139581%_)
                                                (u64vector? _%datum139581%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (f32vector? _%datum139581%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (f64vector?
                                                   _%datum139581%_)))
                                            (let () _%datum139581%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx139527%_)))))))))))
          (let* ((_%g139531139544%_
                  (lambda (_%g139532139541%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139532139541%_))))
                 (_%g139530139578%_
                  (lambda (_%g139532139547%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139532139547%_))
                        (let ((_%e139536139549%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139532139547%_))))
                          (let ((_%hd139535139552%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139536139549%_)))
                                (_%tl139534139554%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139536139549%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139534139554%_))
                                (let ((_%e139539139557%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139534139554%_))))
                                  (let ((_%hd139538139560%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139539139557%_)))
                                        (_%tl139537139562%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139539139557%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl139537139562%_))
                                        ((lambda (_%L139565%_)
                                           (cons 'quote
                                                 (cons (let ((__tmp145795
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%L139565%_))))
                 (declare (not safe))
                 (_%generate1139529%_ __tmp145795))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd139538139560%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g139531139544%_
                                           _%g139532139547%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139531139544%_ _%g139532139547%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139531139544%_ _%g139532139547%_))))))
            (declare (not safe))
            (_%g139530139578%_ _%stx139527%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self138967%_ _%stx138968%_)
        (letrec ((_%compile-call138970%_
                  (lambda (_%rator139259%_ _%rands139260%_)
                    (let ((_%rator139266%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self138967%_
                              _%rator139259%_)))
                          (_%rands139267%_
                           (map (lambda (_%g139261139263%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self138967%_
                                     _%g139261139263%_)))
                                _%rands139260%_)))
                      (let* ((_%__stx145082145083%_ _%rator139266%_)
                             (_%g139270139322%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx145082145083%_)))))
                        (let ((_%__kont145084145085%_
                               (lambda (_%L139446%_
                                        _%L139447%_
                                        _%L139448%_
                                        _%L139449%_)
                                 (if (let ((__tmp145798
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands139267%_)))
                                           (__tmp145796
                                            (length (let ((__tmp145797
                                                           (lambda (_%g139485139488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g139486139490%_)
                     (cons _%g139485139488%_ _%g139486139490%_))))
              (declare (not safe))
              (__foldr1 __tmp145797 '() _%L139448%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145798 __tmp145796))
                                     (let* ((_%id139493%_ _%L139449%_)
                                            (_%args139502%_
                                             (let ((__tmp145799
                                                    (lambda (_%g139494139497%_
                                                             _%g139495139499%_)
                                                      (cons _%g139494139497%_
                                                            _%g139495139499%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145799
                                                '()
                                                _%L139448%_)))
                                            (_%body139511%_
                                             (let ((__tmp145800
                                                    (lambda (_%g139503139506%_
                                                             _%g139504139508%_)
                                                      (cons _%g139503139506%_
                                                            _%g139504139508%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145800
                                                '()
                                                _%L139447%_)))
                                            (_%init139513%_
                                             (map list
                                                  _%args139502%_
                                                  _%rands139267%_)))
                                       (cons 'let
                                             (cons _%id139493%_
                                                   (cons _%init139513%_
                                                         _%body139511%_))))
                                     (let ((__tmp145801
                                            (let ((__tmp145802
                                                   (lambda (_%g139515139518%_
                                                            _%g139516139520%_)
                                                     (cons _%g139515139518%_
                                                           _%g139516139520%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145802
                                               '()
                                               _%L139448%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx138968%_
                                        __tmp145801
                                        _%rands139267%_)))))
                              (_%__kont145090145091%_
                               (lambda ()
                                 (cons _%rator139266%_ _%rands139267%_))))
                          (let ((_%__match145149145150%_
                                 (lambda (_%e139278139334%_
                                          _%hd139277139337%_
                                          _%tl139276139339%_
                                          _%e139281139342%_
                                          _%hd139280139345%_
                                          _%tl139279139347%_
                                          _%e139284139350%_
                                          _%hd139283139353%_
                                          _%tl139282139355%_
                                          _%e139287139358%_
                                          _%hd139286139361%_
                                          _%tl139285139363%_
                                          _%e139290139366%_
                                          _%hd139289139369%_
                                          _%tl139288139371%_
                                          _%e139293139374%_
                                          _%hd139292139377%_
                                          _%tl139291139379%_
                                          _%e139296139382%_
                                          _%hd139295139385%_
                                          _%tl139294139387%_
                                          _%__splice145086145087%_
                                          _%target139297139390%_
                                          _%tl139299139392%_)
                                   (letrec ((_%loop139300139395%_
                                             (lambda (_%hd139298139398%_
                                                      _%arg139304139400%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd139298139398%_))
                                                   (let ((_%e139301139403%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd139298139398%_))))
                                                     (let ((_%lp-tl139303139408%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e139301139403%_)))
                                                           (_%lp-hd139302139406%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e139301139403%_))))
                                                       (let ((__tmp145803
                                                              (cons _%lp-hd139302139406%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%arg139304139400%_)))
                 (declare (not safe))
                 (_%loop139300139395%_ _%lp-tl139303139408%_ __tmp145803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%arg139305139411%_
                                                          (reverse _%arg139304139400%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl139294139387%_))
                                                         (let ((_%__splice145088145089%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl139294139387%_ '0))))
                   (let ((_%tl139308139416%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice145088145089%_ '1)))
                         (_%target139306139414%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice145088145089%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl139308139416%_))
                         (letrec ((_%loop139309139419%_
                                   (lambda (_%hd139307139422%_
                                            _%body139313139424%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd139307139422%_))
                                         (let ((_%e139310139427%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd139307139422%_))))
                                           (let ((_%lp-tl139312139432%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e139310139427%_)))
                                                 (_%lp-hd139311139430%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e139310139427%_))))
                                             (let ((__tmp145804
                                                    (cons _%lp-hd139311139430%_
                                                          _%body139313139424%_)))
                                               (declare (not safe))
                                               (_%loop139309139419%_
                                                _%lp-tl139312139432%_
                                                __tmp145804))))
                                         (let ((_%body139314139435%_
                                                (reverse _%body139313139424%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl139288139371%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl139282139355%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl139279139347%_))
                                                       (let ((_%e139317139438%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl139279139347%_))))
                 (let ((_%tl139315139443%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e139317139438%_)))
                       (_%hd139316139441%_
                        (let ()
                          (declare (not safe))
                          (##car _%e139317139438%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl139315139443%_))
                       (let ((_%L139446%_ _%hd139316139441%_)
                             (_%L139447%_ _%body139314139435%_)
                             (_%L139448%_ _%arg139305139411%_)
                             (_%L139449%_ _%hd139286139361%_))
                         (if (eq? _%L139449%_ _%L139446%_)
                             (_%__kont145084145085%_
                              _%L139446%_
                              _%L139447%_
                              _%L139448%_
                              _%L139449%_)
                             (_%__kont145090145091%_)))
                       (_%__kont145090145091%_))))
               (_%__kont145090145091%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont145090145091%_))
                                               (_%__kont145090145091%_)))))))
                           (let ()
                             (declare (not safe))
                             (_%loop139309139419%_
                              _%target139306139414%_
                              '())))
                         (_%__kont145090145091%_))))
                 (_%__kont145090145091%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_%loop139300139395%_
                                        _%target139297139390%_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx145082145083%_))
                                (let ((_%e139278139334%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx145082145083%_))))
                                  (let ((_%tl139276139339%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139278139334%_)))
                                        (_%hd139277139337%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139278139334%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd139277139337%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd139277139337%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl139276139339%_))
                                                (let ((_%e139281139342%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl139276139339%_))))
                                                  (let ((_%tl139279139347%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139281139342%_)))
                                                        (_%hd139280139345%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139281139342%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd139280139345%_))
                                                        (let ((_%e139284139350%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd139280139345%_))))
                  (let ((_%tl139282139355%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e139284139350%_)))
                        (_%hd139283139353%_
                         (let ()
                           (declare (not safe))
                           (##car _%e139284139350%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd139283139353%_))
                        (let ((_%e139287139358%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd139283139353%_))))
                          (let ((_%tl139285139363%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139287139358%_)))
                                (_%hd139286139361%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139287139358%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139285139363%_))
                                (let ((_%e139290139366%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139285139363%_))))
                                  (let ((_%tl139288139371%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139290139366%_)))
                                        (_%hd139289139369%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139290139366%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd139289139369%_))
                                        (let ((_%e139293139374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd139289139369%_))))
                                          (let ((_%tl139291139379%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139293139374%_)))
                                                (_%hd139292139377%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139293139374%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd139292139377%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd139292139377%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl139291139379%_))
                                                        (let ((_%e139296139382%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl139291139379%_))))
                  (let ((_%tl139294139387%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e139296139382%_)))
                        (_%hd139295139385%_
                         (let ()
                           (declare (not safe))
                           (##car _%e139296139382%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd139295139385%_))
                        (let ((_%__splice145086145087%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd139295139385%_
                                  '0))))
                          (let ((_%tl139299139392%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice145086145087%_ '1)))
                                (_%target139297139390%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice145086145087%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl139299139392%_))
                                (_%__match145149145150%_
                                 _%e139278139334%_
                                 _%hd139277139337%_
                                 _%tl139276139339%_
                                 _%e139281139342%_
                                 _%hd139280139345%_
                                 _%tl139279139347%_
                                 _%e139284139350%_
                                 _%hd139283139353%_
                                 _%tl139282139355%_
                                 _%e139287139358%_
                                 _%hd139286139361%_
                                 _%tl139285139363%_
                                 _%e139290139366%_
                                 _%hd139289139369%_
                                 _%tl139288139371%_
                                 _%e139293139374%_
                                 _%hd139292139377%_
                                 _%tl139291139379%_
                                 _%e139296139382%_
                                 _%hd139295139385%_
                                 _%tl139294139387%_
                                 _%__splice145086145087%_
                                 _%target139297139390%_
                                 _%tl139299139392%_)
                                (_%__kont145090145091%_))))
                        (_%__kont145090145091%_))))
                (_%__kont145090145091%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont145090145091%_))
                                                (_%__kont145090145091%_))))
                                        (_%__kont145090145091%_))))
                                (_%__kont145090145091%_))))
                        (_%__kont145090145091%_))))
                (_%__kont145090145091%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont145090145091%_))
                                            (_%__kont145090145091%_))
                                        (_%__kont145090145091%_))))
                                (_%__kont145090145091%_)))))))))
          (let* ((_%g138972138995%_
                  (lambda (_%g138973138992%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138973138992%_))))
                 (_%g138971139256%_
                  (lambda (_%g138973138998%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138973138998%_))
                        (let ((_%e138978139000%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138973138998%_))))
                          (let ((_%hd138977139003%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138978139000%_)))
                                (_%tl138976139005%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138978139000%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138976139005%_))
                                (let ((_%e138981139008%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138976139005%_))))
                                  (let ((_%hd138980139011%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138981139008%_)))
                                        (_%tl138979139013%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138981139008%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl138979139013%_))
                                        (let ((_g145805_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl138979139013%_
                                                  '0))))
                                          (begin
                                            (let ((_g145806_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g145805_)
                                                         (##vector-length
                                                          _g145805_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g145806_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g145806_)))
                                            (let ((_%target138982139016%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145805_
                                                      0)))
                                                  (_%tl138984139018%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145805_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl138984139018%_))
                                                  (letrec ((_%loop138985139021%_
                                                            (lambda (_%hd138983139024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand138989139026%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd138983139024%_))
                          (let ((_%e138986139029%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd138983139024%_))))
                            (let ((_%lp-hd138987139032%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138986139029%_)))
                                  (_%lp-tl138988139034%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138986139029%_))))
                              (let ((__tmp145807
                                     (cons _%lp-hd138987139032%_
                                           _%rand138989139026%_)))
                                (declare (not safe))
                                (_%loop138985139021%_
                                 _%lp-tl138988139034%_
                                 __tmp145807))))
                          (let ((_%rand138990139037%_
                                 (reverse _%rand138989139026%_)))
                            ((lambda (_%L139040%_ _%L139041%_)
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls-unsafe?))
                                   (let ((__tmp145808
                                          (let ((__tmp145809
                                                 (lambda (_%g139058139061%_
                                                          _%g139059139063%_)
                                                   (cons _%g139058139061%_
                                                         _%g139059139063%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp145809
                                             '()
                                             _%L139040%_))))
                                     (declare (not safe))
                                     (_%compile-call138970%_
                                      _%L139041%_
                                      __tmp145808))
                                   (let* ((_%__stx145198145199%_ _%L139041%_)
                                          (_%g139067139079%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx145198145199%_)))))
                                     (let ((_%__kont145200145201%_
                                            (lambda ()
                                              (let ((_%f139116%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self138967%_
                                                        _%L139041%_))))
                                                (if (and (let ((__tmp145810
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f139116%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp145810))
                 (let ((__tmp145811
                        (let ()
                          (declare (not safe))
                          (##memq _%f139116%_ gxc#checked-primitives))))
                   (declare (not safe))
                   (not __tmp145811)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp139118%_ ((_%rest139121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp145817
                                                (lambda (_%g139238139241%_
                                                         _%g139239139243%_)
                                                  (cons _%g139238139241%_
                                                        _%g139239139243%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp145817
                                            '()
                                            _%L139040%_))))
                               (_%bind139123%_ '())
                               (_%args139124%_ '()))
              (let* ((_%rest139125139133%_ _%rest139121%_)
                     (_%else139127139141%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind139123%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f139116%_
                                                      _%args139124%_)
                                                '()))))))
                     (_%K139129139227%_
                      (lambda (_%rest139144%_ _%e139145%_)
                        (let* ((_%__stx145152145153%_ _%e139145%_)
                               (_%g139150139168%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx145152145153%_)))))
                          (let ((_%__kont145154145155%_
                                 (lambda ()
                                   (let ((__tmp145812
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e139145%_))
                                                _%args139124%_)))
                                     (declare (not safe))
                                     (_%lp139118%_
                                      _%rest139144%_
                                      _%bind139123%_
                                      __tmp145812))))
                                (_%__kont145156145157%_
                                 (lambda ()
                                   (let ((__tmp145813
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e139145%_))
                                                _%args139124%_)))
                                     (declare (not safe))
                                     (_%lp139118%_
                                      _%rest139144%_
                                      _%bind139123%_
                                      __tmp145813))))
                                (_%__kont145158145159%_
                                 (lambda ()
                                   (let ((_%tmp139175%_
                                          (let ((__tmp145814
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp145814))))
                                     (let ((__tmp145816
                                            (cons (cons _%tmp139175%_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _%e139145%_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind139123%_))
                                           (__tmp145815
                                            (cons _%tmp139175%_
                                                  _%args139124%_)))
                                       (declare (not safe))
                                       (_%lp139118%_
                                        _%rest139144%_
                                        __tmp145816
                                        __tmp145815))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx145152145153%_))
                                (let ((_%e139154139206%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx145152145153%_))))
                                  (let ((_%tl139152139211%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139154139206%_)))
                                        (_%hd139153139209%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139154139206%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd139153139209%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd139153139209%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl139152139211%_))
                                                (let ((_%e139157139214%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl139152139211%_))))
                                                  (let ((_%tl139155139219%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139157139214%_)))
                                                        (_%hd139156139217%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139157139214%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139155139219%_))
                                                        (_%__kont145154145155%_)
                                                        (_%__kont145158145159%_))))
                                                (_%__kont145158145159%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd139153139209%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl139152139211%_))
                                                    (let ((_%e139163139191%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl139152139211%_))))
                                                      (let ((_%tl139161139196%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e139163139191%_)))
                    (_%hd139162139194%_
                     (let () (declare (not safe)) (##car _%e139163139191%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl139161139196%_))
                    (_%__kont145156145157%_)
                    (_%__kont145158145159%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont145158145159%_))
                                                (_%__kont145158145159%_)))
                                        (_%__kont145158145159%_))))
                                (_%__kont145158145159%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest139125139133%_))
                    (let ((_%hd139130139230%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest139125139133%_)))
                          (_%tl139131139232%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest139125139133%_))))
                      (let* ((_%e139235%_ _%hd139130139230%_)
                             (_%rest139237%_ _%tl139131139232%_))
                        (declare (not safe))
                        (_%K139129139227%_ _%rest139237%_ _%e139235%_)))
                    (let () (declare (not safe)) (_%else139127139141%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp145818
                                                           (let ((__tmp145819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g139245139248%_ _%g139246139250%_)
                            (cons _%g139245139248%_ _%g139246139250%_))))
                     (declare (not safe))
                     (__foldr1 __tmp145819 '() _%L139040%_))))
              (declare (not safe))
              (_%compile-call138970%_ _%L139041%_ __tmp145818))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont145202145203%_
                                            (lambda ()
                                              (let ((__tmp145820
                                                     (let ((__tmp145821
                                                            (lambda (_%g139085139088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g139086139090%_)
                      (cons _%g139085139088%_ _%g139086139090%_))))
               (declare (not safe))
               (__foldr1 __tmp145821 '() _%L139040%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%compile-call138970%_
                                                 _%L139041%_
                                                 __tmp145820)))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx145198145199%_))
                                           (let ((_%e139071139098%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx145198145199%_))))
                                             (let ((_%tl139069139103%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e139071139098%_)))
                                                   (_%hd139070139101%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e139071139098%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd139070139101%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd139070139101%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl139069139103%_))
                                                           (let ((_%e139074139106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl139069139103%_))))
                     (let ((_%tl139072139111%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e139074139106%_)))
                           (_%hd139073139109%_
                            (let ()
                              (declare (not safe))
                              (##car _%e139074139106%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl139072139111%_))
                           (_%__kont145200145201%_)
                           (_%__kont145202145203%_))))
                   (_%__kont145202145203%_))
               (_%__kont145202145203%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont145202145203%_))))
                                           (_%__kont145202145203%_))))))
                             _%rand138990139037%_
                             _%hd138980139011%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%loop138985139021%_
                                                       _%target138982139016%_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g138972138995%_
                                                     _%g138973138998%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g138972138995%_
                                           _%g138973138998%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g138972138995%_ _%g138973138998%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g138972138995%_ _%g138973138998%_))))))
            (declare (not safe))
            (_%g138971139256%_ _%stx138968%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self138710%_ _%stx138711%_)
        (let* ((_%__stx145270145271%_ _%stx138711%_)
               (_%g138714138743%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx145270145271%_)))))
          (let ((_%__kont145272145273%_
                 (lambda (_%L138811%_ _%L138812%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call%
                          _%self138710%_
                          _%stx138711%_))
                       (let ((_%f138834%_
                              (let ((__tmp145822
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L138812%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self138710%_
                                 __tmp145822))))
                         (let _%lp138836%_ ((_%rest138839%_
                                             (reverse (let ((__tmp145828
                                                             (lambda (_%g138956138959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g138957138961%_)
                       (cons _%g138956138959%_ _%g138957138961%_))))
                (declare (not safe))
                (__foldr1 __tmp145828 '() _%L138811%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind138841%_ '())
                                            (_%args138842%_ '()))
                           (let* ((_%rest138843138851%_ _%rest138839%_)
                                  (_%else138845138859%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind138841%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f138834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args138842%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K138847138945%_
                                   (lambda (_%rest138862%_ _%e138863%_)
                                     (let* ((_%__stx145224145225%_ _%e138863%_)
                                            (_%g138868138886%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx145224145225%_)))))
                                       (let ((_%__kont145226145227%_
                                              (lambda ()
                                                (let ((__tmp145823
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__0 _%e138863%_))
                     _%args138842%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_%lp138836%_
                                                   _%rest138862%_
                                                   _%bind138841%_
                                                   __tmp145823))))
                                             (_%__kont145228145229%_
                                              (lambda ()
                                                (let ((__tmp145824
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__0 _%e138863%_))
                     _%args138842%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_%lp138836%_
                                                   _%rest138862%_
                                                   _%bind138841%_
                                                   __tmp145824))))
                                             (_%__kont145230145231%_
                                              (lambda ()
                                                (let ((_%tmp138893%_
                                                       (let ((__tmp145825
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp145825))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp145827
                                                         (cons (cons _%tmp138893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__0 _%e138863%_))
                                   '()))
                       _%bind138841%_))
                (__tmp145826 (cons _%tmp138893%_ _%args138842%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%lp138836%_
                                                     _%rest138862%_
                                                     __tmp145827
                                                     __tmp145826))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx145224145225%_))
                                             (let ((_%e138872138924%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx145224145225%_))))
                                               (let ((_%tl138870138929%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e138872138924%_)))
                                                     (_%hd138871138927%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e138872138924%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd138871138927%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd138871138927%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl138870138929%_))
                     (let ((_%e138875138932%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl138870138929%_))))
                       (let ((_%tl138873138937%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e138875138932%_)))
                             (_%hd138874138935%_
                              (let ()
                                (declare (not safe))
                                (##car _%e138875138932%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl138873138937%_))
                             (_%__kont145226145227%_)
                             (_%__kont145230145231%_))))
                     (_%__kont145230145231%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd138871138927%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl138870138929%_))
                         (let ((_%e138881138909%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl138870138929%_))))
                           (let ((_%tl138879138914%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e138881138909%_)))
                                 (_%hd138880138912%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e138881138909%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl138879138914%_))
                                 (_%__kont145228145229%_)
                                 (_%__kont145230145231%_))))
                         (_%__kont145230145231%_))
                     (_%__kont145230145231%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145230145231%_))))
                                             (_%__kont145230145231%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest138843138851%_))
                                 (let ((_%hd138848138948%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest138843138851%_)))
                                       (_%tl138849138950%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest138843138851%_))))
                                   (let* ((_%e138953%_ _%hd138848138948%_)
                                          (_%rest138955%_ _%tl138849138950%_))
                                     (declare (not safe))
                                     (_%K138847138945%_
                                      _%rest138955%_
                                      _%e138953%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%else138845138859%_)))))))))
                (_%__kont145276145277%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call%
                      _%self138710%_
                      _%stx138711%_)))))
            (let ((_%__match145315145316%_
                   (lambda (_%e138720138755%_
                            _%hd138719138758%_
                            _%tl138718138760%_
                            _%e138723138763%_
                            _%hd138722138766%_
                            _%tl138721138768%_
                            _%e138726138771%_
                            _%hd138725138774%_
                            _%tl138724138776%_
                            _%e138729138779%_
                            _%hd138728138782%_
                            _%tl138727138784%_
                            _%__splice145274145275%_
                            _%target138730138787%_
                            _%tl138732138789%_)
                     (letrec ((_%loop138733138792%_
                               (lambda (_%hd138731138795%_
                                        _%rand138737138797%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd138731138795%_))
                                     (let ((_%e138734138800%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd138731138795%_))))
                                       (let ((_%lp-tl138736138805%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e138734138800%_)))
                                             (_%lp-hd138735138803%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e138734138800%_))))
                                         (let ((__tmp145829
                                                (cons _%lp-hd138735138803%_
                                                      _%rand138737138797%_)))
                                           (declare (not safe))
                                           (_%loop138733138792%_
                                            _%lp-tl138736138805%_
                                            __tmp145829))))
                                     (let ((_%rand138738138808%_
                                            (reverse _%rand138737138797%_)))
                                       (_%__kont145272145273%_
                                        _%rand138738138808%_
                                        _%hd138728138782%_))))))
                       (let ()
                         (declare (not safe))
                         (_%loop138733138792%_ _%target138730138787%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx145270145271%_))
                  (let ((_%e138720138755%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx145270145271%_))))
                    (let ((_%tl138718138760%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e138720138755%_)))
                          (_%hd138719138758%_
                           (let ()
                             (declare (not safe))
                             (##car _%e138720138755%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl138718138760%_))
                          (let ((_%e138723138763%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl138718138760%_))))
                            (let ((_%tl138721138768%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138723138763%_)))
                                  (_%hd138722138766%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138723138763%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd138722138766%_))
                                  (let ((_%e138726138771%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd138722138766%_))))
                                    (let ((_%tl138724138776%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e138726138771%_)))
                                          (_%hd138725138774%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e138726138771%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd138725138774%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd138725138774%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl138724138776%_))
                                                  (let ((_%e138729138779%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl138724138776%_))))
                                                    (let ((_%tl138727138784%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e138729138779%_)))
                                                          (_%hd138728138782%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e138729138779%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl138727138784%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl138721138768%_))
                      (let ((_%__splice145274145275%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl138721138768%_
                                '0))))
                        (let ((_%tl138732138789%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145274145275%_ '1)))
                              (_%target138730138787%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145274145275%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl138732138789%_))
                              (_%__match145315145316%_
                               _%e138720138755%_
                               _%hd138719138758%_
                               _%tl138718138760%_
                               _%e138723138763%_
                               _%hd138722138766%_
                               _%tl138721138768%_
                               _%e138726138771%_
                               _%hd138725138774%_
                               _%tl138724138776%_
                               _%e138729138779%_
                               _%hd138728138782%_
                               _%tl138727138784%_
                               _%__splice145274145275%_
                               _%target138730138787%_
                               _%tl138732138789%_)
                              (_%__kont145276145277%_))))
                      (_%__kont145276145277%_))
                  (_%__kont145276145277%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145276145277%_))
                                              (_%__kont145276145277%_))
                                          (_%__kont145276145277%_))))
                                  (_%__kont145276145277%_))))
                          (_%__kont145276145277%_))))
                  (_%__kont145276145277%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self138522%_ _%stx138523%_)
        (letrec ((_%simplify138525%_
                  (lambda (_%code138610%_)
                    (let* ((_%code138611138629%_ _%code138610%_)
                           (_%else138613138637%_ (lambda () _%code138610%_))
                           (_%K138615138673%_
                            (lambda (_%expr138640%_ _%test138641%_)
                              (let* ((_%expr138642138650%_ _%expr138640%_)
                                     (_%else138644138658%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test138641%_
                                                    (cons _%expr138640%_
                                                          '())))))
                                     (_%K138646138663%_
                                      (lambda (_%exprs138661%_)
                                        (cons 'and
                                              (cons _%test138641%_
                                                    _%exprs138661%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr138642138650%_))
                                    (let ((_%hd138647138666%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr138642138650%_)))
                                          (_%tl138648138668%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr138642138650%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd138647138666%_ 'and))
                                          (let ((_%exprs138671%_
                                                 _%tl138648138668%_))
                                            (declare (not safe))
                                            (_%K138646138663%_
                                             _%exprs138671%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else138644138658%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else138644138658%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code138611138629%_))
                          (let ((_%hd138616138676%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code138611138629%_)))
                                (_%tl138617138678%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code138611138629%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd138616138676%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl138617138678%_))
                                    (let ((_%hd138618138681%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl138617138678%_)))
                                          (_%tl138619138683%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl138617138678%_))))
                                      (let ((_%test138686%_
                                             _%hd138618138681%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl138619138683%_))
                                            (let ((_%hd138620138688%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl138619138683%_)))
                                                  (_%tl138621138690%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl138619138683%_))))
                                              (let ((_%expr138693%_
                                                     _%hd138620138688%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl138621138690%_))
                                                    (let ((_%hd138622138695%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl138621138690%_)))
                                                          (_%tl138623138697%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl138621138690%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd138622138695%_))
                                                          (let ((_%hd138624138700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd138622138695%_)))
                        (_%tl138625138702%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd138622138695%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd138624138700%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl138625138702%_))
                            (let ((_%hd138626138705%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl138625138702%_)))
                                  (_%tl138627138707%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl138625138702%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd138626138705%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl138627138707%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl138623138697%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%K138615138673%_
                                             _%expr138693%_
                                             _%test138686%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else138613138637%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else138613138637%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else138613138637%_))))
                            (let ()
                              (declare (not safe))
                              (_%else138613138637%_)))
                        (let () (declare (not safe)) (_%else138613138637%_))))
                  (let () (declare (not safe)) (_%else138613138637%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else138613138637%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%else138613138637%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else138613138637%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else138613138637%_))))
                          (let ()
                            (declare (not safe))
                            (_%else138613138637%_)))))))
          (let* ((_%g138527138548%_
                  (lambda (_%g138528138545%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138528138545%_))))
                 (_%g138526138607%_
                  (lambda (_%g138528138551%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138528138551%_))
                        (let ((_%e138534138553%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138528138551%_))))
                          (let ((_%hd138533138556%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138534138553%_)))
                                (_%tl138532138558%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138534138553%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138532138558%_))
                                (let ((_%e138537138561%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138532138558%_))))
                                  (let ((_%hd138536138564%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138537138561%_)))
                                        (_%tl138535138566%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138537138561%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl138535138566%_))
                                        (let ((_%e138540138569%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl138535138566%_))))
                                          (let ((_%hd138539138572%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138540138569%_)))
                                                (_%tl138538138574%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138540138569%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138538138574%_))
                                                (let ((_%e138543138577%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138538138574%_))))
                                                  (let ((_%hd138542138580%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138543138577%_)))
                                                        (_%tl138541138582%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138543138577%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl138541138582%_))
                                                        ((lambda (_%L138585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L138586%_
                          _%L138587%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (let ((__tmp145830
                              (cons 'if
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self138522%_
                                             _%L138587%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self138522%_
                                                   _%L138586%_))
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self138522%_
                                                         _%L138585%_))
                                                      '()))))))
                         (declare (not safe))
                         (_%simplify138525%_ __tmp145830))
                       (cons 'if
                             (cons (let ((__tmp145831
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self138522%_
                                               _%L138587%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp145831
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self138522%_
                                            _%L138586%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self138522%_
                                                  _%L138585%_))
                                               '()))))))
                 _%hd138542138580%_
                 _%hd138539138572%_
                 _%hd138536138564%_)
                (let ()
                  (declare (not safe))
                  (_%g138527138548%_ _%g138528138551%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g138527138548%_
                                                   _%g138528138551%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g138527138548%_
                                           _%g138528138551%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g138527138548%_ _%g138528138551%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g138527138548%_ _%g138528138551%_))))))
            (declare (not safe))
            (_%g138526138607%_ _%stx138523%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self138470%_ _%stx138471%_)
        (let* ((_%g138473138486%_
                (lambda (_%g138474138483%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138474138483%_))))
               (_%g138472138519%_
                (lambda (_%g138474138489%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138474138489%_))
                      (let ((_%e138478138491%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138474138489%_))))
                        (let ((_%hd138477138494%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138478138491%_)))
                              (_%tl138476138496%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138478138491%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138476138496%_))
                              (let ((_%e138481138499%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138476138496%_))))
                                (let ((_%hd138480138502%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138481138499%_)))
                                      (_%tl138479138504%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138481138499%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl138479138504%_))
                                      ((lambda (_%L138507%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L138507%_)))
                                       _%hd138480138502%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g138473138486%_
                                         _%g138474138489%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138473138486%_ _%g138474138489%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138473138486%_ _%g138474138489%_))))))
          (declare (not safe))
          (_%g138472138519%_ _%stx138471%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self138402%_ _%stx138403%_)
        (let* ((_%g138405138422%_
                (lambda (_%g138406138419%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138406138419%_))))
               (_%g138404138467%_
                (lambda (_%g138406138425%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138406138425%_))
                      (let ((_%e138411138427%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138406138425%_))))
                        (let ((_%hd138410138430%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138411138427%_)))
                              (_%tl138409138432%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138411138427%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138409138432%_))
                              (let ((_%e138414138435%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138409138432%_))))
                                (let ((_%hd138413138438%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138414138435%_)))
                                      (_%tl138412138440%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138414138435%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138412138440%_))
                                      (let ((_%e138417138443%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138412138440%_))))
                                        (let ((_%hd138416138446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138417138443%_)))
                                              (_%tl138415138448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138417138443%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138415138448%_))
                                              ((lambda (_%L138451%_
                                                        _%L138452%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L138452%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self138402%_ _%L138451%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138416138446%_
                                               _%hd138413138438%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g138405138422%_
                                                 _%g138406138425%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g138405138422%_
                                         _%g138406138425%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138405138422%_ _%g138406138425%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138405138422%_ _%g138406138425%_))))))
          (declare (not safe))
          (_%g138404138467%_ _%stx138403%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self138213%_ _%stx138214%_)
        (let* ((_%g138216138233%_
                (lambda (_%g138217138230%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138217138230%_))))
               (_%g138215138399%_
                (lambda (_%g138217138236%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138217138236%_))
                      (let ((_%e138222138238%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138217138236%_))))
                        (let ((_%hd138221138241%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138222138238%_)))
                              (_%tl138220138243%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138222138238%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138220138243%_))
                              (let ((_%e138225138246%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138220138243%_))))
                                (let ((_%hd138224138249%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138225138246%_)))
                                      (_%tl138223138251%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138225138246%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138223138251%_))
                                      (let ((_%e138228138254%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138223138251%_))))
                                        (let ((_%hd138227138257%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138228138254%_)))
                                              (_%tl138226138259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138228138254%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138226138259%_))
                                              ((lambda (_%L138262%_
                                                        _%L138263%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self138213%_ _%L138262%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self138213%_ _%L138263%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp138278%_ ((_%rest138281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L138263%_ (cons _%L138262%_ '())))
                                (_%bind138283%_ '())
                                (_%args138284%_ '()))
               (let* ((_%rest138285138293%_ _%rest138281%_)
                      (_%else138287138301%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind138283%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args138284%_)
                                                 '()))))))
                      (_%K138289138387%_
                       (lambda (_%rest138304%_ _%e138305%_)
                         (let* ((_%__stx145318145319%_ _%e138305%_)
                                (_%g138310138328%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx145318145319%_)))))
                           (let ((_%__kont145320145321%_
                                  (lambda ()
                                    (let ((__tmp145832
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e138305%_))
                                                 _%args138284%_)))
                                      (declare (not safe))
                                      (_%lp138278%_
                                       _%rest138304%_
                                       _%bind138283%_
                                       __tmp145832))))
                                 (_%__kont145322145323%_
                                  (lambda ()
                                    (let ((__tmp145833
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e138305%_))
                                                 _%args138284%_)))
                                      (declare (not safe))
                                      (_%lp138278%_
                                       _%rest138304%_
                                       _%bind138283%_
                                       __tmp145833))))
                                 (_%__kont145324145325%_
                                  (lambda ()
                                    (let ((_%tmp138335%_
                                           (let ((__tmp145834
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145834))))
                                      (let ((__tmp145836
                                             (cons (cons _%tmp138335%_
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#compile-e__0 _%e138305%_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%bind138283%_))
                                            (__tmp145835
                                             (cons _%tmp138335%_
                                                   _%args138284%_)))
                                        (declare (not safe))
                                        (_%lp138278%_
                                         _%rest138304%_
                                         __tmp145836
                                         __tmp145835))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx145318145319%_))
                                 (let ((_%e138314138366%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx145318145319%_))))
                                   (let ((_%tl138312138371%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e138314138366%_)))
                                         (_%hd138313138369%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e138314138366%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd138313138369%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd138313138369%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl138312138371%_))
                                                 (let ((_%e138317138374%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl138312138371%_))))
                                                   (let ((_%tl138315138379%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e138317138374%_)))
                                                         (_%hd138316138377%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e138317138374%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl138315138379%_))
                                                         (_%__kont145320145321%_)
                                                         (_%__kont145324145325%_))))
                                                 (_%__kont145324145325%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd138313138369%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl138312138371%_))
                                                     (let ((_%e138323138351%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl138312138371%_))))
                                                       (let ((_%tl138321138356%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e138323138351%_)))
                     (_%hd138322138354%_
                      (let () (declare (not safe)) (##car _%e138323138351%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl138321138356%_))
                     (_%__kont145322145323%_)
                     (_%__kont145324145325%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145324145325%_))
                                                 (_%__kont145324145325%_)))
                                         (_%__kont145324145325%_))))
                                 (_%__kont145324145325%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest138285138293%_))
                     (let ((_%hd138290138390%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest138285138293%_)))
                           (_%tl138291138392%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest138285138293%_))))
                       (let* ((_%e138395%_ _%hd138290138390%_)
                              (_%rest138397%_ _%tl138291138392%_))
                         (declare (not safe))
                         (_%K138289138387%_ _%rest138397%_ _%e138395%_)))
                     (let () (declare (not safe)) (_%else138287138301%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138227138257%_
                                               _%hd138224138249%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g138216138233%_
                                                 _%g138217138236%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g138216138233%_
                                         _%g138217138236%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138216138233%_ _%g138217138236%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138216138233%_ _%g138217138236%_))))))
          (declare (not safe))
          (_%g138215138399%_ _%stx138214%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self138024%_ _%stx138025%_)
        (let* ((_%g138027138044%_
                (lambda (_%g138028138041%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138028138041%_))))
               (_%g138026138210%_
                (lambda (_%g138028138047%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138028138047%_))
                      (let ((_%e138033138049%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138028138047%_))))
                        (let ((_%hd138032138052%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138033138049%_)))
                              (_%tl138031138054%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138033138049%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138031138054%_))
                              (let ((_%e138036138057%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138031138054%_))))
                                (let ((_%hd138035138060%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138036138057%_)))
                                      (_%tl138034138062%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138036138057%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138034138062%_))
                                      (let ((_%e138039138065%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138034138062%_))))
                                        (let ((_%hd138038138068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138039138065%_)))
                                              (_%tl138037138070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138039138065%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138037138070%_))
                                              ((lambda (_%L138073%_
                                                        _%L138074%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self138024%_ _%L138073%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self138024%_ _%L138074%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp138089%_ ((_%rest138092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L138074%_ (cons _%L138073%_ '())))
                                (_%bind138094%_ '())
                                (_%args138095%_ '()))
               (let* ((_%rest138096138104%_ _%rest138092%_)
                      (_%else138098138112%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind138094%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args138095%_)
                                                 '()))))))
                      (_%K138100138198%_
                       (lambda (_%rest138115%_ _%e138116%_)
                         (let* ((_%__stx145364145365%_ _%e138116%_)
                                (_%g138121138139%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx145364145365%_)))))
                           (let ((_%__kont145366145367%_
                                  (lambda ()
                                    (let ((__tmp145837
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e138116%_))
                                                 _%args138095%_)))
                                      (declare (not safe))
                                      (_%lp138089%_
                                       _%rest138115%_
                                       _%bind138094%_
                                       __tmp145837))))
                                 (_%__kont145368145369%_
                                  (lambda ()
                                    (let ((__tmp145838
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e138116%_))
                                                 _%args138095%_)))
                                      (declare (not safe))
                                      (_%lp138089%_
                                       _%rest138115%_
                                       _%bind138094%_
                                       __tmp145838))))
                                 (_%__kont145370145371%_
                                  (lambda ()
                                    (let ((_%tmp138146%_
                                           (let ((__tmp145839
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145839))))
                                      (let ((__tmp145841
                                             (cons (cons _%tmp138146%_
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#compile-e__0 _%e138116%_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%bind138094%_))
                                            (__tmp145840
                                             (cons _%tmp138146%_
                                                   _%args138095%_)))
                                        (declare (not safe))
                                        (_%lp138089%_
                                         _%rest138115%_
                                         __tmp145841
                                         __tmp145840))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx145364145365%_))
                                 (let ((_%e138125138177%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx145364145365%_))))
                                   (let ((_%tl138123138182%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e138125138177%_)))
                                         (_%hd138124138180%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e138125138177%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd138124138180%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd138124138180%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl138123138182%_))
                                                 (let ((_%e138128138185%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl138123138182%_))))
                                                   (let ((_%tl138126138190%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e138128138185%_)))
                                                         (_%hd138127138188%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e138128138185%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl138126138190%_))
                                                         (_%__kont145366145367%_)
                                                         (_%__kont145370145371%_))))
                                                 (_%__kont145370145371%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd138124138180%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl138123138182%_))
                                                     (let ((_%e138134138162%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl138123138182%_))))
                                                       (let ((_%tl138132138167%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e138134138162%_)))
                     (_%hd138133138165%_
                      (let () (declare (not safe)) (##car _%e138134138162%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl138132138167%_))
                     (_%__kont145368145369%_)
                     (_%__kont145370145371%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145370145371%_))
                                                 (_%__kont145370145371%_)))
                                         (_%__kont145370145371%_))))
                                 (_%__kont145370145371%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest138096138104%_))
                     (let ((_%hd138101138201%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest138096138104%_)))
                           (_%tl138102138203%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest138096138104%_))))
                       (let* ((_%e138206%_ _%hd138101138201%_)
                              (_%rest138208%_ _%tl138102138203%_))
                         (declare (not safe))
                         (_%K138100138198%_ _%rest138208%_ _%e138206%_)))
                     (let () (declare (not safe)) (_%else138098138112%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138038138068%_
                                               _%hd138035138060%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g138027138044%_
                                                 _%g138028138047%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g138027138044%_
                                         _%g138028138047%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138027138044%_ _%g138028138047%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138027138044%_ _%g138028138047%_))))))
          (declare (not safe))
          (_%g138026138210%_ _%stx138025%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self137940%_ _%stx137941%_)
        (let* ((_%g137943137964%_
                (lambda (_%g137944137961%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137944137961%_))))
               (_%g137942138021%_
                (lambda (_%g137944137967%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137944137967%_))
                      (let ((_%e137950137969%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137944137967%_))))
                        (let ((_%hd137949137972%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137950137969%_)))
                              (_%tl137948137974%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137950137969%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137948137974%_))
                              (let ((_%e137953137977%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137948137974%_))))
                                (let ((_%hd137952137980%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137953137977%_)))
                                      (_%tl137951137982%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137953137977%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137951137982%_))
                                      (let ((_%e137956137985%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137951137982%_))))
                                        (let ((_%hd137955137988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137956137985%_)))
                                              (_%tl137954137990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137956137985%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137954137990%_))
                                              (let ((_%e137959137993%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137954137990%_))))
                                                (let ((_%hd137958137996%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137959137993%_)))
                                                      (_%tl137957137998%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137959137993%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137957137998%_))
                                                      ((lambda (_%L138001%_
                                                                _%L138002%_
                                                                _%L138003%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137940%_ _%L138001%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137940%_
                                      _%L138002%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137940%_
                                            _%L138003%_))
                                         (cons ''#f '()))))))
               _%hd137958137996%_
               _%hd137955137988%_
               _%hd137952137980%_)
              (let ()
                (declare (not safe))
                (_%g137943137964%_ _%g137944137967%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137943137964%_
                                                 _%g137944137967%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137943137964%_
                                         _%g137944137967%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137943137964%_ _%g137944137967%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137943137964%_ _%g137944137967%_))))))
          (declare (not safe))
          (_%g137942138021%_ _%stx137941%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self137840%_ _%stx137841%_)
        (let* ((_%g137843137868%_
                (lambda (_%g137844137865%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137844137865%_))))
               (_%g137842137937%_
                (lambda (_%g137844137871%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137844137871%_))
                      (let ((_%e137851137873%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137844137871%_))))
                        (let ((_%hd137850137876%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137851137873%_)))
                              (_%tl137849137878%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137851137873%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137849137878%_))
                              (let ((_%e137854137881%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137849137878%_))))
                                (let ((_%hd137853137884%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137854137881%_)))
                                      (_%tl137852137886%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137854137881%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137852137886%_))
                                      (let ((_%e137857137889%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137852137886%_))))
                                        (let ((_%hd137856137892%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137857137889%_)))
                                              (_%tl137855137894%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137857137889%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137855137894%_))
                                              (let ((_%e137860137897%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137855137894%_))))
                                                (let ((_%hd137859137900%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137860137897%_)))
                                                      (_%tl137858137902%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137860137897%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137858137902%_))
                                                      (let ((_%e137863137905%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137858137902%_))))
                (let ((_%hd137862137908%_
                       (let () (declare (not safe)) (##car _%e137863137905%_)))
                      (_%tl137861137910%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137863137905%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137861137910%_))
                      ((lambda (_%L137913%_
                                _%L137914%_
                                _%L137915%_
                                _%L137916%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137840%_
                                        _%L137914%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137840%_
                                              _%L137913%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137840%_
                                                    _%L137915%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137840%_
                                                          _%L137916%_))
                                                       (cons ''#f '())))))))
                       _%hd137862137908%_
                       _%hd137859137900%_
                       _%hd137856137892%_
                       _%hd137853137884%_)
                      (let ()
                        (declare (not safe))
                        (_%g137843137868%_ _%g137844137871%_)))))
              (let ()
                (declare (not safe))
                (_%g137843137868%_ _%g137844137871%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137843137868%_
                                                 _%g137844137871%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137843137868%_
                                         _%g137844137871%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137843137868%_ _%g137844137871%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137843137868%_ _%g137844137871%_))))))
          (declare (not safe))
          (_%g137842137937%_ _%stx137841%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self137756%_ _%stx137757%_)
        (let* ((_%g137759137780%_
                (lambda (_%g137760137777%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137760137777%_))))
               (_%g137758137837%_
                (lambda (_%g137760137783%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137760137783%_))
                      (let ((_%e137766137785%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137760137783%_))))
                        (let ((_%hd137765137788%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137766137785%_)))
                              (_%tl137764137790%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137766137785%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137764137790%_))
                              (let ((_%e137769137793%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137764137790%_))))
                                (let ((_%hd137768137796%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137769137793%_)))
                                      (_%tl137767137798%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137769137793%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137767137798%_))
                                      (let ((_%e137772137801%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137767137798%_))))
                                        (let ((_%hd137771137804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137772137801%_)))
                                              (_%tl137770137806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137772137801%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137770137806%_))
                                              (let ((_%e137775137809%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137770137806%_))))
                                                (let ((_%hd137774137812%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137775137809%_)))
                                                      (_%tl137773137814%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137775137809%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137773137814%_))
                                                      ((lambda (_%L137817%_
                                                                _%L137818%_
                                                                _%L137819%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137756%_ _%L137817%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137756%_
                                      _%L137818%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137756%_
                                            _%L137819%_))
                                         (cons ''#f '()))))))
               _%hd137774137812%_
               _%hd137771137804%_
               _%hd137768137796%_)
              (let ()
                (declare (not safe))
                (_%g137759137780%_ _%g137760137783%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137759137780%_
                                                 _%g137760137783%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137759137780%_
                                         _%g137760137783%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137759137780%_ _%g137760137783%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137759137780%_ _%g137760137783%_))))))
          (declare (not safe))
          (_%g137758137837%_ _%stx137757%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self137656%_ _%stx137657%_)
        (let* ((_%g137659137684%_
                (lambda (_%g137660137681%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137660137681%_))))
               (_%g137658137753%_
                (lambda (_%g137660137687%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137660137687%_))
                      (let ((_%e137667137689%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137660137687%_))))
                        (let ((_%hd137666137692%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137667137689%_)))
                              (_%tl137665137694%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137667137689%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137665137694%_))
                              (let ((_%e137670137697%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137665137694%_))))
                                (let ((_%hd137669137700%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137670137697%_)))
                                      (_%tl137668137702%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137670137697%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137668137702%_))
                                      (let ((_%e137673137705%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137668137702%_))))
                                        (let ((_%hd137672137708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137673137705%_)))
                                              (_%tl137671137710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137673137705%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137671137710%_))
                                              (let ((_%e137676137713%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137671137710%_))))
                                                (let ((_%hd137675137716%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137676137713%_)))
                                                      (_%tl137674137718%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137676137713%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137674137718%_))
                                                      (let ((_%e137679137721%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137674137718%_))))
                (let ((_%hd137678137724%_
                       (let () (declare (not safe)) (##car _%e137679137721%_)))
                      (_%tl137677137726%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137679137721%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137677137726%_))
                      ((lambda (_%L137729%_
                                _%L137730%_
                                _%L137731%_
                                _%L137732%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137656%_
                                        _%L137730%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137656%_
                                              _%L137729%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137656%_
                                                    _%L137731%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137656%_
                                                          _%L137732%_))
                                                       (cons ''#f '())))))))
                       _%hd137678137724%_
                       _%hd137675137716%_
                       _%hd137672137708%_
                       _%hd137669137700%_)
                      (let ()
                        (declare (not safe))
                        (_%g137659137684%_ _%g137660137687%_)))))
              (let ()
                (declare (not safe))
                (_%g137659137684%_ _%g137660137687%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137659137684%_
                                                 _%g137660137687%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137659137684%_
                                         _%g137660137687%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137659137684%_ _%g137660137687%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137659137684%_ _%g137660137687%_))))))
          (declare (not safe))
          (_%g137658137753%_ _%stx137657%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self137451%_ _%stx137452%_)
        (let* ((_%g137454137475%_
                (lambda (_%g137455137472%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137455137472%_))))
               (_%g137453137653%_
                (lambda (_%g137455137478%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137455137478%_))
                      (let ((_%e137461137480%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137455137478%_))))
                        (let ((_%hd137460137483%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137461137480%_)))
                              (_%tl137459137485%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137461137480%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137459137485%_))
                              (let ((_%e137464137488%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137459137485%_))))
                                (let ((_%hd137463137491%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137464137488%_)))
                                      (_%tl137462137493%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137464137488%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137462137493%_))
                                      (let ((_%e137467137496%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137462137493%_))))
                                        (let ((_%hd137466137499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137467137496%_)))
                                              (_%tl137465137501%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137467137496%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137465137501%_))
                                              (let ((_%e137470137504%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137465137501%_))))
                                                (let ((_%hd137469137507%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137470137504%_)))
                                                      (_%tl137468137509%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137470137504%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137468137509%_))
                                                      ((lambda (_%L137512%_
                                                                _%L137513%_
                                                                _%L137514%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (cons '##unchecked-structure-ref
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self137451%_
                                    _%L137512%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self137451%_
                                          _%L137513%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp137532%_ ((_%rest137535%_
                                         (cons _%L137513%_
                                               (cons _%L137512%_ '())))
                                        (_%bind137537%_ '())
                                        (_%args137538%_ '()))
                       (let* ((_%rest137539137547%_ _%rest137535%_)
                              (_%else137541137555%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind137537%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp145842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp145842 _%args137538%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K137543137641%_
                               (lambda (_%rest137558%_ _%e137559%_)
                                 (let* ((_%__stx145410145411%_ _%e137559%_)
                                        (_%g137564137582%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx145410145411%_)))))
                                   (let ((_%__kont145412145413%_
                                          (lambda ()
                                            (let ((__tmp145843
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137559%_))
                                                         _%args137538%_)))
                                              (declare (not safe))
                                              (_%lp137532%_
                                               _%rest137558%_
                                               _%bind137537%_
                                               __tmp145843))))
                                         (_%__kont145414145415%_
                                          (lambda ()
                                            (let ((__tmp145844
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137559%_))
                                                         _%args137538%_)))
                                              (declare (not safe))
                                              (_%lp137532%_
                                               _%rest137558%_
                                               _%bind137537%_
                                               __tmp145844))))
                                         (_%__kont145416145417%_
                                          (lambda ()
                                            (let ((_%tmp137589%_
                                                   (let ((__tmp145845
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp145845))))
                                              (let ((__tmp145847
                                                     (cons (cons _%tmp137589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__0 _%e137559%_))
                               '()))
                   _%bind137537%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145846
                                                     (cons _%tmp137589%_
                                                           _%args137538%_)))
                                                (declare (not safe))
                                                (_%lp137532%_
                                                 _%rest137558%_
                                                 __tmp145847
                                                 __tmp145846))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx145410145411%_))
                                         (let ((_%e137568137620%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx145410145411%_))))
                                           (let ((_%tl137566137625%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e137568137620%_)))
                                                 (_%hd137567137623%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e137568137620%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd137567137623%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd137567137623%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl137566137625%_))
                                                         (let ((_%e137571137628%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl137566137625%_))))
                   (let ((_%tl137569137633%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e137571137628%_)))
                         (_%hd137570137631%_
                          (let ()
                            (declare (not safe))
                            (##car _%e137571137628%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl137569137633%_))
                         (_%__kont145412145413%_)
                         (_%__kont145416145417%_))))
                 (_%__kont145416145417%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd137567137623%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl137566137625%_))
                     (let ((_%e137577137605%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl137566137625%_))))
                       (let ((_%tl137575137610%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e137577137605%_)))
                             (_%hd137576137608%_
                              (let ()
                                (declare (not safe))
                                (##car _%e137577137605%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl137575137610%_))
                             (_%__kont145414145415%_)
                             (_%__kont145416145417%_))))
                     (_%__kont145416145417%_))
                 (_%__kont145416145417%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145416145417%_))))
                                         (_%__kont145416145417%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest137539137547%_))
                             (let ((_%hd137544137644%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest137539137547%_)))
                                   (_%tl137545137646%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest137539137547%_))))
                               (let* ((_%e137649%_ _%hd137544137644%_)
                                      (_%rest137651%_ _%tl137545137646%_))
                                 (declare (not safe))
                                 (_%K137543137641%_
                                  _%rest137651%_
                                  _%e137649%_)))
                             (let ()
                               (declare (not safe))
                               (_%else137541137555%_)))))))
               _%hd137469137507%_
               _%hd137466137499%_
               _%hd137463137491%_)
              (let ()
                (declare (not safe))
                (_%g137454137475%_ _%g137455137478%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137454137475%_
                                                 _%g137455137478%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137454137475%_
                                         _%g137455137478%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137454137475%_ _%g137455137478%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137454137475%_ _%g137455137478%_))))))
          (declare (not safe))
          (_%g137453137653%_ _%stx137452%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self137230%_ _%stx137231%_)
        (let* ((_%g137233137258%_
                (lambda (_%g137234137255%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137234137255%_))))
               (_%g137232137448%_
                (lambda (_%g137234137261%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137234137261%_))
                      (let ((_%e137241137263%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137234137261%_))))
                        (let ((_%hd137240137266%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137241137263%_)))
                              (_%tl137239137268%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137241137263%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137239137268%_))
                              (let ((_%e137244137271%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137239137268%_))))
                                (let ((_%hd137243137274%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137244137271%_)))
                                      (_%tl137242137276%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137244137271%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137242137276%_))
                                      (let ((_%e137247137279%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137242137276%_))))
                                        (let ((_%hd137246137282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137247137279%_)))
                                              (_%tl137245137284%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137247137279%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137245137284%_))
                                              (let ((_%e137250137287%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137245137284%_))))
                                                (let ((_%hd137249137290%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137250137287%_)))
                                                      (_%tl137248137292%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137250137287%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137248137292%_))
                                                      (let ((_%e137253137295%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137248137292%_))))
                (let ((_%hd137252137298%_
                       (let () (declare (not safe)) (##car _%e137253137295%_)))
                      (_%tl137251137300%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137253137295%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137251137300%_))
                      ((lambda (_%L137303%_
                                _%L137304%_
                                _%L137305%_
                                _%L137306%_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137230%_
                                            _%L137304%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self137230%_
                                                  _%L137303%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self137230%_
                                                        _%L137305%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp137327%_ ((_%rest137330%_
                                                 (cons _%L137305%_
                                                       (cons _%L137303%_
                                                             (cons _%L137304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind137332%_ '())
                                                (_%args137333%_ '()))
                               (let* ((_%rest137334137342%_ _%rest137330%_)
                                      (_%else137336137350%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind137332%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp145848 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp145848 _%args137333%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K137338137436%_
                                       (lambda (_%rest137353%_ _%e137354%_)
                                         (let* ((_%__stx145456145457%_
                                                 _%e137354%_)
                                                (_%g137359137377%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx145456145457%_)))))
                                           (let ((_%__kont145458145459%_
                                                  (lambda ()
                                                    (let ((__tmp145849
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e137354%_))
                         _%args137333%_)))
              (declare (not safe))
              (_%lp137327%_ _%rest137353%_ _%bind137332%_ __tmp145849))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145460145461%_
                                                  (lambda ()
                                                    (let ((__tmp145850
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e137354%_))
                         _%args137333%_)))
              (declare (not safe))
              (_%lp137327%_ _%rest137353%_ _%bind137332%_ __tmp145850))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145462145463%_
                                                  (lambda ()
                                                    (let ((_%tmp137384%_
                                                           (let ((__tmp145851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp145851))))
              (let ((__tmp145853
                     (cons (cons _%tmp137384%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e137354%_))
                                       '()))
                           _%bind137332%_))
                    (__tmp145852 (cons _%tmp137384%_ _%args137333%_)))
                (declare (not safe))
                (_%lp137327%_ _%rest137353%_ __tmp145853 __tmp145852))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx145456145457%_))
                                                 (let ((_%e137363137415%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx145456145457%_))))
                                                   (let ((_%tl137361137420%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137363137415%_)))
                                                         (_%hd137362137418%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137363137415%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd137362137418%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd137362137418%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl137361137420%_))
                         (let ((_%e137366137423%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl137361137420%_))))
                           (let ((_%tl137364137428%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e137366137423%_)))
                                 (_%hd137365137426%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e137366137423%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl137364137428%_))
                                 (_%__kont145458145459%_)
                                 (_%__kont145462145463%_))))
                         (_%__kont145462145463%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd137362137418%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl137361137420%_))
                             (let ((_%e137372137400%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl137361137420%_))))
                               (let ((_%tl137370137405%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e137372137400%_)))
                                     (_%hd137371137403%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e137372137400%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl137370137405%_))
                                     (_%__kont145460145461%_)
                                     (_%__kont145462145463%_))))
                             (_%__kont145462145463%_))
                         (_%__kont145462145463%_)))
                 (_%__kont145462145463%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145462145463%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest137334137342%_))
                                     (let ((_%hd137339137439%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest137334137342%_)))
                                           (_%tl137340137441%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest137334137342%_))))
                                       (let* ((_%e137444%_ _%hd137339137439%_)
                                              (_%rest137446%_
                                               _%tl137340137441%_))
                                         (declare (not safe))
                                         (_%K137338137436%_
                                          _%rest137446%_
                                          _%e137444%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%else137336137350%_)))))))
                       _%hd137252137298%_
                       _%hd137249137290%_
                       _%hd137246137282%_
                       _%hd137243137274%_)
                      (let ()
                        (declare (not safe))
                        (_%g137233137258%_ _%g137234137261%_)))))
              (let ()
                (declare (not safe))
                (_%g137233137258%_ _%g137234137261%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137233137258%_
                                                 _%g137234137261%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137233137258%_
                                         _%g137234137261%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137233137258%_ _%g137234137261%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137233137258%_ _%g137234137261%_))))))
          (declare (not safe))
          (_%g137232137448%_ _%stx137231%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self137069%_ _%stx137070%_)
        (letrec ((_%import-set-template137072%_
                  (lambda (_%in137175%_ _%phi137176%_)
                    (let ((_%iphi137178%_
                           (fx+ _%phi137176%_
                                (##direct-structure-ref
                                 _%in137175%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports137179%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in137175%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp137181%_ ((_%rest137183%_ _%imports137179%_)
                                         (_%r137184%_ '()))
                        (let* ((_%rest137185137193%_ _%rest137183%_)
                               (_%else137187137201%_ (lambda () _%r137184%_))
                               (_%K137189137218%_
                                (lambda (_%rest137204%_ _%in137205%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in137205%_
                                         'gx#module-context::t))
                                      (let ()
                                        (if (let ()
                                              (declare (not safe))
                                              (##fxzero? _%iphi137178%_))
                                            (let ((__tmp145854
                                                   (cons _%in137205%_
                                                         _%r137184%_)))
                                              (declare (not safe))
                                              (_%lp137181%_
                                               _%rest137204%_
                                               __tmp145854))
                                            (let ()
                                              (declare (not safe))
                                              (_%lp137181%_
                                               _%rest137204%_
                                               _%r137184%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in137205%_
                                             'gx#module-import::t))
                                          (let ((_%iphi137209%_
                                                 (fx+ _%phi137176%_
                                                      (##direct-structure-ref
                                                       _%in137205%_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi137209%_))
                                                (let ((__tmp145855
                                                       (cons (##direct-structure-ref
                                                              (##direct-structure-ref
                                                               _%in137205%_
                                                               '1
                                                               gx#module-import::t
                                                               '#f)
                                                              '1
                                                              gx#module-export::t
                                                              '#f)
                                                             _%r137184%_)))
                                                  (declare (not safe))
                                                  (_%lp137181%_
                                                   _%rest137204%_
                                                   __tmp145855))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%lp137181%_
                                                   _%rest137204%_
                                                   _%r137184%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in137205%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi137212%_
                                                     (fx+ _%iphi137178%_
                                                          (##direct-structure-ref
                                                           _%in137205%_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi137212%_))
                                                    (let ((__tmp145856
                                                           (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in137205%_
                          '1
                          gx#import-set::t
                          '#f)
                         _%r137184%_)))
              (declare (not safe))
              (_%lp137181%_ _%rest137204%_ __tmp145856))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi137212%_))
                                                        (let ((__tmp145857
                                                               (let ((__tmp145858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_%import-set-template137072%_
                                 _%in137205%_
                                 _%iphi137178%_))))
                         (declare (not safe))
                         (__foldl1 cons _%r137184%_ __tmp145858))))
                  (declare (not safe))
                  (_%lp137181%_ _%rest137204%_ __tmp145857))
                (let ()
                  (declare (not safe))
                  (_%lp137181%_ _%rest137204%_ _%r137184%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%lp137181%_
                                                 _%rest137204%_
                                                 _%r137184%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest137185137193%_))
                              (let ((_%hd137190137221%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest137185137193%_)))
                                    (_%tl137191137223%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest137185137193%_))))
                                (let* ((_%in137226%_ _%hd137190137221%_)
                                       (_%rest137228%_ _%tl137191137223%_))
                                  (declare (not safe))
                                  (_%K137189137218%_
                                   _%rest137228%_
                                   _%in137226%_)))
                              (let ()
                                (declare (not safe))
                                (_%else137187137201%_)))))))))
          (let* ((_%g137074137084%_
                  (lambda (_%g137075137081%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137075137081%_))))
                 (_%g137073137172%_
                  (lambda (_%g137075137087%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137075137087%_))
                        (let ((_%e137079137089%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137075137087%_))))
                          (let ((_%hd137078137092%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137079137089%_)))
                                (_%tl137077137094%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137079137089%_))))
                            ((lambda (_%L137097%_)
                               (let ((_%ht137108%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp137110%_ ((_%rest137112%_
                                                     _%L137097%_)
                                                    (_%loads137113%_ '()))
                                   (letrec ((_%K137115%_
                                             (lambda (_%ctx137165%_
                                                      _%rest137166%_)
                                               (let ((_%id137168%_
                                                      (##structure-ref
                                                       _%ctx137165%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _%ht137108%_
                                                        _%id137168%_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%lp137110%_
                                                        _%rest137166%_
                                                        _%loads137113%_))
                                                     (let ((_%rt137170%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id137168%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%ht137108%_
                                                          _%id137168%_
                                                          _%rt137170%_))
                                                       (let ((__tmp145859
                                                              (cons _%rt137170%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%loads137113%_)))
                 (declare (not safe))
                 (_%lp137110%_ _%rest137166%_ __tmp145859))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_%rest137116137124%_
                                             _%rest137112%_)
                                            (_%else137118137136%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp145861
                                                            (lambda (_%g137131137133%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g137131137133%_)))
                   (__tmp145860 (reverse _%loads137113%_)))
               (declare (not safe))
               (##map __tmp145861 __tmp145860)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K137120137153%_
                                             (lambda (_%rest137139%_
                                                      _%in137140%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in137140%_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%K137115%_
                                                      _%in137140%_
                                                      _%rest137139%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in137140%_
                                                          'gx#module-import::t))
                                                       (let ()
                                                         (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%in137140%_
                               '3
                               gx#module-import::t
                               '#f))
                     (let ((__tmp145862
                            (##direct-structure-ref
                             (##direct-structure-ref
                              _%in137140%_
                              '1
                              gx#module-import::t
                              '#f)
                             '1
                             gx#module-export::t
                             '#f)))
                       (declare (not safe))
                       (_%K137115%_ __tmp145862 _%rest137139%_))
                     (let ()
                       (declare (not safe))
                       (_%lp137110%_ _%rest137139%_ _%loads137113%_))))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in137140%_
                      'gx#import-set::t))
                   (let ((_%phi137145%_
                          (##direct-structure-ref
                           _%in137140%_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (fxzero? _%phi137145%_)
                         (let ((__tmp145863
                                (##direct-structure-ref
                                 _%in137140%_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_%K137115%_ __tmp145863 _%rest137139%_))
                         (if (fxpositive? _%phi137145%_)
                             (let ()
                               (let* ((_%deps137149%_
                                       (let ()
                                         (declare (not safe))
                                         (_%import-set-template137072%_
                                          _%in137140%_
                                          '0)))
                                      (__tmp145864
                                       (let ()
                                         (declare (not safe))
                                         (__foldl1
                                          cons
                                          _%rest137139%_
                                          _%deps137149%_))))
                                 (declare (not safe))
                                 (_%lp137110%_ __tmp145864 _%loads137113%_)))
                             (let ()
                               (declare (not safe))
                               (_%lp137110%_
                                _%rest137139%_
                                _%loads137113%_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx137070%_
                      _%in137140%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest137116137124%_))
                                           (let ((_%hd137121137156%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest137116137124%_)))
                                                 (_%tl137122137158%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest137116137124%_))))
                                             (let* ((_%in137161%_
                                                     _%hd137121137156%_)
                                                    (_%rest137163%_
                                                     _%tl137122137158%_))
                                               (declare (not safe))
                                               (_%K137120137153%_
                                                _%rest137163%_
                                                _%in137161%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%else137118137136%_))))))))
                             _%tl137077137094%_)))
                        (let ()
                          (declare (not safe))
                          (_%g137074137084%_ _%g137075137087%_))))))
            (declare (not safe))
            (_%g137073137172%_ _%stx137070%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self136882%_ _%stx136883%_)
        (letrec ((_%add-lift!136885%_
                  (lambda (_%expr137067%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr137067%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote136886%_
                  (lambda (_%id137064%_ _%marks137065%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id137064%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks137065%_
                                                        '()))))))))
                 (_%generate-simple136887%_
                  (lambda (_%stxq137059%_)
                    (let ((_%gid137061%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid137062%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq137059%_))))
                      (let ((__tmp145865
                             (cons 'define
                                   (cons _%gid137061%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_%generate-syntax-quote136886%_
                                                  _%qid137062%_
                                                  ''()))
                                               '())))))
                        (declare (not safe))
                        (_%add-lift!136885%_ __tmp145865))
                      (let ((__tmp145866
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145866 _%stxq137059%_ _%gid137061%_))
                      _%gid137061%_)))
                 (_%generate-serialized136888%_
                  (lambda (_%stxq137049%_ _%marks137050%_)
                    (let* ((_%mark-refs137052%_
                            (map _%generate-mark136889%_ _%marks137050%_))
                           (_%gid137054%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid137056%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq137049%_))))
                      (let ((__tmp145867
                             (cons 'define
                                   (cons _%gid137054%_
                                         (cons (let ((__tmp145868
                                                      (cons 'list
                                                            _%mark-refs137052%_)))
                                                 (declare (not safe))
                                                 (_%generate-syntax-quote136886%_
                                                  _%qid137056%_
                                                  __tmp145868))
                                               '())))))
                        (declare (not safe))
                        (_%add-lift!136885%_ __tmp145867))
                      (let ((__tmp145869
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145869 _%stxq137049%_ _%gid137054%_))
                      _%gid137054%_)))
                 (_%generate-mark136889%_
                  (lambda (_%mark137034%_)
                    (let ((_%$e137036%_
                           (let ((__tmp145870
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp145870 _%mark137034%_))))
                      (if _%$e137036%_
                          (values _%$e137036%_)
                          (let ()
                            (let* ((_%gid137040%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-temporary__% '#t)))
                                   (_%repr137042%_
                                    (let ()
                                      (declare (not safe))
                                      (_%serialize-mark136890%_
                                       _%mark137034%_)))
                                   (_%ctx137044%_
                                    (let ((__tmp145871
                                           (##structure-ref
                                            _%mark137034%_
                                            '2
                                            gx#expander-mark::t
                                            '#f)))
                                      (declare (not safe))
                                      (gx#core-context-top__1 __tmp145871)))
                                   (_%ctx-ref137046%_
                                    (if (eq? _%ctx137044%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#current-expander-context)))
                                        '(gx#current-expander-context)
                                        (cons 'gx#import-module
                                              (cons (cons 'quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_%context-ref136891%_ _%ctx137044%_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              (let ((__tmp145872
                                     (let ()
                                       (declare (not safe))
                                       (gxc#current-compile-marks))))
                                (declare (not safe))
                                (hash-put!
                                 __tmp145872
                                 _%mark137034%_
                                 _%gid137040%_))
                              (let ((__tmp145873
                                     (cons 'define
                                           (cons _%gid137040%_
                                                 (cons (cons 'gx#core-deserialize-mark
                                                             (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%repr137042%_ '()))
                           (cons _%ctx-ref137046%_ '())))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (declare (not safe))
                                (_%add-lift!136885%_ __tmp145873))
                              _%gid137040%_))))))
                 (_%serialize-mark136890%_
                  (lambda (_%mark136981%_)
                    (letrec ((_%quote-e136983%_
                              (lambda (_%sym137032%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym137032%_))
                                    _%sym137032%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym137032%_))))))
                      (let* ((_%mark136984136993%_ _%mark136981%_)
                             (_%E136986136997%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark136984136993%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K136987137009%_
                              (lambda (_%trace137000%_
                                       _%phi137001%_
                                       _%ctx137002%_
                                       _%subst137003%_)
                                (let ((_%subs137005%_
                                       (if _%subst137003%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst137003%_))
                                           '())))
                                  (cons _%phi137001%_
                                        (map (lambda (_%pair137007%_)
                                               (cons (let ((__tmp145874
                                                            (car _%pair137007%_)))
                                                       (declare (not safe))
                                                       (_%quote-e136983%_
                                                        __tmp145874))
                                                     (let ((__tmp145875
                                                            (cdr _%pair137007%_)))
                                                       (declare (not safe))
                                                       (_%quote-e136983%_
                                                        __tmp145875))))
                                             _%subs137005%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark136984136993%_
                               'gx#expander-mark::t))
                            (let* ((_%e136988137012%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136984136993%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst137015%_ _%e136988137012%_)
                                   (_%e136989137017%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136984136993%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx137020%_ _%e136989137017%_)
                                   (_%e136990137022%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136984136993%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi137025%_ _%e136990137022%_)
                                   (_%e136991137027%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136984136993%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace137030%_ _%e136991137027%_))
                              (declare (not safe))
                              (_%K136987137009%_
                               _%trace137030%_
                               _%phi137025%_
                               _%ctx137020%_
                               _%subst137015%_))
                            (let ()
                              (declare (not safe))
                              (_%E136986136997%_)))))))
                 (_%context-ref136891%_
                  (lambda (_%ctx136968%_)
                    (if (let ((__tmp145876
                               (##structure-ref
                                _%ctx136968%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp145876
                           'gx#module-context::t))
                        (let ((_%ctx-ref136970%_
                               (let ()
                                 (declare (not safe))
                                 (_%context-ref-nested136893%_ _%ctx136968%_)))
                              (_%ctx-origin136971%_
                               (let ()
                                 (declare (not safe))
                                 (_%context-ref-origin136892%_ _%ctx136968%_)))
                              (_%origin136972%_
                               (let ((__tmp145877
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (_%context-ref-origin136892%_ __tmp145877))))
                          (if (eq? _%origin136972%_ _%ctx-origin136971%_)
                              (let ((_%ref136974%_
                                     (let ((__tmp145878
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-context))))
                                       (declare (not safe))
                                       (_%context-ref-nested136893%_
                                        __tmp145878))))
                                (let _%lp136976%_ ((_%ref136978%_
                                                    (cdr _%ref136974%_))
                                                   (_%ctx-ref136979%_
                                                    (cdr _%ctx-ref136970%_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _%ref136978%_))
                                           (eq? (car _%ref136978%_)
                                                (car _%ctx-ref136979%_)))
                                      (let ((__tmp145880 (cdr _%ref136978%_))
                                            (__tmp145879
                                             (cdr _%ctx-ref136979%_)))
                                        (declare (not safe))
                                        (_%lp136976%_ __tmp145880 __tmp145879))
                                      (cons '#f _%ctx-ref136979%_))))
                              _%ctx-ref136970%_))
                        (let ((__tmp145881
                               (##structure-ref
                                _%ctx136968%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp145881)))))
                 (_%context-ref-origin136892%_
                  (lambda (_%ctx136960%_)
                    (let _%lp136962%_ ((_%ctx136964%_ _%ctx136960%_))
                      (let ((_%super136966%_
                             (##structure-ref
                              _%ctx136964%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136966%_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_%lp136962%_ _%super136966%_))
                            _%ctx136964%_)))))
                 (_%context-ref-nested136893%_
                  (lambda (_%ctx136951%_)
                    (let _%lp136953%_ ((_%ctx136955%_ _%ctx136951%_)
                                       (_%r136956%_ '()))
                      (let ((_%super136958%_
                             (##structure-ref
                              _%ctx136955%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136958%_
                               'gx#module-context::t))
                            (let ((__tmp145882
                                   (cons (car (##structure-ref
                                               _%ctx136955%_
                                               '7
                                               gx#module-context::t
                                               '#f))
                                         _%r136956%_)))
                              (declare (not safe))
                              (_%lp136953%_ _%super136958%_ __tmp145882))
                            (cons (let ((__tmp145883
                                         (##structure-ref
                                          _%ctx136955%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp145883))
                                  _%r136956%_)))))))
          (let* ((_%g136895136908%_
                  (lambda (_%g136896136905%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136896136905%_))))
                 (_%g136894136948%_
                  (lambda (_%g136896136911%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136896136911%_))
                        (let ((_%e136900136913%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136896136911%_))))
                          (let ((_%hd136899136916%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136900136913%_)))
                                (_%tl136898136918%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136900136913%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl136898136918%_))
                                (let ((_%e136903136921%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl136898136918%_))))
                                  (let ((_%hd136902136924%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136903136921%_)))
                                        (_%tl136901136926%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136903136921%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136901136926%_))
                                        ((lambda (_%L136929%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L136929%_))
                                               (let ((_%$e136942%_
                                                      (let ((__tmp145884
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp145884 _%L136929%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e136942%_
                                                     (values _%$e136942%_)
                                                     (let ((_%marks136946%_
                                                            (##direct-structure-ref
                                                             _%L136929%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _%marks136946%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-simple136887%_
                                                              _%L136929%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-serialized136888%_
                                                              _%L136929%_
                                                              _%marks136946%_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L136929%_))))
                                         _%hd136902136924%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g136895136908%_
                                           _%g136896136911%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g136895136908%_ _%g136896136911%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g136895136908%_ _%g136896136911%_))))))
            (declare (not safe))
            (_%g136894136948%_ _%stx136883%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self136814%_ _%stx136815%_)
        (let* ((_%g136817136834%_
                (lambda (_%g136818136831%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136818136831%_))))
               (_%g136816136879%_
                (lambda (_%g136818136837%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136818136837%_))
                      (let ((_%e136823136839%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136818136837%_))))
                        (let ((_%hd136822136842%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136823136839%_)))
                              (_%tl136821136844%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136823136839%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136821136844%_))
                              (let ((_%e136826136847%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136821136844%_))))
                                (let ((_%hd136825136850%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136826136847%_)))
                                      (_%tl136824136852%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136826136847%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136824136852%_))
                                      (let ((_%e136829136855%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136824136852%_))))
                                        (let ((_%hd136828136858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136829136855%_)))
                                              (_%tl136827136860%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136829136855%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136827136860%_))
                                              ((lambda (_%L136863%_
                                                        _%L136864%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L136864%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self136814%_ _%L136863%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd136828136858%_
                                               _%hd136825136850%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g136817136834%_
                                                 _%g136818136837%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g136817136834%_
                                         _%g136818136837%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g136817136834%_ _%g136818136837%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136817136834%_ _%g136818136837%_))))))
          (declare (not safe))
          (_%g136816136879%_ _%stx136815%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self136763%_ _%stx136764%_)
        (let* ((_%g136766136776%_
                (lambda (_%g136767136773%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136767136773%_))))
               (_%g136765136811%_
                (lambda (_%g136767136779%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136767136779%_))
                      (let ((_%e136771136781%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136767136779%_))))
                        (let ((_%hd136770136784%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136771136781%_)))
                              (_%tl136769136786%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136771136781%_))))
                          ((lambda (_%L136789%_)
                             (let* ((_%c-body136803%_
                                     (map (lambda (_%g136798136800%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self136763%_
                                               _%g136798136800%_)))
                                          _%L136789%_))
                                    (_%c-body136808%_
                                     (let ((__tmp145885
                                            (lambda (_%$obj136805%_)
                                              (let ((__tmp145886
                                                     (let ()
                                                       (declare (not safe))
                                                       (eq? _%$obj136805%_
                                                            '#!void))))
                                                (declare (not safe))
                                                (not __tmp145886)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp145885
                                        _%c-body136803%_))))
                               (cons '%#begin _%c-body136808%_)))
                           _%tl136769136786%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136766136776%_ _%g136767136779%_))))))
          (declare (not safe))
          (_%g136765136811%_ _%stx136764%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self136668%_ _%stx136669%_)
        (let* ((_%g136671136681%_
                (lambda (_%g136672136678%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136672136678%_))))
               (_%g136670136760%_
                (lambda (_%g136672136684%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136672136684%_))
                      (let ((_%e136676136686%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136672136684%_))))
                        (let ((_%hd136675136689%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136676136686%_)))
                              (_%tl136674136691%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136676136686%_))))
                          ((lambda (_%L136694%_)
                             (let* ((_%phi136704%_
                                     (let ((__tmp145887
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp145887 '1)))
                                    (_%block136706%_
                                     (let ((__tmp145888
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _%self136668%_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp145888
                                        _%phi136704%_)))
                                    (_%compiled136709%_
                                     (let ((__tmp145889
                                            (lambda ()
                                              (let ((__tmp145891
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self136668%_
                                                        'state)))
                                                    (__tmp145890
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%L136694%_)))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi__%
                                                 '#f
                                                 __tmp145891
                                                 __tmp145890)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp145889
                                        gx#current-expander-phi
                                        _%phi136704%_))))
                               (let* ((_%g136712136722%_
                                       (lambda (_%g136713136719%_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g136713136719%_))))
                                      (_%g136711136757%_
                                       (lambda (_%g136713136725%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%g136713136725%_))
                                             (let ((_%e136717136727%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%g136713136725%_))))
                                               (let ((_%hd136716136730%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e136717136727%_)))
                                                     (_%tl136715136732%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e136717136727%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd136716136730%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _%hd136716136730%_))
                                                         ((lambda (_%L136735%_)
                                                            (let ((_%c-body136752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_%$obj136749%_)
                                     (let ((__tmp145892
                                            (let ()
                                              (declare (not safe))
                                              (eq? _%$obj136749%_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp145892)))
                                   _%L136735%_)))
                      (if _%block136706%_
                          (let ()
                            (cons '%#begin-syntax
                                  (cons (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'load-module
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons _%block136706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%c-body136752%_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _%c-body136752%_))
                              (let () '#!void)
                              (let ()
                                (cons '%#begin-syntax _%c-body136752%_))))))
                  _%tl136715136732%_)
                 (let ()
                   (declare (not safe))
                   (_%g136712136722%_ _%g136713136725%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g136712136722%_
                                                        _%g136713136725%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g136712136722%_
                                                _%g136713136725%_))))))
                                 (declare (not safe))
                                 (_%g136711136757%_ _%compiled136709%_))))
                           _%tl136674136691%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136671136681%_ _%g136672136684%_))))))
          (declare (not safe))
          (_%g136670136760%_ _%stx136669%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self136599%_ _%stx136600%_)
        (let ((__tmp145893
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self136599%_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp145893))
        (let* ((_%g136602136616%_
                (lambda (_%g136603136613%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136603136613%_))))
               (_%g136601136665%_
                (lambda (_%g136603136619%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136603136619%_))
                      (let ((_%e136608136621%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136603136619%_))))
                        (let ((_%hd136607136624%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136608136621%_)))
                              (_%tl136606136626%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136608136621%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136606136626%_))
                              (let ((_%e136611136629%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136606136626%_))))
                                (let ((_%hd136610136632%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136611136629%_)))
                                      (_%tl136609136634%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136611136629%_))))
                                  ((lambda (_%L136637%_ _%L136638%_)
                                     (let ((_%key136651%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L136638%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key136651%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx136600%_
                                              _%L136638%_
                                              _%key136651%_)))
                                       (let* ((_%ctx136653%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L136638%_)))
                                              (_%code136656%_
                                               (let ((__tmp145894
                                                      (lambda ()
                                                        (let ((__tmp145895
                                                               (##structure-ref
                                                                _%ctx136653%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self136599%_
                                                           __tmp145895)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp145894
                                                  gx#current-expander-context
                                                  _%ctx136653%_)))
                                              (_%rt136658%_
                                               (let ((__tmp145896
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp145896
                                                  _%ctx136653%_)))
                                              (_%loader136660%_
                                               (if _%rt136658%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt136658%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid136662%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L136638%_))))
                                         (let ((__tmp145897
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self136599%_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp145897))
                                         (cons '%#module
                                               (cons _%modid136662%_
                                                     (cons _%code136656%_
                                                           _%loader136660%_))))))
                                   _%tl136609136634%_
                                   _%hd136610136632%_)))
                              (let ()
                                (declare (not safe))
                                (_%g136602136616%_ _%g136603136619%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136602136616%_ _%g136603136619%_))))))
          (declare (not safe))
          (_%g136601136665%_ _%stx136600%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx136586%_ _%context-chain136587%_)
        (let _%lp136589%_ ((_%ctx136591%_ _%ctx136586%_) (_%path136592%_ '()))
          (let ((_%super136594%_
                 (##structure-ref _%ctx136591%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super136594%_ _%context-chain136587%_)
                (let ((__tmp145898
                       (let ((__tmp145899
                              (car (##structure-ref
                                    _%ctx136591%_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp145899 _%path136592%_))))
                  (declare (not safe))
                  (cons '#f __tmp145898))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super136594%_
                       'gx#module-context::t))
                    (let ((__tmp145900
                           (cons (car (##structure-ref
                                       _%ctx136591%_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _%path136592%_)))
                      (declare (not safe))
                      (_%lp136589%_ _%super136594%_ __tmp145900))
                    (let ()
                      (cons (let ((__tmp145901
                                   (##structure-ref
                                    _%ctx136591%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (make-symbol__1 '":" __tmp145901))
                            _%path136592%_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp136579%_ ((_%ctx136581%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r136582%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx136581%_ 'gx#module-context::t))
              (let ((__tmp145903
                     (##structure-ref _%ctx136581%_ '3 gx#phi-context::t '#f))
                    (__tmp145902 (cons _%ctx136581%_ _%r136582%_)))
                (declare (not safe))
                (_%lp136579%_ __tmp145903 __tmp145902))
              (let () _%r136582%_)))))
    (define gxc#generate-meta-import%
      (lambda (_%self136342%_ _%stx136343%_)
        (letrec* ((_%context-chain136345%_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_%make-import-spec136346%_
                   (lambda (_%in136515%_)
                     (let* ((_%in136516136528%_ _%in136515%_)
                            (_%E136518136532%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in136516136528%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K136519136542%_
                             (lambda (_%phi136535%_
                                      _%name136536%_
                                      _%src-name136537%_
                                      _%src-phi136538%_
                                      _%src-key136539%_
                                      _%src-ctx136540%_)
                               (cons _%phi136535%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name136536%_))
                                           (cons _%src-phi136538%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name136537%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in136516136528%_
                              'gx#module-import::t))
                           (let ((_%e136520136545%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in136516136528%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e136520136545%_
                                    'gx#module-export::t))
                                 (let* ((_%e136523136548%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136520136545%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx136551%_ _%e136523136548%_)
                                        (_%e136524136553%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136520136545%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key136556%_ _%e136524136553%_)
                                        (_%e136525136558%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136520136545%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi136561%_ _%e136525136558%_)
                                        (_%e136526136563%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136520136545%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name136566%_ _%e136526136563%_)
                                        (_%e136521136568%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in136516136528%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name136571%_ _%e136521136568%_)
                                        (_%e136522136573%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in136516136528%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi136576%_ _%e136522136573%_))
                                   (declare (not safe))
                                   (_%K136519136542%_
                                    _%phi136576%_
                                    _%name136571%_
                                    _%src-name136566%_
                                    _%src-phi136561%_
                                    _%src-key136556%_
                                    _%src-ctx136551%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%E136518136532%_))))
                           (let ()
                             (declare (not safe))
                             (_%E136518136532%_))))))
                  (_%make-import-path136347%_
                   (lambda (_%ctx136513%_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _%ctx136513%_
                        _%context-chain136345%_))))
                  (_%make-import-spec-in136348%_
                   (lambda (_%ctx136510%_ _%in136511%_)
                     (cons 'spec:
                           (cons (let ()
                                   (declare (not safe))
                                   (_%make-import-path136347%_ _%ctx136510%_))
                                 (reverse _%in136511%_))))))
          (let ((__tmp145904
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self136342%_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp145904))
          (let* ((_%g136350136360%_
                  (lambda (_%g136351136357%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136351136357%_))))
                 (_%g136349136507%_
                  (lambda (_%g136351136363%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136351136363%_))
                        (let ((_%e136355136365%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136351136363%_))))
                          (let ((_%hd136354136368%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136355136365%_)))
                                (_%tl136353136370%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136355136365%_))))
                            ((lambda (_%L136373%_)
                               (let _%lp136384%_ ((_%rest136386%_ _%L136373%_)
                                                  (_%current-src136387%_ '#f)
                                                  (_%current-in136388%_ '())
                                                  (_%r136389%_ '()))
                                 (let* ((_%rest136390136398%_ _%rest136386%_)
                                        (_%else136392136408%_
                                         (lambda ()
                                           (let ((_%r136406%_
                                                  (if _%current-src136387%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%make-import-spec-in136348%_
                                                               _%current-src136387%_
                                                               _%current-in136388%_))
                                                            _%r136389%_)
                                                      _%r136389%_)))
                                             (cons '%#import
                                                   (reverse _%r136406%_)))))
                                        (_%K136394136495%_
                                         (lambda (_%rest136411%_ _%in136412%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in136412%_
                                                  'gx#module-import::t))
                                               (let ()
                                                 (let* ((_%in136414136421%_
                                                         _%in136412%_)
                                                        (_%E136416136425%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%in136414136421%_
                            '((module-import (module-export src-ctx)))))
                   '#!void))
                (_%K136417136433%_
                 (lambda (_%src-ctx136428%_)
                   (if (eq? _%current-src136387%_ _%src-ctx136428%_)
                       (let ((__tmp145905
                              (cons (let ()
                                      (declare (not safe))
                                      (_%make-import-spec136346%_
                                       _%in136412%_))
                                    _%current-in136388%_)))
                         (declare (not safe))
                         (_%lp136384%_
                          _%rest136411%_
                          _%current-src136387%_
                          __tmp145905
                          _%r136389%_))
                       (if _%current-src136387%_
                           (let ((__tmp145907
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%make-import-spec136346%_
                                           _%in136412%_))
                                        '()))
                                 (__tmp145906
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%make-import-spec-in136348%_
                                           _%current-src136387%_
                                           _%current-in136388%_))
                                        _%r136389%_)))
                             (declare (not safe))
                             (_%lp136384%_
                              _%rest136411%_
                              _%src-ctx136428%_
                              __tmp145907
                              __tmp145906))
                           (let ((__tmp145908
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%make-import-spec136346%_
                                           _%in136412%_))
                                        '())))
                             (declare (not safe))
                             (_%lp136384%_
                              _%rest136411%_
                              _%src-ctx136428%_
                              __tmp145908
                              _%r136389%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in136414136421%_
                                                          'gx#module-import::t))
                                                       (let ((_%e136418136436%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%in136414136421%_
                         '1
                         '#f
                         '#f))))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        _%e136418136436%_
                        'gx#module-export::t))
                     (let* ((_%e136419136439%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%e136418136436%_
                                '1
                                '#f
                                '#f)))
                            (_%src-ctx136442%_ _%e136419136439%_))
                       (declare (not safe))
                       (_%K136417136433%_ _%src-ctx136442%_))
                     (let () (declare (not safe)) (_%E136416136425%_))))
               (let () (declare (not safe)) (_%E136416136425%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in136412%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (let* ((_%phi136445%_
                                                             (##direct-structure-ref
                                                              _%in136412%_
                                                              '2
                                                              gx#import-set::t
                                                              '#f))
                                                            (_%src136447%_
                                                             (##direct-structure-ref
                                                              _%in136412%_
                                                              '1
                                                              gx#import-set::t
                                                              '#f))
                                                            (_%src-in136487%_
                                                             (let* ((_%g136448136457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_%make-import-path136347%_ _%src136447%_)))
                            (_%E136451136461%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g136448136457%_
                                        '([path])
                                        '(path)))
                               '#!void)))
                       (let ((_%K136453136477%_
                              (lambda (_%path136475%_) _%path136475%_))
                             (_%K136452136467%_
                              (lambda (_%path136465%_)
                                (cons 'in: _%path136465%_))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%g136448136457%_))
                             (let ((_%tl136455136482%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g136448136457%_)))
                                   (_%hd136454136480%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g136448136457%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl136455136482%_))
                                   (let ((_%path136485%_ _%hd136454136480%_))
                                     (declare (not safe))
                                     (_%K136453136477%_ _%path136485%_))
                                   (let ((_%path136470%_ _%g136448136457%_))
                                     (declare (not safe))
                                     (_%K136452136467%_ _%path136470%_))))
                             (let ((_%path136470%_ _%g136448136457%_))
                               (declare (not safe))
                               (_%K136452136467%_ _%path136470%_))))))
                    (_%r136489%_
                     (if _%current-src136387%_
                         (cons (let ()
                                 (declare (not safe))
                                 (_%make-import-spec-in136348%_
                                  _%current-src136387%_
                                  _%current-in136388%_))
                               _%r136389%_)
                         _%r136389%_))
                    (__tmp145909
                     (cons (if (fxzero? _%phi136445%_)
                               _%src-in136487%_
                               (cons 'phi:
                                     (cons _%phi136445%_
                                           (cons _%src-in136487%_ '()))))
                           _%r136489%_)))
               (declare (not safe))
               (_%lp136384%_ _%rest136411%_ '#f '() __tmp145909)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in136412%_
                                                          'gx#module-context::t))
                                                       (let ()
                                                         (let* ((_%r136493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if _%current-src136387%_
                             (cons (let ()
                                     (declare (not safe))
                                     (_%make-import-spec-in136348%_
                                      _%current-src136387%_
                                      _%current-in136388%_))
                                   _%r136389%_)
                             _%r136389%_))
                        (__tmp145910
                         (cons (cons 'runtime:
                                     (let ()
                                       (declare (not safe))
                                       (_%make-import-path136347%_
                                        _%in136412%_)))
                               _%r136493%_)))
                   (declare (not safe))
                   (_%lp136384%_ _%rest136411%_ '#f '() __tmp145910)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest136390136398%_))
                                       (let ((_%hd136395136498%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest136390136398%_)))
                                             (_%tl136396136500%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest136390136398%_))))
                                         (let* ((_%in136503%_
                                                 _%hd136395136498%_)
                                                (_%rest136505%_
                                                 _%tl136396136500%_))
                                           (declare (not safe))
                                           (_%K136394136495%_
                                            _%rest136505%_
                                            _%in136503%_)))
                                       (let ()
                                         (declare (not safe))
                                         (_%else136392136408%_))))))
                             _%tl136353136370%_)))
                        (let ()
                          (declare (not safe))
                          (_%g136350136360%_ _%g136351136363%_))))))
            (declare (not safe))
            (_%g136349136507%_ _%stx136343%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self136152%_ _%stx136153%_)
        (letrec* ((_%context-chain136155%_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_%make-import-path136156%_
                   (lambda (_%ctx136340%_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _%ctx136340%_
                        _%context-chain136155%_)))))
          (let* ((_%g136158136168%_
                  (lambda (_%g136159136165%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136159136165%_))))
                 (_%g136157136337%_
                  (lambda (_%g136159136171%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136159136171%_))
                        (let ((_%e136163136173%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136159136171%_))))
                          (let ((_%hd136162136176%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136163136173%_)))
                                (_%tl136161136178%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136163136173%_))))
                            ((lambda (_%L136181%_)
                               (let _%lp136192%_ ((_%rest136194%_ _%L136181%_)
                                                  (_%r136195%_ '()))
                                 (let* ((_%rest136196136204%_ _%rest136194%_)
                                        (_%else136198136212%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r136195%_))))
                                        (_%K136200136325%_
                                         (lambda (_%rest136215%_ _%out136216%_)
                                           (let* ((_%out136217136230%_
                                                   _%out136216%_)
                                                  (_%E136220136234%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out136217136230%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K136224136304%_
                                                    (lambda (_%name136300%_
                                                             _%phi136301%_
                                                             _%key136302%_)
                                                      (let ((__tmp145911
                                                             (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%phi136301%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%key136302%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-identifier-key
                                                      _%name136300%_))
                                                   '()))))
                           _%r136195%_)))
                (declare (not safe))
                (_%lp136192%_ _%rest136215%_ __tmp145911))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K136221136284%_
                                                    (lambda (_%phi136238%_
                                                             _%src136239%_)
                                                      (let* ((_%out136279%_
                                                              (if _%src136239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g136240136249%_
                                              (let ()
                                                (declare (not safe))
                                                (_%make-import-path136156%_
                                                 _%src136239%_)))
                                             (_%E136243136253%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g136240136249%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K136245136269%_
                                               (lambda (_%path136267%_)
                                                 _%path136267%_))
                                              (_%K136244136259%_
                                               (lambda (_%path136257%_)
                                                 (cons 'in: _%path136257%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g136240136249%_))
                                              (let ((_%tl136247136274%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g136240136249%_)))
                                                    (_%hd136246136272%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g136240136249%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl136247136274%_))
                                                    (let ((_%path136277%_
                                                           _%hd136246136272%_))
                                                      (declare (not safe))
                                                      (_%K136245136269%_
                                                       _%path136277%_))
                                                    (let ((_%path136262%_
                                                           _%g136240136249%_))
                                                      (declare (not safe))
                                                      (_%K136244136259%_
                                                       _%path136262%_))))
                                              (let ((_%path136262%_
                                                     _%g136240136249%_))
                                                (declare (not safe))
                                                (_%K136244136259%_
                                                 _%path136262%_)))))
                                      '()))
                          '#t))
                     (_%out136281%_
                      (if (fxzero? _%phi136238%_)
                          _%out136279%_
                          (cons 'phi:
                                (cons _%phi136238%_
                                      (cons _%out136279%_ '())))))
                     (__tmp145912 (cons _%out136281%_ _%r136195%_)))
                (declare (not safe))
                (_%lp136192%_ _%rest136215%_ __tmp145912)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match136219136297%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out136217136230%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e136222136287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out136217136230%_
                               '1
                               '#f
                               '#f)))
                           (_%e136223136292%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out136217136230%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src136290%_ _%e136222136287%_)
                            (_%phi136295%_ _%e136223136292%_))
                        (let ()
                          (declare (not safe))
                          (_%K136221136284%_ _%phi136295%_ _%src136290%_))))
                    (let () (declare (not safe)) (_%E136220136234%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out136217136230%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e136225136307%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out136217136230%_
                        '1
                        '#f
                        '#f)))
                    (_%e136226136310%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136217136230%_
                        '2
                        '#f
                        '#f)))
                    (_%e136227136315%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136217136230%_
                        '3
                        '#f
                        '#f)))
                    (_%e136228136320%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136217136230%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key136313%_ _%e136226136310%_)
                     (_%phi136318%_ _%e136227136315%_)
                     (_%name136323%_ _%e136228136320%_))
                 (let ()
                   (declare (not safe))
                   (_%K136224136304%_
                    _%name136323%_
                    _%phi136318%_
                    _%key136313%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%try-match136219136297%_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest136196136204%_))
                                       (let ((_%hd136201136328%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest136196136204%_)))
                                             (_%tl136202136330%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest136196136204%_))))
                                         (let* ((_%out136333%_
                                                 _%hd136201136328%_)
                                                (_%rest136335%_
                                                 _%tl136202136330%_))
                                           (declare (not safe))
                                           (_%K136200136325%_
                                            _%rest136335%_
                                            _%out136333%_)))
                                       (let ()
                                         (declare (not safe))
                                         (_%else136198136212%_))))))
                             _%tl136161136178%_)))
                        (let ()
                          (declare (not safe))
                          (_%g136158136168%_ _%g136159136171%_))))))
            (declare (not safe))
            (_%g136157136337%_ _%stx136153%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self136113%_ _%stx136114%_)
        (let ((__tmp145913
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self136113%_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp145913))
        (let* ((_%g136116136126%_
                (lambda (_%g136117136123%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136117136123%_))))
               (_%g136115136149%_
                (lambda (_%g136117136129%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136117136129%_))
                      (let ((_%e136121136131%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136117136129%_))))
                        (let ((_%hd136120136134%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136121136131%_)))
                              (_%tl136119136136%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136121136131%_))))
                          ((lambda (_%L136139%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L136139%_)))
                           _%tl136119136136%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136116136126%_ _%g136117136129%_))))))
          (declare (not safe))
          (_%g136115136149%_ _%stx136114%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self135984%_ _%stx135985%_)
        (letrec ((_%generate1135987%_
                  (lambda (_%id136108%_ _%eid136109%_)
                    (let ((_%eid136111%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid136109%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid136111%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx135985%_
                             _%eid136111%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id136108%_))
                            (cons _%eid136111%_ '()))))))
          (let* ((_%g135989136017%_
                  (lambda (_%g135990136014%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135990136014%_))))
                 (_%g135988136105%_
                  (lambda (_%g135990136020%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135990136020%_))
                        (let ((_%e135995136022%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135990136020%_))))
                          (let ((_%hd135994136025%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135995136022%_)))
                                (_%tl135993136027%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135995136022%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl135993136027%_))
                                (let ((_g145914_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl135993136027%_
                                          '0))))
                                  (begin
                                    (let ((_g145915_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145914_)
                                                 (##vector-length _g145914_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145915_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145915_)))
                                    (let ((_%target135996136030%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145914_ 0)))
                                          (_%tl135998136032%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145914_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl135998136032%_))
                                          (letrec ((_%loop135999136035%_
                                                    (lambda (_%hd135997136038%_
                                                             _%eid136003136040%_
                                                             _%id136004136042%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd135997136038%_))
                                                          (let ((_%e136000136045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd135997136038%_))))
                    (let ((_%lp-hd136001136048%_
                           (let ()
                             (declare (not safe))
                             (##car _%e136000136045%_)))
                          (_%lp-tl136002136050%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e136000136045%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd136001136048%_))
                          (let ((_%e136009136053%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd136001136048%_))))
                            (let ((_%hd136008136056%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e136009136053%_)))
                                  (_%tl136007136058%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e136009136053%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl136007136058%_))
                                  (let ((_%e136012136061%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl136007136058%_))))
                                    (let ((_%hd136011136064%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e136012136061%_)))
                                          (_%tl136010136066%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e136012136061%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl136010136066%_))
                                          (let ((__tmp145917
                                                 (cons _%hd136011136064%_
                                                       _%eid136003136040%_))
                                                (__tmp145916
                                                 (cons _%hd136008136056%_
                                                       _%id136004136042%_)))
                                            (declare (not safe))
                                            (_%loop135999136035%_
                                             _%lp-tl136002136050%_
                                             __tmp145917
                                             __tmp145916))
                                          (let ()
                                            (declare (not safe))
                                            (_%g135989136017%_
                                             _%g135990136020%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g135989136017%_ _%g135990136020%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g135989136017%_ _%g135990136020%_)))))
                  (let ((_%eid136005136069%_ (reverse _%eid136003136040%_))
                        (_%id136006136071%_ (reverse _%id136004136042%_)))
                    ((lambda (_%L136074%_ _%L136075%_)
                       (cons '%#extern
                             (map _%generate1135987%_
                                  (let ((__tmp145918
                                         (lambda (_%g136090136093%_
                                                  _%g136091136095%_)
                                           (cons _%g136090136093%_
                                                 _%g136091136095%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145918 '() _%L136075%_))
                                  (let ((__tmp145919
                                         (lambda (_%g136097136100%_
                                                  _%g136098136102%_)
                                           (cons _%g136097136100%_
                                                 _%g136098136102%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145919 '() _%L136074%_)))))
                     _%eid136005136069%_
                     _%id136006136071%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop135999136035%_
                                               _%target135996136030%_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g135989136017%_
                                             _%g135990136020%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g135989136017%_ _%g135990136020%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g135989136017%_ _%g135990136020%_))))))
            (declare (not safe))
            (_%g135988136105%_ _%stx135985%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self135774%_ _%stx135775%_)
        (letrec ((_%generate1135777%_
                  (lambda (_%id135979%_)
                    (let ((_%eid135981%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id135979%_)))
                          (_%ident135982%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id135979%_))))
                      (cons '%#define-runtime
                            (cons _%ident135982%_ (cons _%eid135981%_ '()))))))
                 (_%generate*135778%_
                  (lambda (_%all135947%_)
                    (let* ((_%all135948135956%_ _%all135947%_)
                           (_%else135950135964%_
                            (lambda () (cons '%#begin _%all135947%_)))
                           (_%K135952135969%_
                            (lambda (_%one135967%_) _%one135967%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all135948135956%_))
                          (let ((_%hd135953135972%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all135948135956%_)))
                                (_%tl135954135974%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all135948135956%_))))
                            (let ((_%one135977%_ _%hd135953135972%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl135954135974%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K135952135969%_ _%one135977%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%else135950135964%_)))))
                          (let ()
                            (declare (not safe))
                            (_%else135950135964%_)))))))
          (let* ((_%g135780135797%_
                  (lambda (_%g135781135794%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135781135794%_))))
                 (_%g135779135944%_
                  (lambda (_%g135781135800%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135781135800%_))
                        (let ((_%e135786135802%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135781135800%_))))
                          (let ((_%hd135785135805%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135786135802%_)))
                                (_%tl135784135807%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135786135802%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl135784135807%_))
                                (let ((_%e135789135810%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl135784135807%_))))
                                  (let ((_%hd135788135813%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135789135810%_)))
                                        (_%tl135787135815%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135789135810%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135787135815%_))
                                        (let ((_%e135792135818%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135787135815%_))))
                                          (let ((_%hd135791135821%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135792135818%_)))
                                                (_%tl135790135823%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135792135818%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135790135823%_))
                                                ((lambda (_%L135826%_
                                                          _%L135827%_)
                                                   (let _%lp135843%_ ((_%rest135845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L135827%_)
                              (_%r135846%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx145535145536%_
                                                             _%rest135845%_)
                                                            (_%g135851135868%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx145535145536%_)))))
               (let ((_%__kont145537145538%_
                      (lambda (_%L135931%_)
                        (let ()
                          (declare (not safe))
                          (_%lp135843%_ _%L135931%_ _%r135846%_))))
                     (_%__kont145539145540%_
                      (lambda (_%L135904%_ _%L135905%_)
                        (let ((__tmp145920
                               (cons (let ()
                                       (declare (not safe))
                                       (_%generate1135777%_ _%L135905%_))
                                     _%r135846%_)))
                          (declare (not safe))
                          (_%lp135843%_ _%L135904%_ __tmp145920))))
                     (_%__kont145541145542%_
                      (lambda (_%L135880%_)
                        (let ((__tmp145921
                               (let ((__tmp145922
                                      (cons (let ()
                                              (declare (not safe))
                                              (_%generate1135777%_
                                               _%L135880%_))
                                            '())))
                                 (declare (not safe))
                                 (__foldl1 cons __tmp145922 _%r135846%_))))
                          (declare (not safe))
                          (_%generate*135778%_ __tmp145921))))
                     (_%__kont145543145544%_
                      (lambda ()
                        (let ((__tmp145923 (reverse _%r135846%_)))
                          (declare (not safe))
                          (_%generate*135778%_ __tmp145923)))))
                 (let ((_%g135849135891%_
                        (lambda ()
                          (let ((_%L135880%_ _%__stx145535145536%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L135880%_))
                                (_%__kont145541145542%_ _%L135880%_)
                                (_%__kont145543145544%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx145535145536%_))
                       (let ((_%e135856135920%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx145535145536%_))))
                         (let ((_%tl135854135925%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e135856135920%_)))
                               (_%hd135855135923%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e135856135920%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd135855135923%_))
                               (let ((_%e135857135928%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd135855135923%_))))
                                 (if (equal? _%e135857135928%_ '#f)
                                     (_%__kont145537145538%_
                                      _%tl135854135925%_)
                                     (_%__kont145539145540%_
                                      _%tl135854135925%_
                                      _%hd135855135923%_)))
                               (_%__kont145539145540%_
                                _%tl135854135925%_
                                _%hd135855135923%_))))
                       (let () (declare (not safe)) (_%g135849135891%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd135791135821%_
                                                 _%hd135788135813%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g135780135797%_
                                                   _%g135781135800%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g135780135797%_
                                           _%g135781135800%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g135780135797%_ _%g135781135800%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g135780135797%_ _%g135781135800%_))))))
            (declare (not safe))
            (_%g135779135944%_ _%stx135775%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self135671%_ _%stx135672%_)
        (let* ((_%g135674135691%_
                (lambda (_%g135675135688%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135675135688%_))))
               (_%g135673135771%_
                (lambda (_%g135675135694%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135675135694%_))
                      (let ((_%e135680135696%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135675135694%_))))
                        (let ((_%hd135679135699%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135680135696%_)))
                              (_%tl135678135701%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135680135696%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135678135701%_))
                              (let ((_%e135683135704%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135678135701%_))))
                                (let ((_%hd135682135707%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135683135704%_)))
                                      (_%tl135681135709%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135683135704%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135681135709%_))
                                      (let ((_%e135686135712%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135681135709%_))))
                                        (let ((_%hd135685135715%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135686135712%_)))
                                              (_%tl135684135717%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135686135712%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135684135717%_))
                                              ((lambda (_%L135720%_
                                                        _%L135721%_)
                                                 (let* ((_%eid135736%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L135721%_)))
                                                        (_%phi135738%_
                                                         (let ((__tmp145924
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp145924 '1)))
                (_%block135740%_
                 (let ((__tmp145925
                        (let ()
                          (declare (not safe))
                          (slot-ref__0 _%self135671%_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp145925 _%phi135738%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g135743135750%_
                                                           (lambda (_%g135744135747%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g135744135747%_))))
                  (_%g135742135768%_
                   (lambda (_%g135744135753%_)
                     ((lambda (_%L135755%_)
                        (let ((__tmp145927
                               (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self135671%_ 'state)))
                              (__tmp145926
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        '%#define-runtime))
                                     (cons _%L135755%_
                                           (cons _%L135720%_ '())))))
                          (declare (not safe))
                          (gxc#meta-state-add-phi!
                           __tmp145927
                           _%phi135738%_
                           __tmp145926)))
                      _%g135744135753%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_%g135742135768%_
                                                      _%eid135736%_))
                                                   (if _%block135740%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block135740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%L135721%_))
                                             (cons _%eid135736%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%L135721%_))
                           (cons _%eid135736%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135685135715%_
                                               _%hd135682135707%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135674135691%_
                                                 _%g135675135694%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135674135691%_
                                         _%g135675135694%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135674135691%_ _%g135675135694%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135674135691%_ _%g135675135694%_))))))
          (declare (not safe))
          (_%g135673135771%_ _%stx135672%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self135603%_ _%stx135604%_)
        (let* ((_%g135606135623%_
                (lambda (_%g135607135620%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135607135620%_))))
               (_%g135605135668%_
                (lambda (_%g135607135626%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135607135626%_))
                      (let ((_%e135612135628%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135607135626%_))))
                        (let ((_%hd135611135631%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135612135628%_)))
                              (_%tl135610135633%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135612135628%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135610135633%_))
                              (let ((_%e135615135636%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135610135633%_))))
                                (let ((_%hd135614135639%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135615135636%_)))
                                      (_%tl135613135641%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135615135636%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135613135641%_))
                                      (let ((_%e135618135644%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135613135641%_))))
                                        (let ((_%hd135617135647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135618135644%_)))
                                              (_%tl135616135649%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135618135644%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135616135649%_))
                                              ((lambda (_%L135652%_
                                                        _%L135653%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%L135653%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%L135652%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135617135647%_
                                               _%hd135614135639%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135606135623%_
                                                 _%g135607135626%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135606135623%_
                                         _%g135607135626%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135606135623%_ _%g135607135626%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135606135623%_ _%g135607135626%_))))))
          (declare (not safe))
          (_%g135605135668%_ _%stx135604%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self135600%_ _%stx135601%_)
        (let ((__tmp145929
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135600%_ 'state)))
              (__tmp145928
               (let () (declare (not safe)) (gx#current-expander-phi))))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp145929 __tmp145928 _%stx135601%_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _%self135600%_ _%stx135601%_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self135597%_ _%stx135598%_)
        (let ((__tmp145931
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135597%_ 'state)))
              (__tmp145930
               (let () (declare (not safe)) (gx#current-expander-phi))))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp145931 __tmp145930 _%stx135598%_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp145933 (list)) (__tmp145932 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp145933
         '(src n open blocks)
         __tmp145932
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args135594%_
        (apply make-instance gxc#meta-state::t _%$args135594%_)))
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
      (lambda (_%self135580%_ _%ctx135581%_)
        (let ((_%self135584%_ _%self135580%_))
          (if (let ((__tmp145934
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self135584%_))))
                (declare (not safe))
                (##fx< '4 __tmp145934))
              (begin
                (let ((__tmp145935
                       (let ((__tmp145936
                              (##structure-ref
                               _%ctx135581%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp145936))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self135584%_
                   __tmp145935
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self135584%_ '1 '2 '#f '#f))
                (let ((__tmp145937
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self135584%_
                   __tmp145937
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self135584%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp145938
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self135584%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self135584%_
                       '4
                       __tmp145938))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp145940 (list)) (__tmp145939 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp145940
         '(ctx phi n code)
         __tmp145939
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args135455%_
        (apply make-instance gxc#meta-state-block::t _%$args135455%_)))
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
      (lambda (_%state135414%_ _%phi135415%_)
        (let* ((_%state135416135424%_ _%state135414%_)
               (_%E135418135428%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state135416135424%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K135419135437%_
                (lambda (_%open135431%_ _%n135432%_ _%src135433%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open135431%_ _%phi135415%_))
                      '#f
                      (let ((_%block-ref135435%_
                             (let ((__tmp145941 (number->string _%n135432%_)))
                               (declare (not safe))
                               (##string-append
                                _%src135433%_
                                '"~"
                                __tmp145941))))
                        (##structure-set!
                         _%state135414%_
                         (let () (declare (not safe)) (##fx+ _%n135432%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp145942
                               (let ((__tmp145943
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp145943
                                  _%phi135415%_
                                  _%n135432%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open135431%_ _%phi135415%_ __tmp145942))
                        _%block-ref135435%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state135416135424%_
                 'gxc#meta-state::t))
              (let* ((_%e135420135440%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state135416135424%_
                         '1
                         '#f
                         '#f)))
                     (_%src135443%_ _%e135420135440%_)
                     (_%e135421135445%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state135416135424%_
                         '2
                         '#f
                         '#f)))
                     (_%n135448%_ _%e135421135445%_)
                     (_%e135422135450%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state135416135424%_
                         '3
                         '#f
                         '#f)))
                     (_%open135453%_ _%e135422135450%_))
                (declare (not safe))
                (_%K135419135437%_ _%open135453%_ _%n135448%_ _%src135443%_))
              (let () (declare (not safe)) (_%E135418135428%_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state135408%_ _%phi135409%_ _%stx135410%_)
        (let ((_%block135412%_
               (let ((__tmp145944
                      (##structure-ref
                       _%state135408%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp145944 _%phi135409%_))))
          (##structure-set!
           _%block135412%_
           (cons _%stx135410%_
                 (##structure-ref
                  _%block135412%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state135402%_)
        (##structure-set!
         _%state135402%_
         (let ((__tmp145947
                (lambda (_%_135404%_ _%block135405%_ _%r135406%_)
                  (cons _%block135405%_ _%r135406%_)))
               (__tmp145946
                (##structure-ref _%state135402%_ '4 gxc#meta-state::t '#f))
               (__tmp145945
                (##structure-ref _%state135402%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp145947 __tmp145946 __tmp145945))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state135402%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state135354%_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _%state135354%_))
        (let ((__tmp145949
               (lambda (_%block135356%_ _%r135357%_)
                 (let* ((_%block135358135367%_ _%block135356%_)
                        (_%E135360135371%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block135358135367%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K135361135379%_
                         (lambda (_%code135374%_
                                  _%n135375%_
                                  _%phi135376%_
                                  _%ctx135377%_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _%code135374%_))
                               _%r135357%_
                               (cons (cons _%ctx135377%_
                                           (cons _%phi135376%_
                                                 (cons _%n135375%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code135374%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r135357%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block135358135367%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e135362135382%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135358135367%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx135385%_ _%e135362135382%_)
                              (_%e135363135387%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135358135367%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi135390%_ _%e135363135387%_)
                              (_%e135364135392%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135358135367%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n135395%_ _%e135364135392%_)
                              (_%e135365135397%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135358135367%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code135400%_ _%e135365135397%_))
                         (declare (not safe))
                         (_%K135361135379%_
                          _%code135400%_
                          _%n135395%_
                          _%phi135390%_
                          _%ctx135385%_))
                       (let () (declare (not safe)) (_%E135360135371%_))))))
              (__tmp145948
               (##structure-ref _%state135354%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp145949 '() __tmp145948))))
    (define gxc#collect-expression-refs
      (lambda (_%stx135350%_)
        (let ((_%ht135352%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs__%
             '#f
             _%ht135352%_
             _%stx135350%_))
          _%ht135352%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self135293%_ _%stx135294%_)
        (let* ((_%g135296135309%_
                (lambda (_%g135297135306%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135297135306%_))))
               (_%g135295135347%_
                (lambda (_%g135297135312%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135297135312%_))
                      (let ((_%e135301135314%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135297135312%_))))
                        (let ((_%hd135300135317%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135301135314%_)))
                              (_%tl135299135319%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135301135314%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135299135319%_))
                              (let ((_%e135304135322%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135299135319%_))))
                                (let ((_%hd135303135325%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135304135322%_)))
                                      (_%tl135302135327%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135304135322%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl135302135327%_))
                                      ((lambda (_%L135330%_)
                                         (let* ((_%bind135342%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L135330%_)))
                                                (_%eid135344%_
                                                 (if _%bind135342%_
                                                     (##structure-ref
                                                      _%bind135342%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L135330%_))))
                                                (__tmp145950
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self135293%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp145950
                                            _%eid135344%_
                                            _%eid135344%_)))
                                       _%hd135303135325%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g135296135309%_
                                         _%g135297135312%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135296135309%_ _%g135297135312%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135296135309%_ _%g135297135312%_))))))
          (declare (not safe))
          (_%g135295135347%_ _%stx135294%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self135220%_ _%stx135221%_)
        (let* ((_%g135223135240%_
                (lambda (_%g135224135237%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135224135237%_))))
               (_%g135222135290%_
                (lambda (_%g135224135243%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135224135243%_))
                      (let ((_%e135229135245%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135224135243%_))))
                        (let ((_%hd135228135248%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135229135245%_)))
                              (_%tl135227135250%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135229135245%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135227135250%_))
                              (let ((_%e135232135253%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135227135250%_))))
                                (let ((_%hd135231135256%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135232135253%_)))
                                      (_%tl135230135258%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135232135253%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135230135258%_))
                                      (let ((_%e135235135261%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135230135258%_))))
                                        (let ((_%hd135234135264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135235135261%_)))
                                              (_%tl135233135266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135235135261%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135233135266%_))
                                              ((lambda (_%L135269%_
                                                        _%L135270%_)
                                                 (let* ((_%bind135285%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L135270%_)))
                                                        (_%eid135287%_
                                                         (if _%bind135285%_
                                                             (##structure-ref
                                                              _%bind135285%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L135270%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp145951
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self135220%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp145951
                                                      _%eid135287%_
                                                      _%eid135287%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self135220%_
                                                      _%L135269%_))))
                                               _%hd135234135264%_
                                               _%hd135231135256%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135223135240%_
                                                 _%g135224135243%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135223135240%_
                                         _%g135224135243%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135223135240%_ _%g135224135243%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135223135240%_ _%g135224135243%_))))))
          (declare (not safe))
          (_%g135222135290%_ _%stx135221%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self135177%_ _%stx135178%_)
        (let* ((_%g135180135190%_
                (lambda (_%g135181135187%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135181135187%_))))
               (_%g135179135217%_
                (lambda (_%g135181135193%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135181135193%_))
                      (let ((_%e135185135195%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135181135193%_))))
                        (let ((_%hd135184135198%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135185135195%_)))
                              (_%tl135183135200%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135185135195%_))))
                          ((lambda (_%L135203%_)
                             (let ((__tmp145952
                                    (lambda (_%g135212135214%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self135177%_
                                         _%g135212135214%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp145952 _%L135203%_)))
                           _%tl135183135200%_)))
                      (let ()
                        (declare (not safe))
                        (_%g135180135190%_ _%g135181135193%_))))))
          (declare (not safe))
          (_%g135179135217%_ _%stx135178%_))))
    (define gxc#count-values-single%
      (lambda (_%self135174%_ _%stx135175%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self135040%_ _%stx135041%_)
        (let* ((_%__stx145565145566%_ _%stx135041%_)
               (_%g135044135073%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx145565145566%_)))))
          (let ((_%__kont145567145568%_
                 (lambda (_%L135141%_ _%L135142%_)
                   (length (let ((__tmp145953
                                  (lambda (_%g135163135166%_ _%g135164135168%_)
                                    (cons _%g135163135166%_
                                          _%g135164135168%_))))
                             (declare (not safe))
                             (__foldr1 __tmp145953 '() _%L135141%_)))))
                (_%__kont145571145572%_ (lambda () '#f)))
            (let ((_%__match145610145611%_
                   (lambda (_%e135050135085%_
                            _%hd135049135088%_
                            _%tl135048135090%_
                            _%e135053135093%_
                            _%hd135052135096%_
                            _%tl135051135098%_
                            _%e135056135101%_
                            _%hd135055135104%_
                            _%tl135054135106%_
                            _%e135059135109%_
                            _%hd135058135112%_
                            _%tl135057135114%_
                            _%__splice145569145570%_
                            _%target135060135117%_
                            _%tl135062135119%_)
                     (letrec ((_%loop135063135122%_
                               (lambda (_%hd135061135125%_
                                        _%rand135067135127%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd135061135125%_))
                                     (let ((_%e135064135130%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd135061135125%_))))
                                       (let ((_%lp-tl135066135135%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e135064135130%_)))
                                             (_%lp-hd135065135133%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e135064135130%_))))
                                         (let ((__tmp145954
                                                (cons _%lp-hd135065135133%_
                                                      _%rand135067135127%_)))
                                           (declare (not safe))
                                           (_%loop135063135122%_
                                            _%lp-tl135066135135%_
                                            __tmp145954))))
                                     (let ((_%rand135068135138%_
                                            (reverse _%rand135067135127%_)))
                                       (let ((_%L135141%_ _%rand135068135138%_)
                                             (_%L135142%_ _%hd135058135112%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L135142%_
                                                'values))
                                             (_%__kont145567145568%_
                                              _%L135141%_
                                              _%L135142%_)
                                             (_%__kont145571145572%_))))))))
                       (let ()
                         (declare (not safe))
                         (_%loop135063135122%_ _%target135060135117%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx145565145566%_))
                  (let ((_%e135050135085%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx145565145566%_))))
                    (let ((_%tl135048135090%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e135050135085%_)))
                          (_%hd135049135088%_
                           (let ()
                             (declare (not safe))
                             (##car _%e135050135085%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl135048135090%_))
                          (let ((_%e135053135093%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl135048135090%_))))
                            (let ((_%tl135051135098%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e135053135093%_)))
                                  (_%hd135052135096%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e135053135093%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd135052135096%_))
                                  (let ((_%e135056135101%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd135052135096%_))))
                                    (let ((_%tl135054135106%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e135056135101%_)))
                                          (_%hd135055135104%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e135056135101%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd135055135104%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd135055135104%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl135054135106%_))
                                                  (let ((_%e135059135109%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl135054135106%_))))
                                                    (let ((_%tl135057135114%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e135059135109%_)))
                                                          (_%hd135058135112%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e135059135109%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl135057135114%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl135051135098%_))
                      (let ((_%__splice145569145570%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl135051135098%_
                                '0))))
                        (let ((_%tl135062135119%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145569145570%_ '1)))
                              (_%target135060135117%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145569145570%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl135062135119%_))
                              (_%__match145610145611%_
                               _%e135050135085%_
                               _%hd135049135088%_
                               _%tl135048135090%_
                               _%e135053135093%_
                               _%hd135052135096%_
                               _%tl135051135098%_
                               _%e135056135101%_
                               _%hd135055135104%_
                               _%tl135054135106%_
                               _%e135059135109%_
                               _%hd135058135112%_
                               _%tl135057135114%_
                               _%__splice145569145570%_
                               _%target135060135117%_
                               _%tl135062135119%_)
                              (_%__kont145571145572%_))))
                      (_%__kont145571145572%_))
                  (_%__kont145571145572%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145571145572%_))
                                              (_%__kont145571145572%_))
                                          (_%__kont145571145572%_))))
                                  (_%__kont145571145572%_))))
                          (_%__kont145571145572%_))))
                  (_%__kont145571145572%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self134943%_ _%stx134944%_)
        (let* ((_%g134946134967%_
                (lambda (_%g134947134964%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134947134964%_))))
               (_%g134945135037%_
                (lambda (_%g134947134970%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134947134970%_))
                      (let ((_%e134953134972%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134947134970%_))))
                        (let ((_%hd134952134975%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134953134972%_)))
                              (_%tl134951134977%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134953134972%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134951134977%_))
                              (let ((_%e134956134980%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134951134977%_))))
                                (let ((_%hd134955134983%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134956134980%_)))
                                      (_%tl134954134985%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134956134980%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134954134985%_))
                                      (let ((_%e134959134988%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134954134985%_))))
                                        (let ((_%hd134958134991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134959134988%_)))
                                              (_%tl134957134993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134959134988%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl134957134993%_))
                                              (let ((_%e134962134996%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl134957134993%_))))
                                                (let ((_%hd134961134999%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e134962134996%_)))
                                                      (_%tl134960135001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e134962134996%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl134960135001%_))
                                                      ((lambda (_%L135004%_
                                                                _%L135005%_
                                                                _%L135006%_)
                                                         (let ((_%c1135023135025%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self134943%_ _%L135005%_))))
                   (if _%c1135023135025%_
                       (let* ((_%c1135028%_ _%c1135023135025%_)
                              (_%c2135029135031%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self134943%_
                                  _%L135004%_))))
                         (if _%c2135029135031%_
                             (let ((_%c2135034%_ _%c2135029135031%_))
                               (if (fx= _%c1135028%_ _%c2135034%_)
                                   _%c1135028%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd134961134999%_
               _%hd134958134991%_
               _%hd134955134983%_)
              (let ()
                (declare (not safe))
                (_%g134946134967%_ _%g134947134970%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g134946134967%_
                                                 _%g134947134970%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g134946134967%_
                                         _%g134947134970%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134946134967%_ _%g134947134970%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134946134967%_ _%g134947134970%_))))))
          (declare (not safe))
          (_%g134945135037%_ _%stx134944%_))))))
