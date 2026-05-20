(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1779289641)
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
    (define gxc#::collect-bindings::t
      (let ((__tmp207531 (list gxc#::void::t))
            (__tmp207530 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp207531
         '()
         __tmp207530
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args206145%_
        (apply make-instance gxc#::collect-bindings::t _%$args206145%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp207532
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
        (__make-atomic-promise __tmp207532)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx206137%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self206140%_
                (let ((__obj207506
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj207506))
               (__tmp207533
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self206140%_ _%stx206137%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp207533
           gxc#current-compile-method
           _%self206140%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp207535 (list gxc#::void::t))
            (__tmp207534 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp207535
         '(modules)
         __tmp207534
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args206134%_
        (apply make-instance gxc#::lift-modules::t _%$args206134%_)))
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
      (let ((__tmp207536
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
        (__make-atomic-promise __tmp207536)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords206109%_ _%modules206106206110%_ _%stx206111%_)
        (let ((_%modules206114%_
               (if (eq? _%modules206106206110%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules206106206110%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self206116%_
                  (let ((__obj207508
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj207508
                       _%modules206114%_
                       '1
                       '#f
                       '#f))
                    __obj207508))
                 (__tmp207537
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self206116%_ _%stx206111%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp207537
             gxc#current-compile-method
             _%self206116%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords206123%_ . _%args206124%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords206123%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords206123%_
                  'modules:
                  absent-value))
               _%args206124%_)))
    (define gxc#apply-lift-modules
      (lambda _%args206107206130%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args206107206130%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp207539 (list)) (__tmp207538 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp207539
         '()
         __tmp207538
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args206102%_
        (apply make-instance gxc#::find-runtime-code::t _%$args206102%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp207540
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
        (__make-atomic-promise __tmp207540)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx206094%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self206097%_
                (let ((__obj207510
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj207510))
               (__tmp207541
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self206097%_ _%stx206094%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp207541
           gxc#current-compile-method
           _%self206097%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp207543 (list gxc#::false::t))
            (__tmp207542 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp207543
         '()
         __tmp207542
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args206091%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args206091%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp207544
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
        (__make-atomic-promise __tmp207544)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx206083%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self206086%_
                (let ((__obj207512
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj207512))
               (__tmp207545
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self206086%_ _%stx206083%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp207545
           gxc#current-compile-method
           _%self206086%_))))
    (define gxc#::count-values::t
      (let ((__tmp207547 (list gxc#::false-expression::t))
            (__tmp207546 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp207547
         '()
         __tmp207546
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args206080%_
        (apply make-instance gxc#::count-values::t _%$args206080%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp207548
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
        (__make-atomic-promise __tmp207548)))
    (define gxc#apply-count-values
      (lambda (_%stx206072%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self206075%_
                (let ((__obj207514
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj207514))
               (__tmp207549
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self206075%_ _%stx206072%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp207549
           gxc#current-compile-method
           _%self206075%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp207550 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp207550
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args206069%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args206069%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp207551
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
        (__make-atomic-promise __tmp207551)))
    (define gxc#::generate-loader::t
      (let ((__tmp207553 (list gxc#::generate-runtime-empty::t))
            (__tmp207552 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp207553
         '()
         __tmp207552
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args206065%_
        (apply make-instance gxc#::generate-loader::t _%$args206065%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp207554
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
        (__make-atomic-promise __tmp207554)))
    (define gxc#apply-generate-loader
      (lambda (_%stx206057%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self206060%_
                (let ((__obj207517
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj207517))
               (__tmp207555
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self206060%_ _%stx206057%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp207555
           gxc#current-compile-method
           _%self206060%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp207556 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp207556
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args206054%_
        (apply make-instance gxc#::generate-runtime::t _%$args206054%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp207557
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
        (__make-atomic-promise __tmp207557)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx206046%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self206049%_
                (let ((__obj207519
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj207519))
               (__tmp207558
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self206049%_ _%stx206046%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp207558
           gxc#current-compile-method
           _%self206049%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp207560 (list gxc#::generate-runtime::t))
            (__tmp207559 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp207560
         '()
         __tmp207559
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args206043%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args206043%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp207561
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
        (__make-atomic-promise __tmp207561)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx206035%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self206038%_
                (let ((__obj207521
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj207521))
               (__tmp207562
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self206038%_ _%stx206035%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp207562
           gxc#current-compile-method
           _%self206038%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp207563 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp207563
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args206032%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args206032%_)))
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
      (let ((__tmp207564
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
        (__make-atomic-promise __tmp207564)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords206007%_ _%table206004206008%_ _%stx206009%_)
        (let ((_%table206012%_
               (if (eq? _%table206004206008%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table206004206008%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self206014%_
                  (let ((__obj207523
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj207523
                       _%table206012%_
                       '1
                       '#f
                       '#f))
                    __obj207523))
                 (__tmp207565
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self206014%_ _%stx206009%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp207565
             gxc#current-compile-method
             _%self206014%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords206021%_ . _%args206022%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords206021%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords206021%_
                  'table:
                  absent-value))
               _%args206022%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args206005206028%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args206005206028%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp207567 (list gxc#::void-expression::t))
            (__tmp207566 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp207567
         '(state)
         __tmp207566
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args206000%_
        (apply make-instance gxc#::generate-meta::t _%$args206000%_)))
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
      (let ((__tmp207568
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
        (__make-atomic-promise __tmp207568)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords205975%_ _%state205972205976%_ _%stx205977%_)
        (let ((_%state205980%_
               (if (eq? _%state205972205976%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state205972205976%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self205982%_
                  (let ((__obj207525
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj207525
                       _%state205980%_
                       '1
                       '#f
                       '#f))
                    __obj207525))
                 (__tmp207569
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self205982%_ _%stx205977%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp207569
             gxc#current-compile-method
             _%self205982%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords205989%_ . _%args205990%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords205989%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords205989%_
                  'state:
                  absent-value))
               _%args205990%_)))
    (define gxc#apply-generate-meta
      (lambda _%args205973205996%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args205973205996%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp207571 (list)) (__tmp207570 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp207571
         '(state)
         __tmp207570
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args205968%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args205968%_)))
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
      (let ((__tmp207572
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
        (__make-atomic-promise __tmp207572)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords205943%_ _%state205940205944%_ _%stx205945%_)
        (let ((_%state205948%_
               (if (eq? _%state205940205944%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state205940205944%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self205950%_
                  (let ((__obj207527
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj207527
                       _%state205948%_
                       '1
                       '#f
                       '#f))
                    __obj207527))
                 (__tmp207573
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self205950%_ _%stx205945%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp207573
             gxc#current-compile-method
             _%self205950%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords205957%_ . _%args205958%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords205957%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords205957%_
                  'state:
                  absent-value))
               _%args205958%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args205941205964%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args205941205964%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self205869%_ _%stx205870%_)
        (let* ((_%g205872205889%_
                (lambda (_%g205873205886%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205873205886%_))))
               (_%g205871205936%_
                (lambda (_%g205873205892%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205873205892%_))
                      (let ((_%e205876205894%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g205873205892%_))))
                        (let ((_%hd205877205897%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205876205894%_)))
                              (_%tl205878205899%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205876205894%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205878205899%_))
                              (let ((_%e205879205902%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl205878205899%_))))
                                (let ((_%hd205880205905%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205879205902%_)))
                                      (_%tl205881205907%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205879205902%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205881205907%_))
                                      (let ((_%e205882205910%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl205881205907%_))))
                                        (let ((_%hd205883205913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205882205910%_)))
                                              (_%tl205884205915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205882205910%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205884205915%_))
                                              (let ((__tmp207574
                                                     (lambda (_%bind205934%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _%bind205934%_))
                                                           (gxc#add-module-binding!
                                                            _%bind205934%_
                                                            '#f)
                                                           '#!void))))
                                                (declare (not safe))
                                                (gx#stx-for-each1
                                                 __tmp207574
                                                 _%hd205880205905%_))
                                              (_%g205872205889%_
                                               _%g205873205892%_))))
                                      (_%g205872205889%_ _%g205873205892%_))))
                              (_%g205872205889%_ _%g205873205892%_))))
                      (_%g205872205889%_ _%g205873205892%_)))))
          (_%g205871205936%_ _%stx205870%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self205801%_ _%stx205802%_)
        (let* ((_%g205804205821%_
                (lambda (_%g205805205818%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205805205818%_))))
               (_%g205803205866%_
                (lambda (_%g205805205824%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205805205824%_))
                      (let ((_%e205808205826%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g205805205824%_))))
                        (let ((_%hd205809205829%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205808205826%_)))
                              (_%tl205810205831%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205808205826%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205810205831%_))
                              (let ((_%e205811205834%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl205810205831%_))))
                                (let ((_%hd205812205837%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205811205834%_)))
                                      (_%tl205813205839%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205811205834%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205813205839%_))
                                      (let ((_%e205814205842%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl205813205839%_))))
                                        (let ((_%hd205815205845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205814205842%_)))
                                              (_%tl205816205847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205814205842%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205816205847%_))
                                              (gxc#add-module-binding!
                                               _%hd205812205837%_
                                               '#t)
                                              (_%g205804205821%_
                                               _%g205805205824%_))))
                                      (_%g205804205821%_ _%g205805205824%_))))
                              (_%g205804205821%_ _%g205805205824%_))))
                      (_%g205804205821%_ _%g205805205824%_)))))
          (_%g205803205866%_ _%stx205802%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self205743%_ _%stx205744%_)
        (let* ((_%g205746205760%_
                (lambda (_%g205747205757%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205747205757%_))))
               (_%g205745205798%_
                (lambda (_%g205747205763%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205747205763%_))
                      (let ((_%e205750205765%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g205747205763%_))))
                        (let ((_%hd205751205768%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205750205765%_)))
                              (_%tl205752205770%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205750205765%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205752205770%_))
                              (let ((_%e205753205773%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl205752205770%_))))
                                (let ((_%hd205754205776%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205753205773%_)))
                                      (_%tl205755205778%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205753205773%_))))
                                  (let ((_%ctx205795%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-local-e__0
                                            _%hd205754205776%_))))
                                    (set-box!
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _%self205743%_ 'modules))
                                     (cons _%ctx205795%_
                                           (unbox (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _%self205743%_
                                                     'modules)))))
                                    (let ((__tmp207575
                                           (lambda ()
                                             (let ((__tmp207576
                                                    (##structure-ref
                                                     _%ctx205795%_
                                                     '11
                                                     gx#module-context::t
                                                     '#f)))
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self205743%_
                                                __tmp207576)))))
                                      (declare (not safe))
                                      (call-with-parameters__1
                                       __tmp207575
                                       gx#current-expander-context
                                       _%ctx205795%_)))))
                              (_%g205746205760%_ _%g205747205763%_))))
                      (_%g205746205760%_ _%g205747205763%_)))))
          (_%g205745205798%_ _%stx205744%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls205697205699%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls205697205699%_
              (let ((_%decls205701%_ _%decls205697205699%_))
                (let _%lp205703%_ ((_%rest205705%_ _%decls205701%_))
                  (let* ((_%rest205706205714%_ _%rest205705%_)
                         (_%else205708205722%_ (lambda () '#f))
                         (_%K205710205731%_
                          (lambda (_%decls205725%_ _%decl205726%_)
                            (if (equal? _%decl205726%_ '(not safe))
                                '#t
                                (if (equal? _%decl205726%_ '(safe))
                                    '#f
                                    (_%lp205703%_ _%decls205725%_))))))
                    (if (pair? _%rest205706205714%_)
                        (let ((_%hd205711205734%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest205706205714%_)))
                              (_%tl205712205736%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest205706205714%_))))
                          (let* ((_%decl205739%_ _%hd205711205734%_)
                                 (_%decls205741%_ _%tl205712205736%_))
                            (_%K205710205731%_
                             _%decls205741%_
                             _%decl205739%_)))
                        (_%else205708205722%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id205691%_ _%syntax?205692%_)
        (let ((_%eid205694%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id205691%_))
                '1
                gx#binding::t
                '#f))
              (_%ht205695%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid205694%_))
              '#!void
              (let ((__tmp207577
                     (let ((__tmp207578
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid205694%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp207578 _%syntax?205692%_))))
                (declare (not safe))
                (hash-put! _%ht205695%_ _%eid205694%_ __tmp207577))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self205688%_ _%stx205689%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self205535%_ _%stx205536%_)
        (letrec ((_%simplify205538%_
                  (lambda (_%body205586%_)
                    (let _%lp205588%_ ((_%rest205590%_ _%body205586%_)
                                       (_%r205591%_ '()))
                      (let* ((_%rest205592205600%_ _%rest205590%_)
                             (_%else205594205608%_
                              (lambda () (reverse _%r205591%_)))
                             (_%K205596205676%_
                              (lambda (_%rest205611%_ _%hd205612%_)
                                (let* ((_%hd205613205629%_ _%hd205612%_)
                                       (_%else205617205637%_
                                        (lambda ()
                                          (_%lp205588%_
                                           _%rest205611%_
                                           (cons _%hd205612%_ _%r205591%_)))))
                                  (let ((_%K205625205666%_
                                         (lambda (_%exprs205664%_)
                                           (_%lp205588%_
                                            (let ()
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               _%rest205611%_
                                               _%exprs205664%_))
                                            _%r205591%_)))
                                        (_%K205620205650%_
                                         (lambda ()
                                           (if (null? _%rest205611%_)
                                               (_%lp205588%_
                                                _%rest205611%_
                                                (cons _%hd205612%_
                                                      _%r205591%_))
                                               (_%lp205588%_
                                                _%rest205611%_
                                                _%r205591%_))))
                                        (_%K205619205642%_
                                         (lambda ()
                                           (if (null? _%rest205611%_)
                                               (_%lp205588%_
                                                _%rest205611%_
                                                (cons _%hd205612%_
                                                      _%r205591%_))
                                               (_%lp205588%_
                                                _%rest205611%_
                                                _%r205591%_)))))
                                    (let ((_%try-match205616205645%_
                                           (lambda ()
                                             (if (symbol? _%hd205613205629%_)
                                                 (_%K205619205642%_)
                                                 (_%else205617205637%_)))))
                                      (if (pair? _%hd205613205629%_)
                                          (let ((_%tl205627205671%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd205613205629%_)))
                                                (_%hd205626205669%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd205613205629%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd205626205669%_
                                                         'begin))
                                                (let ((_%exprs205674%_
                                                       _%tl205627205671%_))
                                                  (_%K205625205666%_
                                                   _%exprs205674%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd205626205669%_
                                                             'quote))
                                                    (if (pair? _%tl205627205671%_)
                                                        (let ((_%tl205624205658%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl205627205671%_))))
                  (if (null? _%tl205624205658%_)
                      (_%K205620205650%_)
                      (_%try-match205616205645%_)))
                (_%try-match205616205645%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match205616205645%_))))
                                          (_%try-match205616205645%_))))))))
                        (if (pair? _%rest205592205600%_)
                            (let ((_%hd205597205679%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest205592205600%_)))
                                  (_%tl205598205681%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest205592205600%_))))
                              (let* ((_%hd205684%_ _%hd205597205679%_)
                                     (_%rest205686%_ _%tl205598205681%_))
                                (_%K205596205676%_
                                 _%rest205686%_
                                 _%hd205684%_)))
                            (_%else205594205608%_)))))))
          (let* ((_%g205540205550%_
                  (lambda (_%g205541205547%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g205541205547%_))))
                 (_%g205539205583%_
                  (lambda (_%g205541205553%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g205541205553%_))
                        (let ((_%e205543205555%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g205541205553%_))))
                          (let ((_%hd205544205558%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205543205555%_)))
                                (_%tl205545205560%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205543205555%_))))
                            (let* ((_%body205578%_
                                    (map (lambda (_%g205573205575%_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self205535%_
                                              _%g205573205575%_)))
                                         _%tl205545205560%_))
                                   (_%body205580%_
                                    (_%simplify205538%_ _%body205578%_)))
                              (if (let ((__tmp207579 (length _%body205580%_)))
                                    (declare (not safe))
                                    (##fx= __tmp207579 '1))
                                  (car _%body205580%_)
                                  (cons 'begin _%body205580%_)))))
                        (_%g205540205550%_ _%g205541205553%_)))))
            (_%g205539205583%_ _%stx205536%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self205496%_ _%stx205497%_)
        (let* ((_%g205499205509%_
                (lambda (_%g205500205506%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205500205506%_))))
               (_%g205498205532%_
                (lambda (_%g205500205512%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205500205512%_))
                      (let ((_%e205502205514%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g205500205512%_))))
                        (let ((_%hd205503205517%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205502205514%_)))
                              (_%tl205504205519%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205502205514%_))))
                          (cons 'begin
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax->datum _%tl205504205519%_)))))
                      (_%g205499205509%_ _%g205500205512%_)))))
          (_%g205498205532%_ _%stx205497%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self205262%_ _%stx205263%_)
        (let* ((_%__stx206169206170%_ _%stx205263%_)
               (_%g205267205319%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206169206170%_)))))
          (let ((_%__kont206171206172%_
                 (lambda (_%g205269205478%_ _%g205270205479%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self205262%_ _%g205269205478%_))))
                (_%__kont206173206174%_
                 (lambda (_%g205280205426%_
                          _%g205281205427%_
                          _%g205282205428%_)
                   (if (let ((__tmp207580
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g205282205428%_))))
                         (declare (not safe))
                         (##memq __tmp207580 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self205262%_
                          _%g205280205426%_)))))
                (_%__kont206177206178%_
                 (lambda (_%g205304205348%_ _%g205305205349%_)
                   (let ((_%decls205364%_
                          (map gx#syntax->datum _%g205305205349%_)))
                     (let ((__tmp207583
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls205364%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self205262%_
                                                   _%g205304205348%_))
                                                '())))))
                           (__tmp207581
                            (let ((__tmp207582
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (foldr__0 cons __tmp207582 _%decls205364%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp207583
                        gxc#current-compile-decls
                        __tmp207581))))))
            (let* ((_%__match206224206225%_
                    (lambda (_%e205283205372%_
                             _%hd205284205375%_
                             _%tl205285205377%_
                             _%e205286205380%_
                             _%hd205287205383%_
                             _%tl205288205385%_
                             _%e205289205388%_
                             _%hd205290205391%_
                             _%tl205291205393%_
                             _%__splice206175206176%_
                             _%target205292205396%_
                             _%tl205294205398%_)
                      (letrec ((_%loop205295205401%_
                                (lambda (_%hd205293205404%_
                                         _%param205299205406%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd205293205404%_))
                                      (let ((_%e205296205408%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd205293205404%_))))
                                        (let ((_%lp-tl205298205413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205296205408%_)))
                                              (_%lp-hd205297205411%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205296205408%_))))
                                          (_%loop205295205401%_
                                           _%lp-tl205298205413%_
                                           (cons _%lp-hd205297205411%_
                                                 _%param205299205406%_))))
                                      (let ((_%param205300205416%_
                                             (reverse _%param205299205406%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl205288205385%_))
                                            (let ((_%e205301205418%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl205288205385%_))))
                                              (let ((_%tl205303205423%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205301205418%_)))
                                                    (_%hd205302205421%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205301205418%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl205303205423%_))
                                                    (let ((_%g205280205426%_
                                                           _%hd205302205421%_)
                                                          (_%g205281205427%_
                                                           _%param205300205416%_)
                                                          (_%g205282205428%_
                                                           _%hd205290205391%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g205282205428%_))
                       (not (let ((__tmp207584
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g205282205428%_))))
                              (declare (not safe))
                              (##memq __tmp207584 gxc#gambit-annotations))))
                  (_%__kont206173206174%_
                   _%g205280205426%_
                   _%g205281205427%_
                   _%g205282205428%_)
                  (_%__kont206177206178%_
                   _%hd205302205421%_
                   _%hd205287205383%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g205267205319%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g205267205319%_))))))))
                        (_%loop205295205401%_ _%target205292205396%_ '()))))
                   (_%__match206198206199%_
                    (lambda (_%e205271205454%_
                             _%hd205272205457%_
                             _%tl205273205459%_
                             _%e205274205462%_
                             _%hd205275205465%_
                             _%tl205276205467%_
                             _%e205277205470%_
                             _%hd205278205473%_
                             _%tl205279205475%_)
                      (let ((_%g205269205478%_ _%hd205278205473%_)
                            (_%g205270205479%_ _%hd205275205465%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g205270205479%_))
                            (_%__kont206171206172%_
                             _%g205269205478%_
                             _%g205270205479%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd205275205465%_))
                                (let ((_%e205289205388%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd205275205465%_))))
                                  (let ((_%tl205291205393%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205289205388%_)))
                                        (_%hd205290205391%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205289205388%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl205291205393%_))
                                        (let ((_%__splice206175206176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl205291205393%_
                                                  '0))))
                                          (let ((_%tl205294205398%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice206175206176%_
                                                    '1)))
                                                (_%target205292205396%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice206175206176%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl205294205398%_))
                                                (_%__match206224206225%_
                                                 _%e205271205454%_
                                                 _%hd205272205457%_
                                                 _%tl205273205459%_
                                                 _%e205274205462%_
                                                 _%hd205275205465%_
                                                 _%tl205276205467%_
                                                 _%e205289205388%_
                                                 _%hd205290205391%_
                                                 _%tl205291205393%_
                                                 _%__splice206175206176%_
                                                 _%target205292205396%_
                                                 _%tl205294205398%_)
                                                (_%__kont206177206178%_
                                                 _%hd205278205473%_
                                                 _%hd205275205465%_))))
                                        (_%__kont206177206178%_
                                         _%hd205278205473%_
                                         _%hd205275205465%_))))
                                (_%__kont206177206178%_
                                 _%hd205278205473%_
                                 _%hd205275205465%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206169206170%_))
                  (let ((_%e205271205454%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx206169206170%_))))
                    (let ((_%tl205273205459%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205271205454%_)))
                          (_%hd205272205457%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205271205454%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl205273205459%_))
                          (let ((_%e205274205462%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl205273205459%_))))
                            (let ((_%tl205276205467%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e205274205462%_)))
                                  (_%hd205275205465%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e205274205462%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl205276205467%_))
                                  (let ((_%e205277205470%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl205276205467%_))))
                                    (let ((_%tl205279205475%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e205277205470%_)))
                                          (_%hd205278205473%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e205277205470%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl205279205475%_))
                                          (_%__match206198206199%_
                                           _%e205271205454%_
                                           _%hd205272205457%_
                                           _%tl205273205459%_
                                           _%e205274205462%_
                                           _%hd205275205465%_
                                           _%tl205276205467%_
                                           _%e205277205470%_
                                           _%hd205278205473%_
                                           _%tl205279205475%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd205275205465%_))
                                              (let ((_%e205289205388%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd205275205465%_))))
                                                (let ((_%tl205291205393%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205289205388%_)))
                                                      (_%hd205290205391%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205289205388%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl205291205393%_))
                                                      (let ((_%__splice206175206176%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl205291205393%_
                        '0))))
                (let ((_%tl205294205398%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice206175206176%_ '1)))
                      (_%target205292205396%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice206175206176%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl205294205398%_))
                      (_%__match206224206225%_
                       _%e205271205454%_
                       _%hd205272205457%_
                       _%tl205273205459%_
                       _%e205274205462%_
                       _%hd205275205465%_
                       _%tl205276205467%_
                       _%e205289205388%_
                       _%hd205290205391%_
                       _%tl205291205393%_
                       _%__splice206175206176%_
                       _%target205292205396%_
                       _%tl205294205398%_)
                      (let () (declare (not safe)) (_%g205267205319%_)))))
              (let () (declare (not safe)) (_%g205267205319%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g205267205319%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd205275205465%_))
                                      (let ((_%e205289205388%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd205275205465%_))))
                                        (let ((_%tl205291205393%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205289205388%_)))
                                              (_%hd205290205391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205289205388%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl205291205393%_))
                                              (let ((_%__splice206175206176%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl205291205393%_
                                                        '0))))
                                                (let ((_%tl205294205398%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice206175206176%_
                                                          '1)))
                                                      (_%target205292205396%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice206175206176%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205294205398%_))
                                                      (_%__match206224206225%_
                                                       _%e205271205454%_
                                                       _%hd205272205457%_
                                                       _%tl205273205459%_
                                                       _%e205274205462%_
                                                       _%hd205275205465%_
                                                       _%tl205276205467%_
                                                       _%e205289205388%_
                                                       _%hd205290205391%_
                                                       _%tl205291205393%_
                                                       _%__splice206175206176%_
                                                       _%target205292205396%_
                                                       _%tl205294205398%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g205267205319%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g205267205319%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g205267205319%_))))))
                          (let () (declare (not safe)) (_%g205267205319%_)))))
                  (let () (declare (not safe)) (_%g205267205319%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self205221%_ _%stx205222%_)
        (let* ((_%g205224205234%_
                (lambda (_%g205225205231%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205225205231%_))))
               (_%g205223205259%_
                (lambda (_%g205225205237%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205225205237%_))
                      (let ((_%e205227205239%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g205225205237%_))))
                        (let ((_%hd205228205242%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205227205239%_)))
                              (_%tl205229205244%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205227205239%_))))
                          (let ((_%decls205257%_
                                 (map gx#syntax->datum _%tl205229205244%_)))
                            (let ((__tmp207585
                                   (let ((__tmp207586
                                          (let ()
                                            (declare (not safe))
                                            (gxc#current-compile-decls))))
                                     (declare (not safe))
                                     (foldr__0
                                      cons
                                      __tmp207586
                                      _%decls205257%_))))
                              (declare (not safe))
                              (gxc#current-compile-decls __tmp207585))
                            (cons 'declare _%decls205257%_))))
                      (_%g205224205234%_ _%g205225205237%_)))))
          (_%g205223205259%_ _%stx205222%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self204968%_ _%stx204969%_)
        (let* ((_%g204971204988%_
                (lambda (_%g204972204985%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204972204985%_))))
               (_%g204970205218%_
                (lambda (_%g204972204991%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204972204991%_))
                      (let ((_%e204975204993%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204972204991%_))))
                        (let ((_%hd204976204996%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204975204993%_)))
                              (_%tl204977204998%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204975204993%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204977204998%_))
                              (let ((_%e204978205001%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204977204998%_))))
                                (let ((_%hd204979205004%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204978205001%_)))
                                      (_%tl204980205006%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204978205001%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204980205006%_))
                                      (let ((_%e204981205009%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204980205006%_))))
                                        (let ((_%hd204982205012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204981205009%_)))
                                              (_%tl204983205014%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204981205009%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204983205014%_))
                                              (let* ((_%__stx206277206278%_
                                                      _%hd204979205004%_)
                                                     (_%g205035205049%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx206277206278%_)))))
                                                (let ((_%__kont206279206280%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self204968%_
                                                            _%hd204982205012%_))))
                                                      (_%__kont206281206282%_
                                                       (lambda (_%g205041205181%_)
                                                         (let ((_%eid205190%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id
                           _%g205041205181%_))))
                   (let ((_%lambda-expr205191205193%_
                          (gxc#apply-find-lambda-expression
                           _%hd204982205012%_)))
                     (if _%lambda-expr205191205193%_
                         (let* ((_%lambda-expr205195%_
                                 _%lambda-expr205191205193%_)
                                (__tmp207587
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-names))))
                           (declare (not safe))
                           (hash-put!
                            __tmp207587
                            _%lambda-expr205195%_
                            _%eid205190%_))
                         '#f))
                   (cons 'define
                         (cons _%eid205190%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self204968%_
                                        _%hd204982205012%_))
                                     '()))))))
              (_%__kont206283206284%_
               (lambda ()
                 (let* ((_%tmp205056%_
                         (let ()
                           (declare (not safe))
                           (gxc#generate-runtime-temporary__% '#t)))
                        (_%body205165%_
                         (let _%lp205058%_ ((_%rest205060%_ _%hd204979205004%_)
                                            (_%k205061%_ '0)
                                            (_%r205062%_ '()))
                           (let* ((_%__stx206247206248%_ _%rest205060%_)
                                  (_%g205067205084%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx206247206248%_)))))
                             (let ((_%__kont206249206250%_
                                    (lambda (_%g205069205152%_)
                                      (_%lp205058%_
                                       _%g205069205152%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k205061%_ '1))
                                       _%r205062%_)))
                                   (_%__kont206251206252%_
                                    (lambda (_%g205074205125%_
                                             _%g205075205126%_)
                                      (_%lp205058%_
                                       _%g205074205125%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k205061%_ '1))
                                       (cons (cons 'define
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g205075205126%_))
                                                         (cons (gxc#generate-runtime-values-ref
                                                                _%tmp205056%_
                                                                _%k205061%_
                                                                _%g205074205125%_)
                                                               '())))
                                             _%r205062%_))))
                                   (_%__kont206253206254%_
                                    (lambda (_%g205079205096%_)
                                      (let ((__tmp207588
                                             (cons (cons 'define
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _%g205079205096%_))
                       (cons (gxc#generate-runtime-values->list
                              _%tmp205056%_
                              _%k205061%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         __tmp207588
                                         _%r205062%_))))
                                   (_%__kont206255206256%_
                                    (lambda () (reverse _%r205062%_))))
                               (let ((_%g205065205112%_
                                      (lambda ()
                                        (let ((_%g205079205096%_
                                               _%__stx206247206248%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%g205079205096%_))
                                              (_%__kont206253206254%_
                                               _%g205079205096%_)
                                              (_%__kont206255206256%_))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx206247206248%_))
                                     (let ((_%e205070205141%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx206247206248%_))))
                                       (let ((_%tl205072205146%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e205070205141%_)))
                                             (_%hd205071205144%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e205070205141%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%hd205071205144%_))
                                             (let ((_%e205073205149%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd205071205144%_))))
                                               (if (equal? _%e205073205149%_
                                                           '#f)
                                                   (_%__kont206249206250%_
                                                    _%tl205072205146%_)
                                                   (_%__kont206251206252%_
                                                    _%tl205072205146%_
                                                    _%hd205071205144%_)))
                                             (_%__kont206251206252%_
                                              _%tl205072205146%_
                                              _%hd205071205144%_))))
                                     (_%g205065205112%_))))))))
                   (cons 'begin
                         (cons (cons 'define
                                     (cons _%tmp205056%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self204968%_
                                                    _%hd204982205012%_))
                                                 '())))
                               (cons (gxc#generate-runtime-check-values
                                      _%tmp205056%_
                                      _%hd204979205004%_
                                      _%hd204982205012%_)
                                     _%body205165%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx206277206278%_))
                                                      (let ((_%e205037205202%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx206277206278%_))))
                (let ((_%tl205039205207%_
                       (let () (declare (not safe)) (##cdr _%e205037205202%_)))
                      (_%hd205038205205%_
                       (let ()
                         (declare (not safe))
                         (##car _%e205037205202%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd205038205205%_))
                      (let ((_%e205040205210%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd205038205205%_))))
                        (if (equal? _%e205040205210%_ '#f)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl205039205207%_))
                                (_%__kont206279206280%_)
                                (_%__kont206283206284%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl205039205207%_))
                                (_%__kont206281206282%_ _%hd205038205205%_)
                                (_%__kont206283206284%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205039205207%_))
                          (_%__kont206281206282%_ _%hd205038205205%_)
                          (_%__kont206283206284%_)))))
              (_%__kont206283206284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204971204988%_
                                               _%g204972204991%_))))
                                      (_%g204971204988%_ _%g204972204991%_))))
                              (_%g204971204988%_ _%g204972204991%_))))
                      (_%g204971204988%_ _%g204972204991%_)))))
          (_%g204970205218%_ _%stx204969%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals204943%_ _%hd204944%_ _%expr204945%_)
        (let ((_%$e204947%_ (gxc#apply-count-values _%expr204945%_)))
          (if _%$e204947%_
              (let ((_%len204952%_
                     (let ()
                       (declare (not safe))
                       (gx#stx-length _%hd204944%_)))
                    (_%cmp204953%_
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-list? _%hd204944%_))
                         fx=
                         fx>=)))
                (if (or (let () (declare (not safe)) (##fx= _%len204952%_ '0))
                        (_%cmp204953%_ _%$e204947%_ _%len204952%_))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Value count mismatch"
                       _%expr204945%_
                       _%hd204944%_))))
              (let* ((_%len204959%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd204944%_)))
                     (_%cmp204961%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd204944%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg204963%_
                      (let ((__tmp207590
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd204944%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp207589 (number->string _%len204959%_)))
                        (declare (not safe))
                        (##string-append __tmp207590 __tmp207589 '" values")))
                     (_%count204965%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd204944%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len204959%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count204965%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals204943%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp204961%_
                                (cons _%count204965%_
                                      (cons _%len204959%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp204961%_
                                                        (cons _%count204965%_
                                                              (cons _%len204959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg204963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count204965%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var204938%_)
        (letrec ((_%generate-inline204940%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var204938%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var204938%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline204940%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline204940%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var204931%_ _%i204932%_ _%rest204933%_)
        (letrec ((_%generate-inline204935%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i204932%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest204933%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var204931%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var204931%_
                                                      (cons '0 '())))
                                          (cons _%var204931%_ '()))))
                        (cons '##values-ref
                              (cons _%var204931%_ (cons _%i204932%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline204935%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline204935%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var204925%_ _%i204926%_)
        (if (let () (declare (not safe)) (##fx= _%i204926%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var204925%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var204925%_ '()))
                                  (cons (cons 'list (cons _%var204925%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var204925%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var204925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var204925%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i204926%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var204925%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var204925%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var204925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var204925%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var204925%_ '()))
                                (cons _%i204926%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var204925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i204926%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self204857%_ _%stx204858%_)
        (let* ((_%g204860204877%_
                (lambda (_%g204861204874%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204861204874%_))))
               (_%g204859204922%_
                (lambda (_%g204861204880%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204861204880%_))
                      (let ((_%e204864204882%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204861204880%_))))
                        (let ((_%hd204865204885%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204864204882%_)))
                              (_%tl204866204887%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204864204882%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204866204887%_))
                              (let ((_%e204867204890%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204866204887%_))))
                                (let ((_%hd204868204893%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204867204890%_)))
                                      (_%tl204869204895%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204867204890%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204869204895%_))
                                      (let ((_%e204870204898%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204869204895%_))))
                                        (let ((_%hd204871204901%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204870204898%_)))
                                              (_%tl204872204903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204870204898%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204872204903%_))
                                              (gxc#generate-runtime-lambda-form
                                               _%self204857%_
                                               _%hd204868204893%_
                                               _%hd204871204901%_)
                                              (_%g204860204877%_
                                               _%g204861204880%_))))
                                      (_%g204860204877%_ _%g204861204880%_))))
                              (_%g204860204877%_ _%g204861204880%_))))
                      (_%g204860204877%_ _%g204861204880%_)))))
          (_%g204859204922%_ _%stx204858%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self204816%_ _%hd204817%_ _%body204818%_)
        (let* ((_%hd204820%_ (gxc#generate-runtime-lambda-head _%hd204817%_))
               (_%body204822%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self204816%_ _%body204818%_)))
               (_%body204854%_
                (let* ((_%body204823204831%_ _%body204822%_)
                       (_%else204825204839%_
                        (lambda () (cons _%body204822%_ '())))
                       (_%K204827204844%_
                        (lambda (_%exprs204842%_) _%exprs204842%_)))
                  (if (pair? _%body204823204831%_)
                      (let ((_%hd204828204847%_
                             (let ()
                               (declare (not safe))
                               (##car _%body204823204831%_)))
                            (_%tl204829204849%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body204823204831%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd204828204847%_ 'begin))
                            (let ((_%exprs204852%_ _%tl204829204849%_))
                              (_%K204827204844%_ _%exprs204852%_))
                            (_%else204825204839%_)))
                      (_%else204825204839%_)))))
          (cons 'lambda (cons _%hd204820%_ _%body204854%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd204814%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd204814%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self203371%_ _%stx203372%_)
        (letrec ((_%dispatch-case?203374%_
                  (lambda (_%hd204052%_ _%body204053%_)
                    (let* ((_%form204055%_
                            (cons _%hd204052%_ (cons _%body204053%_ '())))
                           (_%__stx206309206310%_ _%form204055%_)
                           (_%g204060204217%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx206309206310%_)))))
                      (let ((_%__kont206311206312%_
                             (lambda (_%g204062204734%_
                                      _%g204063204735%_
                                      _%g204064204736%_)
                               '#t))
                            (_%__kont206317206318%_
                             (lambda (_%g204107204526%_
                                      _%g204108204527%_
                                      _%g204109204528%_
                                      _%g204110204529%_
                                      _%g204111204530%_
                                      _%g204112204531%_)
                               '#t))
                            (_%__kont206323206324%_
                             (lambda (_%g204173204325%_
                                      _%g204174204326%_
                                      _%g204175204327%_
                                      _%g204176204328%_)
                               '#t))
                            (_%__kont206325206326%_ (lambda () '#f)))
                        (let* ((_%__match206450206451%_
                                (lambda (_%e204177204229%_
                                         _%hd204178204232%_
                                         _%tl204179204234%_
                                         _%e204180204237%_
                                         _%hd204181204240%_
                                         _%tl204182204242%_
                                         _%e204183204245%_
                                         _%hd204184204248%_
                                         _%tl204185204250%_
                                         _%e204186204253%_
                                         _%hd204187204256%_
                                         _%tl204188204258%_
                                         _%e204189204261%_
                                         _%hd204190204264%_
                                         _%tl204191204266%_
                                         _%e204192204269%_
                                         _%hd204193204272%_
                                         _%tl204194204274%_
                                         _%e204195204277%_
                                         _%hd204196204280%_
                                         _%tl204197204282%_
                                         _%e204198204285%_
                                         _%hd204199204288%_
                                         _%tl204200204290%_
                                         _%e204201204293%_
                                         _%hd204202204296%_
                                         _%tl204203204298%_
                                         _%e204204204301%_
                                         _%hd204205204304%_
                                         _%tl204206204306%_
                                         _%e204207204309%_
                                         _%hd204208204312%_
                                         _%tl204209204314%_
                                         _%e204210204317%_
                                         _%hd204211204320%_
                                         _%tl204212204322%_)
                                  (let ((_%g204173204325%_ _%hd204211204320%_)
                                        (_%g204174204326%_ _%hd204202204296%_)
                                        (_%g204175204327%_ _%hd204193204272%_)
                                        (_%g204176204328%_ _%hd204178204232%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g204176204328%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g204175204327%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g204176204328%_
                                                _%g204173204325%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g204174204326%_
                                                     _%g204176204328%_))))
                                        (_%__kont206323206324%_
                                         _%g204173204325%_
                                         _%g204174204326%_
                                         _%g204175204327%_
                                         _%g204176204328%_)
                                        (_%__kont206325206326%_)))))
                               (_%__match206422206423%_
                                (lambda (_%e204177204229%_
                                         _%hd204178204232%_
                                         _%tl204179204234%_
                                         _%e204180204237%_
                                         _%hd204181204240%_
                                         _%tl204182204242%_
                                         _%e204183204245%_
                                         _%hd204184204248%_
                                         _%tl204185204250%_
                                         _%e204186204253%_
                                         _%hd204187204256%_
                                         _%tl204188204258%_
                                         _%e204189204261%_
                                         _%hd204190204264%_
                                         _%tl204191204266%_
                                         _%e204192204269%_
                                         _%hd204193204272%_
                                         _%tl204194204274%_
                                         _%e204195204277%_
                                         _%hd204196204280%_
                                         _%tl204197204282%_
                                         _%e204198204285%_
                                         _%hd204199204288%_
                                         _%tl204200204290%_
                                         _%e204201204293%_
                                         _%hd204202204296%_
                                         _%tl204203204298%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204197204282%_))
                                      (let ((_%e204204204301%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204197204282%_))))
                                        (let ((_%tl204206204306%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204204204301%_)))
                                              (_%hd204205204304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204204204301%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd204205204304%_))
                                              (let ((_%e204207204309%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd204205204304%_))))
                                                (let ((_%tl204209204314%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204207204309%_)))
                                                      (_%hd204208204312%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204207204309%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd204208204312%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd204208204312%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl204209204314%_))
                      (let ((_%e204210204317%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204209204314%_))))
                        (let ((_%tl204212204322%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204210204317%_)))
                              (_%hd204211204320%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204210204317%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204212204322%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204206204306%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204182204242%_))
                                      (_%__match206450206451%_
                                       _%e204177204229%_
                                       _%hd204178204232%_
                                       _%tl204179204234%_
                                       _%e204180204237%_
                                       _%hd204181204240%_
                                       _%tl204182204242%_
                                       _%e204183204245%_
                                       _%hd204184204248%_
                                       _%tl204185204250%_
                                       _%e204186204253%_
                                       _%hd204187204256%_
                                       _%tl204188204258%_
                                       _%e204189204261%_
                                       _%hd204190204264%_
                                       _%tl204191204266%_
                                       _%e204192204269%_
                                       _%hd204193204272%_
                                       _%tl204194204274%_
                                       _%e204195204277%_
                                       _%hd204196204280%_
                                       _%tl204197204282%_
                                       _%e204198204285%_
                                       _%hd204199204288%_
                                       _%tl204200204290%_
                                       _%e204201204293%_
                                       _%hd204202204296%_
                                       _%tl204203204298%_
                                       _%e204204204301%_
                                       _%hd204205204304%_
                                       _%tl204206204306%_
                                       _%e204207204309%_
                                       _%hd204208204312%_
                                       _%tl204209204314%_
                                       _%e204210204317%_
                                       _%hd204211204320%_
                                       _%tl204212204322%_)
                                      (_%__kont206325206326%_))
                                  (_%__kont206325206326%_))
                              (_%__kont206325206326%_))))
                      (_%__kont206325206326%_))
                  (_%__kont206325206326%_))
              (_%__kont206325206326%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont206325206326%_))))
                                      (_%__kont206325206326%_))))
                               (_%__match206352206353%_
                                (lambda (_%e204113204370%_
                                         _%hd204114204373%_
                                         _%tl204115204375%_
                                         _%__splice206319206320%_
                                         _%target204116204378%_
                                         _%tl204118204380%_)
                                  (letrec ((_%loop204119204383%_
                                            (lambda (_%hd204117204386%_
                                                     _%arg204123204388%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd204117204386%_))
                                                  (let ((_%e204120204390%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd204117204386%_))))
                                                    (let ((_%lp-tl204122204395%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204120204390%_)))
                                                          (_%lp-hd204121204393%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204120204390%_))))
                                                      (_%loop204119204383%_
                                                       _%lp-tl204122204395%_
                                                       (cons _%lp-hd204121204393%_
                                                             _%arg204123204388%_))))
                                                  (let ((_%arg204124204398%_
                                                         (reverse _%arg204123204388%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl204115204375%_))
                                                        (let ((_%e204125204400%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl204115204375%_))))
                  (let ((_%tl204127204405%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204125204400%_)))
                        (_%hd204126204403%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204125204400%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd204126204403%_))
                        (let ((_%e204128204408%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd204126204403%_))))
                          (let ((_%tl204130204413%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204128204408%_)))
                                (_%hd204129204411%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204128204408%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd204129204411%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd204129204411%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl204130204413%_))
                                        (let ((_%e204131204416%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl204130204413%_))))
                                          (let ((_%tl204133204421%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204131204416%_)))
                                                (_%hd204132204419%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204131204416%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd204132204419%_))
                                                (let ((_%e204134204424%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd204132204419%_))))
                                                  (let ((_%tl204136204429%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e204134204424%_)))
                                                        (_%hd204135204427%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e204134204424%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd204135204427%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd204135204427%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl204136204429%_))
                        (let ((_%e204137204432%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl204136204429%_))))
                          (let ((_%tl204139204437%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204137204432%_)))
                                (_%hd204138204435%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204137204432%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl204139204437%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl204133204421%_))
                                    (let ((_%e204140204440%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl204133204421%_))))
                                      (let ((_%tl204142204445%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e204140204440%_)))
                                            (_%hd204141204443%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e204140204440%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd204141204443%_))
                                            (let ((_%e204143204448%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd204141204443%_))))
                                              (let ((_%tl204145204453%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204143204448%_)))
                                                    (_%hd204144204451%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204143204448%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd204144204451%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd204144204451%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl204145204453%_))
                                                            (let ((_%e204146204456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl204145204453%_))))
                      (let ((_%tl204148204461%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e204146204456%_)))
                            (_%hd204147204459%_
                             (let ()
                               (declare (not safe))
                               (##car _%e204146204456%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl204148204461%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl204142204445%_))
                                (if (let ((__tmp207591
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl204142204445%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp207591 '1))
                                    (let ((_%__splice206321206322%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl204142204445%_
                                              '1))))
                                      (let ((_%tl204151204466%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice206321206322%_
                                                '1)))
                                            (_%target204149204464%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice206321206322%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl204151204466%_))
                                            (let ((_%e204158204469%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl204151204466%_))))
                                              (let ((_%tl204160204474%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204158204469%_)))
                                                    (_%hd204159204472%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204158204469%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd204159204472%_))
                                                    (let ((_%e204161204477%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd204159204472%_))))
                                                      (let ((_%tl204163204482%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e204161204477%_)))
                    (_%hd204162204480%_
                     (let () (declare (not safe)) (##car _%e204161204477%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd204162204480%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd204162204480%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl204163204482%_))
                            (let ((_%e204164204485%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl204163204482%_))))
                              (let ((_%tl204166204490%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e204164204485%_)))
                                    (_%hd204165204488%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e204164204485%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl204166204490%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204160204474%_))
                                        (letrec ((_%loop204152204493%_
                                                  (lambda (_%hd204150204496%_
                                                           _%xarg204156204498%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204150204496%_))
                                                        (let ((_%e204153204500%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd204150204496%_))))
                  (let ((_%lp-tl204155204505%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204153204500%_)))
                        (_%lp-hd204154204503%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204153204500%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd204154204503%_))
                        (let ((_%e204167204508%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd204154204503%_))))
                          (let ((_%tl204169204513%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204167204508%_)))
                                (_%hd204168204511%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204167204508%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd204168204511%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd204168204511%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl204169204513%_))
                                        (let ((_%e204170204516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl204169204513%_))))
                                          (let ((_%tl204172204521%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204170204516%_)))
                                                (_%hd204171204519%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204170204516%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204172204521%_))
                                                (_%loop204152204493%_
                                                 _%lp-tl204155204505%_
                                                 (cons _%hd204171204519%_
                                                       _%xarg204156204498%_))
                                                (_%__match206422206423%_
                                                 _%e204113204370%_
                                                 _%hd204114204373%_
                                                 _%tl204115204375%_
                                                 _%e204125204400%_
                                                 _%hd204126204403%_
                                                 _%tl204127204405%_
                                                 _%e204128204408%_
                                                 _%hd204129204411%_
                                                 _%tl204130204413%_
                                                 _%e204131204416%_
                                                 _%hd204132204419%_
                                                 _%tl204133204421%_
                                                 _%e204134204424%_
                                                 _%hd204135204427%_
                                                 _%tl204136204429%_
                                                 _%e204137204432%_
                                                 _%hd204138204435%_
                                                 _%tl204139204437%_
                                                 _%e204140204440%_
                                                 _%hd204141204443%_
                                                 _%tl204142204445%_
                                                 _%e204143204448%_
                                                 _%hd204144204451%_
                                                 _%tl204145204453%_
                                                 _%e204146204456%_
                                                 _%hd204147204459%_
                                                 _%tl204148204461%_))))
                                        (_%__match206422206423%_
                                         _%e204113204370%_
                                         _%hd204114204373%_
                                         _%tl204115204375%_
                                         _%e204125204400%_
                                         _%hd204126204403%_
                                         _%tl204127204405%_
                                         _%e204128204408%_
                                         _%hd204129204411%_
                                         _%tl204130204413%_
                                         _%e204131204416%_
                                         _%hd204132204419%_
                                         _%tl204133204421%_
                                         _%e204134204424%_
                                         _%hd204135204427%_
                                         _%tl204136204429%_
                                         _%e204137204432%_
                                         _%hd204138204435%_
                                         _%tl204139204437%_
                                         _%e204140204440%_
                                         _%hd204141204443%_
                                         _%tl204142204445%_
                                         _%e204143204448%_
                                         _%hd204144204451%_
                                         _%tl204145204453%_
                                         _%e204146204456%_
                                         _%hd204147204459%_
                                         _%tl204148204461%_))
                                    (_%__match206422206423%_
                                     _%e204113204370%_
                                     _%hd204114204373%_
                                     _%tl204115204375%_
                                     _%e204125204400%_
                                     _%hd204126204403%_
                                     _%tl204127204405%_
                                     _%e204128204408%_
                                     _%hd204129204411%_
                                     _%tl204130204413%_
                                     _%e204131204416%_
                                     _%hd204132204419%_
                                     _%tl204133204421%_
                                     _%e204134204424%_
                                     _%hd204135204427%_
                                     _%tl204136204429%_
                                     _%e204137204432%_
                                     _%hd204138204435%_
                                     _%tl204139204437%_
                                     _%e204140204440%_
                                     _%hd204141204443%_
                                     _%tl204142204445%_
                                     _%e204143204448%_
                                     _%hd204144204451%_
                                     _%tl204145204453%_
                                     _%e204146204456%_
                                     _%hd204147204459%_
                                     _%tl204148204461%_))
                                (_%__match206422206423%_
                                 _%e204113204370%_
                                 _%hd204114204373%_
                                 _%tl204115204375%_
                                 _%e204125204400%_
                                 _%hd204126204403%_
                                 _%tl204127204405%_
                                 _%e204128204408%_
                                 _%hd204129204411%_
                                 _%tl204130204413%_
                                 _%e204131204416%_
                                 _%hd204132204419%_
                                 _%tl204133204421%_
                                 _%e204134204424%_
                                 _%hd204135204427%_
                                 _%tl204136204429%_
                                 _%e204137204432%_
                                 _%hd204138204435%_
                                 _%tl204139204437%_
                                 _%e204140204440%_
                                 _%hd204141204443%_
                                 _%tl204142204445%_
                                 _%e204143204448%_
                                 _%hd204144204451%_
                                 _%tl204145204453%_
                                 _%e204146204456%_
                                 _%hd204147204459%_
                                 _%tl204148204461%_))))
                        (_%__match206422206423%_
                         _%e204113204370%_
                         _%hd204114204373%_
                         _%tl204115204375%_
                         _%e204125204400%_
                         _%hd204126204403%_
                         _%tl204127204405%_
                         _%e204128204408%_
                         _%hd204129204411%_
                         _%tl204130204413%_
                         _%e204131204416%_
                         _%hd204132204419%_
                         _%tl204133204421%_
                         _%e204134204424%_
                         _%hd204135204427%_
                         _%tl204136204429%_
                         _%e204137204432%_
                         _%hd204138204435%_
                         _%tl204139204437%_
                         _%e204140204440%_
                         _%hd204141204443%_
                         _%tl204142204445%_
                         _%e204143204448%_
                         _%hd204144204451%_
                         _%tl204145204453%_
                         _%e204146204456%_
                         _%hd204147204459%_
                         _%tl204148204461%_))))
                (let ((_%xarg204157204524%_ (reverse _%xarg204156204498%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl204127204405%_))
                      (let ((_%g204107204526%_ _%hd204165204488%_)
                            (_%g204108204527%_ _%xarg204157204524%_)
                            (_%g204109204528%_ _%hd204147204459%_)
                            (_%g204110204529%_ _%hd204138204435%_)
                            (_%g204111204530%_ _%tl204118204380%_)
                            (_%g204112204531%_ _%arg204124204398%_))
                        (if (and (let ((__tmp207592
                                        (let ((__tmp207593
                                               (lambda (_%g204574204577%_
                                                        _%g204575204579%_)
                                                 (cons _%g204574204577%_
                                                       _%g204575204579%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp207593
                                           '()
                                           _%g204112204531%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp207592))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g204111204530%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g204110204529%_
                                    'apply))
                                 (let ((__tmp207596
                                        (length (let ((__tmp207597
                                                       (lambda (_%g204581204584%_
                                                                _%g204582204586%_)
                                                         (cons _%g204581204584%_
                                                               _%g204582204586%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp207597
                                                   '()
                                                   _%g204112204531%_))))
                                       (__tmp207594
                                        (length (let ((__tmp207595
                                                       (lambda (_%g204588204591%_
                                                                _%g204589204593%_)
                                                         (cons _%g204588204591%_
                                                               _%g204589204593%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp207595
                                                   '()
                                                   _%g204108204527%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp207596 __tmp207594))
                                 (let ((__tmp207600
                                        (let ((__tmp207601
                                               (lambda (_%g204595204598%_
                                                        _%g204596204600%_)
                                                 (cons _%g204595204598%_
                                                       _%g204596204600%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp207601
                                           '()
                                           _%g204112204531%_)))
                                       (__tmp207598
                                        (let ((__tmp207599
                                               (lambda (_%g204602204605%_
                                                        _%g204603204607%_)
                                                 (cons _%g204602204605%_
                                                       _%g204603204607%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp207599
                                           '()
                                           _%g204108204527%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp207600
                                    __tmp207598))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g204111204530%_
                                    _%g204107204526%_))
                                 (not (let ((__tmp207605
                                             (lambda (_%g204609204611%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g204609204611%_
                                                  _%g204109204528%_))))
                                            (__tmp207602
                                             (let ((__tmp207604
                                                    (lambda (_%g204613204616%_
                                                             _%g204614204618%_)
                                                      (cons _%g204613204616%_
                                                            _%g204614204618%_)))
                                                   (__tmp207603
                                                    (cons _%g204111204530%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp207604
                                                __tmp207603
                                                _%g204112204531%_))))
                                        (declare (not safe))
                                        (__find __tmp207605 __tmp207602))))
                            (_%__kont206317206318%_
                             _%g204107204526%_
                             _%g204108204527%_
                             _%g204109204528%_
                             _%g204110204529%_
                             _%g204111204530%_
                             _%g204112204531%_)
                            (_%__match206422206423%_
                             _%e204113204370%_
                             _%hd204114204373%_
                             _%tl204115204375%_
                             _%e204125204400%_
                             _%hd204126204403%_
                             _%tl204127204405%_
                             _%e204128204408%_
                             _%hd204129204411%_
                             _%tl204130204413%_
                             _%e204131204416%_
                             _%hd204132204419%_
                             _%tl204133204421%_
                             _%e204134204424%_
                             _%hd204135204427%_
                             _%tl204136204429%_
                             _%e204137204432%_
                             _%hd204138204435%_
                             _%tl204139204437%_
                             _%e204140204440%_
                             _%hd204141204443%_
                             _%tl204142204445%_
                             _%e204143204448%_
                             _%hd204144204451%_
                             _%tl204145204453%_
                             _%e204146204456%_
                             _%hd204147204459%_
                             _%tl204148204461%_)))
                      (_%__match206422206423%_
                       _%e204113204370%_
                       _%hd204114204373%_
                       _%tl204115204375%_
                       _%e204125204400%_
                       _%hd204126204403%_
                       _%tl204127204405%_
                       _%e204128204408%_
                       _%hd204129204411%_
                       _%tl204130204413%_
                       _%e204131204416%_
                       _%hd204132204419%_
                       _%tl204133204421%_
                       _%e204134204424%_
                       _%hd204135204427%_
                       _%tl204136204429%_
                       _%e204137204432%_
                       _%hd204138204435%_
                       _%tl204139204437%_
                       _%e204140204440%_
                       _%hd204141204443%_
                       _%tl204142204445%_
                       _%e204143204448%_
                       _%hd204144204451%_
                       _%tl204145204453%_
                       _%e204146204456%_
                       _%hd204147204459%_
                       _%tl204148204461%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop204152204493%_
                                           _%target204149204464%_
                                           '()))
                                        (_%__match206422206423%_
                                         _%e204113204370%_
                                         _%hd204114204373%_
                                         _%tl204115204375%_
                                         _%e204125204400%_
                                         _%hd204126204403%_
                                         _%tl204127204405%_
                                         _%e204128204408%_
                                         _%hd204129204411%_
                                         _%tl204130204413%_
                                         _%e204131204416%_
                                         _%hd204132204419%_
                                         _%tl204133204421%_
                                         _%e204134204424%_
                                         _%hd204135204427%_
                                         _%tl204136204429%_
                                         _%e204137204432%_
                                         _%hd204138204435%_
                                         _%tl204139204437%_
                                         _%e204140204440%_
                                         _%hd204141204443%_
                                         _%tl204142204445%_
                                         _%e204143204448%_
                                         _%hd204144204451%_
                                         _%tl204145204453%_
                                         _%e204146204456%_
                                         _%hd204147204459%_
                                         _%tl204148204461%_))
                                    (_%__match206422206423%_
                                     _%e204113204370%_
                                     _%hd204114204373%_
                                     _%tl204115204375%_
                                     _%e204125204400%_
                                     _%hd204126204403%_
                                     _%tl204127204405%_
                                     _%e204128204408%_
                                     _%hd204129204411%_
                                     _%tl204130204413%_
                                     _%e204131204416%_
                                     _%hd204132204419%_
                                     _%tl204133204421%_
                                     _%e204134204424%_
                                     _%hd204135204427%_
                                     _%tl204136204429%_
                                     _%e204137204432%_
                                     _%hd204138204435%_
                                     _%tl204139204437%_
                                     _%e204140204440%_
                                     _%hd204141204443%_
                                     _%tl204142204445%_
                                     _%e204143204448%_
                                     _%hd204144204451%_
                                     _%tl204145204453%_
                                     _%e204146204456%_
                                     _%hd204147204459%_
                                     _%tl204148204461%_))))
                            (_%__match206422206423%_
                             _%e204113204370%_
                             _%hd204114204373%_
                             _%tl204115204375%_
                             _%e204125204400%_
                             _%hd204126204403%_
                             _%tl204127204405%_
                             _%e204128204408%_
                             _%hd204129204411%_
                             _%tl204130204413%_
                             _%e204131204416%_
                             _%hd204132204419%_
                             _%tl204133204421%_
                             _%e204134204424%_
                             _%hd204135204427%_
                             _%tl204136204429%_
                             _%e204137204432%_
                             _%hd204138204435%_
                             _%tl204139204437%_
                             _%e204140204440%_
                             _%hd204141204443%_
                             _%tl204142204445%_
                             _%e204143204448%_
                             _%hd204144204451%_
                             _%tl204145204453%_
                             _%e204146204456%_
                             _%hd204147204459%_
                             _%tl204148204461%_))
                        (_%__match206422206423%_
                         _%e204113204370%_
                         _%hd204114204373%_
                         _%tl204115204375%_
                         _%e204125204400%_
                         _%hd204126204403%_
                         _%tl204127204405%_
                         _%e204128204408%_
                         _%hd204129204411%_
                         _%tl204130204413%_
                         _%e204131204416%_
                         _%hd204132204419%_
                         _%tl204133204421%_
                         _%e204134204424%_
                         _%hd204135204427%_
                         _%tl204136204429%_
                         _%e204137204432%_
                         _%hd204138204435%_
                         _%tl204139204437%_
                         _%e204140204440%_
                         _%hd204141204443%_
                         _%tl204142204445%_
                         _%e204143204448%_
                         _%hd204144204451%_
                         _%tl204145204453%_
                         _%e204146204456%_
                         _%hd204147204459%_
                         _%tl204148204461%_))
                    (_%__match206422206423%_
                     _%e204113204370%_
                     _%hd204114204373%_
                     _%tl204115204375%_
                     _%e204125204400%_
                     _%hd204126204403%_
                     _%tl204127204405%_
                     _%e204128204408%_
                     _%hd204129204411%_
                     _%tl204130204413%_
                     _%e204131204416%_
                     _%hd204132204419%_
                     _%tl204133204421%_
                     _%e204134204424%_
                     _%hd204135204427%_
                     _%tl204136204429%_
                     _%e204137204432%_
                     _%hd204138204435%_
                     _%tl204139204437%_
                     _%e204140204440%_
                     _%hd204141204443%_
                     _%tl204142204445%_
                     _%e204143204448%_
                     _%hd204144204451%_
                     _%tl204145204453%_
                     _%e204146204456%_
                     _%hd204147204459%_
                     _%tl204148204461%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match206422206423%_
                                                     _%e204113204370%_
                                                     _%hd204114204373%_
                                                     _%tl204115204375%_
                                                     _%e204125204400%_
                                                     _%hd204126204403%_
                                                     _%tl204127204405%_
                                                     _%e204128204408%_
                                                     _%hd204129204411%_
                                                     _%tl204130204413%_
                                                     _%e204131204416%_
                                                     _%hd204132204419%_
                                                     _%tl204133204421%_
                                                     _%e204134204424%_
                                                     _%hd204135204427%_
                                                     _%tl204136204429%_
                                                     _%e204137204432%_
                                                     _%hd204138204435%_
                                                     _%tl204139204437%_
                                                     _%e204140204440%_
                                                     _%hd204141204443%_
                                                     _%tl204142204445%_
                                                     _%e204143204448%_
                                                     _%hd204144204451%_
                                                     _%tl204145204453%_
                                                     _%e204146204456%_
                                                     _%hd204147204459%_
                                                     _%tl204148204461%_))))
                                            (_%__match206422206423%_
                                             _%e204113204370%_
                                             _%hd204114204373%_
                                             _%tl204115204375%_
                                             _%e204125204400%_
                                             _%hd204126204403%_
                                             _%tl204127204405%_
                                             _%e204128204408%_
                                             _%hd204129204411%_
                                             _%tl204130204413%_
                                             _%e204131204416%_
                                             _%hd204132204419%_
                                             _%tl204133204421%_
                                             _%e204134204424%_
                                             _%hd204135204427%_
                                             _%tl204136204429%_
                                             _%e204137204432%_
                                             _%hd204138204435%_
                                             _%tl204139204437%_
                                             _%e204140204440%_
                                             _%hd204141204443%_
                                             _%tl204142204445%_
                                             _%e204143204448%_
                                             _%hd204144204451%_
                                             _%tl204145204453%_
                                             _%e204146204456%_
                                             _%hd204147204459%_
                                             _%tl204148204461%_))))
                                    (_%__match206422206423%_
                                     _%e204113204370%_
                                     _%hd204114204373%_
                                     _%tl204115204375%_
                                     _%e204125204400%_
                                     _%hd204126204403%_
                                     _%tl204127204405%_
                                     _%e204128204408%_
                                     _%hd204129204411%_
                                     _%tl204130204413%_
                                     _%e204131204416%_
                                     _%hd204132204419%_
                                     _%tl204133204421%_
                                     _%e204134204424%_
                                     _%hd204135204427%_
                                     _%tl204136204429%_
                                     _%e204137204432%_
                                     _%hd204138204435%_
                                     _%tl204139204437%_
                                     _%e204140204440%_
                                     _%hd204141204443%_
                                     _%tl204142204445%_
                                     _%e204143204448%_
                                     _%hd204144204451%_
                                     _%tl204145204453%_
                                     _%e204146204456%_
                                     _%hd204147204459%_
                                     _%tl204148204461%_))
                                (_%__match206422206423%_
                                 _%e204113204370%_
                                 _%hd204114204373%_
                                 _%tl204115204375%_
                                 _%e204125204400%_
                                 _%hd204126204403%_
                                 _%tl204127204405%_
                                 _%e204128204408%_
                                 _%hd204129204411%_
                                 _%tl204130204413%_
                                 _%e204131204416%_
                                 _%hd204132204419%_
                                 _%tl204133204421%_
                                 _%e204134204424%_
                                 _%hd204135204427%_
                                 _%tl204136204429%_
                                 _%e204137204432%_
                                 _%hd204138204435%_
                                 _%tl204139204437%_
                                 _%e204140204440%_
                                 _%hd204141204443%_
                                 _%tl204142204445%_
                                 _%e204143204448%_
                                 _%hd204144204451%_
                                 _%tl204145204453%_
                                 _%e204146204456%_
                                 _%hd204147204459%_
                                 _%tl204148204461%_))
                            (_%__kont206325206326%_))))
                    (_%__kont206325206326%_))
                (_%__kont206325206326%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont206325206326%_))))
                                            (_%__kont206325206326%_))))
                                    (_%__kont206325206326%_))
                                (_%__kont206325206326%_))))
                        (_%__kont206325206326%_))
                    (_%__kont206325206326%_))
                (_%__kont206325206326%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont206325206326%_))))
                                        (_%__kont206325206326%_))
                                    (_%__kont206325206326%_))
                                (_%__kont206325206326%_))))
                        (_%__kont206325206326%_))))
                (_%__kont206325206326%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop204119204383%_
                                     _%target204116204378%_
                                     '()))))
                               (_%__match206340206341%_
                                (lambda (_%e204065204626%_
                                         _%hd204066204629%_
                                         _%tl204067204631%_
                                         _%__splice206313206314%_
                                         _%target204068204634%_
                                         _%tl204070204636%_)
                                  (letrec ((_%loop204071204639%_
                                            (lambda (_%hd204069204642%_
                                                     _%arg204075204644%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd204069204642%_))
                                                  (let ((_%e204072204646%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd204069204642%_))))
                                                    (let ((_%lp-tl204074204651%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204072204646%_)))
                                                          (_%lp-hd204073204649%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204072204646%_))))
                                                      (_%loop204071204639%_
                                                       _%lp-tl204074204651%_
                                                       (cons _%lp-hd204073204649%_
                                                             _%arg204075204644%_))))
                                                  (let ((_%arg204076204654%_
                                                         (reverse _%arg204075204644%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl204067204631%_))
                                                        (let ((_%e204077204656%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl204067204631%_))))
                  (let ((_%tl204079204661%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204077204656%_)))
                        (_%hd204078204659%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204077204656%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd204078204659%_))
                        (let ((_%e204080204664%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd204078204659%_))))
                          (let ((_%tl204082204669%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204080204664%_)))
                                (_%hd204081204667%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204080204664%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd204081204667%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd204081204667%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl204082204669%_))
                                        (let ((_%e204083204672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl204082204669%_))))
                                          (let ((_%tl204085204677%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204083204672%_)))
                                                (_%hd204084204675%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204083204672%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd204084204675%_))
                                                (let ((_%e204086204680%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd204084204675%_))))
                                                  (let ((_%tl204088204685%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e204086204680%_)))
                                                        (_%hd204087204683%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e204086204680%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd204087204683%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd204087204683%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl204088204685%_))
                        (let ((_%e204089204688%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl204088204685%_))))
                          (let ((_%tl204091204693%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204089204688%_)))
                                (_%hd204090204691%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204089204688%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl204091204693%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl204085204677%_))
                                    (let ((_%__splice206315206316%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl204085204677%_
                                              '0))))
                                      (let ((_%tl204094204698%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice206315206316%_
                                                '1)))
                                            (_%target204092204696%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice206315206316%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl204094204698%_))
                                            (letrec ((_%loop204095204701%_
                                                      (lambda (_%hd204093204704%_
                                                               _%xarg204099204706%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd204093204704%_))
                                                            (let ((_%e204096204708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd204093204704%_))))
                      (let ((_%lp-tl204098204713%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e204096204708%_)))
                            (_%lp-hd204097204711%_
                             (let ()
                               (declare (not safe))
                               (##car _%e204096204708%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd204097204711%_))
                            (let ((_%e204101204716%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd204097204711%_))))
                              (let ((_%tl204103204721%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e204101204716%_)))
                                    (_%hd204102204719%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e204101204716%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd204102204719%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd204102204719%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl204103204721%_))
                                            (let ((_%e204104204724%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl204103204721%_))))
                                              (let ((_%tl204106204729%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204104204724%_)))
                                                    (_%hd204105204727%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204104204724%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl204106204729%_))
                                                    (_%loop204095204701%_
                                                     _%lp-tl204098204713%_
                                                     (cons _%hd204105204727%_
                                                           _%xarg204099204706%_))
                                                    (_%__match206352206353%_
                                                     _%e204065204626%_
                                                     _%hd204066204629%_
                                                     _%tl204067204631%_
                                                     _%__splice206313206314%_
                                                     _%target204068204634%_
                                                     _%tl204070204636%_))))
                                            (_%__match206352206353%_
                                             _%e204065204626%_
                                             _%hd204066204629%_
                                             _%tl204067204631%_
                                             _%__splice206313206314%_
                                             _%target204068204634%_
                                             _%tl204070204636%_))
                                        (_%__match206352206353%_
                                         _%e204065204626%_
                                         _%hd204066204629%_
                                         _%tl204067204631%_
                                         _%__splice206313206314%_
                                         _%target204068204634%_
                                         _%tl204070204636%_))
                                    (_%__match206352206353%_
                                     _%e204065204626%_
                                     _%hd204066204629%_
                                     _%tl204067204631%_
                                     _%__splice206313206314%_
                                     _%target204068204634%_
                                     _%tl204070204636%_))))
                            (_%__match206352206353%_
                             _%e204065204626%_
                             _%hd204066204629%_
                             _%tl204067204631%_
                             _%__splice206313206314%_
                             _%target204068204634%_
                             _%tl204070204636%_))))
                    (let ((_%xarg204100204732%_
                           (reverse _%xarg204099204706%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204079204661%_))
                          (let ((_%g204062204734%_ _%xarg204100204732%_)
                                (_%g204063204735%_ _%hd204090204691%_)
                                (_%g204064204736%_ _%arg204076204654%_))
                            (if (and (let ((__tmp207606
                                            (let ((__tmp207607
                                                   (lambda (_%g204764204767%_
                                                            _%g204765204769%_)
                                                     (cons _%g204764204767%_
                                                           _%g204765204769%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp207607
                                               '()
                                               _%g204064204736%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp207606))
                                     (let ((__tmp207610
                                            (length (let ((__tmp207611
                                                           (lambda (_%g204771204774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g204772204776%_)
                     (cons _%g204771204774%_ _%g204772204776%_))))
              (declare (not safe))
              (foldr__0 __tmp207611 '() _%g204064204736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp207608
                                            (length (let ((__tmp207609
                                                           (lambda (_%g204778204781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g204779204783%_)
                     (cons _%g204778204781%_ _%g204779204783%_))))
              (declare (not safe))
              (foldr__0 __tmp207609 '() _%g204062204734%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp207610 __tmp207608))
                                     (let ((__tmp207614
                                            (let ((__tmp207615
                                                   (lambda (_%g204785204788%_
                                                            _%g204786204790%_)
                                                     (cons _%g204785204788%_
                                                           _%g204786204790%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp207615
                                               '()
                                               _%g204064204736%_)))
                                           (__tmp207612
                                            (let ((__tmp207613
                                                   (lambda (_%g204792204795%_
                                                            _%g204793204797%_)
                                                     (cons _%g204792204795%_
                                                           _%g204793204797%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp207613
                                               '()
                                               _%g204062204734%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp207614
                                        __tmp207612))
                                     (not (let ((__tmp207618
                                                 (lambda (_%g204799204801%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g204799204801%_
                                                      _%g204063204735%_))))
                                                (__tmp207616
                                                 (let ((__tmp207617
                                                        (lambda (_%g204803204806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g204804204808%_)
                  (cons _%g204803204806%_ _%g204804204808%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp207617
                                                    '()
                                                    _%g204064204736%_))))
                                            (declare (not safe))
                                            (__find __tmp207618 __tmp207616))))
                                (_%__kont206311206312%_
                                 _%g204062204734%_
                                 _%g204063204735%_
                                 _%g204064204736%_)
                                (_%__match206352206353%_
                                 _%e204065204626%_
                                 _%hd204066204629%_
                                 _%tl204067204631%_
                                 _%__splice206313206314%_
                                 _%target204068204634%_
                                 _%tl204070204636%_)))
                          (_%__match206352206353%_
                           _%e204065204626%_
                           _%hd204066204629%_
                           _%tl204067204631%_
                           _%__splice206313206314%_
                           _%target204068204634%_
                           _%tl204070204636%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop204095204701%_
                                               _%target204092204696%_
                                               '()))
                                            (_%__match206352206353%_
                                             _%e204065204626%_
                                             _%hd204066204629%_
                                             _%tl204067204631%_
                                             _%__splice206313206314%_
                                             _%target204068204634%_
                                             _%tl204070204636%_))))
                                    (_%__match206352206353%_
                                     _%e204065204626%_
                                     _%hd204066204629%_
                                     _%tl204067204631%_
                                     _%__splice206313206314%_
                                     _%target204068204634%_
                                     _%tl204070204636%_))
                                (_%__match206352206353%_
                                 _%e204065204626%_
                                 _%hd204066204629%_
                                 _%tl204067204631%_
                                 _%__splice206313206314%_
                                 _%target204068204634%_
                                 _%tl204070204636%_))))
                        (_%__match206352206353%_
                         _%e204065204626%_
                         _%hd204066204629%_
                         _%tl204067204631%_
                         _%__splice206313206314%_
                         _%target204068204634%_
                         _%tl204070204636%_))
                    (_%__match206352206353%_
                     _%e204065204626%_
                     _%hd204066204629%_
                     _%tl204067204631%_
                     _%__splice206313206314%_
                     _%target204068204634%_
                     _%tl204070204636%_))
                (_%__match206352206353%_
                 _%e204065204626%_
                 _%hd204066204629%_
                 _%tl204067204631%_
                 _%__splice206313206314%_
                 _%target204068204634%_
                 _%tl204070204636%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match206352206353%_
                                                 _%e204065204626%_
                                                 _%hd204066204629%_
                                                 _%tl204067204631%_
                                                 _%__splice206313206314%_
                                                 _%target204068204634%_
                                                 _%tl204070204636%_))))
                                        (_%__match206352206353%_
                                         _%e204065204626%_
                                         _%hd204066204629%_
                                         _%tl204067204631%_
                                         _%__splice206313206314%_
                                         _%target204068204634%_
                                         _%tl204070204636%_))
                                    (_%__match206352206353%_
                                     _%e204065204626%_
                                     _%hd204066204629%_
                                     _%tl204067204631%_
                                     _%__splice206313206314%_
                                     _%target204068204634%_
                                     _%tl204070204636%_))
                                (_%__match206352206353%_
                                 _%e204065204626%_
                                 _%hd204066204629%_
                                 _%tl204067204631%_
                                 _%__splice206313206314%_
                                 _%target204068204634%_
                                 _%tl204070204636%_))))
                        (_%__match206352206353%_
                         _%e204065204626%_
                         _%hd204066204629%_
                         _%tl204067204631%_
                         _%__splice206313206314%_
                         _%target204068204634%_
                         _%tl204070204636%_))))
                (_%__match206352206353%_
                 _%e204065204626%_
                 _%hd204066204629%_
                 _%tl204067204631%_
                 _%__splice206313206314%_
                 _%target204068204634%_
                 _%tl204070204636%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop204071204639%_
                                     _%target204068204634%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx206309206310%_))
                              (let ((_%e204065204626%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx206309206310%_))))
                                (let ((_%tl204067204631%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204065204626%_)))
                                      (_%hd204066204629%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204065204626%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd204066204629%_))
                                      (let ((_%__splice206313206314%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd204066204629%_
                                                '0))))
                                        (let ((_%tl204070204636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice206313206314%_
                                                  '1)))
                                              (_%target204068204634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice206313206314%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204070204636%_))
                                              (_%__match206340206341%_
                                               _%e204065204626%_
                                               _%hd204066204629%_
                                               _%tl204067204631%_
                                               _%__splice206313206314%_
                                               _%target204068204634%_
                                               _%tl204070204636%_)
                                              (_%__match206352206353%_
                                               _%e204065204626%_
                                               _%hd204066204629%_
                                               _%tl204067204631%_
                                               _%__splice206313206314%_
                                               _%target204068204634%_
                                               _%tl204070204636%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204067204631%_))
                                          (let ((_%e204180204237%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204067204631%_))))
                                            (let ((_%tl204182204242%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204180204237%_)))
                                                  (_%hd204181204240%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204180204237%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd204181204240%_))
                                                  (let ((_%e204183204245%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd204181204240%_))))
                                                    (let ((_%tl204185204250%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204183204245%_)))
                                                          (_%hd204184204248%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204183204245%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd204184204248%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd204184204248%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204185204250%_))
                          (let ((_%e204186204253%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204185204250%_))))
                            (let ((_%tl204188204258%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204186204253%_)))
                                  (_%hd204187204256%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204186204253%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd204187204256%_))
                                  (let ((_%e204189204261%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd204187204256%_))))
                                    (let ((_%tl204191204266%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204189204261%_)))
                                          (_%hd204190204264%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204189204261%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd204190204264%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd204190204264%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204191204266%_))
                                                  (let ((_%e204192204269%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204191204266%_))))
                                                    (let ((_%tl204194204274%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204192204269%_)))
                                                          (_%hd204193204272%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204192204269%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204194204274%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl204188204258%_))
                      (let ((_%e204195204277%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204188204258%_))))
                        (let ((_%tl204197204282%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204195204277%_)))
                              (_%hd204196204280%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204195204277%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd204196204280%_))
                              (let ((_%e204198204285%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd204196204280%_))))
                                (let ((_%tl204200204290%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204198204285%_)))
                                      (_%hd204199204288%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204198204285%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd204199204288%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd204199204288%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204200204290%_))
                                              (let ((_%e204201204293%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204200204290%_))))
                                                (let ((_%tl204203204298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204201204293%_)))
                                                      (_%hd204202204296%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204201204293%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204203204298%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204197204282%_))
                                                          (let ((_%e204204204301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204197204282%_))))
                    (let ((_%tl204206204306%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204204204301%_)))
                          (_%hd204205204304%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204204204301%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd204205204304%_))
                          (let ((_%e204207204309%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd204205204304%_))))
                            (let ((_%tl204209204314%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204207204309%_)))
                                  (_%hd204208204312%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204207204309%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd204208204312%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd204208204312%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204209204314%_))
                                          (let ((_%e204210204317%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204209204314%_))))
                                            (let ((_%tl204212204322%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204210204317%_)))
                                                  (_%hd204211204320%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204210204317%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl204212204322%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204206204306%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204182204242%_))
                                                          (_%__match206450206451%_
                                                           _%e204065204626%_
                                                           _%hd204066204629%_
                                                           _%tl204067204631%_
                                                           _%e204180204237%_
                                                           _%hd204181204240%_
                                                           _%tl204182204242%_
                                                           _%e204183204245%_
                                                           _%hd204184204248%_
                                                           _%tl204185204250%_
                                                           _%e204186204253%_
                                                           _%hd204187204256%_
                                                           _%tl204188204258%_
                                                           _%e204189204261%_
                                                           _%hd204190204264%_
                                                           _%tl204191204266%_
                                                           _%e204192204269%_
                                                           _%hd204193204272%_
                                                           _%tl204194204274%_
                                                           _%e204195204277%_
                                                           _%hd204196204280%_
                                                           _%tl204197204282%_
                                                           _%e204198204285%_
                                                           _%hd204199204288%_
                                                           _%tl204200204290%_
                                                           _%e204201204293%_
                                                           _%hd204202204296%_
                                                           _%tl204203204298%_
                                                           _%e204204204301%_
                                                           _%hd204205204304%_
                                                           _%tl204206204306%_
                                                           _%e204207204309%_
                                                           _%hd204208204312%_
                                                           _%tl204209204314%_
                                                           _%e204210204317%_
                                                           _%hd204211204320%_
                                                           _%tl204212204322%_)
                                                          (_%__kont206325206326%_))
                                                      (_%__kont206325206326%_))
                                                  (_%__kont206325206326%_))))
                                          (_%__kont206325206326%_))
                                      (_%__kont206325206326%_))
                                  (_%__kont206325206326%_))))
                          (_%__kont206325206326%_))))
                  (_%__kont206325206326%_))
              (_%__kont206325206326%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont206325206326%_))
                                          (_%__kont206325206326%_))
                                      (_%__kont206325206326%_))))
                              (_%__kont206325206326%_))))
                      (_%__kont206325206326%_))
                  (_%__kont206325206326%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont206325206326%_))
                                              (_%__kont206325206326%_))
                                          (_%__kont206325206326%_))))
                                  (_%__kont206325206326%_))))
                          (_%__kont206325206326%_))
                      (_%__kont206325206326%_))
                  (_%__kont206325206326%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont206325206326%_))))
                                          (_%__kont206325206326%_)))))
                              (_%__kont206325206326%_)))))))
                 (_%dispatch-case-e203375%_
                  (lambda (_%hd203522%_ _%body203523%_)
                    (let* ((_%form203525%_
                            (cons _%hd203522%_ (cons _%body203523%_ '())))
                           (_%__stx206453206454%_ _%form203525%_)
                           (_%g203529203653%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx206453206454%_)))))
                      (let ((_%__kont206455206456%_
                             (lambda (_%g203531204018%_
                                      _%g203532204019%_
                                      _%g203533204020%_)
                               (let ((__tmp207619
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g203532204019%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self203371%_
                                  __tmp207619))))
                            (_%__kont206461206462%_
                             (lambda (_%g203576203870%_
                                      _%g203577203871%_
                                      _%g203578203872%_
                                      _%g203579203873%_)
                               (let ((__tmp207620
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g203576203870%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self203371%_
                                  __tmp207620))))
                            (_%__kont206465206466%_
                             (lambda (_%g203616203738%_
                                      _%g203617203739%_
                                      _%g203618203740%_)
                               (let ((__tmp207621
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g203616203738%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self203371%_
                                  __tmp207621)))))
                        (let* ((_%__match206562206563%_
                                (lambda (_%e203619203658%_
                                         _%hd203620203661%_
                                         _%tl203621203663%_
                                         _%e203622203666%_
                                         _%hd203623203669%_
                                         _%tl203624203671%_
                                         _%e203625203674%_
                                         _%hd203626203677%_
                                         _%tl203627203679%_
                                         _%e203628203682%_
                                         _%hd203629203685%_
                                         _%tl203630203687%_
                                         _%e203631203690%_
                                         _%hd203632203693%_
                                         _%tl203633203695%_
                                         _%e203634203698%_
                                         _%hd203635203701%_
                                         _%tl203636203703%_
                                         _%e203637203706%_
                                         _%hd203638203709%_
                                         _%tl203639203711%_
                                         _%e203640203714%_
                                         _%hd203641203717%_
                                         _%tl203642203719%_
                                         _%e203643203722%_
                                         _%hd203644203725%_
                                         _%tl203645203727%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203639203711%_))
                                      (let ((_%e203646203730%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203639203711%_))))
                                        (let ((_%tl203648203735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203646203730%_)))
                                              (_%hd203647203733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203646203730%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203648203735%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl203624203671%_))
                                                  (_%__kont206465206466%_
                                                   _%hd203644203725%_
                                                   _%hd203635203701%_
                                                   _%hd203620203661%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g203529203653%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g203529203653%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203529203653%_)))))
                               (_%__match206492206493%_
                                (lambda (_%e203580203776%_
                                         _%hd203581203779%_
                                         _%tl203582203781%_
                                         _%__splice206463206464%_
                                         _%target203583203784%_
                                         _%tl203585203786%_)
                                  (letrec ((_%loop203586203789%_
                                            (lambda (_%hd203584203792%_
                                                     _%arg203590203794%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd203584203792%_))
                                                  (let ((_%e203587203796%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd203584203792%_))))
                                                    (let ((_%lp-tl203589203801%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203587203796%_)))
                                                          (_%lp-hd203588203799%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203587203796%_))))
                                                      (_%loop203586203789%_
                                                       _%lp-tl203589203801%_
                                                       (cons _%lp-hd203588203799%_
                                                             _%arg203590203794%_))))
                                                  (let ((_%arg203591203804%_
                                                         (reverse _%arg203590203794%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl203582203781%_))
                                                        (let ((_%e203592203806%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl203582203781%_))))
                  (let ((_%tl203594203811%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203592203806%_)))
                        (_%hd203593203809%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203592203806%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd203593203809%_))
                        (let ((_%e203595203814%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd203593203809%_))))
                          (let ((_%tl203597203819%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203595203814%_)))
                                (_%hd203596203817%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203595203814%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd203596203817%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd203596203817%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl203597203819%_))
                                        (let ((_%e203598203822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl203597203819%_))))
                                          (let ((_%tl203600203827%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203598203822%_)))
                                                (_%hd203599203825%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203598203822%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd203599203825%_))
                                                (let ((_%e203601203830%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd203599203825%_))))
                                                  (let ((_%tl203603203835%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e203601203830%_)))
                                                        (_%hd203602203833%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e203601203830%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd203602203833%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd203602203833%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl203603203835%_))
                        (let ((_%e203604203838%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl203603203835%_))))
                          (let ((_%tl203606203843%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203604203838%_)))
                                (_%hd203605203841%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203604203838%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl203606203843%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl203600203827%_))
                                    (let ((_%e203607203846%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl203600203827%_))))
                                      (let ((_%tl203609203851%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e203607203846%_)))
                                            (_%hd203608203849%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e203607203846%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd203608203849%_))
                                            (let ((_%e203610203854%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd203608203849%_))))
                                              (let ((_%tl203612203859%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203610203854%_)))
                                                    (_%hd203611203857%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203610203854%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd203611203857%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd203611203857%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl203612203859%_))
                                                            (let ((_%e203613203862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl203612203859%_))))
                      (let ((_%tl203615203867%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e203613203862%_)))
                            (_%hd203614203865%_
                             (let ()
                               (declare (not safe))
                               (##car _%e203613203862%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl203615203867%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl203594203811%_))
                                (_%__kont206461206462%_
                                 _%hd203614203865%_
                                 _%hd203605203841%_
                                 _%tl203585203786%_
                                 _%arg203591203804%_)
                                (_%__match206562206563%_
                                 _%e203580203776%_
                                 _%hd203581203779%_
                                 _%tl203582203781%_
                                 _%e203592203806%_
                                 _%hd203593203809%_
                                 _%tl203594203811%_
                                 _%e203595203814%_
                                 _%hd203596203817%_
                                 _%tl203597203819%_
                                 _%e203598203822%_
                                 _%hd203599203825%_
                                 _%tl203600203827%_
                                 _%e203601203830%_
                                 _%hd203602203833%_
                                 _%tl203603203835%_
                                 _%e203604203838%_
                                 _%hd203605203841%_
                                 _%tl203606203843%_
                                 _%e203607203846%_
                                 _%hd203608203849%_
                                 _%tl203609203851%_
                                 _%e203610203854%_
                                 _%hd203611203857%_
                                 _%tl203612203859%_
                                 _%e203613203862%_
                                 _%hd203614203865%_
                                 _%tl203615203867%_))
                            (let ()
                              (declare (not safe))
                              (_%g203529203653%_)))))
                    (let () (declare (not safe)) (_%g203529203653%_)))
                (let () (declare (not safe)) (_%g203529203653%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g203529203653%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g203529203653%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g203529203653%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g203529203653%_)))))
                        (let () (declare (not safe)) (_%g203529203653%_)))
                    (let () (declare (not safe)) (_%g203529203653%_)))
                (let () (declare (not safe)) (_%g203529203653%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g203529203653%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g203529203653%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g203529203653%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g203529203653%_)))))
                        (let () (declare (not safe)) (_%g203529203653%_)))))
                (let () (declare (not safe)) (_%g203529203653%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop203586203789%_
                                     _%target203583203784%_
                                     '()))))
                               (_%__match206480206481%_
                                (lambda (_%e203534203910%_
                                         _%hd203535203913%_
                                         _%tl203536203915%_
                                         _%__splice206457206458%_
                                         _%target203537203918%_
                                         _%tl203539203920%_)
                                  (letrec ((_%loop203540203923%_
                                            (lambda (_%hd203538203926%_
                                                     _%arg203544203928%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd203538203926%_))
                                                  (let ((_%e203541203930%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd203538203926%_))))
                                                    (let ((_%lp-tl203543203935%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203541203930%_)))
                                                          (_%lp-hd203542203933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203541203930%_))))
                                                      (_%loop203540203923%_
                                                       _%lp-tl203543203935%_
                                                       (cons _%lp-hd203542203933%_
                                                             _%arg203544203928%_))))
                                                  (let ((_%arg203545203938%_
                                                         (reverse _%arg203544203928%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl203536203915%_))
                                                        (let ((_%e203546203940%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl203536203915%_))))
                  (let ((_%tl203548203945%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203546203940%_)))
                        (_%hd203547203943%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203546203940%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd203547203943%_))
                        (let ((_%e203549203948%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd203547203943%_))))
                          (let ((_%tl203551203953%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203549203948%_)))
                                (_%hd203550203951%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203549203948%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd203550203951%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd203550203951%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl203551203953%_))
                                        (let ((_%e203552203956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl203551203953%_))))
                                          (let ((_%tl203554203961%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203552203956%_)))
                                                (_%hd203553203959%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203552203956%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd203553203959%_))
                                                (let ((_%e203555203964%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd203553203959%_))))
                                                  (let ((_%tl203557203969%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e203555203964%_)))
                                                        (_%hd203556203967%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e203555203964%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd203556203967%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd203556203967%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl203557203969%_))
                        (let ((_%e203558203972%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl203557203969%_))))
                          (let ((_%tl203560203977%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203558203972%_)))
                                (_%hd203559203975%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203558203972%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl203560203977%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl203554203961%_))
                                    (let ((_%__splice206459206460%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl203554203961%_
                                              '0))))
                                      (let ((_%tl203563203982%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice206459206460%_
                                                '1)))
                                            (_%target203561203980%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice206459206460%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl203563203982%_))
                                            (letrec ((_%loop203564203985%_
                                                      (lambda (_%hd203562203988%_
                                                               _%xarg203568203990%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd203562203988%_))
                                                            (let ((_%e203565203992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd203562203988%_))))
                      (let ((_%lp-tl203567203997%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e203565203992%_)))
                            (_%lp-hd203566203995%_
                             (let ()
                               (declare (not safe))
                               (##car _%e203565203992%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd203566203995%_))
                            (let ((_%e203570204000%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd203566203995%_))))
                              (let ((_%tl203572204005%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e203570204000%_)))
                                    (_%hd203571204003%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e203570204000%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd203571204003%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd203571204003%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl203572204005%_))
                                            (let ((_%e203573204008%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl203572204005%_))))
                                              (let ((_%tl203575204013%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203573204008%_)))
                                                    (_%hd203574204011%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203573204008%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl203575204013%_))
                                                    (_%loop203564203985%_
                                                     _%lp-tl203567203997%_
                                                     (cons _%hd203574204011%_
                                                           _%xarg203568203990%_))
                                                    (_%__match206492206493%_
                                                     _%e203534203910%_
                                                     _%hd203535203913%_
                                                     _%tl203536203915%_
                                                     _%__splice206457206458%_
                                                     _%target203537203918%_
                                                     _%tl203539203920%_))))
                                            (_%__match206492206493%_
                                             _%e203534203910%_
                                             _%hd203535203913%_
                                             _%tl203536203915%_
                                             _%__splice206457206458%_
                                             _%target203537203918%_
                                             _%tl203539203920%_))
                                        (_%__match206492206493%_
                                         _%e203534203910%_
                                         _%hd203535203913%_
                                         _%tl203536203915%_
                                         _%__splice206457206458%_
                                         _%target203537203918%_
                                         _%tl203539203920%_))
                                    (_%__match206492206493%_
                                     _%e203534203910%_
                                     _%hd203535203913%_
                                     _%tl203536203915%_
                                     _%__splice206457206458%_
                                     _%target203537203918%_
                                     _%tl203539203920%_))))
                            (_%__match206492206493%_
                             _%e203534203910%_
                             _%hd203535203913%_
                             _%tl203536203915%_
                             _%__splice206457206458%_
                             _%target203537203918%_
                             _%tl203539203920%_))))
                    (let ((_%xarg203569204016%_
                           (reverse _%xarg203568203990%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203548203945%_))
                          (_%__kont206455206456%_
                           _%xarg203569204016%_
                           _%hd203559203975%_
                           _%arg203545203938%_)
                          (_%__match206492206493%_
                           _%e203534203910%_
                           _%hd203535203913%_
                           _%tl203536203915%_
                           _%__splice206457206458%_
                           _%target203537203918%_
                           _%tl203539203920%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop203564203985%_
                                               _%target203561203980%_
                                               '()))
                                            (_%__match206492206493%_
                                             _%e203534203910%_
                                             _%hd203535203913%_
                                             _%tl203536203915%_
                                             _%__splice206457206458%_
                                             _%target203537203918%_
                                             _%tl203539203920%_))))
                                    (_%__match206492206493%_
                                     _%e203534203910%_
                                     _%hd203535203913%_
                                     _%tl203536203915%_
                                     _%__splice206457206458%_
                                     _%target203537203918%_
                                     _%tl203539203920%_))
                                (_%__match206492206493%_
                                 _%e203534203910%_
                                 _%hd203535203913%_
                                 _%tl203536203915%_
                                 _%__splice206457206458%_
                                 _%target203537203918%_
                                 _%tl203539203920%_))))
                        (_%__match206492206493%_
                         _%e203534203910%_
                         _%hd203535203913%_
                         _%tl203536203915%_
                         _%__splice206457206458%_
                         _%target203537203918%_
                         _%tl203539203920%_))
                    (_%__match206492206493%_
                     _%e203534203910%_
                     _%hd203535203913%_
                     _%tl203536203915%_
                     _%__splice206457206458%_
                     _%target203537203918%_
                     _%tl203539203920%_))
                (_%__match206492206493%_
                 _%e203534203910%_
                 _%hd203535203913%_
                 _%tl203536203915%_
                 _%__splice206457206458%_
                 _%target203537203918%_
                 _%tl203539203920%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match206492206493%_
                                                 _%e203534203910%_
                                                 _%hd203535203913%_
                                                 _%tl203536203915%_
                                                 _%__splice206457206458%_
                                                 _%target203537203918%_
                                                 _%tl203539203920%_))))
                                        (_%__match206492206493%_
                                         _%e203534203910%_
                                         _%hd203535203913%_
                                         _%tl203536203915%_
                                         _%__splice206457206458%_
                                         _%target203537203918%_
                                         _%tl203539203920%_))
                                    (_%__match206492206493%_
                                     _%e203534203910%_
                                     _%hd203535203913%_
                                     _%tl203536203915%_
                                     _%__splice206457206458%_
                                     _%target203537203918%_
                                     _%tl203539203920%_))
                                (_%__match206492206493%_
                                 _%e203534203910%_
                                 _%hd203535203913%_
                                 _%tl203536203915%_
                                 _%__splice206457206458%_
                                 _%target203537203918%_
                                 _%tl203539203920%_))))
                        (_%__match206492206493%_
                         _%e203534203910%_
                         _%hd203535203913%_
                         _%tl203536203915%_
                         _%__splice206457206458%_
                         _%target203537203918%_
                         _%tl203539203920%_))))
                (_%__match206492206493%_
                 _%e203534203910%_
                 _%hd203535203913%_
                 _%tl203536203915%_
                 _%__splice206457206458%_
                 _%target203537203918%_
                 _%tl203539203920%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop203540203923%_
                                     _%target203537203918%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx206453206454%_))
                              (let ((_%e203534203910%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx206453206454%_))))
                                (let ((_%tl203536203915%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203534203910%_)))
                                      (_%hd203535203913%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203534203910%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd203535203913%_))
                                      (let ((_%__splice206457206458%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd203535203913%_
                                                '0))))
                                        (let ((_%tl203539203920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice206457206458%_
                                                  '1)))
                                              (_%target203537203918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice206457206458%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203539203920%_))
                                              (_%__match206480206481%_
                                               _%e203534203910%_
                                               _%hd203535203913%_
                                               _%tl203536203915%_
                                               _%__splice206457206458%_
                                               _%target203537203918%_
                                               _%tl203539203920%_)
                                              (_%__match206492206493%_
                                               _%e203534203910%_
                                               _%hd203535203913%_
                                               _%tl203536203915%_
                                               _%__splice206457206458%_
                                               _%target203537203918%_
                                               _%tl203539203920%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl203536203915%_))
                                          (let ((_%e203622203666%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl203536203915%_))))
                                            (let ((_%tl203624203671%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e203622203666%_)))
                                                  (_%hd203623203669%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e203622203666%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd203623203669%_))
                                                  (let ((_%e203625203674%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd203623203669%_))))
                                                    (let ((_%tl203627203679%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203625203674%_)))
                                                          (_%hd203626203677%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203625203674%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd203626203677%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd203626203677%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203627203679%_))
                          (let ((_%e203628203682%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl203627203679%_))))
                            (let ((_%tl203630203687%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203628203682%_)))
                                  (_%hd203629203685%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203628203682%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd203629203685%_))
                                  (let ((_%e203631203690%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd203629203685%_))))
                                    (let ((_%tl203633203695%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203631203690%_)))
                                          (_%hd203632203693%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203631203690%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd203632203693%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd203632203693%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl203633203695%_))
                                                  (let ((_%e203634203698%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl203633203695%_))))
                                                    (let ((_%tl203636203703%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203634203698%_)))
                                                          (_%hd203635203701%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203634203698%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl203636203703%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl203630203687%_))
                      (let ((_%e203637203706%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl203630203687%_))))
                        (let ((_%tl203639203711%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203637203706%_)))
                              (_%hd203638203709%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203637203706%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd203638203709%_))
                              (let ((_%e203640203714%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd203638203709%_))))
                                (let ((_%tl203642203719%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203640203714%_)))
                                      (_%hd203641203717%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203640203714%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd203641203717%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd203641203717%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203642203719%_))
                                              (let ((_%e203643203722%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl203642203719%_))))
                                                (let ((_%tl203645203727%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203643203722%_)))
                                                      (_%hd203644203725%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203643203722%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203645203727%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl203639203711%_))
                                                          (let ((_%e203646203730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl203639203711%_))))
                    (let ((_%tl203648203735%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203646203730%_)))
                          (_%hd203647203733%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203646203730%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203648203735%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203624203671%_))
                              (_%__kont206465206466%_
                               _%hd203644203725%_
                               _%hd203635203701%_
                               _%hd203535203913%_)
                              (let ()
                                (declare (not safe))
                                (_%g203529203653%_)))
                          (let () (declare (not safe)) (_%g203529203653%_)))))
                  (let () (declare (not safe)) (_%g203529203653%_)))
              (let () (declare (not safe)) (_%g203529203653%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g203529203653%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g203529203653%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203529203653%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g203529203653%_)))))
                      (let () (declare (not safe)) (_%g203529203653%_)))
                  (let () (declare (not safe)) (_%g203529203653%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g203529203653%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g203529203653%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g203529203653%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g203529203653%_)))))
                          (let () (declare (not safe)) (_%g203529203653%_)))
                      (let () (declare (not safe)) (_%g203529203653%_)))
                  (let () (declare (not safe)) (_%g203529203653%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g203529203653%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g203529203653%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g203529203653%_))))))))
                 (_%generate1203376%_
                  (lambda (_%args203507%_
                           _%arglen203508%_
                           _%hd203509%_
                           _%body203510%_)
                    (let* ((_%len203512%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd203509%_)))
                           (_%condition203517%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd203509%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen203508%_
                                                (cons _%len203512%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen203508%_ (cons _%len203512%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len203512%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen203508%_
                                                    (cons _%len203512%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen203508%_ (cons _%len203512%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch203519%_
                            (if (_%dispatch-case?203374%_
                                 _%hd203509%_
                                 _%body203510%_)
                                (_%dispatch-case-e203375%_
                                 _%hd203509%_
                                 _%body203510%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self203371%_
                                 _%hd203509%_
                                 _%body203510%_))))
                      (cons _%condition203517%_
                            (cons (cons 'apply
                                        (cons _%dispatch203519%_
                                              (cons _%args203507%_ '())))
                                  '()))))))
          (let* ((_%g203378203406%_
                  (lambda (_%g203379203403%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g203379203403%_))))
                 (_%g203377203504%_
                  (lambda (_%g203379203409%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g203379203409%_))
                        (let ((_%e203382203411%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g203379203409%_))))
                          (let ((_%hd203383203414%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203382203411%_)))
                                (_%tl203384203416%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203382203411%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl203384203416%_))
                                (let ((_g207622_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl203384203416%_
                                          '0))))
                                  (begin
                                    (let ((_g207623_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g207622_)
                                                 (##values-length _g207622_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g207623_ 2)))
                                          (error "Context expects 2 values"
                                                 _g207623_)))
                                    (let ((_%target203385203419%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g207622_ 0)))
                                          (_%tl203387203421%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g207622_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl203387203421%_))
                                          (letrec ((_%loop203388203424%_
                                                    (lambda (_%hd203386203427%_
                                                             _%body203392203429%_
                                                             _%hd203393203430%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd203386203427%_))
                                                          (let ((_%e203389203432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd203386203427%_))))
                    (let ((_%lp-hd203390203435%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203389203432%_)))
                          (_%lp-tl203391203437%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203389203432%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd203390203435%_))
                          (let ((_%e203396203440%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd203390203435%_))))
                            (let ((_%hd203397203443%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203396203440%_)))
                                  (_%tl203398203445%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203396203440%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203398203445%_))
                                  (let ((_%e203399203448%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl203398203445%_))))
                                    (let ((_%hd203400203451%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203399203448%_)))
                                          (_%tl203401203453%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203399203448%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl203401203453%_))
                                          (_%loop203388203424%_
                                           _%lp-tl203391203437%_
                                           (cons _%hd203400203451%_
                                                 _%body203392203429%_)
                                           (cons _%hd203397203443%_
                                                 _%hd203393203430%_))
                                          (_%g203378203406%_
                                           _%g203379203409%_))))
                                  (_%g203378203406%_ _%g203379203409%_))))
                          (_%g203378203406%_ _%g203379203409%_))))
                  (let ((_%body203394203456%_ (reverse _%body203392203429%_))
                        (_%hd203395203457%_ (reverse _%hd203393203430%_)))
                    (let ((_%args203479%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%arglen203480%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%name203481%_
                           (let ((_%$e203476%_
                                  (let ((__tmp207624
                                         (let ()
                                           (declare (not safe))
                                           (gxc#current-compile-runtime-names))))
                                    (declare (not safe))
                                    (hash-get __tmp207624 _%stx203372%_))))
                             (if _%$e203476%_
                                 _%$e203476%_
                                 ''case-lambda-dispatch))))
                      (cons 'lambda
                            (cons _%args203479%_
                                  (cons (cons 'let
                                              (cons (cons (cons _%arglen203480%_
                                                                (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '##length (cons _%args203479%_ '()))
                                  (cons 'let
                                        (cons '()
                                              (cons '(declare (not safe))
                                                    (cons (cons '##length
                                                                (cons _%args203479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'cond
                                                                (let ((__tmp207628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'else
                                           (cons (cons '##raise-wrong-number-of-arguments-exception
                                                       (cons _%name203481%_
                                                             (cons _%args203479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '()))
                              (__tmp207625
                               (map (lambda (_%g203482203485%_
                                             _%g203483203487%_)
                                      (_%generate1203376%_
                                       _%args203479%_
                                       _%arglen203480%_
                                       _%g203482203485%_
                                       _%g203483203487%_))
                                    (let ((__tmp207626
                                           (lambda (_%g203489203492%_
                                                    _%g203490203494%_)
                                             (cons _%g203489203492%_
                                                   _%g203490203494%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp207626
                                       '()
                                       _%hd203395203457%_))
                                    (let ((__tmp207627
                                           (lambda (_%g203496203499%_
                                                    _%g203497203501%_)
                                             (cons _%g203496203499%_
                                                   _%g203497203501%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp207627
                                       '()
                                       _%body203394203456%_)))))
                          (declare (not safe))
                          (foldr__0 cons __tmp207628 __tmp207625)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop203388203424%_
                                             _%target203385203419%_
                                             '()
                                             '()))
                                          (_%g203378203406%_
                                           _%g203379203409%_)))))
                                (_%g203378203406%_ _%g203379203409%_))))
                        (_%g203378203406%_ _%g203379203409%_)))))
            (_%g203377203504%_ _%stx203372%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self202608%_ _%stx202609%_ _%compiled-body?202610%_)
        (letrec ((_%generate-simple202612%_
                  (lambda (_%hd203356%_ _%body203357%_)
                    (_%coalesce-boolean202613%_
                     (_%simplify-let202614%_
                      (gxc#generate-runtime-simple-let
                       _%self202608%_
                       'let
                       _%hd203356%_
                       _%body203357%_
                       _%compiled-body?202610%_)))))
                 (_%coalesce-boolean202613%_
                  (lambda (_%code203217%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code203218203244%_ _%code203217%_)
                               (_%else203220203252%_
                                (lambda () _%code203217%_))
                               (_%K203222203289%_
                                (lambda (_%expr2203255%_
                                         _%expr1203256%_
                                         _%id203257%_)
                                  (let* ((_%expr2203258203266%_
                                          _%expr2203255%_)
                                         (_%else203260203274%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1203256%_
                                                        (cons _%expr2203255%_
                                                              '())))))
                                         (_%K203262203279%_
                                          (lambda (_%exprs203277%_)
                                            (cons 'or
                                                  (cons _%expr1203256%_
                                                        _%exprs203277%_)))))
                                    (if (pair? _%expr2203258203266%_)
                                        (let ((_%hd203263203282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2203258203266%_)))
                                              (_%tl203264203284%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2203258203266%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd203263203282%_ 'or))
                                              (let ((_%exprs203287%_
                                                     _%tl203264203284%_))
                                                (_%K203262203279%_
                                                 _%exprs203287%_))
                                              (_%else203260203274%_)))
                                        (_%else203260203274%_))))))
                          (if (pair? _%code203218203244%_)
                              (let ((_%hd203223203292%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code203218203244%_)))
                                    (_%tl203224203294%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code203218203244%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd203223203292%_ 'let))
                                    (if (pair? _%tl203224203294%_)
                                        (let ((_%hd203225203297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl203224203294%_)))
                                              (_%tl203226203299%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl203224203294%_))))
                                          (if (pair? _%hd203225203297%_)
                                              (let ((_%hd203237203302%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd203225203297%_)))
                                                    (_%tl203238203304%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd203225203297%_))))
                                                (if (pair? _%hd203237203302%_)
                                                    (let ((_%hd203239203307%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd203237203302%_)))
                                                          (_%tl203240203309%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd203237203302%_))))
                                                      (let ((_%id203312%_
                                                             _%hd203239203307%_))
                                                        (if (pair? _%tl203240203309%_)
                                                            (let ((_%hd203241203314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl203240203309%_)))
                          (_%tl203242203316%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl203240203309%_))))
                      (let ((_%expr1203319%_ _%hd203241203314%_))
                        (if (null? _%tl203242203316%_)
                            (if (null? _%tl203238203304%_)
                                (if (pair? _%tl203226203299%_)
                                    (let ((_%hd203227203321%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl203226203299%_)))
                                          (_%tl203228203323%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl203226203299%_))))
                                      (if (pair? _%hd203227203321%_)
                                          (let ((_%hd203229203326%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd203227203321%_)))
                                                (_%tl203230203328%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd203227203321%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd203229203326%_
                                                         'if))
                                                (if (pair? _%tl203230203328%_)
                                                    (let ((_%hd203231203331%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl203230203328%_)))
                                                          (_%tl203232203333%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl203230203328%_))))
                                                      (if (eq? _%hd203231203331%_
                                                               _%id203312%_)
                                                          (if (pair? _%tl203232203333%_)
                                                              (let ((_%hd203233203340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##car _%tl203232203333%_)))
                            (_%tl203234203342%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl203232203333%_))))
                        (if (eq? _%hd203233203340%_ _%id203312%_)
                            (if (pair? _%tl203234203342%_)
                                (let ((_%hd203235203349%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl203234203342%_)))
                                      (_%tl203236203351%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl203234203342%_))))
                                  (let ((_%expr2203354%_ _%hd203235203349%_))
                                    (if (null? _%tl203236203351%_)
                                        (if (null? _%tl203228203323%_)
                                            (_%K203222203289%_
                                             _%expr2203354%_
                                             _%expr1203319%_
                                             _%id203312%_)
                                            (_%else203220203252%_))
                                        (_%else203220203252%_))))
                                (_%else203220203252%_))
                            (_%else203220203252%_)))
                      (_%else203220203252%_))
                  (_%else203220203252%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else203220203252%_))
                                                (_%else203220203252%_)))
                                          (_%else203220203252%_)))
                                    (_%else203220203252%_))
                                (_%else203220203252%_))
                            (_%else203220203252%_))))
                    (_%else203220203252%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else203220203252%_)))
                                              (_%else203220203252%_)))
                                        (_%else203220203252%_))
                                    (_%else203220203252%_)))
                              (_%else203220203252%_)))
                        _%code203217%_)))
                 (_%simplify-let202614%_
                  (lambda (_%code202916%_)
                    (let* ((_%code202917202989%_ _%code202916%_)
                           (_%else202922202997%_ (lambda () _%code202916%_)))
                      (let ((_%K202981203197%_
                             (lambda (_%expr203195%_) _%expr203195%_))
                            (_%K202964203143%_
                             (lambda (_%body203139%_
                                      _%expr203140%_
                                      _%id203141%_)
                               (cons 'let
                                     (cons (cons (cons _%id203141%_
                                                       (cons _%expr203140%_
                                                             '()))
                                                 '())
                                           _%body203139%_))))
                            (_%K202941203067%_
                             (lambda (_%body203061%_
                                      _%expr2203062%_
                                      _%id2203063%_
                                      _%expr1203064%_
                                      _%id1203065%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1203065%_
                                                       (cons _%expr1203064%_
                                                             '()))
                                                 (cons (cons _%id2203063%_
                                                             (cons _%expr2203062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body203061%_))))
                            (_%K202924203006%_
                             (lambda (_%body203001%_
                                      _%bind203002%_
                                      _%expr1203003%_
                                      _%id1203004%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1203004%_
                                                       (cons _%expr1203003%_
                                                             '()))
                                                 _%bind203002%_)
                                           _%body203001%_)))))
                        (if (pair? _%code202917202989%_)
                            (let ((_%tl202983203202%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code202917202989%_)))
                                  (_%hd202982203200%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code202917202989%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd202982203200%_ 'let))
                                  (if (pair? _%tl202983203202%_)
                                      (let ((_%tl202985203207%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl202983203202%_)))
                                            (_%hd202984203205%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl202983203202%_))))
                                        (if (null? _%hd202984203205%_)
                                            (if (pair? _%tl202985203207%_)
                                                (let ((_%tl202987203212%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl202985203207%_)))
                                                      (_%hd202986203210%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl202985203207%_))))
                                                  (if (null? _%tl202987203212%_)
                                                      (let ((_%expr203215%_
                                                             _%hd202986203210%_))
                                                        (_%K202981203197%_
                                                         _%expr203215%_))
                                                      (_%else202922202997%_)))
                                                (_%else202922202997%_))
                                            (if (pair? _%hd202984203205%_)
                                                (let ((_%tl202976203158%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd202984203205%_)))
                                                      (_%hd202975203156%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd202984203205%_))))
                                                  (if (pair? _%hd202975203156%_)
                                                      (let ((_%tl202978203163%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd202975203156%_)))
                    (_%hd202977203161%_
                     (let () (declare (not safe)) (##car _%hd202975203156%_))))
                (if (pair? _%tl202978203163%_)
                    (let ((_%tl202980203170%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl202978203163%_)))
                          (_%hd202979203168%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl202978203163%_))))
                      (if (null? _%tl202980203170%_)
                          (if (null? _%tl202976203158%_)
                              (if (pair? _%tl202985203207%_)
                                  (let ((_%tl202970203177%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202985203207%_)))
                                        (_%hd202969203175%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202985203207%_))))
                                    (if (pair? _%hd202969203175%_)
                                        (let ((_%tl202972203182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd202969203175%_)))
                                              (_%hd202971203180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd202969203175%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd202971203180%_
                                                       'let))
                                              (if (pair? _%tl202972203182%_)
                                                  (let ((_%tl202974203187%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl202972203182%_)))
                                                        (_%hd202973203185%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl202972203182%_))))
                                                    (if (null? _%hd202973203185%_)
                                                        (if (null? _%tl202970203177%_)
                                                            (let ((_%id203166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd202977203161%_)
                          (_%expr203173%_ _%hd202979203168%_)
                          (_%body203190%_ _%tl202974203187%_))
                      (_%K202964203143%_
                       _%body203190%_
                       _%expr203173%_
                       _%id203166%_))
                    (_%else202922202997%_))
                (if (pair? _%hd202973203185%_)
                    (let ((_%tl202953203116%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd202973203185%_)))
                          (_%hd202952203114%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd202973203185%_))))
                      (if (pair? _%hd202952203114%_)
                          (let ((_%tl202955203121%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd202952203114%_)))
                                (_%hd202954203119%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd202952203114%_))))
                            (if (pair? _%tl202955203121%_)
                                (let ((_%tl202957203128%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl202955203121%_)))
                                      (_%hd202956203126%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl202955203121%_))))
                                  (if (null? _%tl202957203128%_)
                                      (if (null? _%tl202953203116%_)
                                          (if (null? _%tl202970203177%_)
                                              (let ((_%id1203090%_
                                                     _%hd202977203161%_)
                                                    (_%expr1203097%_
                                                     _%hd202979203168%_)
                                                    (_%id2203124%_
                                                     _%hd202954203119%_)
                                                    (_%expr2203131%_
                                                     _%hd202956203126%_)
                                                    (_%body203133%_
                                                     _%tl202974203187%_))
                                                (_%K202941203067%_
                                                 _%body203133%_
                                                 _%expr2203131%_
                                                 _%id2203124%_
                                                 _%expr1203097%_
                                                 _%id1203090%_))
                                              (_%else202922202997%_))
                                          (_%else202922202997%_))
                                      (_%else202922202997%_)))
                                (_%else202922202997%_)))
                          (_%else202922202997%_)))
                    (_%else202922202997%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else202922202997%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd202971203180%_
                                                           'let*))
                                                  (if (pair? _%tl202972203182%_)
                                                      (let ((_%tl202934203050%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl202972203182%_)))
                    (_%hd202933203048%_
                     (let () (declare (not safe)) (##car _%tl202972203182%_))))
                (if (null? _%tl202970203177%_)
                    (let ((_%id1203029%_ _%hd202977203161%_)
                          (_%expr1203036%_ _%hd202979203168%_)
                          (_%bind203053%_ _%hd202933203048%_)
                          (_%body203055%_ _%tl202934203050%_))
                      (_%K202924203006%_
                       _%body203055%_
                       _%bind203053%_
                       _%expr1203036%_
                       _%id1203029%_))
                    (_%else202922202997%_)))
              (_%else202922202997%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else202922202997%_))))
                                        (_%else202922202997%_)))
                                  (_%else202922202997%_))
                              (_%else202922202997%_))
                          (_%else202922202997%_)))
                    (_%else202922202997%_)))
              (_%else202922202997%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else202922202997%_))))
                                      (_%else202922202997%_))
                                  (_%else202922202997%_)))
                            (_%else202922202997%_))))))
                 (_%generate-values202615%_
                  (lambda (_%hd202729%_ _%body202730%_)
                    (let _%lp202732%_ ((_%rest202734%_ _%hd202729%_)
                                       (_%bind202735%_ '())
                                       (_%check202736%_ '())
                                       (_%post202737%_ '()))
                      (let* ((_%__stx206782206783%_ _%rest202734%_)
                             (_%g202740202751%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx206782206783%_)))))
                        (let ((_%__kont206784206785%_
                               (lambda (_%g202742202778%_ _%g202743202779%_)
                                 (let* ((_%__stx206738206739%_
                                         _%g202743202779%_)
                                        (_%g202794202819%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx206738206739%_)))))
                                   (let ((_%__kont206740206741%_
                                          (lambda (_%g202796202892%_
                                                   _%g202797202893%_)
                                            (let ((_%eid202907%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g202797202893%_)))
                                                  (_%expr202908%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self202608%_
                                                      _%g202796202892%_))))
                                              (_%lp202732%_
                                               _%g202742202778%_
                                               (cons (cons _%eid202907%_
                                                           (cons _%expr202908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind202735%_)
                                               _%check202736%_
                                               _%post202737%_))))
                                         (_%__kont206742206743%_
                                          (lambda (_%g202807202840%_
                                                   _%g202808202841%_)
                                            (let* ((_%vals202854%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values202856%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals202854%_
                                                     _%g202808202841%_
                                                     _%g202807202840%_))
                                                   (_%refs202858%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals202854%_
                                                     _%g202808202841%_))
                                                   (_%expr202860%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self202608%_
                                                       _%g202807202840%_))))
                                              (_%lp202732%_
                                               _%g202742202778%_
                                               (cons (cons _%vals202854%_
                                                           (cons _%expr202860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind202735%_)
                                               (cons _%check-values202856%_
                                                     _%check202736%_)
                                               (cons _%refs202858%_
                                                     _%post202737%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx206738206739%_))
                                         (let ((_%e202798202868%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx206738206739%_))))
                                           (let ((_%tl202800202873%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e202798202868%_)))
                                                 (_%hd202799202871%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e202798202868%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd202799202871%_))
                                                 (let ((_%e202801202876%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd202799202871%_))))
                                                   (let ((_%tl202803202881%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e202801202876%_)))
                                                         (_%hd202802202879%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e202801202876%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl202803202881%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl202800202873%_))
                     (let ((_%e202804202884%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl202800202873%_))))
                       (let ((_%tl202806202889%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e202804202884%_)))
                             (_%hd202805202887%_
                              (let ()
                                (declare (not safe))
                                (##car _%e202804202884%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl202806202889%_))
                             (_%__kont206740206741%_
                              _%hd202805202887%_
                              _%hd202802202879%_)
                             (let ()
                               (declare (not safe))
                               (_%g202794202819%_)))))
                     (let () (declare (not safe)) (_%g202794202819%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl202800202873%_))
                     (let ((_%e202812202832%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl202800202873%_))))
                       (let ((_%tl202814202837%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e202812202832%_)))
                             (_%hd202813202835%_
                              (let ()
                                (declare (not safe))
                                (##car _%e202812202832%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl202814202837%_))
                             (_%__kont206742206743%_
                              _%hd202813202835%_
                              _%hd202799202871%_)
                             (let ()
                               (declare (not safe))
                               (_%g202794202819%_)))))
                     (let () (declare (not safe)) (_%g202794202819%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl202800202873%_))
                                                     (let ((_%e202812202832%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl202800202873%_))))
                                                       (let ((_%tl202814202837%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e202812202832%_)))
                     (_%hd202813202835%_
                      (let () (declare (not safe)) (##car _%e202812202832%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl202814202837%_))
                     (_%__kont206742206743%_
                      _%hd202813202835%_
                      _%hd202799202871%_)
                     (let () (declare (not safe)) (_%g202794202819%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g202794202819%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g202794202819%_)))))))
                              (_%__kont206786206787%_
                               (lambda ()
                                 (let* ((_%body202758%_
                                         (if _%compiled-body?202610%_
                                             _%body202730%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self202608%_
                                                _%body202730%_))))
                                        (_%body202760%_
                                         (_%generate-values-post202616%_
                                          _%post202737%_
                                          _%body202758%_))
                                        (_%body202762%_
                                         (_%generate-values-check202617%_
                                          _%check202736%_
                                          _%body202760%_)))
                                   (cons 'let
                                         (cons (reverse _%bind202735%_)
                                               (cons _%body202762%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx206782206783%_))
                              (let ((_%e202744202770%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx206782206783%_))))
                                (let ((_%tl202746202775%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202744202770%_)))
                                      (_%hd202745202773%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202744202770%_))))
                                  (_%__kont206784206785%_
                                   _%tl202746202775%_
                                   _%hd202745202773%_)))
                              (_%__kont206786206787%_)))))))
                 (_%generate-values-post202616%_
                  (lambda (_%post202688%_ _%body202689%_)
                    (let _%lp202691%_ ((_%rest202693%_ _%post202688%_)
                                       (_%body202694%_ _%body202689%_))
                      (let* ((_%rest202695202703%_ _%rest202693%_)
                             (_%else202697202711%_ (lambda () _%body202694%_))
                             (_%K202699202717%_
                              (lambda (_%rest202714%_ _%bind202715%_)
                                (_%lp202691%_
                                 _%rest202714%_
                                 (cons 'let
                                       (cons _%bind202715%_
                                             (cons _%body202694%_ '())))))))
                        (if (pair? _%rest202695202703%_)
                            (let ((_%hd202700202720%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest202695202703%_)))
                                  (_%tl202701202722%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest202695202703%_))))
                              (let* ((_%bind202725%_ _%hd202700202720%_)
                                     (_%rest202727%_ _%tl202701202722%_))
                                (_%K202699202717%_
                                 _%rest202727%_
                                 _%bind202725%_)))
                            (_%else202697202711%_))))))
                 (_%generate-values-check202617%_
                  (lambda (_%check202685%_ _%body202686%_)
                    (cons 'begin
                          (let ((__tmp207630 (cons _%body202686%_ '()))
                                (__tmp207629 (reverse _%check202685%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp207630 __tmp207629))))))
          (let* ((_%g202619202636%_
                  (lambda (_%g202620202633%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g202620202633%_))))
                 (_%g202618202682%_
                  (lambda (_%g202620202639%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g202620202639%_))
                        (let ((_%e202623202641%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g202620202639%_))))
                          (let ((_%hd202624202644%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202623202641%_)))
                                (_%tl202625202646%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202623202641%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202625202646%_))
                                (let ((_%e202626202649%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl202625202646%_))))
                                  (let ((_%hd202627202652%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202626202649%_)))
                                        (_%tl202628202654%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202626202649%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202628202654%_))
                                        (let ((_%e202629202657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202628202654%_))))
                                          (let ((_%hd202630202660%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202629202657%_)))
                                                (_%tl202631202662%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202629202657%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl202631202662%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%hd202627202652%_)
                                                    (_%generate-simple202612%_
                                                     _%hd202627202652%_
                                                     _%hd202630202660%_)
                                                    (_%generate-values202615%_
                                                     _%hd202627202652%_
                                                     _%hd202630202660%_))
                                                (_%g202619202636%_
                                                 _%g202620202639%_))))
                                        (_%g202619202636%_
                                         _%g202620202639%_))))
                                (_%g202619202636%_ _%g202620202639%_))))
                        (_%g202619202636%_ _%g202620202639%_)))))
            (_%g202618202682%_ _%stx202609%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self203362%_ _%stx203363%_)
        (let ((_%compiled-body?203365%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self203362%_
           _%stx203363%_
           _%compiled-body?203365%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g207631_
        (let ((_g207632_ (let () (declare (not safe)) (##length _g207631_))))
          (cond ((let () (declare (not safe)) (##fx= _g207632_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g207631_))
                ((let () (declare (not safe)) (##fx= _g207632_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g207631_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g207631_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals202502%_ _%hd202503%_)
        (let _%lp202505%_ ((_%rest202507%_ _%hd202503%_)
                           (_%k202508%_ '0)
                           (_%r202509%_ '()))
          (let* ((_%__stx206796206797%_ _%rest202507%_)
                 (_%g202514202531%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx206796206797%_)))))
            (let ((_%__kont206798206799%_
                   (lambda (_%g202516202594%_)
                     (_%lp202505%_
                      _%g202516202594%_
                      (let () (declare (not safe)) (##fx+ _%k202508%_ '1))
                      _%r202509%_)))
                  (_%__kont206800206801%_
                   (lambda (_%g202521202567%_ _%g202522202568%_)
                     (_%lp202505%_
                      _%g202521202567%_
                      (let () (declare (not safe)) (##fx+ _%k202508%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g202522202568%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals202502%_
                                         _%k202508%_
                                         _%g202521202567%_)
                                        '()))
                            _%r202509%_))))
                  (_%__kont206802206803%_
                   (lambda (_%g202526202543%_)
                     (let ((__tmp207633
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g202526202543%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals202502%_
                                               _%k202508%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp207633 _%r202509%_))))
                  (_%__kont206804206805%_ (lambda () (reverse _%r202509%_))))
              (let ((_%g202512202554%_
                     (lambda ()
                       (let ((_%g202526202543%_ _%__stx206796206797%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g202526202543%_))
                             (_%__kont206802206803%_ _%g202526202543%_)
                             (_%__kont206804206805%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx206796206797%_))
                    (let ((_%e202517202583%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx206796206797%_))))
                      (let ((_%tl202519202588%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202517202583%_)))
                            (_%hd202518202586%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202517202583%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd202518202586%_))
                            (let ((_%e202520202591%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd202518202586%_))))
                              (if (equal? _%e202520202591%_ '#f)
                                  (_%__kont206798206799%_ _%tl202519202588%_)
                                  (_%__kont206800206801%_
                                   _%tl202519202588%_
                                   _%hd202518202586%_)))
                            (_%__kont206800206801%_
                             _%tl202519202588%_
                             _%hd202518202586%_))))
                    (let () (declare (not safe)) (_%g202512202554%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self202181%_ _%stx202182%_ _%compiled-body?202183%_)
        (letrec ((_%generate-simple202185%_
                  (lambda (_%hd202487%_ _%body202488%_)
                    (gxc#generate-runtime-simple-let
                     _%self202181%_
                     'letrec
                     _%hd202487%_
                     _%body202488%_
                     _%compiled-body?202183%_)))
                 (_%generate-values202186%_
                  (lambda (_%hd202266%_ _%body202267%_)
                    (let _%lp202269%_ ((_%rest202271%_ _%hd202266%_)
                                       (_%bind202272%_ '())
                                       (_%check202273%_ '())
                                       (_%post202274%_ '()))
                      (let* ((_%__stx206870206871%_ _%rest202271%_)
                             (_%g202277202288%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx206870206871%_)))))
                        (let ((_%__kont206872206873%_
                               (lambda (_%g202279202315%_ _%g202280202316%_)
                                 (let* ((_%__stx206826206827%_
                                         _%g202280202316%_)
                                        (_%g202331202356%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx206826206827%_)))))
                                   (let ((_%__kont206828206829%_
                                          (lambda (_%g202333202463%_
                                                   _%g202334202464%_)
                                            (let ((_%eid202478%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g202334202464%_)))
                                                  (_%expr202479%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self202181%_
                                                      _%g202333202463%_))))
                                              (_%lp202269%_
                                               _%g202279202315%_
                                               (cons (cons _%eid202478%_
                                                           (cons _%expr202479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind202272%_)
                                               _%check202273%_
                                               _%post202274%_))))
                                         (_%__kont206830206831%_
                                          (lambda (_%g202344202377%_
                                                   _%g202345202378%_)
                                            (let* ((_%vals202391%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values202393%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals202391%_
                                                     _%g202345202378%_
                                                     _%g202344202377%_))
                                                   (_%refs202395%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals202391%_
                                                     _%g202345202378%_))
                                                   (_%expr202397%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self202181%_
                                                       _%g202344202377%_))))
                                              (_%lp202269%_
                                               _%g202279202315%_
                                               (let ((__tmp207635
                                                      (cons (cons _%vals202391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr202397%_ '()))
                    _%bind202272%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp207634
                                                      (map (lambda (_%e202399202401%_)
                                                             (let* ((_%e202399202403202412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e202399202401%_)
                            (_%E202405202416%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e202399202403202412%_
                                        '([eid _])))
                               '#!void))
                            (_%K202406202421%_
                             (lambda (_%eid202419%_)
                               (cons _%eid202419%_ (cons '#!void '())))))
                       (if (pair? _%e202399202403202412%_)
                           (let ((_%hd202407202424%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e202399202403202412%_)))
                                 (_%tl202408202426%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e202399202403202412%_))))
                             (let ((_%eid202429%_ _%hd202407202424%_))
                               (if (pair? _%tl202408202426%_)
                                   (let ((_%tl202410202431%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl202408202426%_))))
                                     (if (null? _%tl202410202431%_)
                                         (_%K202406202421%_ _%eid202429%_)
                                         (_%E202405202416%_)))
                                   (_%E202405202416%_))))
                           (_%E202405202416%_))))
                   _%refs202395%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp207635
                                                  __tmp207634))
                                               (cons _%check-values202393%_
                                                     _%check202273%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs202395%_
                                                  _%post202274%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx206826206827%_))
                                         (let ((_%e202335202439%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx206826206827%_))))
                                           (let ((_%tl202337202444%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e202335202439%_)))
                                                 (_%hd202336202442%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e202335202439%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd202336202442%_))
                                                 (let ((_%e202338202447%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd202336202442%_))))
                                                   (let ((_%tl202340202452%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e202338202447%_)))
                                                         (_%hd202339202450%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e202338202447%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl202340202452%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl202337202444%_))
                     (let ((_%e202341202455%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl202337202444%_))))
                       (let ((_%tl202343202460%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e202341202455%_)))
                             (_%hd202342202458%_
                              (let ()
                                (declare (not safe))
                                (##car _%e202341202455%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl202343202460%_))
                             (_%__kont206828206829%_
                              _%hd202342202458%_
                              _%hd202339202450%_)
                             (let ()
                               (declare (not safe))
                               (_%g202331202356%_)))))
                     (let () (declare (not safe)) (_%g202331202356%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl202337202444%_))
                     (let ((_%e202349202369%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl202337202444%_))))
                       (let ((_%tl202351202374%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e202349202369%_)))
                             (_%hd202350202372%_
                              (let ()
                                (declare (not safe))
                                (##car _%e202349202369%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl202351202374%_))
                             (_%__kont206830206831%_
                              _%hd202350202372%_
                              _%hd202336202442%_)
                             (let ()
                               (declare (not safe))
                               (_%g202331202356%_)))))
                     (let () (declare (not safe)) (_%g202331202356%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl202337202444%_))
                                                     (let ((_%e202349202369%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl202337202444%_))))
                                                       (let ((_%tl202351202374%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e202349202369%_)))
                     (_%hd202350202372%_
                      (let () (declare (not safe)) (##car _%e202349202369%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl202351202374%_))
                     (_%__kont206830206831%_
                      _%hd202350202372%_
                      _%hd202336202442%_)
                     (let () (declare (not safe)) (_%g202331202356%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g202331202356%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g202331202356%_)))))))
                              (_%__kont206874206875%_
                               (lambda ()
                                 (let* ((_%body202295%_
                                         (if _%compiled-body?202183%_
                                             _%body202267%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self202181%_
                                                _%body202267%_))))
                                        (_%body202297%_
                                         (_%generate-values-post202188%_
                                          _%post202274%_
                                          _%body202295%_))
                                        (_%body202299%_
                                         (_%generate-values-check202187%_
                                          _%check202273%_
                                          _%body202297%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind202272%_)
                                               (cons _%body202299%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx206870206871%_))
                              (let ((_%e202281202307%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx206870206871%_))))
                                (let ((_%tl202283202312%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202281202307%_)))
                                      (_%hd202282202310%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202281202307%_))))
                                  (_%__kont206872206873%_
                                   _%tl202283202312%_
                                   _%hd202282202310%_)))
                              (_%__kont206874206875%_)))))))
                 (_%generate-values-check202187%_
                  (lambda (_%check202263%_ _%body202264%_)
                    (cons 'begin
                          (let ((__tmp207637 (cons _%body202264%_ '()))
                                (__tmp207636 (reverse _%check202263%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp207637 __tmp207636)))))
                 (_%generate-values-post202188%_
                  (lambda (_%post202256%_ _%body202257%_)
                    (cons 'begin
                          (let ((__tmp207641 (cons _%body202257%_ '()))
                                (__tmp207638
                                 (let ((__tmp207640
                                        (lambda (_%g202258202260%_)
                                          (cons 'set! _%g202258202260%_)))
                                       (__tmp207639 (reverse _%post202256%_)))
                                   (declare (not safe))
                                   (##map __tmp207640 __tmp207639))))
                            (declare (not safe))
                            (foldr__0 cons __tmp207641 __tmp207638))))))
          (let* ((_%g202190202207%_
                  (lambda (_%g202191202204%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g202191202204%_))))
                 (_%g202189202253%_
                  (lambda (_%g202191202210%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g202191202210%_))
                        (let ((_%e202194202212%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g202191202210%_))))
                          (let ((_%hd202195202215%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202194202212%_)))
                                (_%tl202196202217%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202194202212%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202196202217%_))
                                (let ((_%e202197202220%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl202196202217%_))))
                                  (let ((_%hd202198202223%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202197202220%_)))
                                        (_%tl202199202225%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202197202220%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202199202225%_))
                                        (let ((_%e202200202228%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202199202225%_))))
                                          (let ((_%hd202201202231%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202200202228%_)))
                                                (_%tl202202202233%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202200202228%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl202202202233%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%hd202198202223%_)
                                                    (_%generate-simple202185%_
                                                     _%hd202198202223%_
                                                     _%hd202201202231%_)
                                                    (_%generate-values202186%_
                                                     _%hd202198202223%_
                                                     _%hd202201202231%_))
                                                (_%g202190202207%_
                                                 _%g202191202210%_))))
                                        (_%g202190202207%_
                                         _%g202191202210%_))))
                                (_%g202190202207%_ _%g202191202210%_))))
                        (_%g202190202207%_ _%g202191202210%_)))))
            (_%g202189202253%_ _%stx202182%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self202493%_ _%stx202494%_)
        (let ((_%compiled-body?202496%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self202493%_
           _%stx202494%_
           _%compiled-body?202496%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g207642_
        (let ((_g207643_ (let () (declare (not safe)) (##length _g207642_))))
          (cond ((let () (declare (not safe)) (##fx= _g207643_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g207642_))
                ((let () (declare (not safe)) (##fx= _g207643_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g207642_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g207642_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self201762%_ _%stx201763%_)
        (letrec ((_%generate-values201765%_
                  (lambda (_%hd202008%_ _%body202009%_)
                    (let _%lp202011%_ ((_%rest202013%_ _%hd202008%_)
                                       (_%bind202014%_ '()))
                      (let* ((_%rest202015202023%_ _%rest202013%_)
                             (_%else202017202034%_
                              (lambda ()
                                (let ((_%bind202031%_ (reverse _%bind202014%_))
                                      (_%body202032%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self201762%_
                                          _%body202009%_))))
                                  (cons 'letrec*
                                        (cons _%bind202031%_
                                              (cons _%body202032%_ '()))))))
                             (_%K202019202168%_
                              (lambda (_%rest202037%_ _%hd-bind202038%_)
                                (let* ((_%__stx206884206885%_
                                        _%hd-bind202038%_)
                                       (_%g202041202066%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx206884206885%_)))))
                                  (let ((_%__kont206886206887%_
                                         (lambda (_%g202043202147%_
                                                  _%g202044202148%_)
                                           (let ((_%eid202162%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g202044202148%_)))
                                                 (_%expr202163%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self201762%_
                                                     _%g202043202147%_))))
                                             (_%lp202011%_
                                              _%rest202037%_
                                              (cons (cons _%eid202162%_
                                                          (cons _%expr202163%_
                                                                '()))
                                                    _%bind202014%_)))))
                                        (_%__kont206888206889%_
                                         (lambda (_%g202054202087%_
                                                  _%g202055202088%_)
                                           (let* ((_%vals202107%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp202109%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values202111%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp202109%_
                                                    _%g202055202088%_
                                                    _%g202054202087%_))
                                                  (_%refs202113%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals202107%_
                                                    _%g202055202088%_))
                                                  (_%expr202115%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self201762%_
                                                      _%g202054202087%_))))
                                             (_%lp202011%_
                                              _%rest202037%_
                                              (let ((__tmp207644
                                                     (cons (cons _%vals202107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp202109%_
                                                       (cons _%expr202115%_
                                                             '()))
                                                 '())
                                           (cons _%check-values202111%_
                                                 (cons _%tmp202109%_ '()))))
                               '()))
                   _%bind202014%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp207644
                                                 _%refs202113%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx206884206885%_))
                                        (let ((_%e202045202123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx206884206885%_))))
                                          (let ((_%tl202047202128%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202045202123%_)))
                                                (_%hd202046202126%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202045202123%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd202046202126%_))
                                                (let ((_%e202048202131%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202046202126%_))))
                                                  (let ((_%tl202050202136%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202048202131%_)))
                                                        (_%hd202049202134%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202048202131%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl202050202136%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl202047202128%_))
                                                            (let ((_%e202051202139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl202047202128%_))))
                      (let ((_%tl202053202144%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202051202139%_)))
                            (_%hd202052202142%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202051202139%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl202053202144%_))
                            (_%__kont206886206887%_
                             _%hd202052202142%_
                             _%hd202049202134%_)
                            (let ()
                              (declare (not safe))
                              (_%g202041202066%_)))))
                    (let () (declare (not safe)) (_%g202041202066%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl202047202128%_))
                    (let ((_%e202059202079%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl202047202128%_))))
                      (let ((_%tl202061202084%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202059202079%_)))
                            (_%hd202060202082%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202059202079%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl202061202084%_))
                            (_%__kont206888206889%_
                             _%hd202060202082%_
                             _%hd202046202126%_)
                            (let ()
                              (declare (not safe))
                              (_%g202041202066%_)))))
                    (let () (declare (not safe)) (_%g202041202066%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl202047202128%_))
                                                    (let ((_%e202059202079%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl202047202128%_))))
                                                      (let ((_%tl202061202084%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e202059202079%_)))
                    (_%hd202060202082%_
                     (let () (declare (not safe)) (##car _%e202059202079%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl202061202084%_))
                    (_%__kont206888206889%_
                     _%hd202060202082%_
                     _%hd202046202126%_)
                    (let () (declare (not safe)) (_%g202041202066%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g202041202066%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g202041202066%_))))))))
                        (if (pair? _%rest202015202023%_)
                            (let ((_%hd202020202171%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest202015202023%_)))
                                  (_%tl202021202173%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest202015202023%_))))
                              (let* ((_%hd-bind202176%_ _%hd202020202171%_)
                                     (_%rest202178%_ _%tl202021202173%_))
                                (_%K202019202168%_
                                 _%rest202178%_
                                 _%hd-bind202176%_)))
                            (_%else202017202034%_))))))
                 (_%generate-letrec?201766%_
                  (lambda (_%hd201898%_)
                    (let _%lp201900%_ ((_%rest201902%_ _%hd201898%_))
                      (let* ((_%rest201903201911%_ _%rest201902%_)
                             (_%else201905201919%_ (lambda () '#t))
                             (_%K201907201996%_
                              (lambda (_%rest201922%_ _%hd-bind201923%_)
                                (let* ((_%g201925201942%_
                                        (lambda (_%g201926201939%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g201926201939%_))))
                                       (_%g201924201993%_
                                        (lambda (_%g201926201945%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g201926201945%_))
                                              (let ((_%e201929201947%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g201926201945%_))))
                                                (let ((_%hd201930201950%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201929201947%_)))
                                                      (_%tl201931201952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201929201947%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd201930201950%_))
                                                      (let ((_%e201932201955%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd201930201950%_))))
                (let ((_%hd201933201958%_
                       (let () (declare (not safe)) (##car _%e201932201955%_)))
                      (_%tl201934201960%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e201932201955%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl201934201960%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201931201952%_))
                          (let ((_%e201935201963%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201931201952%_))))
                            (let ((_%hd201936201966%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201935201963%_)))
                                  (_%tl201937201968%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201935201963%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201937201968%_))
                                  (if (_%is-lambda-expr?201767%_
                                       _%hd201936201966%_)
                                      (_%lp201900%_ _%rest201922%_)
                                      '#f)
                                  (_%g201925201942%_ _%g201926201945%_))))
                          (_%g201925201942%_ _%g201926201945%_))
                      (_%g201925201942%_ _%g201926201945%_))))
              (_%g201925201942%_ _%g201926201945%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g201925201942%_
                                               _%g201926201945%_)))))
                                  (_%g201924201993%_ _%hd-bind201923%_)))))
                        (if (pair? _%rest201903201911%_)
                            (let ((_%hd201908201999%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest201903201911%_)))
                                  (_%tl201909202001%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest201903201911%_))))
                              (let* ((_%hd-bind202004%_ _%hd201908201999%_)
                                     (_%rest202006%_ _%tl201909202001%_))
                                (_%K201907201996%_
                                 _%rest202006%_
                                 _%hd-bind202004%_)))
                            (_%else201905201919%_))))))
                 (_%is-lambda-expr?201767%_
                  (lambda (_%expr201835%_)
                    (let* ((_%__stx206928206929%_ _%expr201835%_)
                           (_%g201838201852%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx206928206929%_)))))
                      (let ((_%__kont206930206931%_
                             (lambda (_%g201840201880%_ _%g201841201881%_)
                               '#t))
                            (_%__kont206932206933%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx206928206929%_))
                            (let ((_%e201842201864%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx206928206929%_))))
                              (let ((_%tl201844201869%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e201842201864%_)))
                                    (_%hd201843201867%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e201842201864%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd201843201867%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd201843201867%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl201844201869%_))
                                            (let ((_%e201845201872%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl201844201869%_))))
                                              (let ((_%tl201847201877%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201845201872%_)))
                                                    (_%hd201846201875%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201845201872%_))))
                                                (_%__kont206930206931%_
                                                 _%tl201847201877%_
                                                 _%hd201846201875%_)))
                                            (_%__kont206932206933%_))
                                        (_%__kont206932206933%_))
                                    (_%__kont206932206933%_))))
                            (_%__kont206932206933%_)))))))
          (let* ((_%g201769201786%_
                  (lambda (_%g201770201783%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g201770201783%_))))
                 (_%g201768201832%_
                  (lambda (_%g201770201789%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g201770201789%_))
                        (let ((_%e201773201791%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g201770201789%_))))
                          (let ((_%hd201774201794%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201773201791%_)))
                                (_%tl201775201796%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201773201791%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201775201796%_))
                                (let ((_%e201776201799%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl201775201796%_))))
                                  (let ((_%hd201777201802%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201776201799%_)))
                                        (_%tl201778201804%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201776201799%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201778201804%_))
                                        (let ((_%e201779201807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl201778201804%_))))
                                          (let ((_%hd201780201810%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201779201807%_)))
                                                (_%tl201781201812%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201779201807%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201781201812%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%hd201777201802%_)
                                                    (if (_%generate-letrec?201766%_
                                                         _%hd201777201802%_)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self201762%_
                                                         'letrec
                                                         _%hd201777201802%_
                                                         _%hd201780201810%_
                                                         '#f)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self201762%_
                                                         'letrec*
                                                         _%hd201777201802%_
                                                         _%hd201780201810%_
                                                         '#f))
                                                    (_%generate-values201765%_
                                                     _%hd201777201802%_
                                                     _%hd201780201810%_))
                                                (_%g201769201786%_
                                                 _%g201770201789%_))))
                                        (_%g201769201786%_
                                         _%g201770201789%_))))
                                (_%g201769201786%_ _%g201770201789%_))))
                        (_%g201769201786%_ _%g201770201789%_)))))
            (_%g201768201832%_ _%stx201763%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd201699%_)
        (let _%lp201701%_ ((_%rest201703%_ _%hd201699%_))
          (let* ((_%rest201704201720%_ _%rest201703%_)
                 (_%else201707201728%_ (lambda () '#f)))
            (let ((_%K201710201741%_
                   (lambda (_%rest201739%_) (_%lp201701%_ _%rest201739%_)))
                  (_%K201709201733%_ (lambda () '#t)))
              (let ((_%try-match201706201736%_
                     (lambda ()
                       (if (null? _%rest201704201720%_)
                           (_%K201709201733%_)
                           (_%else201707201728%_)))))
                (if (pair? _%rest201704201720%_)
                    (let ((_%tl201712201746%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest201704201720%_)))
                          (_%hd201711201744%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest201704201720%_))))
                      (if (pair? _%hd201711201744%_)
                          (let ((_%tl201714201751%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd201711201744%_)))
                                (_%hd201713201749%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd201711201744%_))))
                            (if (pair? _%hd201713201749%_)
                                (let ((_%tl201718201754%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd201713201749%_))))
                                  (if (null? _%tl201718201754%_)
                                      (if (pair? _%tl201714201751%_)
                                          (let ((_%tl201716201757%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl201714201751%_))))
                                            (if (null? _%tl201716201757%_)
                                                (let ((_%rest201760%_
                                                       _%tl201712201746%_))
                                                  (_%lp201701%_
                                                   _%rest201760%_))
                                                (_%else201707201728%_)))
                                          (_%else201707201728%_))
                                      (_%else201707201728%_)))
                                (_%else201707201728%_)))
                          (_%else201707201728%_)))
                    (_%try-match201706201736%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self201611%_
               _%form201612%_
               _%hd201613%_
               _%body201614%_
               _%compiled-body?201615%_)
        (letrec ((_%generate1201617%_
                  (lambda (_%bind201656%_)
                    (let* ((_%bind201657201668%_ _%bind201656%_)
                           (_%E201659201671%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind201657201668%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K201660201677%_
                            (lambda (_%expr201674%_ _%id201675%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id201675%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self201611%_
                                             _%expr201674%_))
                                          '())))))
                      (if (pair? _%bind201657201668%_)
                          (let ((_%hd201661201680%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind201657201668%_)))
                                (_%tl201662201682%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind201657201668%_))))
                            (if (pair? _%hd201661201680%_)
                                (let ((_%hd201665201685%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd201661201680%_)))
                                      (_%tl201666201687%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd201661201680%_))))
                                  (let ((_%id201690%_ _%hd201665201685%_))
                                    (if (null? _%tl201666201687%_)
                                        (if (pair? _%tl201662201682%_)
                                            (let ((_%hd201663201692%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl201662201682%_)))
                                                  (_%tl201664201694%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl201662201682%_))))
                                              (let ((_%expr201697%_
                                                     _%hd201663201692%_))
                                                (if (null? _%tl201664201694%_)
                                                    (_%K201660201677%_
                                                     _%expr201697%_
                                                     _%id201690%_)
                                                    (_%E201659201671%_))))
                                            (_%E201659201671%_))
                                        (_%E201659201671%_))))
                                (_%E201659201671%_)))
                          (_%E201659201671%_))))))
          (let* ((_%bind201619%_ (map _%generate1201617%_ _%hd201613%_))
                 (_%body201621%_
                  (if _%compiled-body?201615%_
                      _%body201614%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self201611%_ _%body201614%_))))
                 (_%body201653%_
                  (let* ((_%body201622201630%_ _%body201621%_)
                         (_%else201624201638%_
                          (lambda () (cons _%body201621%_ '())))
                         (_%K201626201643%_
                          (lambda (_%exprs201641%_) _%exprs201641%_)))
                    (if (pair? _%body201622201630%_)
                        (let ((_%hd201627201646%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body201622201630%_)))
                              (_%tl201628201648%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body201622201630%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd201627201646%_ 'begin))
                              (let ((_%exprs201651%_ _%tl201628201648%_))
                                (_%K201626201643%_ _%exprs201651%_))
                              (_%else201624201638%_)))
                        (_%else201624201638%_)))))
            (cons _%form201612%_ (cons _%bind201619%_ _%body201653%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self201511%_ _%stx201512%_)
        (letrec ((_%generate1201514%_
                  (lambda (_%datum201566%_)
                    (if (or (null? _%datum201566%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum201566%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum201566%_))
                            (eof-object? _%datum201566%_))
                        _%datum201566%_
                        (if (uninterned-symbol? _%datum201566%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum201566%_
                               '#t))
                            (if (pair? _%datum201566%_)
                                (cons (_%generate1201514%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum201566%_)))
                                      (_%generate1201514%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum201566%_))))
                                (if (box? _%datum201566%_)
                                    (box (_%generate1201514%_
                                          (unbox _%datum201566%_)))
                                    (if (vector? _%datum201566%_)
                                        (vector-map
                                         _%generate1201514%_
                                         _%datum201566%_)
                                        (if (or (s8vector? _%datum201566%_)
                                                (u8vector? _%datum201566%_)
                                                (s16vector? _%datum201566%_)
                                                (u16vector? _%datum201566%_)
                                                (s32vector? _%datum201566%_)
                                                (u32vector? _%datum201566%_)
                                                (s64vector? _%datum201566%_)
                                                (u64vector? _%datum201566%_)
                                                (f32vector? _%datum201566%_)
                                                (f64vector? _%datum201566%_))
                                            _%datum201566%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx201512%_)))))))))))
          (let* ((_%g201516201529%_
                  (lambda (_%g201517201526%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g201517201526%_))))
                 (_%g201515201563%_
                  (lambda (_%g201517201532%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g201517201532%_))
                        (let ((_%e201519201534%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g201517201532%_))))
                          (let ((_%hd201520201537%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201519201534%_)))
                                (_%tl201521201539%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201519201534%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201521201539%_))
                                (let ((_%e201522201542%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl201521201539%_))))
                                  (let ((_%hd201523201545%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201522201542%_)))
                                        (_%tl201524201547%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201522201542%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201524201547%_))
                                        (cons 'quote
                                              (cons (_%generate1201514%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd201523201545%_)))
                                                    '()))
                                        (_%g201516201529%_
                                         _%g201517201532%_))))
                                (_%g201516201529%_ _%g201517201532%_))))
                        (_%g201516201529%_ _%g201517201532%_)))))
            (_%g201515201563%_ _%stx201512%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self200958%_ _%stx200959%_)
        (letrec ((_%compile-call200961%_
                  (lambda (_%rator201248%_ _%rands201249%_)
                    (let ((_%rator201255%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self200958%_
                              _%rator201248%_)))
                          (_%rands201256%_
                           (map (lambda (_%g201250201252%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self200958%_
                                     _%g201250201252%_)))
                                _%rands201249%_)))
                      (let* ((_%__stx206975206976%_ _%rator201255%_)
                             (_%g201259201311%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx206975206976%_)))))
                        (let ((_%__kont206977206978%_
                               (lambda (_%g201261201431%_
                                        _%g201262201432%_
                                        _%g201263201433%_
                                        _%g201264201434%_)
                                 (if (let ((__tmp207647
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands201256%_)))
                                           (__tmp207645
                                            (length (let ((__tmp207646
                                                           (lambda (_%g201470201473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g201471201475%_)
                     (cons _%g201470201473%_ _%g201471201475%_))))
              (declare (not safe))
              (foldr__0 __tmp207646 '() _%g201263201433%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp207647 __tmp207645))
                                     (let* ((_%id201478%_ _%g201264201434%_)
                                            (_%args201487%_
                                             (let ((__tmp207648
                                                    (lambda (_%g201479201482%_
                                                             _%g201480201484%_)
                                                      (cons _%g201479201482%_
                                                            _%g201480201484%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp207648
                                                '()
                                                _%g201263201433%_)))
                                            (_%body201496%_
                                             (let ((__tmp207649
                                                    (lambda (_%g201488201491%_
                                                             _%g201489201493%_)
                                                      (cons _%g201488201491%_
                                                            _%g201489201493%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp207649
                                                '()
                                                _%g201262201432%_)))
                                            (_%init201498%_
                                             (map list
                                                  _%args201487%_
                                                  _%rands201256%_)))
                                       (cons 'let
                                             (cons _%id201478%_
                                                   (cons _%init201498%_
                                                         _%body201496%_))))
                                     (let ((__tmp207650
                                            (let ((__tmp207651
                                                   (lambda (_%g201500201503%_
                                                            _%g201501201505%_)
                                                     (cons _%g201500201503%_
                                                           _%g201501201505%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp207651
                                               '()
                                               _%g201263201433%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx200959%_
                                        __tmp207650
                                        _%rands201256%_)))))
                              (_%__kont206983206984%_
                               (lambda ()
                                 (cons _%rator201255%_ _%rands201256%_))))
                          (let ((_%__match207042207043%_
                                 (lambda (_%e201265201323%_
                                          _%hd201266201326%_
                                          _%tl201267201328%_
                                          _%e201268201331%_
                                          _%hd201269201334%_
                                          _%tl201270201336%_
                                          _%e201271201339%_
                                          _%hd201272201342%_
                                          _%tl201273201344%_
                                          _%e201274201347%_
                                          _%hd201275201350%_
                                          _%tl201276201352%_
                                          _%e201277201355%_
                                          _%hd201278201358%_
                                          _%tl201279201360%_
                                          _%e201280201363%_
                                          _%hd201281201366%_
                                          _%tl201282201368%_
                                          _%e201283201371%_
                                          _%hd201284201374%_
                                          _%tl201285201376%_
                                          _%__splice206979206980%_
                                          _%target201286201379%_
                                          _%tl201288201381%_)
                                   (letrec ((_%loop201289201384%_
                                             (lambda (_%hd201287201387%_
                                                      _%arg201293201389%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd201287201387%_))
                                                   (let ((_%e201290201391%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd201287201387%_))))
                                                     (let ((_%lp-tl201292201396%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e201290201391%_)))
                                                           (_%lp-hd201291201394%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e201290201391%_))))
                                                       (_%loop201289201384%_
                                                        _%lp-tl201292201396%_
                                                        (cons _%lp-hd201291201394%_
                                                              _%arg201293201389%_))))
                                                   (let ((_%arg201294201399%_
                                                          (reverse _%arg201293201389%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl201285201376%_))
                                                         (let ((_%__splice206981206982%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl201285201376%_
                           '0))))
                   (let ((_%tl201297201403%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice206981206982%_ '1)))
                         (_%target201295201401%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice206981206982%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl201297201403%_))
                         (letrec ((_%loop201298201406%_
                                   (lambda (_%hd201296201409%_
                                            _%body201302201411%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd201296201409%_))
                                         (let ((_%e201299201413%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd201296201409%_))))
                                           (let ((_%lp-tl201301201418%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e201299201413%_)))
                                                 (_%lp-hd201300201416%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e201299201413%_))))
                                             (_%loop201298201406%_
                                              _%lp-tl201301201418%_
                                              (cons _%lp-hd201300201416%_
                                                    _%body201302201411%_))))
                                         (let ((_%body201303201421%_
                                                (reverse _%body201302201411%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl201279201360%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl201273201344%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl201270201336%_))
                                                       (let ((_%e201304201423%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl201270201336%_))))
                 (let ((_%tl201306201428%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e201304201423%_)))
                       (_%hd201305201426%_
                        (let ()
                          (declare (not safe))
                          (##car _%e201304201423%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl201306201428%_))
                       (let ((_%g201261201431%_ _%hd201305201426%_)
                             (_%g201262201432%_ _%body201303201421%_)
                             (_%g201263201433%_ _%arg201294201399%_)
                             (_%g201264201434%_ _%hd201275201350%_))
                         (if (eq? _%g201264201434%_ _%g201261201431%_)
                             (_%__kont206977206978%_
                              _%g201261201431%_
                              _%g201262201432%_
                              _%g201263201433%_
                              _%g201264201434%_)
                             (_%__kont206983206984%_)))
                       (_%__kont206983206984%_))))
               (_%__kont206983206984%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont206983206984%_))
                                               (_%__kont206983206984%_)))))))
                           (_%loop201298201406%_ _%target201295201401%_ '()))
                         (_%__kont206983206984%_))))
                 (_%__kont206983206984%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop201289201384%_
                                      _%target201286201379%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx206975206976%_))
                                (let ((_%e201265201323%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx206975206976%_))))
                                  (let ((_%tl201267201328%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201265201323%_)))
                                        (_%hd201266201326%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201265201323%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd201266201326%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd201266201326%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl201267201328%_))
                                                (let ((_%e201268201331%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl201267201328%_))))
                                                  (let ((_%tl201270201336%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e201268201331%_)))
                                                        (_%hd201269201334%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e201268201331%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201269201334%_))
                                                        (let ((_%e201271201339%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd201269201334%_))))
                  (let ((_%tl201273201344%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201271201339%_)))
                        (_%hd201272201342%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201271201339%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd201272201342%_))
                        (let ((_%e201274201347%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd201272201342%_))))
                          (let ((_%tl201276201352%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201274201347%_)))
                                (_%hd201275201350%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201274201347%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201276201352%_))
                                (let ((_%e201277201355%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl201276201352%_))))
                                  (let ((_%tl201279201360%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201277201355%_)))
                                        (_%hd201278201358%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201277201355%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd201278201358%_))
                                        (let ((_%e201280201363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd201278201358%_))))
                                          (let ((_%tl201282201368%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201280201363%_)))
                                                (_%hd201281201366%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201280201363%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd201281201366%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd201281201366%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl201282201368%_))
                                                        (let ((_%e201283201371%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl201282201368%_))))
                  (let ((_%tl201285201376%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201283201371%_)))
                        (_%hd201284201374%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201283201371%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd201284201374%_))
                        (let ((_%__splice206979206980%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd201284201374%_
                                  '0))))
                          (let ((_%tl201288201381%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice206979206980%_ '1)))
                                (_%target201286201379%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice206979206980%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl201288201381%_))
                                (_%__match207042207043%_
                                 _%e201265201323%_
                                 _%hd201266201326%_
                                 _%tl201267201328%_
                                 _%e201268201331%_
                                 _%hd201269201334%_
                                 _%tl201270201336%_
                                 _%e201271201339%_
                                 _%hd201272201342%_
                                 _%tl201273201344%_
                                 _%e201274201347%_
                                 _%hd201275201350%_
                                 _%tl201276201352%_
                                 _%e201277201355%_
                                 _%hd201278201358%_
                                 _%tl201279201360%_
                                 _%e201280201363%_
                                 _%hd201281201366%_
                                 _%tl201282201368%_
                                 _%e201283201371%_
                                 _%hd201284201374%_
                                 _%tl201285201376%_
                                 _%__splice206979206980%_
                                 _%target201286201379%_
                                 _%tl201288201381%_)
                                (_%__kont206983206984%_))))
                        (_%__kont206983206984%_))))
                (_%__kont206983206984%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont206983206984%_))
                                                (_%__kont206983206984%_))))
                                        (_%__kont206983206984%_))))
                                (_%__kont206983206984%_))))
                        (_%__kont206983206984%_))))
                (_%__kont206983206984%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont206983206984%_))
                                            (_%__kont206983206984%_))
                                        (_%__kont206983206984%_))))
                                (_%__kont206983206984%_)))))))))
          (let* ((_%g200963200986%_
                  (lambda (_%g200964200983%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200964200983%_))))
                 (_%g200962201245%_
                  (lambda (_%g200964200989%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200964200989%_))
                        (let ((_%e200967200991%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200964200989%_))))
                          (let ((_%hd200968200994%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200967200991%_)))
                                (_%tl200969200996%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200967200991%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200969200996%_))
                                (let ((_%e200970200999%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200969200996%_))))
                                  (let ((_%hd200971201002%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200970200999%_)))
                                        (_%tl200972201004%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200970200999%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl200972201004%_))
                                        (let ((_g207652_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl200972201004%_
                                                  '0))))
                                          (begin
                                            (let ((_g207653_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g207652_)
                                                         (##values-length
                                                          _g207652_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g207653_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g207653_)))
                                            (let ((_%target200973201007%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g207652_
                                                      0)))
                                                  (_%tl200975201009%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g207652_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200975201009%_))
                                                  (letrec ((_%loop200976201012%_
                                                            (lambda (_%hd200974201015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand200980201017%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd200974201015%_))
                          (let ((_%e200977201019%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd200974201015%_))))
                            (let ((_%lp-hd200978201022%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200977201019%_)))
                                  (_%lp-tl200979201024%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200977201019%_))))
                              (_%loop200976201012%_
                               _%lp-tl200979201024%_
                               (cons _%lp-hd200978201022%_
                                     _%rand200980201017%_))))
                          (let ((_%rand200981201027%_
                                 (reverse _%rand200980201017%_)))
                            (if (gxc#current-compile-decls-unsafe?)
                                (_%compile-call200961%_
                                 _%hd200971201002%_
                                 (let ((__tmp207654
                                        (lambda (_%g201047201050%_
                                                 _%g201048201052%_)
                                          (cons _%g201047201050%_
                                                _%g201048201052%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp207654
                                    '()
                                    _%rand200981201027%_)))
                                (let* ((_%__stx207091207092%_
                                        _%hd200971201002%_)
                                       (_%g201056201068%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx207091207092%_)))))
                                  (let ((_%__kont207093207094%_
                                         (lambda ()
                                           (let ((_%f201105%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self200958%_
                                                     _%hd200971201002%_))))
                                             (if (and (let ((__tmp207655
                                                             (symbol->string
                                                              _%f201105%_)))
                                                        (declare (not safe))
                                                        (##string-prefix?
                                                         '"##"
                                                         __tmp207655))
                                                      (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##memq _%f201105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let _%lp201107%_ ((_%rest201110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (reverse (let ((__tmp207657
                                             (lambda (_%g201227201230%_
                                                      _%g201228201232%_)
                                               (cons _%g201227201230%_
                                                     _%g201228201232%_))))
                                        (declare (not safe))
                                        (foldr__0
                                         __tmp207657
                                         '()
                                         _%rand200981201027%_))))
                            (_%bind201112%_ '())
                            (_%args201113%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%rest201114201122%_
                                                           _%rest201110%_)
                                                          (_%else201116201130%_
                                                           (lambda ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bind201112%_
                                 (cons '(declare (not safe))
                                       (cons (cons _%f201105%_ _%args201113%_)
                                             '()))))))
                  (_%K201118201216%_
                   (lambda (_%rest201133%_ _%e201134%_)
                     (let* ((_%__stx207045207046%_ _%e201134%_)
                            (_%g201139201157%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%__stx207045207046%_)))))
                       (let ((_%__kont207047207048%_
                              (lambda ()
                                (_%lp201107%_
                                 _%rest201133%_
                                 _%bind201112%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e201134%_))
                                       _%args201113%_))))
                             (_%__kont207049207050%_
                              (lambda ()
                                (_%lp201107%_
                                 _%rest201133%_
                                 _%bind201112%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e201134%_))
                                       _%args201113%_))))
                             (_%__kont207051207052%_
                              (lambda ()
                                (let ((_%tmp201164%_
                                       (let ((__tmp207656
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__tmp))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp207656))))
                                  (_%lp201107%_
                                   _%rest201133%_
                                   (cons (cons _%tmp201164%_
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _%e201134%_))
                                                     '()))
                                         _%bind201112%_)
                                   (cons _%tmp201164%_ _%args201113%_))))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%__stx207045207046%_))
                             (let ((_%e201141201195%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%__stx207045207046%_))))
                               (let ((_%tl201143201200%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e201141201195%_)))
                                     (_%hd201142201198%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e201141201195%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#identifier? _%hd201142201198%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-eq?
                                            '%#ref
                                            _%hd201142201198%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl201143201200%_))
                                             (let ((_%e201144201203%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl201143201200%_))))
                                               (let ((_%tl201146201208%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e201144201203%_)))
                                                     (_%hd201145201206%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e201144201203%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl201146201208%_))
                                                     (_%__kont207047207048%_)
                                                     (_%__kont207051207052%_))))
                                             (_%__kont207051207052%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#quote
                                                _%hd201142201198%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl201143201200%_))
                                                 (let ((_%e201150201180%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl201143201200%_))))
                                                   (let ((_%tl201152201185%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201150201180%_)))
                                                         (_%hd201151201183%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201150201180%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl201152201185%_))
                                                         (_%__kont207049207050%_)
                                                         (_%__kont207051207052%_))))
                                                 (_%__kont207051207052%_))
                                             (_%__kont207051207052%_)))
                                     (_%__kont207051207052%_))))
                             (_%__kont207051207052%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (pair? _%rest201114201122%_)
                                                         (let ((_%hd201119201219%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%rest201114201122%_)))
                       (_%tl201120201221%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%rest201114201122%_))))
                   (let* ((_%e201224%_ _%hd201119201219%_)
                          (_%rest201226%_ _%tl201120201221%_))
                     (_%K201118201216%_ _%rest201226%_ _%e201224%_)))
                 (_%else201116201130%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%compile-call200961%_
                                                  _%hd200971201002%_
                                                  (let ((__tmp207658
                                                         (lambda (_%g201234201237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g201235201239%_)
                   (cons _%g201234201237%_ _%g201235201239%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp207658
                                                     '()
                                                     _%rand200981201027%_)))))))
                                        (_%__kont207095207096%_
                                         (lambda ()
                                           (_%compile-call200961%_
                                            _%hd200971201002%_
                                            (let ((__tmp207659
                                                   (lambda (_%g201074201077%_
                                                            _%g201075201079%_)
                                                     (cons _%g201074201077%_
                                                           _%g201075201079%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp207659
                                               '()
                                               _%rand200981201027%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx207091207092%_))
                                        (let ((_%e201058201087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx207091207092%_))))
                                          (let ((_%tl201060201092%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201058201087%_)))
                                                (_%hd201059201090%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201058201087%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd201059201090%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd201059201090%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl201060201092%_))
                                                        (let ((_%e201061201095%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl201060201092%_))))
                  (let ((_%tl201063201100%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201061201095%_)))
                        (_%hd201062201098%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201061201095%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl201063201100%_))
                        (_%__kont207093207094%_)
                        (_%__kont207095207096%_))))
                (_%__kont207095207096%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont207095207096%_))
                                                (_%__kont207095207096%_))))
                                        (_%__kont207095207096%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop200976201012%_
                                                     _%target200973201007%_
                                                     '()))
                                                  (_%g200963200986%_
                                                   _%g200964200989%_)))))
                                        (_%g200963200986%_
                                         _%g200964200989%_))))
                                (_%g200963200986%_ _%g200964200989%_))))
                        (_%g200963200986%_ _%g200964200989%_)))))
            (_%g200962201245%_ _%stx200959%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self200703%_ _%stx200704%_)
        (let* ((_%__stx207163207164%_ _%stx200704%_)
               (_%g200707200736%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207163207164%_)))))
          (let ((_%__kont207165207166%_
                 (lambda (_%g200709200802%_ _%g200710200803%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self200703%_
                        _%stx200704%_)
                       (let ((_%f200825%_
                              (let ((__tmp207660
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g200710200803%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self200703%_
                                 __tmp207660))))
                         (let _%lp200827%_ ((_%rest200830%_
                                             (reverse (let ((__tmp207662
                                                             (lambda (_%g200947200950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g200948200952%_)
                       (cons _%g200947200950%_ _%g200948200952%_))))
                (declare (not safe))
                (foldr__0 __tmp207662 '() _%g200709200802%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind200832%_ '())
                                            (_%args200833%_ '()))
                           (let* ((_%rest200834200842%_ _%rest200830%_)
                                  (_%else200836200850%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind200832%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f200825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args200833%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K200838200936%_
                                   (lambda (_%rest200853%_ _%e200854%_)
                                     (let* ((_%__stx207117207118%_ _%e200854%_)
                                            (_%g200859200877%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx207117207118%_)))))
                                       (let ((_%__kont207119207120%_
                                              (lambda ()
                                                (_%lp200827%_
                                                 _%rest200853%_
                                                 _%bind200832%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e200854%_))
                                                       _%args200833%_))))
                                             (_%__kont207121207122%_
                                              (lambda ()
                                                (_%lp200827%_
                                                 _%rest200853%_
                                                 _%bind200832%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e200854%_))
                                                       _%args200833%_))))
                                             (_%__kont207123207124%_
                                              (lambda ()
                                                (let ((_%tmp200884%_
                                                       (let ((__tmp207661
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp207661))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp200827%_
                                                   _%rest200853%_
                                                   (cons (cons _%tmp200884%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e200854%_))
                             '()))
                 _%bind200832%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp200884%_
                                                         _%args200833%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx207117207118%_))
                                             (let ((_%e200861200915%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx207117207118%_))))
                                               (let ((_%tl200863200920%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e200861200915%_)))
                                                     (_%hd200862200918%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e200861200915%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd200862200918%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd200862200918%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl200863200920%_))
                     (let ((_%e200864200923%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl200863200920%_))))
                       (let ((_%tl200866200928%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e200864200923%_)))
                             (_%hd200865200926%_
                              (let ()
                                (declare (not safe))
                                (##car _%e200864200923%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl200866200928%_))
                             (_%__kont207119207120%_)
                             (_%__kont207123207124%_))))
                     (_%__kont207123207124%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd200862200918%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl200863200920%_))
                         (let ((_%e200870200900%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl200863200920%_))))
                           (let ((_%tl200872200905%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e200870200900%_)))
                                 (_%hd200871200903%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e200870200900%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl200872200905%_))
                                 (_%__kont207121207122%_)
                                 (_%__kont207123207124%_))))
                         (_%__kont207123207124%_))
                     (_%__kont207123207124%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont207123207124%_))))
                                             (_%__kont207123207124%_)))))))
                             (if (pair? _%rest200834200842%_)
                                 (let ((_%hd200839200939%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest200834200842%_)))
                                       (_%tl200840200941%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest200834200842%_))))
                                   (let* ((_%e200944%_ _%hd200839200939%_)
                                          (_%rest200946%_ _%tl200840200941%_))
                                     (_%K200838200936%_
                                      _%rest200946%_
                                      _%e200944%_)))
                                 (_%else200836200850%_))))))))
                (_%__kont207169207170%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self200703%_ _%stx200704%_))))
            (let ((_%__match207208207209%_
                   (lambda (_%e200711200748%_
                            _%hd200712200751%_
                            _%tl200713200753%_
                            _%e200714200756%_
                            _%hd200715200759%_
                            _%tl200716200761%_
                            _%e200717200764%_
                            _%hd200718200767%_
                            _%tl200719200769%_
                            _%e200720200772%_
                            _%hd200721200775%_
                            _%tl200722200777%_
                            _%__splice207167207168%_
                            _%target200723200780%_
                            _%tl200725200782%_)
                     (letrec ((_%loop200726200785%_
                               (lambda (_%hd200724200788%_
                                        _%rand200730200790%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd200724200788%_))
                                     (let ((_%e200727200792%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd200724200788%_))))
                                       (let ((_%lp-tl200729200797%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e200727200792%_)))
                                             (_%lp-hd200728200795%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e200727200792%_))))
                                         (_%loop200726200785%_
                                          _%lp-tl200729200797%_
                                          (cons _%lp-hd200728200795%_
                                                _%rand200730200790%_))))
                                     (let ((_%rand200731200800%_
                                            (reverse _%rand200730200790%_)))
                                       (_%__kont207165207166%_
                                        _%rand200731200800%_
                                        _%hd200721200775%_))))))
                       (_%loop200726200785%_ _%target200723200780%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx207163207164%_))
                  (let ((_%e200711200748%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx207163207164%_))))
                    (let ((_%tl200713200753%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200711200748%_)))
                          (_%hd200712200751%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200711200748%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200713200753%_))
                          (let ((_%e200714200756%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200713200753%_))))
                            (let ((_%tl200716200761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200714200756%_)))
                                  (_%hd200715200759%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200714200756%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd200715200759%_))
                                  (let ((_%e200717200764%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd200715200759%_))))
                                    (let ((_%tl200719200769%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200717200764%_)))
                                          (_%hd200718200767%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200717200764%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd200718200767%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd200718200767%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200719200769%_))
                                                  (let ((_%e200720200772%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200719200769%_))))
                                                    (let ((_%tl200722200777%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200720200772%_)))
                                                          (_%hd200721200775%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200720200772%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200722200777%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl200716200761%_))
                      (let ((_%__splice207167207168%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl200716200761%_
                                '0))))
                        (let ((_%tl200725200782%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice207167207168%_ '1)))
                              (_%target200723200780%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice207167207168%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200725200782%_))
                              (_%__match207208207209%_
                               _%e200711200748%_
                               _%hd200712200751%_
                               _%tl200713200753%_
                               _%e200714200756%_
                               _%hd200715200759%_
                               _%tl200716200761%_
                               _%e200717200764%_
                               _%hd200718200767%_
                               _%tl200719200769%_
                               _%e200720200772%_
                               _%hd200721200775%_
                               _%tl200722200777%_
                               _%__splice207167207168%_
                               _%target200723200780%_
                               _%tl200725200782%_)
                              (_%__kont207169207170%_))))
                      (_%__kont207169207170%_))
                  (_%__kont207169207170%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont207169207170%_))
                                              (_%__kont207169207170%_))
                                          (_%__kont207169207170%_))))
                                  (_%__kont207169207170%_))))
                          (_%__kont207169207170%_))))
                  (_%__kont207169207170%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self200515%_ _%stx200516%_)
        (letrec ((_%simplify200518%_
                  (lambda (_%code200603%_)
                    (let* ((_%code200604200622%_ _%code200603%_)
                           (_%else200606200630%_ (lambda () _%code200603%_))
                           (_%K200608200666%_
                            (lambda (_%expr200633%_ _%test200634%_)
                              (let* ((_%expr200635200643%_ _%expr200633%_)
                                     (_%else200637200651%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test200634%_
                                                    (cons _%expr200633%_
                                                          '())))))
                                     (_%K200639200656%_
                                      (lambda (_%exprs200654%_)
                                        (cons 'and
                                              (cons _%test200634%_
                                                    _%exprs200654%_)))))
                                (if (pair? _%expr200635200643%_)
                                    (let ((_%hd200640200659%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr200635200643%_)))
                                          (_%tl200641200661%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr200635200643%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd200640200659%_ 'and))
                                          (let ((_%exprs200664%_
                                                 _%tl200641200661%_))
                                            (_%K200639200656%_
                                             _%exprs200664%_))
                                          (_%else200637200651%_)))
                                    (_%else200637200651%_))))))
                      (if (pair? _%code200604200622%_)
                          (let ((_%hd200609200669%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code200604200622%_)))
                                (_%tl200610200671%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code200604200622%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd200609200669%_ 'if))
                                (if (pair? _%tl200610200671%_)
                                    (let ((_%hd200611200674%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl200610200671%_)))
                                          (_%tl200612200676%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl200610200671%_))))
                                      (let ((_%test200679%_
                                             _%hd200611200674%_))
                                        (if (pair? _%tl200612200676%_)
                                            (let ((_%hd200613200681%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl200612200676%_)))
                                                  (_%tl200614200683%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl200612200676%_))))
                                              (let ((_%expr200686%_
                                                     _%hd200613200681%_))
                                                (if (pair? _%tl200614200683%_)
                                                    (let ((_%hd200615200688%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl200614200683%_)))
                                                          (_%tl200616200690%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl200614200683%_))))
                                                      (if (pair? _%hd200615200688%_)
                                                          (let ((_%hd200617200693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd200615200688%_)))
                        (_%tl200618200695%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd200615200688%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd200617200693%_ 'quote))
                        (if (pair? _%tl200618200695%_)
                            (let ((_%hd200619200698%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl200618200695%_)))
                                  (_%tl200620200700%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl200618200695%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd200619200698%_ '#f))
                                  (if (null? _%tl200620200700%_)
                                      (if (null? _%tl200616200690%_)
                                          (_%K200608200666%_
                                           _%expr200686%_
                                           _%test200679%_)
                                          (_%else200606200630%_))
                                      (_%else200606200630%_))
                                  (_%else200606200630%_)))
                            (_%else200606200630%_))
                        (_%else200606200630%_)))
                  (_%else200606200630%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else200606200630%_))))
                                            (_%else200606200630%_))))
                                    (_%else200606200630%_))
                                (_%else200606200630%_)))
                          (_%else200606200630%_))))))
          (let* ((_%g200520200541%_
                  (lambda (_%g200521200538%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200521200538%_))))
                 (_%g200519200600%_
                  (lambda (_%g200521200544%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200521200544%_))
                        (let ((_%e200525200546%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200521200544%_))))
                          (let ((_%hd200526200549%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200525200546%_)))
                                (_%tl200527200551%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200525200546%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200527200551%_))
                                (let ((_%e200528200554%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200527200551%_))))
                                  (let ((_%hd200529200557%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200528200554%_)))
                                        (_%tl200530200559%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200528200554%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200530200559%_))
                                        (let ((_%e200531200562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200530200559%_))))
                                          (let ((_%hd200532200565%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200531200562%_)))
                                                (_%tl200533200567%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200531200562%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200533200567%_))
                                                (let ((_%e200534200570%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200533200567%_))))
                                                  (let ((_%hd200535200573%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200534200570%_)))
                                                        (_%tl200536200575%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200534200570%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200536200575%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#current-compile-boolean-context))
                                                            (_%simplify200518%_
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self200515%_
                                    _%hd200529200557%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self200515%_
                                          _%hd200532200565%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self200515%_
                                                _%hd200535200573%_))
                                             '())))))
                    (cons 'if
                          (cons (let ((__tmp207663
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self200515%_
                                            _%hd200529200557%_)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp207663
                                   gxc#current-compile-boolean-context
                                   '#t))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self200515%_
                                         _%hd200532200565%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self200515%_
                                               _%hd200535200573%_))
                                            '())))))
                (_%g200520200541%_ _%g200521200544%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g200520200541%_
                                                 _%g200521200544%_))))
                                        (_%g200520200541%_
                                         _%g200521200544%_))))
                                (_%g200520200541%_ _%g200521200544%_))))
                        (_%g200520200541%_ _%g200521200544%_)))))
            (_%g200519200600%_ _%stx200516%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self200463%_ _%stx200464%_)
        (let* ((_%g200466200479%_
                (lambda (_%g200467200476%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200467200476%_))))
               (_%g200465200512%_
                (lambda (_%g200467200482%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200467200482%_))
                      (let ((_%e200469200484%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200467200482%_))))
                        (let ((_%hd200470200487%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200469200484%_)))
                              (_%tl200471200489%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200469200484%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200471200489%_))
                              (let ((_%e200472200492%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200471200489%_))))
                                (let ((_%hd200473200495%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200472200492%_)))
                                      (_%tl200474200497%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200472200492%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl200474200497%_))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-binding-id
                                         _%hd200473200495%_))
                                      (_%g200466200479%_ _%g200467200482%_))))
                              (_%g200466200479%_ _%g200467200482%_))))
                      (_%g200466200479%_ _%g200467200482%_)))))
          (_%g200465200512%_ _%stx200464%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self200395%_ _%stx200396%_)
        (let* ((_%g200398200415%_
                (lambda (_%g200399200412%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200399200412%_))))
               (_%g200397200460%_
                (lambda (_%g200399200418%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200399200418%_))
                      (let ((_%e200402200420%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200399200418%_))))
                        (let ((_%hd200403200423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200402200420%_)))
                              (_%tl200404200425%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200402200420%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200404200425%_))
                              (let ((_%e200405200428%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200404200425%_))))
                                (let ((_%hd200406200431%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200405200428%_)))
                                      (_%tl200407200433%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200405200428%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200407200433%_))
                                      (let ((_%e200408200436%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200407200433%_))))
                                        (let ((_%hd200409200439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200408200436%_)))
                                              (_%tl200410200441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200408200436%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200410200441%_))
                                              (cons 'set!
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-binding-id
                                                             _%hd200406200431%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self200395%_ _%hd200409200439%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200398200415%_
                                               _%g200399200418%_))))
                                      (_%g200398200415%_ _%g200399200418%_))))
                              (_%g200398200415%_ _%g200399200418%_))))
                      (_%g200398200415%_ _%g200399200418%_)))))
          (_%g200397200460%_ _%stx200396%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self200206%_ _%stx200207%_)
        (let* ((_%g200209200226%_
                (lambda (_%g200210200223%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200210200223%_))))
               (_%g200208200392%_
                (lambda (_%g200210200229%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200210200229%_))
                      (let ((_%e200213200231%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200210200229%_))))
                        (let ((_%hd200214200234%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200213200231%_)))
                              (_%tl200215200236%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200213200231%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200215200236%_))
                              (let ((_%e200216200239%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200215200236%_))))
                                (let ((_%hd200217200242%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200216200239%_)))
                                      (_%tl200218200244%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200216200239%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200218200244%_))
                                      (let ((_%e200219200247%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200218200244%_))))
                                        (let ((_%hd200220200250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200219200247%_)))
                                              (_%tl200221200252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200219200247%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200221200252%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self200206%_ _%hd200220200250%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self200206%_
                               _%hd200217200242%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp200271%_ ((_%rest200274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%hd200217200242%_
                                    (cons _%hd200220200250%_ '())))
                             (_%bind200276%_ '())
                             (_%args200277%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%rest200278200286%_
                                                            _%rest200274%_)
                                                           (_%else200280200294%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind200276%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-instance-of?
                                                    _%args200277%_)
                                              '()))))))
                   (_%K200282200380%_
                    (lambda (_%rest200297%_ _%e200298%_)
                      (let* ((_%__stx207211207212%_ _%e200298%_)
                             (_%g200303200321%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx207211207212%_)))))
                        (let ((_%__kont207213207214%_
                               (lambda ()
                                 (_%lp200271%_
                                  _%rest200297%_
                                  _%bind200276%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e200298%_))
                                        _%args200277%_))))
                              (_%__kont207215207216%_
                               (lambda ()
                                 (_%lp200271%_
                                  _%rest200297%_
                                  _%bind200276%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e200298%_))
                                        _%args200277%_))))
                              (_%__kont207217207218%_
                               (lambda ()
                                 (let ((_%tmp200328%_
                                        (let ((__tmp207664
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp207664))))
                                   (_%lp200271%_
                                    _%rest200297%_
                                    (cons (cons _%tmp200328%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e200298%_))
                                                      '()))
                                          _%bind200276%_)
                                    (cons _%tmp200328%_ _%args200277%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx207211207212%_))
                              (let ((_%e200305200359%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx207211207212%_))))
                                (let ((_%tl200307200364%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200305200359%_)))
                                      (_%hd200306200362%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200305200359%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd200306200362%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd200306200362%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200307200364%_))
                                              (let ((_%e200308200367%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200307200364%_))))
                                                (let ((_%tl200310200372%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200308200367%_)))
                                                      (_%hd200309200370%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200308200367%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200310200372%_))
                                                      (_%__kont207213207214%_)
                                                      (_%__kont207217207218%_))))
                                              (_%__kont207217207218%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd200306200362%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200307200364%_))
                                                  (let ((_%e200314200344%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200307200364%_))))
                                                    (let ((_%tl200316200349%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200314200344%_)))
                                                          (_%hd200315200347%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200314200344%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200316200349%_))
                                                          (_%__kont207215207216%_)
                                                          (_%__kont207217207218%_))))
                                                  (_%__kont207217207218%_))
                                              (_%__kont207217207218%_)))
                                      (_%__kont207217207218%_))))
                              (_%__kont207217207218%_)))))))
              (if (pair? _%rest200278200286%_)
                  (let ((_%hd200283200383%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest200278200286%_)))
                        (_%tl200284200385%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest200278200286%_))))
                    (let* ((_%e200388%_ _%hd200283200383%_)
                           (_%rest200390%_ _%tl200284200385%_))
                      (_%K200282200380%_ _%rest200390%_ _%e200388%_)))
                  (_%else200280200294%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200209200226%_
                                               _%g200210200229%_))))
                                      (_%g200209200226%_ _%g200210200229%_))))
                              (_%g200209200226%_ _%g200210200229%_))))
                      (_%g200209200226%_ _%g200210200229%_)))))
          (_%g200208200392%_ _%stx200207%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self200017%_ _%stx200018%_)
        (let* ((_%g200020200037%_
                (lambda (_%g200021200034%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200021200034%_))))
               (_%g200019200203%_
                (lambda (_%g200021200040%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200021200040%_))
                      (let ((_%e200024200042%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200021200040%_))))
                        (let ((_%hd200025200045%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200024200042%_)))
                              (_%tl200026200047%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200024200042%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200026200047%_))
                              (let ((_%e200027200050%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200026200047%_))))
                                (let ((_%hd200028200053%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200027200050%_)))
                                      (_%tl200029200055%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200027200050%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200029200055%_))
                                      (let ((_%e200030200058%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200029200055%_))))
                                        (let ((_%hd200031200061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200030200058%_)))
                                              (_%tl200032200063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200030200058%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200032200063%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-direct-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self200017%_ _%hd200031200061%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self200017%_
                               _%hd200028200053%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp200082%_ ((_%rest200085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%hd200028200053%_
                                    (cons _%hd200031200061%_ '())))
                             (_%bind200087%_ '())
                             (_%args200088%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%rest200089200097%_
                                                            _%rest200085%_)
                                                           (_%else200091200105%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind200087%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-direct-instance-of?
                                                    _%args200088%_)
                                              '()))))))
                   (_%K200093200191%_
                    (lambda (_%rest200108%_ _%e200109%_)
                      (let* ((_%__stx207257207258%_ _%e200109%_)
                             (_%g200114200132%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx207257207258%_)))))
                        (let ((_%__kont207259207260%_
                               (lambda ()
                                 (_%lp200082%_
                                  _%rest200108%_
                                  _%bind200087%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e200109%_))
                                        _%args200088%_))))
                              (_%__kont207261207262%_
                               (lambda ()
                                 (_%lp200082%_
                                  _%rest200108%_
                                  _%bind200087%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e200109%_))
                                        _%args200088%_))))
                              (_%__kont207263207264%_
                               (lambda ()
                                 (let ((_%tmp200139%_
                                        (let ((__tmp207665
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp207665))))
                                   (_%lp200082%_
                                    _%rest200108%_
                                    (cons (cons _%tmp200139%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e200109%_))
                                                      '()))
                                          _%bind200087%_)
                                    (cons _%tmp200139%_ _%args200088%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx207257207258%_))
                              (let ((_%e200116200170%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx207257207258%_))))
                                (let ((_%tl200118200175%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200116200170%_)))
                                      (_%hd200117200173%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200116200170%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd200117200173%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd200117200173%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200118200175%_))
                                              (let ((_%e200119200178%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200118200175%_))))
                                                (let ((_%tl200121200183%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200119200178%_)))
                                                      (_%hd200120200181%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200119200178%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200121200183%_))
                                                      (_%__kont207259207260%_)
                                                      (_%__kont207263207264%_))))
                                              (_%__kont207263207264%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd200117200173%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200118200175%_))
                                                  (let ((_%e200125200155%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200118200175%_))))
                                                    (let ((_%tl200127200160%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200125200155%_)))
                                                          (_%hd200126200158%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200125200155%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200127200160%_))
                                                          (_%__kont207261207262%_)
                                                          (_%__kont207263207264%_))))
                                                  (_%__kont207263207264%_))
                                              (_%__kont207263207264%_)))
                                      (_%__kont207263207264%_))))
                              (_%__kont207263207264%_)))))))
              (if (pair? _%rest200089200097%_)
                  (let ((_%hd200094200194%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest200089200097%_)))
                        (_%tl200095200196%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest200089200097%_))))
                    (let* ((_%e200199%_ _%hd200094200194%_)
                           (_%rest200201%_ _%tl200095200196%_))
                      (_%K200093200191%_ _%rest200201%_ _%e200199%_)))
                  (_%else200091200105%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200020200037%_
                                               _%g200021200040%_))))
                                      (_%g200020200037%_ _%g200021200040%_))))
                              (_%g200020200037%_ _%g200021200040%_))))
                      (_%g200020200037%_ _%g200021200040%_)))))
          (_%g200019200203%_ _%stx200018%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self199933%_ _%stx199934%_)
        (let* ((_%g199936199957%_
                (lambda (_%g199937199954%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199937199954%_))))
               (_%g199935200014%_
                (lambda (_%g199937199960%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199937199960%_))
                      (let ((_%e199941199962%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199937199960%_))))
                        (let ((_%hd199942199965%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199941199962%_)))
                              (_%tl199943199967%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199941199962%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199943199967%_))
                              (let ((_%e199944199970%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199943199967%_))))
                                (let ((_%hd199945199973%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199944199970%_)))
                                      (_%tl199946199975%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199944199970%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199946199975%_))
                                      (let ((_%e199947199978%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199946199975%_))))
                                        (let ((_%hd199948199981%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199947199978%_)))
                                              (_%tl199949199983%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199947199978%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199949199983%_))
                                              (let ((_%e199950199986%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199949199983%_))))
                                                (let ((_%hd199951199989%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199950199986%_)))
                                                      (_%tl199952199991%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199950199986%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199952199991%_))
                                                      (cons '##structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self199933%_
                             _%hd199951199989%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self199933%_
                                   _%hd199948199981%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self199933%_
                                         _%hd199945199973%_))
                                      (cons ''#f '())))))
              (_%g199936199957%_ _%g199937199960%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g199936199957%_
                                               _%g199937199960%_))))
                                      (_%g199936199957%_ _%g199937199960%_))))
                              (_%g199936199957%_ _%g199937199960%_))))
                      (_%g199936199957%_ _%g199937199960%_)))))
          (_%g199935200014%_ _%stx199934%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self199833%_ _%stx199834%_)
        (let* ((_%g199836199861%_
                (lambda (_%g199837199858%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199837199858%_))))
               (_%g199835199930%_
                (lambda (_%g199837199864%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199837199864%_))
                      (let ((_%e199842199866%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199837199864%_))))
                        (let ((_%hd199843199869%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199842199866%_)))
                              (_%tl199844199871%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199842199866%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199844199871%_))
                              (let ((_%e199845199874%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199844199871%_))))
                                (let ((_%hd199846199877%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199845199874%_)))
                                      (_%tl199847199879%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199845199874%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199847199879%_))
                                      (let ((_%e199848199882%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199847199879%_))))
                                        (let ((_%hd199849199885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199848199882%_)))
                                              (_%tl199850199887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199848199882%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199850199887%_))
                                              (let ((_%e199851199890%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199850199887%_))))
                                                (let ((_%hd199852199893%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199851199890%_)))
                                                      (_%tl199853199895%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199851199890%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl199853199895%_))
                                                      (let ((_%e199854199898%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl199853199895%_))))
                (let ((_%hd199855199901%_
                       (let () (declare (not safe)) (##car _%e199854199898%_)))
                      (_%tl199856199903%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e199854199898%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl199856199903%_))
                      (cons '##structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self199833%_
                                     _%hd199852199893%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self199833%_
                                           _%hd199855199901%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self199833%_
                                                 _%hd199849199885%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self199833%_
                                                       _%hd199846199877%_))
                                                    (cons ''#f '()))))))
                      (_%g199836199861%_ _%g199837199864%_))))
              (_%g199836199861%_ _%g199837199864%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g199836199861%_
                                               _%g199837199864%_))))
                                      (_%g199836199861%_ _%g199837199864%_))))
                              (_%g199836199861%_ _%g199837199864%_))))
                      (_%g199836199861%_ _%g199837199864%_)))))
          (_%g199835199930%_ _%stx199834%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self199749%_ _%stx199750%_)
        (let* ((_%g199752199773%_
                (lambda (_%g199753199770%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199753199770%_))))
               (_%g199751199830%_
                (lambda (_%g199753199776%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199753199776%_))
                      (let ((_%e199757199778%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199753199776%_))))
                        (let ((_%hd199758199781%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199757199778%_)))
                              (_%tl199759199783%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199757199778%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199759199783%_))
                              (let ((_%e199760199786%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199759199783%_))))
                                (let ((_%hd199761199789%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199760199786%_)))
                                      (_%tl199762199791%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199760199786%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199762199791%_))
                                      (let ((_%e199763199794%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199762199791%_))))
                                        (let ((_%hd199764199797%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199763199794%_)))
                                              (_%tl199765199799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199763199794%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199765199799%_))
                                              (let ((_%e199766199802%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199765199799%_))))
                                                (let ((_%hd199767199805%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199766199802%_)))
                                                      (_%tl199768199807%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199766199802%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199768199807%_))
                                                      (cons '##direct-structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self199749%_
                             _%hd199767199805%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self199749%_
                                   _%hd199764199797%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self199749%_
                                         _%hd199761199789%_))
                                      (cons ''#f '())))))
              (_%g199752199773%_ _%g199753199776%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g199752199773%_
                                               _%g199753199776%_))))
                                      (_%g199752199773%_ _%g199753199776%_))))
                              (_%g199752199773%_ _%g199753199776%_))))
                      (_%g199752199773%_ _%g199753199776%_)))))
          (_%g199751199830%_ _%stx199750%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self199649%_ _%stx199650%_)
        (let* ((_%g199652199677%_
                (lambda (_%g199653199674%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199653199674%_))))
               (_%g199651199746%_
                (lambda (_%g199653199680%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199653199680%_))
                      (let ((_%e199658199682%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199653199680%_))))
                        (let ((_%hd199659199685%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199658199682%_)))
                              (_%tl199660199687%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199658199682%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199660199687%_))
                              (let ((_%e199661199690%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199660199687%_))))
                                (let ((_%hd199662199693%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199661199690%_)))
                                      (_%tl199663199695%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199661199690%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199663199695%_))
                                      (let ((_%e199664199698%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199663199695%_))))
                                        (let ((_%hd199665199701%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199664199698%_)))
                                              (_%tl199666199703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199664199698%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199666199703%_))
                                              (let ((_%e199667199706%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199666199703%_))))
                                                (let ((_%hd199668199709%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199667199706%_)))
                                                      (_%tl199669199711%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199667199706%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl199669199711%_))
                                                      (let ((_%e199670199714%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl199669199711%_))))
                (let ((_%hd199671199717%_
                       (let () (declare (not safe)) (##car _%e199670199714%_)))
                      (_%tl199672199719%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e199670199714%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl199672199719%_))
                      (cons '##direct-structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self199649%_
                                     _%hd199668199709%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self199649%_
                                           _%hd199671199717%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self199649%_
                                                 _%hd199665199701%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self199649%_
                                                       _%hd199662199693%_))
                                                    (cons ''#f '()))))))
                      (_%g199652199677%_ _%g199653199680%_))))
              (_%g199652199677%_ _%g199653199680%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g199652199677%_
                                               _%g199653199680%_))))
                                      (_%g199652199677%_ _%g199653199680%_))))
                              (_%g199652199677%_ _%g199653199680%_))))
                      (_%g199652199677%_ _%g199653199680%_)))))
          (_%g199651199746%_ _%stx199650%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self199444%_ _%stx199445%_)
        (let* ((_%g199447199468%_
                (lambda (_%g199448199465%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199448199465%_))))
               (_%g199446199646%_
                (lambda (_%g199448199471%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199448199471%_))
                      (let ((_%e199452199473%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199448199471%_))))
                        (let ((_%hd199453199476%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199452199473%_)))
                              (_%tl199454199478%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199452199473%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199454199478%_))
                              (let ((_%e199455199481%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199454199478%_))))
                                (let ((_%hd199456199484%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199455199481%_)))
                                      (_%tl199457199486%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199455199481%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199457199486%_))
                                      (let ((_%e199458199489%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199457199486%_))))
                                        (let ((_%hd199459199492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199458199489%_)))
                                              (_%tl199460199494%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199458199489%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199460199494%_))
                                              (let ((_%e199461199497%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199460199494%_))))
                                                (let ((_%hd199462199500%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199461199497%_)))
                                                      (_%tl199463199502%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199461199497%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199463199502%_))
                                                      (if (gxc#current-compile-decls-unsafe?)
                                                          (cons '##unchecked-structure-ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self199444%_
                                 _%hd199462199500%_))
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self199444%_
                                       _%hd199459199492%_))
                                    (cons ''#f (cons ''#f '())))))
                  (let _%lp199525%_ ((_%rest199528%_
                                      (cons _%hd199459199492%_
                                            (cons _%hd199462199500%_ '())))
                                     (_%bind199530%_ '())
                                     (_%args199531%_ '()))
                    (let* ((_%rest199532199540%_ _%rest199528%_)
                           (_%else199534199548%_
                            (lambda ()
                              (cons 'let
                                    (cons _%bind199530%_
                                          (cons '(declare (not safe))
                                                (cons (cons '##unchecked-structure-ref
                                                            (let ((__tmp207666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons ''#f (cons ''#f '()))))
                      (declare (not safe))
                      (foldr__0 cons __tmp207666 _%args199531%_)))
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (_%K199536199634%_
                            (lambda (_%rest199551%_ _%e199552%_)
                              (let* ((_%__stx207303207304%_ _%e199552%_)
                                     (_%g199557199575%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx207303207304%_)))))
                                (let ((_%__kont207305207306%_
                                       (lambda ()
                                         (_%lp199525%_
                                          _%rest199551%_
                                          _%bind199530%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e199552%_))
                                                _%args199531%_))))
                                      (_%__kont207307207308%_
                                       (lambda ()
                                         (_%lp199525%_
                                          _%rest199551%_
                                          _%bind199530%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e199552%_))
                                                _%args199531%_))))
                                      (_%__kont207309207310%_
                                       (lambda ()
                                         (let ((_%tmp199582%_
                                                (let ((__tmp207667
                                                       (let ()
                                                         (declare (not safe))
                                                         (##gensym '__tmp))))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp207667))))
                                           (_%lp199525%_
                                            _%rest199551%_
                                            (cons (cons _%tmp199582%_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _%e199552%_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind199530%_)
                                            (cons _%tmp199582%_
                                                  _%args199531%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx207303207304%_))
                                      (let ((_%e199559199613%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx207303207304%_))))
                                        (let ((_%tl199561199618%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199559199613%_)))
                                              (_%hd199560199616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199559199613%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%hd199560199616%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%hd199560199616%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl199561199618%_))
                                                      (let ((_%e199562199621%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl199561199618%_))))
                (let ((_%tl199564199626%_
                       (let () (declare (not safe)) (##cdr _%e199562199621%_)))
                      (_%hd199563199624%_
                       (let ()
                         (declare (not safe))
                         (##car _%e199562199621%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl199564199626%_))
                      (_%__kont207305207306%_)
                      (_%__kont207309207310%_))))
              (_%__kont207309207310%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _%hd199560199616%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199561199618%_))
                                                          (let ((_%e199568199598%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl199561199618%_))))
                    (let ((_%tl199570199603%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199568199598%_)))
                          (_%hd199569199601%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199568199598%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199570199603%_))
                          (_%__kont207307207308%_)
                          (_%__kont207309207310%_))))
                  (_%__kont207309207310%_))
              (_%__kont207309207310%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont207309207310%_))))
                                      (_%__kont207309207310%_)))))))
                      (if (pair? _%rest199532199540%_)
                          (let ((_%hd199537199637%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%rest199532199540%_)))
                                (_%tl199538199639%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%rest199532199540%_))))
                            (let* ((_%e199642%_ _%hd199537199637%_)
                                   (_%rest199644%_ _%tl199538199639%_))
                              (_%K199536199634%_ _%rest199644%_ _%e199642%_)))
                          (_%else199534199548%_)))))
              (_%g199447199468%_ _%g199448199471%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g199447199468%_
                                               _%g199448199471%_))))
                                      (_%g199447199468%_ _%g199448199471%_))))
                              (_%g199447199468%_ _%g199448199471%_))))
                      (_%g199447199468%_ _%g199448199471%_)))))
          (_%g199446199646%_ _%stx199445%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self199223%_ _%stx199224%_)
        (let* ((_%g199226199251%_
                (lambda (_%g199227199248%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199227199248%_))))
               (_%g199225199441%_
                (lambda (_%g199227199254%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199227199254%_))
                      (let ((_%e199232199256%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199227199254%_))))
                        (let ((_%hd199233199259%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199232199256%_)))
                              (_%tl199234199261%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199232199256%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199234199261%_))
                              (let ((_%e199235199264%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199234199261%_))))
                                (let ((_%hd199236199267%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199235199264%_)))
                                      (_%tl199237199269%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199235199264%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199237199269%_))
                                      (let ((_%e199238199272%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199237199269%_))))
                                        (let ((_%hd199239199275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199238199272%_)))
                                              (_%tl199240199277%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199238199272%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199240199277%_))
                                              (let ((_%e199241199280%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199240199277%_))))
                                                (let ((_%hd199242199283%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199241199280%_)))
                                                      (_%tl199243199285%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199241199280%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl199243199285%_))
                                                      (let ((_%e199244199288%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl199243199285%_))))
                (let ((_%hd199245199291%_
                       (let () (declare (not safe)) (##car _%e199244199288%_)))
                      (_%tl199246199293%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e199244199288%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl199246199293%_))
                      (if (gxc#current-compile-decls-unsafe?)
                          (cons '##unchecked-structure-set!
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self199223%_
                                         _%hd199242199283%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self199223%_
                                               _%hd199245199291%_))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self199223%_
                                                     _%hd199239199275%_))
                                                  (cons ''#f
                                                        (cons ''#f '()))))))
                          (let _%lp199320%_ ((_%rest199323%_
                                              (cons _%hd199239199275%_
                                                    (cons _%hd199245199291%_
                                                          (cons _%hd199242199283%_
                                                                '()))))
                                             (_%bind199325%_ '())
                                             (_%args199326%_ '()))
                            (let* ((_%rest199327199335%_ _%rest199323%_)
                                   (_%else199329199343%_
                                    (lambda ()
                                      (cons 'let
                                            (cons _%bind199325%_
                                                  (cons '(declare (not safe))
                                                        (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp207668 (cons ''#f (cons ''#f '()))))
                              (declare (not safe))
                              (foldr__0 cons __tmp207668 _%args199326%_)))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%K199331199429%_
                                    (lambda (_%rest199346%_ _%e199347%_)
                                      (let* ((_%__stx207349207350%_
                                              _%e199347%_)
                                             (_%g199352199370%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%__stx207349207350%_)))))
                                        (let ((_%__kont207351207352%_
                                               (lambda ()
                                                 (_%lp199320%_
                                                  _%rest199346%_
                                                  _%bind199325%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e199347%_))
                                                        _%args199326%_))))
                                              (_%__kont207353207354%_
                                               (lambda ()
                                                 (_%lp199320%_
                                                  _%rest199346%_
                                                  _%bind199325%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e199347%_))
                                                        _%args199326%_))))
                                              (_%__kont207355207356%_
                                               (lambda ()
                                                 (let ((_%tmp199377%_
                                                        (let ((__tmp207669
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##gensym '__tmp))))
                  (declare (not safe))
                  (make-symbol__0 __tmp207669))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%lp199320%_
                                                    _%rest199346%_
                                                    (cons (cons _%tmp199377%_
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__0 _%e199347%_))
                              '()))
                  _%bind199325%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%tmp199377%_
                                                          _%args199326%_))))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%__stx207349207350%_))
                                              (let ((_%e199354199408%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%__stx207349207350%_))))
                                                (let ((_%tl199356199413%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199354199408%_)))
                                                      (_%hd199355199411%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199354199408%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd199355199411%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd199355199411%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl199356199413%_))
                      (let ((_%e199357199416%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl199356199413%_))))
                        (let ((_%tl199359199421%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199357199416%_)))
                              (_%hd199358199419%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199357199416%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199359199421%_))
                              (_%__kont207351207352%_)
                              (_%__kont207355207356%_))))
                      (_%__kont207355207356%_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-eq? '%#quote _%hd199355199411%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199356199413%_))
                          (let ((_%e199363199393%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl199356199413%_))))
                            (let ((_%tl199365199398%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199363199393%_)))
                                  (_%hd199364199396%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199363199393%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199365199398%_))
                                  (_%__kont207353207354%_)
                                  (_%__kont207355207356%_))))
                          (_%__kont207355207356%_))
                      (_%__kont207355207356%_)))
              (_%__kont207355207356%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont207355207356%_)))))))
                              (if (pair? _%rest199327199335%_)
                                  (let ((_%hd199332199432%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest199327199335%_)))
                                        (_%tl199333199434%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%rest199327199335%_))))
                                    (let* ((_%e199437%_ _%hd199332199432%_)
                                           (_%rest199439%_ _%tl199333199434%_))
                                      (_%K199331199429%_
                                       _%rest199439%_
                                       _%e199437%_)))
                                  (_%else199329199343%_)))))
                      (_%g199226199251%_ _%g199227199254%_))))
              (_%g199226199251%_ _%g199227199254%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g199226199251%_
                                               _%g199227199254%_))))
                                      (_%g199226199251%_ _%g199227199254%_))))
                              (_%g199226199251%_ _%g199227199254%_))))
                      (_%g199226199251%_ _%g199227199254%_)))))
          (_%g199225199441%_ _%stx199224%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self199062%_ _%stx199063%_)
        (letrec ((_%import-set-template199065%_
                  (lambda (_%in199168%_ _%phi199169%_)
                    (let ((_%iphi199171%_
                           (fx+ _%phi199169%_
                                (##direct-structure-ref
                                 _%in199168%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports199172%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in199168%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp199174%_ ((_%rest199176%_ _%imports199172%_)
                                         (_%r199177%_ '()))
                        (let* ((_%rest199178199186%_ _%rest199176%_)
                               (_%else199180199194%_ (lambda () _%r199177%_))
                               (_%K199182199211%_
                                (lambda (_%rest199197%_ _%in199198%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in199198%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi199171%_))
                                          (_%lp199174%_
                                           _%rest199197%_
                                           (cons _%in199198%_ _%r199177%_))
                                          (_%lp199174%_
                                           _%rest199197%_
                                           _%r199177%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in199198%_
                                             'gx#module-import::t))
                                          (let ((_%iphi199202%_
                                                 (fx+ _%phi199169%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in199198%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi199202%_))
                                                (_%lp199174%_
                                                 _%rest199197%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in199198%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r199177%_))
                                                (_%lp199174%_
                                                 _%rest199197%_
                                                 _%r199177%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in199198%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi199205%_
                                                     (fx+ _%iphi199171%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in199198%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi199205%_))
                                                    (_%lp199174%_
                                                     _%rest199197%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in199198%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r199177%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi199205%_))
                                                        (_%lp199174%_
                                                         _%rest199197%_
                                                         (let ((__tmp207670
                                                                (_%import-set-template199065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in199198%_
                         _%iphi199171%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r199177%_ __tmp207670)))
                (_%lp199174%_ _%rest199197%_ _%r199177%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp199174%_
                                               _%rest199197%_
                                               _%r199177%_)))))))
                          (if (pair? _%rest199178199186%_)
                              (let ((_%hd199183199214%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest199178199186%_)))
                                    (_%tl199184199216%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest199178199186%_))))
                                (let* ((_%in199219%_ _%hd199183199214%_)
                                       (_%rest199221%_ _%tl199184199216%_))
                                  (_%K199182199211%_
                                   _%rest199221%_
                                   _%in199219%_)))
                              (_%else199180199194%_))))))))
          (let* ((_%g199067199077%_
                  (lambda (_%g199068199074%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g199068199074%_))))
                 (_%g199066199165%_
                  (lambda (_%g199068199080%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g199068199080%_))
                        (let ((_%e199070199082%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g199068199080%_))))
                          (let ((_%hd199071199085%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199070199082%_)))
                                (_%tl199072199087%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199070199082%_))))
                            (let ((_%ht199101%_
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq))))
                              (let _%lp199103%_ ((_%rest199105%_
                                                  _%tl199072199087%_)
                                                 (_%loads199106%_ '()))
                                (letrec ((_%K199108%_
                                          (lambda (_%ctx199158%_
                                                   _%rest199159%_)
                                            (let ((_%id199161%_
                                                   (##structure-ref
                                                    _%ctx199158%_
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__hash-get
                                                     _%ht199101%_
                                                     _%id199161%_))
                                                  (_%lp199103%_
                                                   _%rest199159%_
                                                   _%loads199106%_)
                                                  (let ((_%rt199163%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#module-id->path-string
                                                            _%id199161%_))))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht199101%_
                                                       _%id199161%_
                                                       _%rt199163%_))
                                                    (_%lp199103%_
                                                     _%rest199159%_
                                                     (cons _%rt199163%_
                                                           _%loads199106%_))))))))
                                  (let* ((_%rest199109199117%_ _%rest199105%_)
                                         (_%else199111199129%_
                                          (lambda ()
                                            (cons 'begin
                                                  (let ((__tmp207672
                                                         (lambda (_%g199124199126%_)
                                                           (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g199124199126%_)))
                (__tmp207671 (reverse _%loads199106%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (##map __tmp207672
                                                           __tmp207671)))))
                                         (_%K199113199146%_
                                          (lambda (_%rest199132%_ _%in199133%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%in199133%_
                                                   'gx#module-context::t))
                                                (_%K199108%_
                                                 _%in199133%_
                                                 _%rest199132%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       _%in199133%_
                                                       'gx#module-import::t))
                                                    (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%in199133%_
                            '3
                            '#f
                            '#f)))
                (_%K199108%_
                 (##direct-structure-ref
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%in199133%_ '1 '#f '#f))
                  '1
                  gx#module-export::t
                  '#f)
                 _%rest199132%_)
                (_%lp199103%_ _%rest199132%_ _%loads199106%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           _%in199133%_
                                                           'gx#import-set::t))
                                                        (let ((_%phi199138%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%in199133%_ '2 '#f '#f))))
                  (if (fxzero? _%phi199138%_)
                      (_%K199108%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%in199133%_ '1 '#f '#f))
                       _%rest199132%_)
                      (if (fxpositive? _%phi199138%_)
                          (let ((_%deps199142%_
                                 (_%import-set-template199065%_
                                  _%in199133%_
                                  '0)))
                            (_%lp199103%_
                             (let ()
                               (declare (not safe))
                               (foldl__0 cons _%rest199132%_ _%deps199142%_))
                             _%loads199106%_))
                          (_%lp199103%_ _%rest199132%_ _%loads199106%_))))
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"Unexpected import"
                   _%stx199063%_
                   _%in199133%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%rest199109199117%_)
                                        (let ((_%hd199114199149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest199109199117%_)))
                                              (_%tl199115199151%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest199109199117%_))))
                                          (let* ((_%in199154%_
                                                  _%hd199114199149%_)
                                                 (_%rest199156%_
                                                  _%tl199115199151%_))
                                            (_%K199113199146%_
                                             _%rest199156%_
                                             _%in199154%_)))
                                        (_%else199111199129%_))))))))
                        (_%g199067199077%_ _%g199068199080%_)))))
            (_%g199066199165%_ _%stx199063%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self198876%_ _%stx198877%_)
        (letrec ((_%add-lift!198879%_
                  (lambda (_%expr199060%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr199060%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote198880%_
                  (lambda (_%id199057%_ _%marks199058%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id199057%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks199058%_
                                                        '()))))))))
                 (_%generate-simple198881%_
                  (lambda (_%stxq199052%_)
                    (let ((_%gid199054%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid199055%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq199052%_))))
                      (_%add-lift!198879%_
                       (cons 'define
                             (cons _%gid199054%_
                                   (cons (_%generate-syntax-quote198880%_
                                          _%qid199055%_
                                          ''())
                                         '()))))
                      (let ((__tmp207673
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp207673 _%stxq199052%_ _%gid199054%_))
                      _%gid199054%_)))
                 (_%generate-serialized198882%_
                  (lambda (_%stxq199042%_ _%marks199043%_)
                    (let* ((_%mark-refs199045%_
                            (map _%generate-mark198883%_ _%marks199043%_))
                           (_%gid199047%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid199049%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq199042%_))))
                      (_%add-lift!198879%_
                       (cons 'define
                             (cons _%gid199047%_
                                   (cons (_%generate-syntax-quote198880%_
                                          _%qid199049%_
                                          (cons 'list _%mark-refs199045%_))
                                         '()))))
                      (let ((__tmp207674
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp207674 _%stxq199042%_ _%gid199047%_))
                      _%gid199047%_)))
                 (_%generate-mark198883%_
                  (lambda (_%mark199027%_)
                    (let ((_%$e199029%_
                           (let ((__tmp207675
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp207675 _%mark199027%_))))
                      (if _%$e199029%_
                          _%$e199029%_
                          (let* ((_%gid199033%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr199035%_
                                  (_%serialize-mark198884%_ _%mark199027%_))
                                 (_%ctx199037%_
                                  (let ((__tmp207676
                                         (##structure-ref
                                          _%mark199027%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp207676)))
                                 (_%ctx-ref199039%_
                                  (if (eq? _%ctx199037%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref198885%_
                                                               _%ctx199037%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp207677
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp207677
                               _%mark199027%_
                               _%gid199033%_))
                            (_%add-lift!198879%_
                             (cons 'define
                                   (cons _%gid199033%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr199035%_ '()))
                   (cons _%ctx-ref199039%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid199033%_)))))
                 (_%serialize-mark198884%_
                  (lambda (_%mark198975%_)
                    (letrec ((_%quote-e198977%_
                              (lambda (_%sym199025%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym199025%_))
                                    _%sym199025%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym199025%_))))))
                      (let* ((_%mark198978198987%_ _%mark198975%_)
                             (_%E198980198990%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark198978198987%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K198981199002%_
                              (lambda (_%trace198993%_
                                       _%phi198994%_
                                       _%ctx198995%_
                                       _%subst198996%_)
                                (let ((_%subs198998%_
                                       (if _%subst198996%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst198996%_))
                                           '())))
                                  (cons _%phi198994%_
                                        (let ((__tmp207678
                                               (lambda (_%pair199000%_)
                                                 (cons (_%quote-e198977%_
                                                        (car _%pair199000%_))
                                                       (_%quote-e198977%_
                                                        (cdr _%pair199000%_))))))
                                          (declare (not safe))
                                          (##map __tmp207678
                                                 _%subs198998%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark198978198987%_
                               'gx#expander-mark::t))
                            (let* ((_%e198982199005%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark198978198987%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst199008%_ _%e198982199005%_)
                                   (_%e198983199010%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark198978198987%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx199013%_ _%e198983199010%_)
                                   (_%e198984199015%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark198978198987%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi199018%_ _%e198984199015%_)
                                   (_%e198985199020%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark198978198987%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace199023%_ _%e198985199020%_))
                              (_%K198981199002%_
                               _%trace199023%_
                               _%phi199018%_
                               _%ctx199013%_
                               _%subst199008%_))
                            (_%E198980198990%_))))))
                 (_%context-ref198885%_
                  (lambda (_%ctx198962%_)
                    (if (let ((__tmp207679
                               (##structure-ref
                                _%ctx198962%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp207679
                           'gx#module-context::t))
                        (let ((_%ctx-ref198964%_
                               (_%context-ref-nested198887%_ _%ctx198962%_))
                              (_%ctx-origin198965%_
                               (_%context-ref-origin198886%_ _%ctx198962%_))
                              (_%origin198966%_
                               (_%context-ref-origin198886%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin198966%_ _%ctx-origin198965%_)
                              (let ((_%ref198968%_
                                     (_%context-ref-nested198887%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp198970%_ ((_%ref198972%_
                                                    (cdr _%ref198968%_))
                                                   (_%ctx-ref198973%_
                                                    (cdr _%ctx-ref198964%_)))
                                  (if (and (pair? _%ref198972%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref198972%_))
                                                (car _%ctx-ref198973%_)))
                                      (_%lp198970%_
                                       (cdr _%ref198972%_)
                                       (cdr _%ctx-ref198973%_))
                                      (cons '#f _%ctx-ref198973%_))))
                              _%ctx-ref198964%_))
                        (let ((__tmp207680
                               (##structure-ref
                                _%ctx198962%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp207680)))))
                 (_%context-ref-origin198886%_
                  (lambda (_%ctx198954%_)
                    (let _%lp198956%_ ((_%ctx198958%_ _%ctx198954%_))
                      (let ((_%super198960%_
                             (##structure-ref
                              _%ctx198958%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super198960%_
                               'gx#module-context::t))
                            (_%lp198956%_ _%super198960%_)
                            _%ctx198958%_)))))
                 (_%context-ref-nested198887%_
                  (lambda (_%ctx198945%_)
                    (let _%lp198947%_ ((_%ctx198949%_ _%ctx198945%_)
                                       (_%r198950%_ '()))
                      (let ((_%super198952%_
                             (##structure-ref
                              _%ctx198949%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super198952%_
                               'gx#module-context::t))
                            (_%lp198947%_
                             _%super198952%_
                             (cons (car (##structure-ref
                                         _%ctx198949%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r198950%_))
                            (cons (let ((__tmp207681
                                         (##structure-ref
                                          _%ctx198949%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp207681))
                                  _%r198950%_)))))))
          (let* ((_%g198889198902%_
                  (lambda (_%g198890198899%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198890198899%_))))
                 (_%g198888198942%_
                  (lambda (_%g198890198905%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198890198905%_))
                        (let ((_%e198892198907%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198890198905%_))))
                          (let ((_%hd198893198910%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198892198907%_)))
                                (_%tl198894198912%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198892198907%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198894198912%_))
                                (let ((_%e198895198915%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl198894198912%_))))
                                  (let ((_%hd198896198918%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198895198915%_)))
                                        (_%tl198897198920%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198895198915%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198897198920%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd198896198918%_))
                                            (let ((_%$e198936%_
                                                   (let ((__tmp207682
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-identifiers))))
                                                     (declare (not safe))
                                                     (hash-get
                                                      __tmp207682
                                                      _%hd198896198918%_))))
                                              (if _%$e198936%_
                                                  _%$e198936%_
                                                  (let ((_%marks198940%_
                                                         (##direct-structure-ref
                                                          _%hd198896198918%_
                                                          '4
                                                          gx#syntax-quote::t
                                                          '#f)))
                                                    (if (null? _%marks198940%_)
                                                        (_%generate-simple198881%_
                                                         _%hd198896198918%_)
                                                        (_%generate-serialized198882%_
                                                         _%hd198896198918%_
                                                         _%marks198940%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot quote non-identifier syntax"
                                               _%hd198896198918%_)))
                                        (_%g198889198902%_
                                         _%g198890198905%_))))
                                (_%g198889198902%_ _%g198890198905%_))))
                        (_%g198889198902%_ _%g198890198905%_)))))
            (_%g198888198942%_ _%stx198877%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self198808%_ _%stx198809%_)
        (let* ((_%g198811198828%_
                (lambda (_%g198812198825%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198812198825%_))))
               (_%g198810198873%_
                (lambda (_%g198812198831%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198812198831%_))
                      (let ((_%e198815198833%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198812198831%_))))
                        (let ((_%hd198816198836%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198815198833%_)))
                              (_%tl198817198838%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198815198833%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198817198838%_))
                              (let ((_%e198818198841%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198817198838%_))))
                                (let ((_%hd198819198844%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198818198841%_)))
                                      (_%tl198820198846%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198818198841%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198820198846%_))
                                      (let ((_%e198821198849%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198820198846%_))))
                                        (let ((_%hd198822198852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198821198849%_)))
                                              (_%tl198823198854%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198821198849%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198823198854%_))
                                              (cons 'define
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd198819198844%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self198808%_ _%hd198822198852%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198811198828%_
                                               _%g198812198831%_))))
                                      (_%g198811198828%_ _%g198812198831%_))))
                              (_%g198811198828%_ _%g198812198831%_))))
                      (_%g198811198828%_ _%g198812198831%_)))))
          (_%g198810198873%_ _%stx198809%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self198757%_ _%stx198758%_)
        (let* ((_%g198760198770%_
                (lambda (_%g198761198767%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198761198767%_))))
               (_%g198759198805%_
                (lambda (_%g198761198773%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198761198773%_))
                      (let ((_%e198763198775%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198761198773%_))))
                        (let ((_%hd198764198778%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198763198775%_)))
                              (_%tl198765198780%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198763198775%_))))
                          (let* ((_%c-body198797%_
                                  (map (lambda (_%g198792198794%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self198757%_
                                            _%g198792198794%_)))
                                       _%tl198765198780%_))
                                 (_%c-body198802%_
                                  (let ((__tmp207683
                                         (lambda (_%$obj198799%_)
                                           (not (eq? _%$obj198799%_
                                                     '#!void)))))
                                    (declare (not safe))
                                    (##filter __tmp207683 _%c-body198797%_))))
                            (cons '%#begin _%c-body198802%_))))
                      (_%g198760198770%_ _%g198761198773%_)))))
          (_%g198759198805%_ _%stx198758%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self198662%_ _%stx198663%_)
        (let* ((_%g198665198675%_
                (lambda (_%g198666198672%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198666198672%_))))
               (_%g198664198754%_
                (lambda (_%g198666198678%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198666198678%_))
                      (let ((_%e198668198680%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198666198678%_))))
                        (let ((_%hd198669198683%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198668198680%_)))
                              (_%tl198670198685%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198668198680%_))))
                          (let* ((_%phi198698%_
                                  (let ((__tmp207684
                                         (let ()
                                           (declare (not safe))
                                           (gx#current-expander-phi))))
                                    (declare (not safe))
                                    (##fx+ __tmp207684 '1)))
                                 (_%block198700%_
                                  (gxc#meta-state-begin-phi!
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self198662%_ 'state))
                                   _%phi198698%_))
                                 (_%compiled198703%_
                                  (let ((__tmp207685
                                         (lambda ()
                                           (gxc#apply-generate-meta-phi__%
                                            '#f
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _%self198662%_
                                               'state))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     '%#begin))
                                                  _%tl198670198685%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp207685
                                     gx#current-expander-phi
                                     _%phi198698%_)))
                                 (_%g198706198716%_
                                  (lambda (_%g198707198713%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g198707198713%_))))
                                 (_%g198705198751%_
                                  (lambda (_%g198707198719%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%g198707198719%_))
                                        (let ((_%e198709198721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g198707198719%_))))
                                          (let ((_%hd198710198724%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198709198721%_)))
                                                (_%tl198711198726%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198709198721%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd198710198724%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#begin
                                                       _%hd198710198724%_))
                                                    (let ((_%c-body198746%_
                                                           (filter (lambda (_%$obj198743%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (eq? _%$obj198743%_ '#!void)))
                           _%tl198711198726%_)))
              (if _%block198700%_
                  (cons '%#begin-syntax
                        (cons (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%block198700%_
                                                            '()))
                                                '())))
                              _%c-body198746%_))
                  (if (null? _%c-body198746%_)
                      '#!void
                      (cons '%#begin-syntax _%c-body198746%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g198706198716%_
                                                     _%g198707198719%_))
                                                (_%g198706198716%_
                                                 _%g198707198719%_))))
                                        (_%g198706198716%_
                                         _%g198707198719%_)))))
                            (_%g198705198751%_ _%compiled198703%_))))
                      (_%g198665198675%_ _%g198666198678%_)))))
          (_%g198664198754%_ _%stx198663%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self198593%_ _%stx198594%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self198593%_ 'state)))
        (let* ((_%g198596198610%_
                (lambda (_%g198597198607%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198597198607%_))))
               (_%g198595198659%_
                (lambda (_%g198597198613%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198597198613%_))
                      (let ((_%e198600198615%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198597198613%_))))
                        (let ((_%hd198601198618%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198600198615%_)))
                              (_%tl198602198620%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198600198615%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198602198620%_))
                              (let ((_%e198603198623%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198602198620%_))))
                                (let ((_%hd198604198626%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198603198623%_)))
                                      (_%tl198605198628%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198603198623%_))))
                                  (let ((_%key198645%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-identifier-key
                                            _%hd198604198626%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (interned-symbol? _%key198645%_))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Cannot compile module with uninterned id"
                                           _%stx198594%_
                                           _%hd198604198626%_
                                           _%key198645%_)))
                                    (let* ((_%ctx198647%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%hd198604198626%_)))
                                           (_%code198650%_
                                            (let ((__tmp207686
                                                   (lambda ()
                                                     (let ((__tmp207687
                                                            (##structure-ref
                                                             _%ctx198647%_
                                                             '11
                                                             gx#module-context::t
                                                             '#f)))
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self198593%_
                                                        __tmp207687)))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp207686
                                               gx#current-expander-context
                                               _%ctx198647%_)))
                                           (_%rt198652%_
                                            (let ((__tmp207688
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#current-compile-runtime-sections))))
                                              (declare (not safe))
                                              (hash-get
                                               __tmp207688
                                               _%ctx198647%_)))
                                           (_%loader198654%_
                                            (if _%rt198652%_
                                                (cons (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'load-module '()))
                          (cons (cons '%#quote (cons _%rt198652%_ '())) '())))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                           (_%modid198656%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd198604198626%_))))
                                      (gxc#meta-state-end-phi!
                                       (let ()
                                         (declare (not safe))
                                         (slot-ref__0 _%self198593%_ 'state)))
                                      (cons '%#module
                                            (cons _%modid198656%_
                                                  (cons _%code198650%_
                                                        _%loader198654%_)))))))
                              (_%g198596198610%_ _%g198597198613%_))))
                      (_%g198596198610%_ _%g198597198613%_)))))
          (_%g198595198659%_ _%stx198594%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx198580%_ _%context-chain198581%_)
        (let _%lp198583%_ ((_%ctx198585%_ _%ctx198580%_) (_%path198586%_ '()))
          (let ((_%super198588%_
                 (##structure-ref _%ctx198585%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super198588%_ _%context-chain198581%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx198585%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path198586%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super198588%_
                       'gx#module-context::t))
                    (_%lp198583%_
                     _%super198588%_
                     (cons (car (##structure-ref
                                 _%ctx198585%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path198586%_))
                    (cons (let ((__tmp207689
                                 (##structure-ref
                                  _%ctx198585%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp207689))
                          _%path198586%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp198573%_ ((_%ctx198575%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r198576%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx198575%_ 'gx#module-context::t))
              (_%lp198573%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx198575%_ '3 '#f '#f))
               (cons _%ctx198575%_ _%r198576%_))
              _%r198576%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self198338%_ _%stx198339%_)
        (letrec* ((_%context-chain198341%_ (gxc#current-context-chain))
                  (_%make-import-spec198342%_
                   (lambda (_%in198510%_)
                     (let* ((_%in198511198523%_ _%in198510%_)
                            (_%E198513198526%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in198511198523%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K198514198536%_
                             (lambda (_%phi198529%_
                                      _%name198530%_
                                      _%src-name198531%_
                                      _%src-phi198532%_
                                      _%src-key198533%_
                                      _%src-ctx198534%_)
                               (cons _%phi198529%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name198530%_))
                                           (cons _%src-phi198532%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name198531%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in198511198523%_
                              'gx#module-import::t))
                           (let ((_%e198515198539%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in198511198523%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e198515198539%_
                                    'gx#module-export::t))
                                 (let* ((_%e198518198542%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e198515198539%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx198545%_ _%e198518198542%_)
                                        (_%e198519198547%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e198515198539%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key198550%_ _%e198519198547%_)
                                        (_%e198520198552%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e198515198539%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi198555%_ _%e198520198552%_)
                                        (_%e198521198557%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e198515198539%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name198560%_ _%e198521198557%_)
                                        (_%e198516198562%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in198511198523%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name198565%_ _%e198516198562%_)
                                        (_%e198517198567%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in198511198523%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi198570%_ _%e198517198567%_))
                                   (_%K198514198536%_
                                    _%phi198570%_
                                    _%name198565%_
                                    _%src-name198560%_
                                    _%src-phi198555%_
                                    _%src-key198550%_
                                    _%src-ctx198545%_))
                                 (_%E198513198526%_)))
                           (_%E198513198526%_)))))
                  (_%make-import-path198343%_
                   (lambda (_%ctx198508%_)
                     (gxc#generate-meta-import-path
                      _%ctx198508%_
                      _%context-chain198341%_)))
                  (_%make-import-spec-in198344%_
                   (lambda (_%ctx198505%_ _%in198506%_)
                     (cons 'spec:
                           (cons (_%make-import-path198343%_ _%ctx198505%_)
                                 (reverse _%in198506%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self198338%_ 'state)))
          (let* ((_%g198346198356%_
                  (lambda (_%g198347198353%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198347198353%_))))
                 (_%g198345198502%_
                  (lambda (_%g198347198359%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198347198359%_))
                        (let ((_%e198349198361%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198347198359%_))))
                          (let ((_%hd198350198364%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198349198361%_)))
                                (_%tl198351198366%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198349198361%_))))
                            (let _%lp198380%_ ((_%rest198382%_
                                                _%tl198351198366%_)
                                               (_%current-src198383%_ '#f)
                                               (_%current-in198384%_ '())
                                               (_%r198385%_ '()))
                              (let* ((_%rest198386198394%_ _%rest198382%_)
                                     (_%else198388198404%_
                                      (lambda ()
                                        (let ((_%r198402%_
                                               (if _%current-src198383%_
                                                   (cons (_%make-import-spec-in198344%_
                                                          _%current-src198383%_
                                                          _%current-in198384%_)
                                                         _%r198385%_)
                                                   _%r198385%_)))
                                          (cons '%#import
                                                (reverse _%r198402%_)))))
                                     (_%K198390198490%_
                                      (lambda (_%rest198407%_ _%in198408%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               _%in198408%_
                                               'gx#module-import::t))
                                            (let* ((_%in198410198417%_
                                                    _%in198408%_)
                                                   (_%E198412198420%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"No clause matching"
                                                               _%in198410198417%_
                                                               '((module-import
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (module-export src-ctx)))))
              '#!void))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K198413198428%_
                                                    (lambda (_%src-ctx198423%_)
                                                      (if (eq? _%current-src198383%_
                                                               _%src-ctx198423%_)
                                                          (_%lp198380%_
                                                           _%rest198407%_
                                                           _%current-src198383%_
                                                           (cons (_%make-import-spec198342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in198408%_)
                         _%current-in198384%_)
                   _%r198385%_)
                  (if _%current-src198383%_
                      (_%lp198380%_
                       _%rest198407%_
                       _%src-ctx198423%_
                       (cons (_%make-import-spec198342%_ _%in198408%_) '())
                       (cons (_%make-import-spec-in198344%_
                              _%current-src198383%_
                              _%current-in198384%_)
                             _%r198385%_))
                      (_%lp198380%_
                       _%rest198407%_
                       _%src-ctx198423%_
                       (cons (_%make-import-spec198342%_ _%in198408%_) '())
                       _%r198385%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%e198414198431%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%in198410198417%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%e198414198431%_
                                                     'gx#module-export::t))
                                                  (let* ((_%e198415198434%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%e198414198431%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%src-ctx198437%_
                                                          _%e198415198434%_))
                                                    (_%K198413198428%_
                                                     _%src-ctx198437%_))
                                                  (_%E198412198420%_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   _%in198408%_
                                                   'gx#import-set::t))
                                                (let* ((_%phi198440%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in198408%_
                                                           '2
                                                           '#f
                                                           '#f)))
                                                       (_%src198442%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in198408%_
                                                           '1
                                                           '#f
                                                           '#f)))
                                                       (_%src-in198482%_
                                                        (let* ((_%g198443198452%_
                                                                (_%make-import-path198343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%src198442%_))
                       (_%E198446198456%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%g198443198452%_
                                   '([path])
                                   '(path)))
                          '#!void)))
                  (let ((_%K198448198472%_
                         (lambda (_%path198470%_) _%path198470%_))
                        (_%K198447198462%_
                         (lambda (_%path198460%_) (cons 'in: _%path198460%_))))
                    (if (pair? _%g198443198452%_)
                        (let ((_%tl198450198477%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%g198443198452%_)))
                              (_%hd198449198475%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%g198443198452%_))))
                          (if (null? _%tl198450198477%_)
                              (let ((_%path198480%_ _%hd198449198475%_))
                                (_%K198448198472%_ _%path198480%_))
                              (let ((_%path198465%_ _%g198443198452%_))
                                (_%K198447198462%_ _%path198465%_))))
                        (let ((_%path198465%_ _%g198443198452%_))
                          (_%K198447198462%_ _%path198465%_))))))
               (_%r198484%_
                (if _%current-src198383%_
                    (cons (_%make-import-spec-in198344%_
                           _%current-src198383%_
                           _%current-in198384%_)
                          _%r198385%_)
                    _%r198385%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp198380%_
                                                   _%rest198407%_
                                                   '#f
                                                   '()
                                                   (cons (if (fxzero? _%phi198440%_)
                                                             _%src-in198482%_
                                                             (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi198440%_ (cons _%src-in198482%_ '()))))
                 _%r198484%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-instance-of?
                                                       _%in198408%_
                                                       'gx#module-context::t))
                                                    (let ((_%r198488%_
                                                           (if _%current-src198383%_
                                                               (cons (_%make-import-spec-in198344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%current-src198383%_
                              _%current-in198384%_)
                             _%r198385%_)
                       _%r198385%_)))
              (_%lp198380%_
               _%rest198407%_
               '#f
               '()
               (cons (cons 'runtime: (_%make-import-path198343%_ _%in198408%_))
                     _%r198488%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#!void))))))
                                (if (pair? _%rest198386198394%_)
                                    (let ((_%hd198391198493%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%rest198386198394%_)))
                                          (_%tl198392198495%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%rest198386198394%_))))
                                      (let* ((_%in198498%_ _%hd198391198493%_)
                                             (_%rest198500%_
                                              _%tl198392198495%_))
                                        (_%K198390198490%_
                                         _%rest198500%_
                                         _%in198498%_)))
                                    (_%else198388198404%_))))))
                        (_%g198346198356%_ _%g198347198359%_)))))
            (_%g198345198502%_ _%stx198339%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self198148%_ _%stx198149%_)
        (letrec* ((_%context-chain198151%_ (gxc#current-context-chain))
                  (_%make-import-path198152%_
                   (lambda (_%ctx198336%_)
                     (gxc#generate-meta-import-path
                      _%ctx198336%_
                      _%context-chain198151%_))))
          (let* ((_%g198154198164%_
                  (lambda (_%g198155198161%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198155198161%_))))
                 (_%g198153198333%_
                  (lambda (_%g198155198167%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198155198167%_))
                        (let ((_%e198157198169%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198155198167%_))))
                          (let ((_%hd198158198172%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198157198169%_)))
                                (_%tl198159198174%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198157198169%_))))
                            (let _%lp198188%_ ((_%rest198190%_
                                                _%tl198159198174%_)
                                               (_%r198191%_ '()))
                              (let* ((_%rest198192198200%_ _%rest198190%_)
                                     (_%else198194198208%_
                                      (lambda ()
                                        (cons '%#export
                                              (reverse _%r198191%_))))
                                     (_%K198196198321%_
                                      (lambda (_%rest198211%_ _%out198212%_)
                                        (let* ((_%out198213198226%_
                                                _%out198212%_)
                                               (_%E198216198230%_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _%out198213198226%_
                                                           '((module-export
                                                              _
                                                              key
                                                              phi
                                                              name))
                                                           '((export-set
                                                              src
                                                              phi))))
                                                  '#!void)))
                                          (let ((_%K198220198300%_
                                                 (lambda (_%name198296%_
                                                          _%phi198297%_
                                                          _%key198298%_)
                                                   (_%lp198188%_
                                                    _%rest198211%_
                                                    (cons (cons 'spec:
                                                                (cons _%phi198297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-identifier-key
                                       _%key198298%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier-key
                                             _%name198296%_))
                                          '()))))
                  _%r198191%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%K198217198280%_
                                                 (lambda (_%phi198234%_
                                                          _%src198235%_)
                                                   (let* ((_%out198275%_
                                                           (if _%src198235%_
                                                               (cons 'import:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let* ((_%g198236198245%_
                                           (_%make-import-path198152%_
                                            _%src198235%_))
                                          (_%E198239198249%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (error '"No clause matching"
                                                      _%g198236198245%_
                                                      '([path])
                                                      '(path)))
                                             '#!void)))
                                     (let ((_%K198241198265%_
                                            (lambda (_%path198263%_)
                                              _%path198263%_))
                                           (_%K198240198255%_
                                            (lambda (_%path198253%_)
                                              (cons 'in: _%path198253%_))))
                                       (if (pair? _%g198236198245%_)
                                           (let ((_%tl198243198270%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%g198236198245%_)))
                                                 (_%hd198242198268%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%g198236198245%_))))
                                             (if (null? _%tl198243198270%_)
                                                 (let ((_%path198273%_
                                                        _%hd198242198268%_))
                                                   (_%K198241198265%_
                                                    _%path198273%_))
                                                 (let ((_%path198258%_
                                                        _%g198236198245%_))
                                                   (_%K198240198255%_
                                                    _%path198258%_))))
                                           (let ((_%path198258%_
                                                  _%g198236198245%_))
                                             (_%K198240198255%_
                                              _%path198258%_)))))
                                   '()))
                       '#t))
                  (_%out198277%_
                   (if (fxzero? _%phi198234%_)
                       _%out198275%_
                       (cons 'phi:
                             (cons _%phi198234%_ (cons _%out198275%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp198188%_
                                                      _%rest198211%_
                                                      (cons _%out198277%_
                                                            _%r198191%_))))))
                                            (let ((_%try-match198215198293%_
                                                   (lambda ()
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            _%out198213198226%_
                                                            'gx#export-set::t))
                                                         (let* ((_%e198218198283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%out198213198226%_
                            '1
                            '#f
                            '#f)))
                        (_%e198219198288%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%out198213198226%_
                            '2
                            '#f
                            '#f))))
                   (let ((_%src198286%_ _%e198218198283%_)
                         (_%phi198291%_ _%e198219198288%_))
                     (_%K198217198280%_ _%phi198291%_ _%src198286%_)))
                 (_%E198216198230%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%out198213198226%_
                                                     'gx#module-export::t))
                                                  (let* ((_%e198221198303%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%out198213198226%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%e198222198306%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%out198213198226%_
                                                             '2
                                                             '#f
                                                             '#f)))
                                                         (_%e198223198311%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%out198213198226%_
                                                             '3
                                                             '#f
                                                             '#f)))
                                                         (_%e198224198316%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%out198213198226%_
                                                             '4
                                                             '#f
                                                             '#f))))
                                                    (let ((_%key198309%_
                                                           _%e198222198306%_)
                                                          (_%phi198314%_
                                                           _%e198223198311%_)
                                                          (_%name198319%_
                                                           _%e198224198316%_))
                                                      (_%K198220198300%_
                                                       _%name198319%_
                                                       _%phi198314%_
                                                       _%key198309%_)))
                                                  (_%try-match198215198293%_))))))))
                                (if (pair? _%rest198192198200%_)
                                    (let ((_%hd198197198324%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%rest198192198200%_)))
                                          (_%tl198198198326%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%rest198192198200%_))))
                                      (let* ((_%out198329%_ _%hd198197198324%_)
                                             (_%rest198331%_
                                              _%tl198198198326%_))
                                        (_%K198196198321%_
                                         _%rest198331%_
                                         _%out198329%_)))
                                    (_%else198194198208%_))))))
                        (_%g198154198164%_ _%g198155198167%_)))))
            (_%g198153198333%_ _%stx198149%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self198109%_ _%stx198110%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self198109%_ 'state)))
        (let* ((_%g198112198122%_
                (lambda (_%g198113198119%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198113198119%_))))
               (_%g198111198145%_
                (lambda (_%g198113198125%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198113198125%_))
                      (let ((_%e198115198127%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198113198125%_))))
                        (let ((_%hd198116198130%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198115198127%_)))
                              (_%tl198117198132%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198115198127%_))))
                          (cons '%#provide
                                (map gxc#generate-runtime-identifier
                                     _%tl198117198132%_))))
                      (_%g198112198122%_ _%g198113198125%_)))))
          (_%g198111198145%_ _%stx198110%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self197984%_ _%stx197985%_)
        (letrec ((_%generate1197987%_
                  (lambda (_%id198104%_ _%eid198105%_)
                    (let ((_%eid198107%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid198105%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid198107%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx197985%_
                             _%eid198107%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id198104%_))
                            (cons _%eid198107%_ '()))))))
          (let* ((_%g197989198017%_
                  (lambda (_%g197990198014%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197990198014%_))))
                 (_%g197988198101%_
                  (lambda (_%g197990198020%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197990198020%_))
                        (let ((_%e197993198022%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197990198020%_))))
                          (let ((_%hd197994198025%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197993198022%_)))
                                (_%tl197995198027%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197993198022%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl197995198027%_))
                                (let ((_g207690_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl197995198027%_
                                          '0))))
                                  (begin
                                    (let ((_g207691_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g207690_)
                                                 (##values-length _g207690_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g207691_ 2)))
                                          (error "Context expects 2 values"
                                                 _g207691_)))
                                    (let ((_%target197996198030%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g207690_ 0)))
                                          (_%tl197998198032%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g207690_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl197998198032%_))
                                          (letrec ((_%loop197999198035%_
                                                    (lambda (_%hd197997198038%_
                                                             _%eid198003198040%_
                                                             _%id198004198041%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd197997198038%_))
                                                          (let ((_%e198000198043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd197997198038%_))))
                    (let ((_%lp-hd198001198046%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198000198043%_)))
                          (_%lp-tl198002198048%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198000198043%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd198001198046%_))
                          (let ((_%e198007198051%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd198001198046%_))))
                            (let ((_%hd198008198054%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198007198051%_)))
                                  (_%tl198009198056%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198007198051%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl198009198056%_))
                                  (let ((_%e198010198059%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl198009198056%_))))
                                    (let ((_%hd198011198062%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198010198059%_)))
                                          (_%tl198012198064%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198010198059%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl198012198064%_))
                                          (_%loop197999198035%_
                                           _%lp-tl198002198048%_
                                           (cons _%hd198011198062%_
                                                 _%eid198003198040%_)
                                           (cons _%hd198008198054%_
                                                 _%id198004198041%_))
                                          (_%g197989198017%_
                                           _%g197990198020%_))))
                                  (_%g197989198017%_ _%g197990198020%_))))
                          (_%g197989198017%_ _%g197990198020%_))))
                  (let ((_%eid198005198067%_ (reverse _%eid198003198040%_))
                        (_%id198006198068%_ (reverse _%id198004198041%_)))
                    (cons '%#extern
                          (map _%generate1197987%_
                               (let ((__tmp207692
                                      (lambda (_%g198086198089%_
                                               _%g198087198091%_)
                                        (cons _%g198086198089%_
                                              _%g198087198091%_))))
                                 (declare (not safe))
                                 (foldr__0 __tmp207692 '() _%id198006198068%_))
                               (let ((__tmp207693
                                      (lambda (_%g198093198096%_
                                               _%g198094198098%_)
                                        (cons _%g198093198096%_
                                              _%g198094198098%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp207693
                                  '()
                                  _%eid198005198067%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop197999198035%_
                                             _%target197996198030%_
                                             '()
                                             '()))
                                          (_%g197989198017%_
                                           _%g197990198020%_)))))
                                (_%g197989198017%_ _%g197990198020%_))))
                        (_%g197989198017%_ _%g197990198020%_)))))
            (_%g197988198101%_ _%stx197985%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self197773%_ _%stx197774%_)
        (letrec ((_%generate1197776%_
                  (lambda (_%id197978%_)
                    (let ((_%eid197980%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id197978%_)))
                          (_%ident197981%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id197978%_)))
                          (_%props197982%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id197978%_))))
                      (cons '%#define-runtime
                            (cons _%ident197981%_
                                  (cons _%eid197980%_ _%props197982%_))))))
                 (_%generate*197777%_
                  (lambda (_%all197946%_)
                    (let* ((_%all197947197955%_ _%all197946%_)
                           (_%else197949197963%_
                            (lambda () (cons '%#begin _%all197946%_)))
                           (_%K197951197968%_
                            (lambda (_%one197966%_) _%one197966%_)))
                      (if (pair? _%all197947197955%_)
                          (let ((_%hd197952197971%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all197947197955%_)))
                                (_%tl197953197973%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all197947197955%_))))
                            (let ((_%one197976%_ _%hd197952197971%_))
                              (if (null? _%tl197953197973%_)
                                  (_%K197951197968%_ _%one197976%_)
                                  (_%else197949197963%_))))
                          (_%else197949197963%_))))))
          (let* ((_%g197779197796%_
                  (lambda (_%g197780197793%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197780197793%_))))
                 (_%g197778197943%_
                  (lambda (_%g197780197799%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197780197799%_))
                        (let ((_%e197783197801%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197780197799%_))))
                          (let ((_%hd197784197804%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197783197801%_)))
                                (_%tl197785197806%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197783197801%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197785197806%_))
                                (let ((_%e197786197809%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl197785197806%_))))
                                  (let ((_%hd197787197812%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197786197809%_)))
                                        (_%tl197788197814%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197786197809%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl197788197814%_))
                                        (let ((_%e197789197817%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl197788197814%_))))
                                          (let ((_%hd197790197820%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197789197817%_)))
                                                (_%tl197791197822%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197789197817%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197791197822%_))
                                                (let _%lp197842%_ ((_%rest197844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd197787197812%_)
                           (_%r197845%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%__stx207428207429%_
                                                          _%rest197844%_)
                                                         (_%g197850197867%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx207428207429%_)))))
                                                    (let ((_%__kont207430207431%_
                                                           (lambda (_%g197852197930%_)
                                                             (_%lp197842%_
                                                              _%g197852197930%_
                                                              _%r197845%_)))
                                                          (_%__kont207432207433%_
                                                           (lambda (_%g197857197903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g197858197904%_)
                     (_%lp197842%_
                      _%g197857197903%_
                      (cons (_%generate1197776%_ _%g197858197904%_)
                            _%r197845%_))))
                  (_%__kont207434207435%_
                   (lambda (_%g197862197879%_)
                     (_%generate*197777%_
                      (let ((__tmp207694
                             (cons (_%generate1197776%_ _%g197862197879%_)
                                   '())))
                        (declare (not safe))
                        (foldl__0 cons __tmp207694 _%r197845%_)))))
                  (_%__kont207436207437%_
                   (lambda () (_%generate*197777%_ (reverse! _%r197845%_)))))
              (let ((_%g197848197890%_
                     (lambda ()
                       (let ((_%g197862197879%_ _%__stx207428207429%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g197862197879%_))
                             (_%__kont207434207435%_ _%g197862197879%_)
                             (_%__kont207436207437%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx207428207429%_))
                    (let ((_%e197853197919%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx207428207429%_))))
                      (let ((_%tl197855197924%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197853197919%_)))
                            (_%hd197854197922%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197853197919%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd197854197922%_))
                            (let ((_%e197856197927%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd197854197922%_))))
                              (if (equal? _%e197856197927%_ '#f)
                                  (_%__kont207430207431%_ _%tl197855197924%_)
                                  (_%__kont207432207433%_
                                   _%tl197855197924%_
                                   _%hd197854197922%_)))
                            (_%__kont207432207433%_
                             _%tl197855197924%_
                             _%hd197854197922%_))))
                    (_%g197848197890%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g197779197796%_
                                                 _%g197780197799%_))))
                                        (_%g197779197796%_
                                         _%g197780197799%_))))
                                (_%g197779197796%_ _%g197780197799%_))))
                        (_%g197779197796%_ _%g197780197799%_)))))
            (_%g197778197943%_ _%stx197774%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self197670%_ _%stx197671%_)
        (let* ((_%g197673197690%_
                (lambda (_%g197674197687%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197674197687%_))))
               (_%g197672197770%_
                (lambda (_%g197674197693%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197674197693%_))
                      (let ((_%e197677197695%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197674197693%_))))
                        (let ((_%hd197678197698%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197677197695%_)))
                              (_%tl197679197700%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197677197695%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197679197700%_))
                              (let ((_%e197680197703%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197679197700%_))))
                                (let ((_%hd197681197706%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197680197703%_)))
                                      (_%tl197682197708%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197680197703%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197682197708%_))
                                      (let ((_%e197683197711%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197682197708%_))))
                                        (let ((_%hd197684197714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197683197711%_)))
                                              (_%tl197685197716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197683197711%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197685197716%_))
                                              (let* ((_%eid197735%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#generate-runtime-binding-id
                                                         _%hd197681197706%_)))
                                                     (_%phi197737%_
                                                      (let ((__tmp207695
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#current-expander-phi))))
                (declare (not safe))
                (##fx+ __tmp207695 '1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%block197739%_
                                                      (gxc#meta-state-begin-phi!
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self197670%_
                                                          'state))
                                                       _%phi197737%_)))
                                                (let* ((_%g197742197749%_
                                                        (lambda (_%g197743197746%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g197743197746%_))))
                                                       (_%g197741197767%_
                                                        (lambda (_%g197743197752%_)
                                                          (gxc#meta-state-add-phi!
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self197670%_
                                                              'state))
                                                           _%phi197737%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#define-runtime))
                         (cons _%g197743197752%_
                               (cons _%hd197684197714%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g197741197767%_
                                                   _%eid197735%_))
                                                (if _%block197739%_
                                                    (cons '%#begin
                                                          (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block197739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons '%#define-syntax
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier
                                             _%hd197681197706%_))
                                          (cons _%eid197735%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons '%#define-syntax
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier _%hd197681197706%_))
                        (cons _%eid197735%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197673197690%_
                                               _%g197674197693%_))))
                                      (_%g197673197690%_ _%g197674197693%_))))
                              (_%g197673197690%_ _%g197674197693%_))))
                      (_%g197673197690%_ _%g197674197693%_)))))
          (_%g197672197770%_ _%stx197671%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self197602%_ _%stx197603%_)
        (let* ((_%g197605197622%_
                (lambda (_%g197606197619%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197606197619%_))))
               (_%g197604197667%_
                (lambda (_%g197606197625%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197606197625%_))
                      (let ((_%e197609197627%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197606197625%_))))
                        (let ((_%hd197610197630%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197609197627%_)))
                              (_%tl197611197632%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197609197627%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197611197632%_))
                              (let ((_%e197612197635%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197611197632%_))))
                                (let ((_%hd197613197638%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197612197635%_)))
                                      (_%tl197614197640%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197612197635%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197614197640%_))
                                      (let ((_%e197615197643%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197614197640%_))))
                                        (let ((_%hd197616197646%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197615197643%_)))
                                              (_%tl197617197648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197615197643%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197617197648%_))
                                              (cons '%#define-alias
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-identifier
                                                             _%hd197613197638%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier _%hd197616197646%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197605197622%_
                                               _%g197606197625%_))))
                                      (_%g197605197622%_ _%g197606197625%_))))
                              (_%g197605197622%_ _%g197606197625%_))))
                      (_%g197605197622%_ _%g197606197625%_)))))
          (_%g197604197667%_ _%stx197603%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self197599%_ _%stx197600%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self197599%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx197600%_)
        (gxc#generate-meta-define-values% _%self197599%_ _%stx197600%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self197596%_ _%stx197597%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self197596%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx197597%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp207697 (list)) (__tmp207696 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp207697
         '(src n open blocks)
         __tmp207696
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args197593%_
        (apply make-instance gxc#meta-state::t _%$args197593%_)))
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
      (lambda (_%self197579%_ _%ctx197580%_)
        (let ((_%self197583%_ _%self197579%_))
          (if (let ((__tmp207698
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self197583%_))))
                (declare (not safe))
                (##fx< '4 __tmp207698))
              (begin
                (let ((__tmp207699
                       (let ((__tmp207700
                              (##structure-ref
                               _%ctx197580%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp207700))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self197583%_
                   __tmp207699
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self197583%_ '1 '2 '#f '#f))
                (let ((__tmp207701
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self197583%_
                   __tmp207701
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self197583%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp207702
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self197583%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self197583%_
                       '4
                       __tmp207702))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp207704 (list)) (__tmp207703 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp207704
         '(ctx phi n code)
         __tmp207703
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args197454%_
        (apply make-instance gxc#meta-state-block::t _%$args197454%_)))
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
      (lambda (_%state197414%_ _%phi197415%_)
        (let* ((_%state197416197424%_ _%state197414%_)
               (_%E197418197427%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state197416197424%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K197419197436%_
                (lambda (_%open197430%_ _%n197431%_ _%src197432%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open197430%_ _%phi197415%_))
                      '#f
                      (let ((_%block-ref197434%_
                             (let ((__tmp207705 (number->string _%n197431%_)))
                               (declare (not safe))
                               (##string-append
                                _%src197432%_
                                '"~"
                                __tmp207705))))
                        (##structure-set!
                         _%state197414%_
                         (let () (declare (not safe)) (##fx+ _%n197431%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp207706
                               (let ((__tmp207707
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp207707
                                  _%phi197415%_
                                  _%n197431%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open197430%_ _%phi197415%_ __tmp207706))
                        _%block-ref197434%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state197416197424%_
                 'gxc#meta-state::t))
              (let* ((_%e197420197439%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state197416197424%_
                         '1
                         '#f
                         '#f)))
                     (_%src197442%_ _%e197420197439%_)
                     (_%e197421197444%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state197416197424%_
                         '2
                         '#f
                         '#f)))
                     (_%n197447%_ _%e197421197444%_)
                     (_%e197422197449%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state197416197424%_
                         '3
                         '#f
                         '#f)))
                     (_%open197452%_ _%e197422197449%_))
                (_%K197419197436%_ _%open197452%_ _%n197447%_ _%src197442%_))
              (_%E197418197427%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state197408%_ _%phi197409%_ _%stx197410%_)
        (let ((_%block197412%_
               (let ((__tmp207708
                      (##structure-ref
                       _%state197408%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp207708 _%phi197409%_))))
          (##structure-set!
           _%block197412%_
           (cons _%stx197410%_
                 (##structure-ref
                  _%block197412%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state197402%_)
        (##structure-set!
         _%state197402%_
         (let ((__tmp207711
                (lambda (_%_197404%_ _%block197405%_ _%r197406%_)
                  (cons _%block197405%_ _%r197406%_)))
               (__tmp207710
                (##structure-ref _%state197402%_ '4 gxc#meta-state::t '#f))
               (__tmp207709
                (##structure-ref _%state197402%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp207711 __tmp207710 __tmp207709))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state197402%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state197355%_)
        (gxc#meta-state-end-phi! _%state197355%_)
        (let ((__tmp207713
               (lambda (_%block197357%_ _%r197358%_)
                 (let* ((_%block197359197368%_ _%block197357%_)
                        (_%E197361197371%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block197359197368%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K197362197379%_
                         (lambda (_%code197374%_
                                  _%n197375%_
                                  _%phi197376%_
                                  _%ctx197377%_)
                           (if (null? _%code197374%_)
                               _%r197358%_
                               (cons (cons _%ctx197377%_
                                           (cons _%phi197376%_
                                                 (cons _%n197375%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code197374%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r197358%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block197359197368%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e197363197382%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block197359197368%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx197385%_ _%e197363197382%_)
                              (_%e197364197387%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block197359197368%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi197390%_ _%e197364197387%_)
                              (_%e197365197392%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block197359197368%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n197395%_ _%e197365197392%_)
                              (_%e197366197397%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block197359197368%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code197400%_ _%e197366197397%_))
                         (_%K197362197379%_
                          _%code197400%_
                          _%n197395%_
                          _%phi197390%_
                          _%ctx197385%_))
                       (_%E197361197371%_)))))
              (__tmp207712
               (##structure-ref _%state197355%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp207713 '() __tmp207712))))
    (define gxc#collect-expression-refs
      (lambda (_%stx197351%_)
        (let ((_%ht197353%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht197353%_ _%stx197351%_)
          _%ht197353%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self197294%_ _%stx197295%_)
        (let* ((_%g197297197310%_
                (lambda (_%g197298197307%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197298197307%_))))
               (_%g197296197348%_
                (lambda (_%g197298197313%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197298197313%_))
                      (let ((_%e197300197315%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197298197313%_))))
                        (let ((_%hd197301197318%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197300197315%_)))
                              (_%tl197302197320%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197300197315%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197302197320%_))
                              (let ((_%e197303197323%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197302197320%_))))
                                (let ((_%hd197304197326%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197303197323%_)))
                                      (_%tl197305197328%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197303197323%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197305197328%_))
                                      (let* ((_%bind197343%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#resolve-identifier__0
                                                 _%hd197304197326%_)))
                                             (_%eid197345%_
                                              (if _%bind197343%_
                                                  (##structure-ref
                                                   _%bind197343%_
                                                   '1
                                                   gx#binding::t
                                                   '#f)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd197304197326%_))))
                                             (__tmp207714
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self197294%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-put!
                                         __tmp207714
                                         _%eid197345%_
                                         _%eid197345%_))
                                      (_%g197297197310%_ _%g197298197313%_))))
                              (_%g197297197310%_ _%g197298197313%_))))
                      (_%g197297197310%_ _%g197298197313%_)))))
          (_%g197296197348%_ _%stx197295%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self197221%_ _%stx197222%_)
        (let* ((_%g197224197241%_
                (lambda (_%g197225197238%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197225197238%_))))
               (_%g197223197291%_
                (lambda (_%g197225197244%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197225197244%_))
                      (let ((_%e197228197246%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197225197244%_))))
                        (let ((_%hd197229197249%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197228197246%_)))
                              (_%tl197230197251%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197228197246%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197230197251%_))
                              (let ((_%e197231197254%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197230197251%_))))
                                (let ((_%hd197232197257%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197231197254%_)))
                                      (_%tl197233197259%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197231197254%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197233197259%_))
                                      (let ((_%e197234197262%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197233197259%_))))
                                        (let ((_%hd197235197265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197234197262%_)))
                                              (_%tl197236197267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197234197262%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197236197267%_))
                                              (let* ((_%bind197286%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#resolve-identifier__0
                                                         _%hd197232197257%_)))
                                                     (_%eid197288%_
                                                      (if _%bind197286%_
                                                          (##structure-ref
                                                           _%bind197286%_
                                                           '1
                                                           gx#binding::t
                                                           '#f)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd197232197257%_)))))
                                                (let ((__tmp207715
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self197221%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp207715
                                                   _%eid197288%_
                                                   _%eid197288%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self197221%_
                                                   _%hd197235197265%_)))
                                              (_%g197224197241%_
                                               _%g197225197244%_))))
                                      (_%g197224197241%_ _%g197225197244%_))))
                              (_%g197224197241%_ _%g197225197244%_))))
                      (_%g197224197241%_ _%g197225197244%_)))))
          (_%g197223197291%_ _%stx197222%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self197178%_ _%stx197179%_)
        (let* ((_%g197181197191%_
                (lambda (_%g197182197188%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197182197188%_))))
               (_%g197180197218%_
                (lambda (_%g197182197194%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197182197194%_))
                      (let ((_%e197184197196%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197182197194%_))))
                        (let ((_%hd197185197199%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197184197196%_)))
                              (_%tl197186197201%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197184197196%_))))
                          (let ((__tmp207716
                                 (lambda (_%g197213197215%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self197178%_
                                      _%g197213197215%_)))))
                            (declare (not safe))
                            (ormap__0 __tmp207716 _%tl197186197201%_))))
                      (_%g197181197191%_ _%g197182197194%_)))))
          (_%g197180197218%_ _%stx197179%_))))
    (define gxc#count-values-single%
      (lambda (_%self197175%_ _%stx197176%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self197043%_ _%stx197044%_)
        (let* ((_%__stx207458207459%_ _%stx197044%_)
               (_%g197047197076%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207458207459%_)))))
          (let ((_%__kont207460207461%_
                 (lambda (_%g197049197142%_ _%g197050197143%_)
                   (length (let ((__tmp207717
                                  (lambda (_%g197164197167%_ _%g197165197169%_)
                                    (cons _%g197164197167%_
                                          _%g197165197169%_))))
                             (declare (not safe))
                             (foldr__0 __tmp207717 '() _%g197049197142%_)))))
                (_%__kont207464207465%_ (lambda () '#f)))
            (let ((_%__match207503207504%_
                   (lambda (_%e197051197088%_
                            _%hd197052197091%_
                            _%tl197053197093%_
                            _%e197054197096%_
                            _%hd197055197099%_
                            _%tl197056197101%_
                            _%e197057197104%_
                            _%hd197058197107%_
                            _%tl197059197109%_
                            _%e197060197112%_
                            _%hd197061197115%_
                            _%tl197062197117%_
                            _%__splice207462207463%_
                            _%target197063197120%_
                            _%tl197065197122%_)
                     (letrec ((_%loop197066197125%_
                               (lambda (_%hd197064197128%_
                                        _%rand197070197130%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd197064197128%_))
                                     (let ((_%e197067197132%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd197064197128%_))))
                                       (let ((_%lp-tl197069197137%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e197067197132%_)))
                                             (_%lp-hd197068197135%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e197067197132%_))))
                                         (_%loop197066197125%_
                                          _%lp-tl197069197137%_
                                          (cons _%lp-hd197068197135%_
                                                _%rand197070197130%_))))
                                     (let ((_%rand197071197140%_
                                            (reverse _%rand197070197130%_)))
                                       (let ((_%g197049197142%_
                                              _%rand197071197140%_)
                                             (_%g197050197143%_
                                              _%hd197061197115%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g197050197143%_
                                                'values))
                                             (_%__kont207460207461%_
                                              _%g197049197142%_
                                              _%g197050197143%_)
                                             (_%__kont207464207465%_))))))))
                       (_%loop197066197125%_ _%target197063197120%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx207458207459%_))
                  (let ((_%e197051197088%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx207458207459%_))))
                    (let ((_%tl197053197093%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197051197088%_)))
                          (_%hd197052197091%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197051197088%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197053197093%_))
                          (let ((_%e197054197096%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197053197093%_))))
                            (let ((_%tl197056197101%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197054197096%_)))
                                  (_%hd197055197099%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197054197096%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd197055197099%_))
                                  (let ((_%e197057197104%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197055197099%_))))
                                    (let ((_%tl197059197109%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197057197104%_)))
                                          (_%hd197058197107%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197057197104%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd197058197107%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd197058197107%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197059197109%_))
                                                  (let ((_%e197060197112%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197059197109%_))))
                                                    (let ((_%tl197062197117%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197060197112%_)))
                                                          (_%hd197061197115%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197060197112%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197062197117%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl197056197101%_))
                      (let ((_%__splice207462207463%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl197056197101%_
                                '0))))
                        (let ((_%tl197065197122%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice207462207463%_ '1)))
                              (_%target197063197120%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice207462207463%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197065197122%_))
                              (_%__match207503207504%_
                               _%e197051197088%_
                               _%hd197052197091%_
                               _%tl197053197093%_
                               _%e197054197096%_
                               _%hd197055197099%_
                               _%tl197056197101%_
                               _%e197057197104%_
                               _%hd197058197107%_
                               _%tl197059197109%_
                               _%e197060197112%_
                               _%hd197061197115%_
                               _%tl197062197117%_
                               _%__splice207462207463%_
                               _%target197063197120%_
                               _%tl197065197122%_)
                              (_%__kont207464207465%_))))
                      (_%__kont207464207465%_))
                  (_%__kont207464207465%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont207464207465%_))
                                              (_%__kont207464207465%_))
                                          (_%__kont207464207465%_))))
                                  (_%__kont207464207465%_))))
                          (_%__kont207464207465%_))))
                  (_%__kont207464207465%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self196948%_ _%stx196949%_)
        (let* ((_%g196951196972%_
                (lambda (_%g196952196969%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196952196969%_))))
               (_%g196950197040%_
                (lambda (_%g196952196975%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196952196975%_))
                      (let ((_%e196956196977%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196952196975%_))))
                        (let ((_%hd196957196980%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196956196977%_)))
                              (_%tl196958196982%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196956196977%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196958196982%_))
                              (let ((_%e196959196985%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196958196982%_))))
                                (let ((_%hd196960196988%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196959196985%_)))
                                      (_%tl196961196990%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196959196985%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196961196990%_))
                                      (let ((_%e196962196993%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196961196990%_))))
                                        (let ((_%hd196963196996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196962196993%_)))
                                              (_%tl196964196998%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196962196993%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196964196998%_))
                                              (let ((_%e196965197001%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl196964196998%_))))
                                                (let ((_%hd196966197004%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196965197001%_)))
                                                      (_%tl196967197006%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196965197001%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196967197006%_))
                                                      (let ((_%c1197028197030%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%self196948%_ _%hd196963196996%_))))
                (if _%c1197028197030%_
                    (let* ((_%c1197032%_ _%c1197028197030%_)
                           (_%c2197033197035%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self196948%_
                               _%hd196966197004%_))))
                      (if _%c2197033197035%_
                          (let ((_%c2197037%_ _%c2197033197035%_))
                            (if (fx= _%c1197032%_ _%c2197037%_)
                                _%c1197032%_
                                '#f))
                          '#f))
                    '#f))
              (_%g196951196972%_ _%g196952196975%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196951196972%_
                                               _%g196952196975%_))))
                                      (_%g196951196972%_ _%g196952196975%_))))
                              (_%g196951196972%_ _%g196952196975%_))))
                      (_%g196951196972%_ _%g196952196975%_)))))
          (_%g196950197040%_ _%stx196949%_))))))
