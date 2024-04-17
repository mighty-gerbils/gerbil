(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1713044317)
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
        (letrec ((_%hash-e146063%_
                  (lambda (_%id146065%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id146065%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e146063%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp147450 (list gxc#::void::t))
            (__tmp147449 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp147450
         '()
         __tmp147449
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args146059%_
        (apply make-instance gxc#::collect-bindings::t _%$args146059%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp147451
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
        (__make-promise __tmp147451)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx146051%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self146054%_
                (let ((__obj147425
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj147425))
               (__tmp147452
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self146054%_ _%stx146051%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147452
           gxc#current-compile-method
           _%self146054%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp147454 (list gxc#::void::t))
            (__tmp147453 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp147454
         '(modules)
         __tmp147453
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args146048%_
        (apply make-instance gxc#::lift-modules::t _%$args146048%_)))
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
      (let ((__tmp147455
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
        (__make-promise __tmp147455)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords146022%_ _%modules146019146023%_ _%stx146025%_)
        (let ((_%modules146028%_
               (if (eq? _%modules146019146023%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules146019146023%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self146030%_
                  (let ((__obj147427
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147427
                       _%modules146028%_
                       '1
                       '#f
                       '#f))
                    __obj147427))
                 (__tmp147456
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self146030%_ _%stx146025%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147456
             gxc#current-compile-method
             _%self146030%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords146037%_ . _%args146038%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords146037%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146037%_
                  'modules:
                  absent-value))
               _%args146038%_)))
    (define gxc#apply-lift-modules
      (lambda _%args146020146044%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args146020146044%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp147458 (list)) (__tmp147457 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp147458
         '()
         __tmp147457
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args146015%_
        (apply make-instance gxc#::find-runtime-code::t _%$args146015%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp147459
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
        (__make-promise __tmp147459)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx146007%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self146010%_
                (let ((__obj147429
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj147429))
               (__tmp147460
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self146010%_ _%stx146007%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147460
           gxc#current-compile-method
           _%self146010%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp147462 (list gxc#::false::t))
            (__tmp147461 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp147462
         '()
         __tmp147461
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args146004%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args146004%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp147463
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
        (__make-promise __tmp147463)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx145996%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self145999%_
                (let ((__obj147431
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj147431))
               (__tmp147464
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145999%_ _%stx145996%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147464
           gxc#current-compile-method
           _%self145999%_))))
    (define gxc#::count-values::t
      (let ((__tmp147466 (list gxc#::false-expression::t))
            (__tmp147465 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp147466
         '()
         __tmp147465
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args145993%_
        (apply make-instance gxc#::count-values::t _%$args145993%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp147467
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
        (__make-promise __tmp147467)))
    (define gxc#apply-count-values
      (lambda (_%stx145985%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self145988%_
                (let ((__obj147433
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj147433))
               (__tmp147468
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145988%_ _%stx145985%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147468
           gxc#current-compile-method
           _%self145988%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp147469 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp147469
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args145982%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args145982%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp147470
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
        (__make-promise __tmp147470)))
    (define gxc#::generate-loader::t
      (let ((__tmp147472 (list gxc#::generate-runtime-empty::t))
            (__tmp147471 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp147472
         '()
         __tmp147471
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args145978%_
        (apply make-instance gxc#::generate-loader::t _%$args145978%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp147473
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
        (__make-promise __tmp147473)))
    (define gxc#apply-generate-loader
      (lambda (_%stx145970%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self145973%_
                (let ((__obj147436
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj147436))
               (__tmp147474
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145973%_ _%stx145970%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147474
           gxc#current-compile-method
           _%self145973%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp147475 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp147475
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args145967%_
        (apply make-instance gxc#::generate-runtime::t _%$args145967%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp147476
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
        (__make-promise __tmp147476)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx145959%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self145962%_
                (let ((__obj147438
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj147438))
               (__tmp147477
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145962%_ _%stx145959%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147477
           gxc#current-compile-method
           _%self145962%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp147479 (list gxc#::generate-runtime::t))
            (__tmp147478 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp147479
         '()
         __tmp147478
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args145956%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args145956%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp147480
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
        (__make-promise __tmp147480)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx145948%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self145951%_
                (let ((__obj147440
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj147440))
               (__tmp147481
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145951%_ _%stx145948%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147481
           gxc#current-compile-method
           _%self145951%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp147482 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp147482
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args145945%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args145945%_)))
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
      (let ((__tmp147483
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
        (__make-promise __tmp147483)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords145919%_ _%table145916145920%_ _%stx145922%_)
        (let ((_%table145925%_
               (if (eq? _%table145916145920%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table145916145920%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self145927%_
                  (let ((__obj147442
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147442
                       _%table145925%_
                       '1
                       '#f
                       '#f))
                    __obj147442))
                 (__tmp147484
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145927%_ _%stx145922%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147484
             gxc#current-compile-method
             _%self145927%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords145934%_ . _%args145935%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords145934%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145934%_
                  'table:
                  absent-value))
               _%args145935%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args145917145941%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args145917145941%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp147486 (list gxc#::void-expression::t))
            (__tmp147485 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp147486
         '(state)
         __tmp147485
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args145912%_
        (apply make-instance gxc#::generate-meta::t _%$args145912%_)))
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
      (let ((__tmp147487
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
        (__make-promise __tmp147487)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords145886%_ _%state145883145887%_ _%stx145889%_)
        (let ((_%state145892%_
               (if (eq? _%state145883145887%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state145883145887%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self145894%_
                  (let ((__obj147444
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147444
                       _%state145892%_
                       '1
                       '#f
                       '#f))
                    __obj147444))
                 (__tmp147488
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145894%_ _%stx145889%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147488
             gxc#current-compile-method
             _%self145894%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords145901%_ . _%args145902%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords145901%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145901%_
                  'state:
                  absent-value))
               _%args145902%_)))
    (define gxc#apply-generate-meta
      (lambda _%args145884145908%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args145884145908%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp147490 (list)) (__tmp147489 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp147490
         '(state)
         __tmp147489
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args145879%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args145879%_)))
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
      (let ((__tmp147491
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
        (__make-promise __tmp147491)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords145853%_ _%state145850145854%_ _%stx145856%_)
        (let ((_%state145859%_
               (if (eq? _%state145850145854%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state145850145854%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self145861%_
                  (let ((__obj147446
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147446
                       _%state145859%_
                       '1
                       '#f
                       '#f))
                    __obj147446))
                 (__tmp147492
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145861%_ _%stx145856%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147492
             gxc#current-compile-method
             _%self145861%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords145868%_ . _%args145869%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords145868%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145868%_
                  'state:
                  absent-value))
               _%args145869%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args145851145875%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args145851145875%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self145779%_ _%stx145780%_)
        (let* ((_%g145782145799%_
                (lambda (_%g145783145796%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145783145796%_))))
               (_%g145781145846%_
                (lambda (_%g145783145802%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145783145802%_))
                      (let ((_%e145786145804%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145783145802%_))))
                        (let ((_%hd145787145807%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145786145804%_)))
                              (_%tl145788145809%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145786145804%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145788145809%_))
                              (let ((_%e145789145812%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145788145809%_))))
                                (let ((_%hd145790145815%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145789145812%_)))
                                      (_%tl145791145817%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145789145812%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145791145817%_))
                                      (let ((_%e145792145820%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145791145817%_))))
                                        (let ((_%hd145793145823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145792145820%_)))
                                              (_%tl145794145825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145792145820%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145794145825%_))
                                              ((lambda (_%L145828%_
                                                        _%L145829%_)
                                                 (let ((__tmp147493
                                                        (lambda (_%bind145844%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind145844%_))
                      (gxc#add-module-binding! _%bind145844%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp147493
                                                    _%L145829%_)))
                                               _%hd145793145823%_
                                               _%hd145790145815%_)
                                              (_%g145782145799%_
                                               _%g145783145802%_))))
                                      (_%g145782145799%_ _%g145783145802%_))))
                              (_%g145782145799%_ _%g145783145802%_))))
                      (_%g145782145799%_ _%g145783145802%_)))))
          (_%g145781145846%_ _%stx145780%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self145711%_ _%stx145712%_)
        (let* ((_%g145714145731%_
                (lambda (_%g145715145728%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145715145728%_))))
               (_%g145713145776%_
                (lambda (_%g145715145734%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145715145734%_))
                      (let ((_%e145718145736%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145715145734%_))))
                        (let ((_%hd145719145739%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145718145736%_)))
                              (_%tl145720145741%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145718145736%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145720145741%_))
                              (let ((_%e145721145744%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145720145741%_))))
                                (let ((_%hd145722145747%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145721145744%_)))
                                      (_%tl145723145749%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145721145744%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145723145749%_))
                                      (let ((_%e145724145752%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145723145749%_))))
                                        (let ((_%hd145725145755%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145724145752%_)))
                                              (_%tl145726145757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145724145752%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145726145757%_))
                                              ((lambda (_%L145760%_
                                                        _%L145761%_)
                                                 (gxc#add-module-binding!
                                                  _%L145761%_
                                                  '#t))
                                               _%hd145725145755%_
                                               _%hd145722145747%_)
                                              (_%g145714145731%_
                                               _%g145715145734%_))))
                                      (_%g145714145731%_ _%g145715145734%_))))
                              (_%g145714145731%_ _%g145715145734%_))))
                      (_%g145714145731%_ _%g145715145734%_)))))
          (_%g145713145776%_ _%stx145712%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self145653%_ _%stx145654%_)
        (let* ((_%g145656145670%_
                (lambda (_%g145657145667%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145657145667%_))))
               (_%g145655145708%_
                (lambda (_%g145657145673%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145657145673%_))
                      (let ((_%e145660145675%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145657145673%_))))
                        (let ((_%hd145661145678%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145660145675%_)))
                              (_%tl145662145680%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145660145675%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145662145680%_))
                              (let ((_%e145663145683%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145662145680%_))))
                                (let ((_%hd145664145686%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145663145683%_)))
                                      (_%tl145665145688%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145663145683%_))))
                                  ((lambda (_%L145691%_ _%L145692%_)
                                     (let ((_%ctx145705%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L145692%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self145653%_
                                           'modules))
                                        (cons _%ctx145705%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self145653%_
                                                        'modules)))))
                                       (let ((__tmp147494
                                              (lambda ()
                                                (let ((__tmp147495
                                                       (##structure-ref
                                                        _%ctx145705%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self145653%_
                                                   __tmp147495)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp147494
                                          gx#current-expander-context
                                          _%ctx145705%_))))
                                   _%tl145665145688%_
                                   _%hd145664145686%_)))
                              (_%g145656145670%_ _%g145657145673%_))))
                      (_%g145656145670%_ _%g145657145673%_)))))
          (_%g145655145708%_ _%stx145654%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls145606145608%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls145606145608%_
              (let ((_%decls145611%_ _%decls145606145608%_))
                (let _%lp145613%_ ((_%rest145615%_ _%decls145611%_))
                  (let* ((_%rest145616145624%_ _%rest145615%_)
                         (_%else145618145632%_ (lambda () '#f))
                         (_%K145620145641%_
                          (lambda (_%decls145635%_ _%decl145636%_)
                            (if (equal? _%decl145636%_ '(not safe))
                                '#t
                                (if (equal? _%decl145636%_ '(safe))
                                    '#f
                                    (_%lp145613%_ _%decls145635%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest145616145624%_))
                        (let ((_%hd145621145644%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest145616145624%_)))
                              (_%tl145622145646%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest145616145624%_))))
                          (let* ((_%decl145649%_ _%hd145621145644%_)
                                 (_%decls145651%_ _%tl145622145646%_))
                            (_%K145620145641%_
                             _%decls145651%_
                             _%decl145649%_)))
                        (_%else145618145632%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id145600%_ _%syntax?145601%_)
        (let ((_%eid145603%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id145600%_))
                '1
                gx#binding::t
                '#f))
              (_%ht145604%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid145603%_))
              '#!void
              (let ((__tmp147496
                     (let ((__tmp147497
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid145603%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp147497 _%syntax?145601%_))))
                (declare (not safe))
                (hash-put! _%ht145604%_ _%eid145603%_ __tmp147496))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id145598%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id145598%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key145553%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key145553%_))
            _%key145553%_
            (if (uninterned-symbol? _%key145553%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key145553%_))
                (let* ((_%key145557145564%_ _%key145553%_)
                       (_%E145559145568%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key145557145564%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K145560145586%_
                        (lambda (_%mark145571%_ _%eid145572%_)
                          (let ((_%$e145574%_
                                 (##structure-ref
                                  _%mark145571%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e145574%_
                                ((lambda (_%ht145577%_)
                                   (let ((_%$e145579%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht145577%_
                                             _%eid145572%_))))
                                     (if _%$e145579%_
                                         ((lambda (_%id145582%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id145582%_))
                                                _%id145582%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id145582%_))))
                                          _%$e145579%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid145572%_))))
                                 _%$e145574%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid145572%_))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%key145557145564%_))
                      (let ((_%hd145561145589%_
                             (let ()
                               (declare (not safe))
                               (##car _%key145557145564%_)))
                            (_%tl145562145591%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key145557145564%_))))
                        (let* ((_%eid145594%_ _%hd145561145589%_)
                               (_%mark145596%_ _%tl145562145591%_))
                          (_%K145560145586%_ _%mark145596%_ _%eid145594%_)))
                      (_%E145559145568%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self145550%_ _%stx145551%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self145397%_ _%stx145398%_)
        (letrec ((_%simplify145400%_
                  (lambda (_%body145448%_)
                    (let _%lp145450%_ ((_%rest145452%_ _%body145448%_)
                                       (_%r145453%_ '()))
                      (let* ((_%rest145454145462%_ _%rest145452%_)
                             (_%else145456145470%_
                              (lambda () (reverse _%r145453%_)))
                             (_%K145458145538%_
                              (lambda (_%rest145473%_ _%hd145474%_)
                                (let* ((_%hd145475145491%_ _%hd145474%_)
                                       (_%else145479145499%_
                                        (lambda ()
                                          (_%lp145450%_
                                           _%rest145473%_
                                           (cons _%hd145474%_ _%r145453%_)))))
                                  (let ((_%K145487145528%_
                                         (lambda (_%exprs145526%_)
                                           (_%lp145450%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest145473%_
                                               _%exprs145526%_))
                                            _%r145453%_)))
                                        (_%K145482145512%_
                                         (lambda ()
                                           (if (null? _%rest145473%_)
                                               (_%lp145450%_
                                                _%rest145473%_
                                                (cons _%hd145474%_
                                                      _%r145453%_))
                                               (_%lp145450%_
                                                _%rest145473%_
                                                _%r145453%_))))
                                        (_%K145481145504%_
                                         (lambda ()
                                           (if (null? _%rest145473%_)
                                               (_%lp145450%_
                                                _%rest145473%_
                                                (cons _%hd145474%_
                                                      _%r145453%_))
                                               (_%lp145450%_
                                                _%rest145473%_
                                                _%r145453%_)))))
                                    (let ((_%try-match145478145507%_
                                           (lambda ()
                                             (if (symbol? _%hd145475145491%_)
                                                 (_%K145481145504%_)
                                                 (_%else145479145499%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd145475145491%_))
                                          (let ((_%tl145489145533%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd145475145491%_)))
                                                (_%hd145488145531%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd145475145491%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd145488145531%_
                                                         'begin))
                                                (let ((_%exprs145536%_
                                                       _%tl145489145533%_))
                                                  (_%K145487145528%_
                                                   _%exprs145536%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd145488145531%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl145489145533%_))
                                                        (let ((_%tl145486145520%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl145489145533%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl145486145520%_))
                      (_%K145482145512%_)
                      (_%try-match145478145507%_)))
                (_%try-match145478145507%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match145478145507%_))))
                                          (_%try-match145478145507%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest145454145462%_))
                            (let ((_%hd145459145541%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest145454145462%_)))
                                  (_%tl145460145543%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest145454145462%_))))
                              (let* ((_%hd145546%_ _%hd145459145541%_)
                                     (_%rest145548%_ _%tl145460145543%_))
                                (_%K145458145538%_
                                 _%rest145548%_
                                 _%hd145546%_)))
                            (_%else145456145470%_)))))))
          (let* ((_%g145402145412%_
                  (lambda (_%g145403145409%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g145403145409%_))))
                 (_%g145401145445%_
                  (lambda (_%g145403145415%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g145403145415%_))
                        (let ((_%e145405145417%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g145403145415%_))))
                          (let ((_%hd145406145420%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145405145417%_)))
                                (_%tl145407145422%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145405145417%_))))
                            ((lambda (_%L145425%_)
                               (let* ((_%body145440%_
                                       (map (lambda (_%g145435145437%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self145397%_
                                                 _%g145435145437%_)))
                                            _%L145425%_))
                                      (_%body145442%_
                                       (_%simplify145400%_ _%body145440%_)))
                                 (if (let ((__tmp147498
                                            (length _%body145442%_)))
                                       (declare (not safe))
                                       (##fx= __tmp147498 '1))
                                     (car _%body145442%_)
                                     (cons 'begin _%body145442%_))))
                             _%tl145407145422%_)))
                        (_%g145402145412%_ _%g145403145415%_)))))
            (_%g145401145445%_ _%stx145398%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self145358%_ _%stx145359%_)
        (let* ((_%g145361145371%_
                (lambda (_%g145362145368%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145362145368%_))))
               (_%g145360145394%_
                (lambda (_%g145362145374%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145362145374%_))
                      (let ((_%e145364145376%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145362145374%_))))
                        (let ((_%hd145365145379%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145364145376%_)))
                              (_%tl145366145381%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145364145376%_))))
                          ((lambda (_%L145384%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L145384%_))))
                           _%tl145366145381%_)))
                      (_%g145361145371%_ _%g145362145374%_)))))
          (_%g145360145394%_ _%stx145359%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self145122%_ _%stx145123%_)
        (let* ((_%__stx146088146089%_ _%stx145123%_)
               (_%g145127145179%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx146088146089%_)))))
          (let ((_%__kont146090146091%_
                 (lambda (_%L145340%_ _%L145341%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self145122%_ _%L145340%_))))
                (_%__kont146092146093%_
                 (lambda (_%L145288%_ _%L145289%_ _%L145290%_)
                   (if (let ((__tmp147499
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L145290%_))))
                         (declare (not safe))
                         (##memq __tmp147499 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self145122%_ _%L145288%_)))))
                (_%__kont146096146097%_
                 (lambda (_%L145208%_ _%L145209%_)
                   (let ((_%decls145224%_ (map gx#syntax->datum _%L145209%_)))
                     (let ((__tmp147502
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls145224%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self145122%_
                                                   _%L145208%_))
                                                '())))))
                           (__tmp147500
                            (let ((__tmp147501
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp147501 _%decls145224%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp147502
                        gxc#current-compile-decls
                        __tmp147500))))))
            (let* ((_%__match146143146144%_
                    (lambda (_%e145143145232%_
                             _%hd145144145235%_
                             _%tl145145145237%_
                             _%e145146145240%_
                             _%hd145147145243%_
                             _%tl145148145245%_
                             _%e145149145248%_
                             _%hd145150145251%_
                             _%tl145151145253%_
                             _%__splice146094146095%_
                             _%target145152145256%_
                             _%tl145154145258%_)
                      (letrec ((_%loop145155145261%_
                                (lambda (_%hd145153145264%_
                                         _%param145159145266%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd145153145264%_))
                                      (let ((_%e145156145269%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd145153145264%_))))
                                        (let ((_%lp-tl145158145274%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145156145269%_)))
                                              (_%lp-hd145157145272%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145156145269%_))))
                                          (_%loop145155145261%_
                                           _%lp-tl145158145274%_
                                           (cons _%lp-hd145157145272%_
                                                 _%param145159145266%_))))
                                      (let ((_%param145160145277%_
                                             (reverse _%param145159145266%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl145148145245%_))
                                            (let ((_%e145161145280%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl145148145245%_))))
                                              (let ((_%tl145163145285%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145161145280%_)))
                                                    (_%hd145162145283%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145161145280%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl145163145285%_))
                                                    (let ((_%L145288%_
                                                           _%hd145162145283%_)
                                                          (_%L145289%_
                                                           _%param145160145277%_)
                                                          (_%L145290%_
                                                           _%hd145150145251%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L145290%_))
                       (not (let ((__tmp147503
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L145290%_))))
                              (declare (not safe))
                              (##memq __tmp147503 gxc#gambit-annotations))))
                  (_%__kont146092146093%_ _%L145288%_ _%L145289%_ _%L145290%_)
                  (_%__kont146096146097%_
                   _%hd145162145283%_
                   _%hd145147145243%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g145127145179%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g145127145179%_))))))))
                        (_%loop145155145261%_ _%target145152145256%_ '()))))
                   (_%__match146117146118%_
                    (lambda (_%e145131145316%_
                             _%hd145132145319%_
                             _%tl145133145321%_
                             _%e145134145324%_
                             _%hd145135145327%_
                             _%tl145136145329%_
                             _%e145137145332%_
                             _%hd145138145335%_
                             _%tl145139145337%_)
                      (let ((_%L145340%_ _%hd145138145335%_)
                            (_%L145341%_ _%hd145135145327%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L145341%_))
                            (_%__kont146090146091%_ _%L145340%_ _%L145341%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd145135145327%_))
                                (let ((_%e145149145248%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd145135145327%_))))
                                  (let ((_%tl145151145253%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e145149145248%_)))
                                        (_%hd145150145251%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e145149145248%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl145151145253%_))
                                        (let ((_%__splice146094146095%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl145151145253%_
                                                  '0))))
                                          (let ((_%tl145154145258%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice146094146095%_
                                                    '1)))
                                                (_%target145152145256%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice146094146095%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145154145258%_))
                                                (_%__match146143146144%_
                                                 _%e145131145316%_
                                                 _%hd145132145319%_
                                                 _%tl145133145321%_
                                                 _%e145134145324%_
                                                 _%hd145135145327%_
                                                 _%tl145136145329%_
                                                 _%e145149145248%_
                                                 _%hd145150145251%_
                                                 _%tl145151145253%_
                                                 _%__splice146094146095%_
                                                 _%target145152145256%_
                                                 _%tl145154145258%_)
                                                (_%__kont146096146097%_
                                                 _%hd145138145335%_
                                                 _%hd145135145327%_))))
                                        (_%__kont146096146097%_
                                         _%hd145138145335%_
                                         _%hd145135145327%_))))
                                (_%__kont146096146097%_
                                 _%hd145138145335%_
                                 _%hd145135145327%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx146088146089%_))
                  (let ((_%e145131145316%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx146088146089%_))))
                    (let ((_%tl145133145321%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e145131145316%_)))
                          (_%hd145132145319%_
                           (let ()
                             (declare (not safe))
                             (##car _%e145131145316%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl145133145321%_))
                          (let ((_%e145134145324%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl145133145321%_))))
                            (let ((_%tl145136145329%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145134145324%_)))
                                  (_%hd145135145327%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145134145324%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl145136145329%_))
                                  (let ((_%e145137145332%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl145136145329%_))))
                                    (let ((_%tl145139145337%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e145137145332%_)))
                                          (_%hd145138145335%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e145137145332%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl145139145337%_))
                                          (_%__match146117146118%_
                                           _%e145131145316%_
                                           _%hd145132145319%_
                                           _%tl145133145321%_
                                           _%e145134145324%_
                                           _%hd145135145327%_
                                           _%tl145136145329%_
                                           _%e145137145332%_
                                           _%hd145138145335%_
                                           _%tl145139145337%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd145135145327%_))
                                              (let ((_%e145149145248%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd145135145327%_))))
                                                (let ((_%tl145151145253%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145149145248%_)))
                                                      (_%hd145150145251%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145149145248%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl145151145253%_))
                                                      (let ((_%__splice146094146095%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl145151145253%_ '0))))
                (let ((_%tl145154145258%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice146094146095%_ '1)))
                      (_%target145152145256%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice146094146095%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl145154145258%_))
                      (_%__match146143146144%_
                       _%e145131145316%_
                       _%hd145132145319%_
                       _%tl145133145321%_
                       _%e145134145324%_
                       _%hd145135145327%_
                       _%tl145136145329%_
                       _%e145149145248%_
                       _%hd145150145251%_
                       _%tl145151145253%_
                       _%__splice146094146095%_
                       _%target145152145256%_
                       _%tl145154145258%_)
                      (let () (declare (not safe)) (_%g145127145179%_)))))
              (let () (declare (not safe)) (_%g145127145179%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g145127145179%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd145135145327%_))
                                      (let ((_%e145149145248%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd145135145327%_))))
                                        (let ((_%tl145151145253%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145149145248%_)))
                                              (_%hd145150145251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145149145248%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl145151145253%_))
                                              (let ((_%__splice146094146095%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl145151145253%_
                                                        '0))))
                                                (let ((_%tl145154145258%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice146094146095%_
                                                          '1)))
                                                      (_%target145152145256%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice146094146095%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl145154145258%_))
                                                      (_%__match146143146144%_
                                                       _%e145131145316%_
                                                       _%hd145132145319%_
                                                       _%tl145133145321%_
                                                       _%e145134145324%_
                                                       _%hd145135145327%_
                                                       _%tl145136145329%_
                                                       _%e145149145248%_
                                                       _%hd145150145251%_
                                                       _%tl145151145253%_
                                                       _%__splice146094146095%_
                                                       _%target145152145256%_
                                                       _%tl145154145258%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g145127145179%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g145127145179%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g145127145179%_))))))
                          (let () (declare (not safe)) (_%g145127145179%_)))))
                  (let () (declare (not safe)) (_%g145127145179%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self145081%_ _%stx145082%_)
        (let* ((_%g145084145094%_
                (lambda (_%g145085145091%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145085145091%_))))
               (_%g145083145119%_
                (lambda (_%g145085145097%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145085145097%_))
                      (let ((_%e145087145099%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145085145097%_))))
                        (let ((_%hd145088145102%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145087145099%_)))
                              (_%tl145089145104%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145087145099%_))))
                          ((lambda (_%L145107%_)
                             (let ((_%decls145117%_
                                    (map gx#syntax->datum _%L145107%_)))
                               (let ((__tmp147504
                                      (let ((__tmp147505
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp147505
                                         _%decls145117%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp147504))
                               (cons 'declare _%decls145117%_)))
                           _%tl145089145104%_)))
                      (_%g145084145094%_ _%g145085145097%_)))))
          (_%g145083145119%_ _%stx145082%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self144827%_ _%stx144828%_)
        (let* ((_%g144830144847%_
                (lambda (_%g144831144844%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144831144844%_))))
               (_%g144829145078%_
                (lambda (_%g144831144850%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144831144850%_))
                      (let ((_%e144834144852%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144831144850%_))))
                        (let ((_%hd144835144855%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144834144852%_)))
                              (_%tl144836144857%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144834144852%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144836144857%_))
                              (let ((_%e144837144860%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144836144857%_))))
                                (let ((_%hd144838144863%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144837144860%_)))
                                      (_%tl144839144865%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144837144860%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144839144865%_))
                                      (let ((_%e144840144868%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144839144865%_))))
                                        (let ((_%hd144841144871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144840144868%_)))
                                              (_%tl144842144873%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144840144868%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144842144873%_))
                                              ((lambda (_%L144876%_
                                                        _%L144877%_)
                                                 (let* ((_%__stx146196146197%_
                                                         _%L144877%_)
                                                        (_%g144894144908%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx146196146197%_)))))
                                                   (let ((_%__kont146198146199%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self144827%_
                                                               _%L144876%_))))
                                                         (_%__kont146200146201%_
                                                          (lambda (_%L145040%_)
                                                            (let ((_%eid145049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L145040%_))))
                      (let ((_%lambda-expr145050145052%_
                             (gxc#apply-find-lambda-expression _%L144876%_)))
                        (if _%lambda-expr145050145052%_
                            (let* ((_%lambda-expr145055%_
                                    _%lambda-expr145050145052%_)
                                   (__tmp147506
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp147506
                               _%lambda-expr145055%_
                               _%eid145049%_))
                            '#f))
                      (cons 'define
                            (cons _%eid145049%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self144827%_
                                           _%L144876%_))
                                        '()))))))
                 (_%__kont146202146203%_
                  (lambda ()
                    (let* ((_%tmp144915%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body145024%_
                            (let _%lp144917%_ ((_%rest144919%_ _%L144877%_)
                                               (_%k144920%_ '0)
                                               (_%r144921%_ '()))
                              (let* ((_%__stx146166146167%_ _%rest144919%_)
                                     (_%g144926144943%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx146166146167%_)))))
                                (let ((_%__kont146168146169%_
                                       (lambda (_%L145011%_)
                                         (_%lp144917%_
                                          _%L145011%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k144920%_ '1))
                                          _%r144921%_)))
                                      (_%__kont146170146171%_
                                       (lambda (_%L144984%_ _%L144985%_)
                                         (_%lp144917%_
                                          _%L144984%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k144920%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L144985%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp144915%_
                           _%k144920%_
                           _%L144984%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r144921%_))))
                                      (_%__kont146172146173%_
                                       (lambda (_%L144955%_)
                                         (let ((__tmp147507
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L144955%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp144915%_
                                 _%k144920%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp147507
                                            _%r144921%_))))
                                      (_%__kont146174146175%_
                                       (lambda () (reverse _%r144921%_))))
                                  (let ((_%g144924144971%_
                                         (lambda ()
                                           (let ((_%L144955%_
                                                  _%__stx146166146167%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L144955%_))
                                                 (_%__kont146172146173%_
                                                  _%L144955%_)
                                                 (_%__kont146174146175%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx146166146167%_))
                                        (let ((_%e144929145000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx146166146167%_))))
                                          (let ((_%tl144931145005%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144929145000%_)))
                                                (_%hd144930145003%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144929145000%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd144930145003%_))
                                                (let ((_%e144932145008%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd144930145003%_))))
                                                  (if (equal? _%e144932145008%_
                                                              '#f)
                                                      (_%__kont146168146169%_
                                                       _%tl144931145005%_)
                                                      (_%__kont146170146171%_
                                                       _%tl144931145005%_
                                                       _%hd144930145003%_)))
                                                (_%__kont146170146171%_
                                                 _%tl144931145005%_
                                                 _%hd144930145003%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g144924144971%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp144915%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self144827%_
                                                       _%L144876%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp144915%_
                                         _%L144877%_
                                         _%L144876%_)
                                        _%body145024%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx146196146197%_))
                                                         (let ((_%e144896145062%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx146196146197%_))))
                   (let ((_%tl144898145067%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e144896145062%_)))
                         (_%hd144897145065%_
                          (let ()
                            (declare (not safe))
                            (##car _%e144896145062%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd144897145065%_))
                         (let ((_%e144899145070%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd144897145065%_))))
                           (if (equal? _%e144899145070%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl144898145067%_))
                                   (_%__kont146198146199%_)
                                   (_%__kont146202146203%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl144898145067%_))
                                   (_%__kont146200146201%_ _%hd144897145065%_)
                                   (_%__kont146202146203%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144898145067%_))
                             (_%__kont146200146201%_ _%hd144897145065%_)
                             (_%__kont146202146203%_)))))
                 (_%__kont146202146203%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd144841144871%_
                                               _%hd144838144863%_)
                                              (_%g144830144847%_
                                               _%g144831144850%_))))
                                      (_%g144830144847%_ _%g144831144850%_))))
                              (_%g144830144847%_ _%g144831144850%_))))
                      (_%g144830144847%_ _%g144831144850%_)))))
          (_%g144829145078%_ _%stx144828%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals144802%_ _%hd144803%_ _%expr144804%_)
        (let ((_%$e144806%_ (gxc#apply-count-values _%expr144804%_)))
          (if _%$e144806%_
              ((lambda (_%count144809%_)
                 (let ((_%len144811%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd144803%_)))
                       (_%cmp144812%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd144803%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len144811%_ '0))
                           (_%cmp144812%_ _%count144809%_ _%len144811%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr144804%_
                          _%hd144803%_)))))
               _%$e144806%_)
              (let* ((_%len144818%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd144803%_)))
                     (_%cmp144820%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd144803%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg144822%_
                      (let ((__tmp147509
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd144803%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp147508 (number->string _%len144818%_)))
                        (declare (not safe))
                        (##string-append __tmp147509 __tmp147508 '" values")))
                     (_%count144824%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd144803%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len144818%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count144824%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals144802%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp144820%_
                                (cons _%count144824%_
                                      (cons _%len144818%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp144820%_
                                                        (cons _%count144824%_
                                                              (cons _%len144818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg144822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count144824%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var144797%_)
        (letrec ((_%generate-inline144799%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var144797%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var144797%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline144799%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline144799%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var144790%_ _%i144791%_ _%rest144792%_)
        (letrec ((_%generate-inline144794%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i144791%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest144792%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var144790%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var144790%_
                                                      (cons '0 '())))
                                          (cons _%var144790%_ '()))))
                        (cons '##vector-ref
                              (cons _%var144790%_ (cons _%i144791%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline144794%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline144794%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var144784%_ _%i144785%_)
        (if (let () (declare (not safe)) (##fx= _%i144785%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var144784%_ '()))
                            (cons (cons '##vector->list
                                        (cons _%var144784%_ '()))
                                  (cons (cons 'list (cons _%var144784%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var144784%_
                                                                '()))
                                                    (cons (cons '##vector->list
                                                                (cons _%var144784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var144784%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i144785%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var144784%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##vector->list
                                                        (cons _%var144784%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var144784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##vector->list
                                        (cons _%var144784%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##vector->list (cons _%var144784%_ '()))
                                (cons _%i144785%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##vector->list
                                                              (cons _%var144784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i144785%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self144716%_ _%stx144717%_)
        (let* ((_%g144719144736%_
                (lambda (_%g144720144733%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144720144733%_))))
               (_%g144718144781%_
                (lambda (_%g144720144739%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144720144739%_))
                      (let ((_%e144723144741%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144720144739%_))))
                        (let ((_%hd144724144744%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144723144741%_)))
                              (_%tl144725144746%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144723144741%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144725144746%_))
                              (let ((_%e144726144749%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144725144746%_))))
                                (let ((_%hd144727144752%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144726144749%_)))
                                      (_%tl144728144754%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144726144749%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144728144754%_))
                                      (let ((_%e144729144757%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144728144754%_))))
                                        (let ((_%hd144730144760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144729144757%_)))
                                              (_%tl144731144762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144729144757%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144731144762%_))
                                              ((lambda (_%L144765%_
                                                        _%L144766%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self144716%_
                                                  _%L144766%_
                                                  _%L144765%_))
                                               _%hd144730144760%_
                                               _%hd144727144752%_)
                                              (_%g144719144736%_
                                               _%g144720144739%_))))
                                      (_%g144719144736%_ _%g144720144739%_))))
                              (_%g144719144736%_ _%g144720144739%_))))
                      (_%g144719144736%_ _%g144720144739%_)))))
          (_%g144718144781%_ _%stx144717%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self144675%_ _%hd144676%_ _%body144677%_)
        (let* ((_%hd144679%_ (gxc#generate-runtime-lambda-head _%hd144676%_))
               (_%body144681%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self144675%_ _%body144677%_)))
               (_%body144713%_
                (let* ((_%body144682144690%_ _%body144681%_)
                       (_%else144684144698%_
                        (lambda () (cons _%body144681%_ '())))
                       (_%K144686144703%_
                        (lambda (_%exprs144701%_) _%exprs144701%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body144682144690%_))
                      (let ((_%hd144687144706%_
                             (let ()
                               (declare (not safe))
                               (##car _%body144682144690%_)))
                            (_%tl144688144708%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body144682144690%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd144687144706%_ 'begin))
                            (let ((_%exprs144711%_ _%tl144688144708%_))
                              (_%K144686144703%_ _%exprs144711%_))
                            (_%else144684144698%_)))
                      (_%else144684144698%_)))))
          (cons 'lambda (cons _%hd144679%_ _%body144713%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd144673%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd144673%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self143212%_ _%stx143213%_)
        (letrec ((_%dispatch-case?143215%_
                  (lambda (_%hd143903%_ _%body143904%_)
                    (let* ((_%form143906%_
                            (cons _%hd143903%_ (cons _%body143904%_ '())))
                           (_%__stx146228146229%_ _%form143906%_)
                           (_%g143911144068%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx146228146229%_)))))
                      (let ((_%__kont146230146231%_
                             (lambda (_%L144593%_ _%L144594%_ _%L144595%_)
                               '#t))
                            (_%__kont146236146237%_
                             (lambda (_%L144381%_
                                      _%L144382%_
                                      _%L144383%_
                                      _%L144384%_
                                      _%L144385%_
                                      _%L144386%_)
                               '#t))
                            (_%__kont146242146243%_
                             (lambda (_%L144176%_
                                      _%L144177%_
                                      _%L144178%_
                                      _%L144179%_)
                               '#t))
                            (_%__kont146244146245%_ (lambda () '#f)))
                        (let* ((_%__match146369146370%_
                                (lambda (_%e144028144080%_
                                         _%hd144029144083%_
                                         _%tl144030144085%_
                                         _%e144031144088%_
                                         _%hd144032144091%_
                                         _%tl144033144093%_
                                         _%e144034144096%_
                                         _%hd144035144099%_
                                         _%tl144036144101%_
                                         _%e144037144104%_
                                         _%hd144038144107%_
                                         _%tl144039144109%_
                                         _%e144040144112%_
                                         _%hd144041144115%_
                                         _%tl144042144117%_
                                         _%e144043144120%_
                                         _%hd144044144123%_
                                         _%tl144045144125%_
                                         _%e144046144128%_
                                         _%hd144047144131%_
                                         _%tl144048144133%_
                                         _%e144049144136%_
                                         _%hd144050144139%_
                                         _%tl144051144141%_
                                         _%e144052144144%_
                                         _%hd144053144147%_
                                         _%tl144054144149%_
                                         _%e144055144152%_
                                         _%hd144056144155%_
                                         _%tl144057144157%_
                                         _%e144058144160%_
                                         _%hd144059144163%_
                                         _%tl144060144165%_
                                         _%e144061144168%_
                                         _%hd144062144171%_
                                         _%tl144063144173%_)
                                  (let ((_%L144176%_ _%hd144062144171%_)
                                        (_%L144177%_ _%hd144053144147%_)
                                        (_%L144178%_ _%hd144044144123%_)
                                        (_%L144179%_ _%hd144029144083%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L144179%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L144178%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L144179%_
                                                _%L144176%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L144177%_
                                                     _%L144179%_))))
                                        (_%__kont146242146243%_
                                         _%L144176%_
                                         _%L144177%_
                                         _%L144178%_
                                         _%L144179%_)
                                        (_%__kont146244146245%_)))))
                               (_%__match146341146342%_
                                (lambda (_%e144028144080%_
                                         _%hd144029144083%_
                                         _%tl144030144085%_
                                         _%e144031144088%_
                                         _%hd144032144091%_
                                         _%tl144033144093%_
                                         _%e144034144096%_
                                         _%hd144035144099%_
                                         _%tl144036144101%_
                                         _%e144037144104%_
                                         _%hd144038144107%_
                                         _%tl144039144109%_
                                         _%e144040144112%_
                                         _%hd144041144115%_
                                         _%tl144042144117%_
                                         _%e144043144120%_
                                         _%hd144044144123%_
                                         _%tl144045144125%_
                                         _%e144046144128%_
                                         _%hd144047144131%_
                                         _%tl144048144133%_
                                         _%e144049144136%_
                                         _%hd144050144139%_
                                         _%tl144051144141%_
                                         _%e144052144144%_
                                         _%hd144053144147%_
                                         _%tl144054144149%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144048144133%_))
                                      (let ((_%e144055144152%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144048144133%_))))
                                        (let ((_%tl144057144157%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144055144152%_)))
                                              (_%hd144056144155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144055144152%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd144056144155%_))
                                              (let ((_%e144058144160%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd144056144155%_))))
                                                (let ((_%tl144060144165%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144058144160%_)))
                                                      (_%hd144059144163%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144058144160%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd144059144163%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd144059144163%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl144060144165%_))
                      (let ((_%e144061144168%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl144060144165%_))))
                        (let ((_%tl144063144173%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144061144168%_)))
                              (_%hd144062144171%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144061144168%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl144063144173%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl144057144157%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl144033144093%_))
                                      (_%__match146369146370%_
                                       _%e144028144080%_
                                       _%hd144029144083%_
                                       _%tl144030144085%_
                                       _%e144031144088%_
                                       _%hd144032144091%_
                                       _%tl144033144093%_
                                       _%e144034144096%_
                                       _%hd144035144099%_
                                       _%tl144036144101%_
                                       _%e144037144104%_
                                       _%hd144038144107%_
                                       _%tl144039144109%_
                                       _%e144040144112%_
                                       _%hd144041144115%_
                                       _%tl144042144117%_
                                       _%e144043144120%_
                                       _%hd144044144123%_
                                       _%tl144045144125%_
                                       _%e144046144128%_
                                       _%hd144047144131%_
                                       _%tl144048144133%_
                                       _%e144049144136%_
                                       _%hd144050144139%_
                                       _%tl144051144141%_
                                       _%e144052144144%_
                                       _%hd144053144147%_
                                       _%tl144054144149%_
                                       _%e144055144152%_
                                       _%hd144056144155%_
                                       _%tl144057144157%_
                                       _%e144058144160%_
                                       _%hd144059144163%_
                                       _%tl144060144165%_
                                       _%e144061144168%_
                                       _%hd144062144171%_
                                       _%tl144063144173%_)
                                      (_%__kont146244146245%_))
                                  (_%__kont146244146245%_))
                              (_%__kont146244146245%_))))
                      (_%__kont146244146245%_))
                  (_%__kont146244146245%_))
              (_%__kont146244146245%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont146244146245%_))))
                                      (_%__kont146244146245%_))))
                               (_%__match146271146272%_
                                (lambda (_%e143964144221%_
                                         _%hd143965144224%_
                                         _%tl143966144226%_
                                         _%__splice146238146239%_
                                         _%target143967144229%_
                                         _%tl143969144231%_)
                                  (letrec ((_%loop143970144234%_
                                            (lambda (_%hd143968144237%_
                                                     _%arg143974144239%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143968144237%_))
                                                  (let ((_%e143971144242%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143968144237%_))))
                                                    (let ((_%lp-tl143973144247%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143971144242%_)))
                                                          (_%lp-hd143972144245%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143971144242%_))))
                                                      (_%loop143970144234%_
                                                       _%lp-tl143973144247%_
                                                       (cons _%lp-hd143972144245%_
                                                             _%arg143974144239%_))))
                                                  (let ((_%arg143975144250%_
                                                         (reverse _%arg143974144239%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143966144226%_))
                                                        (let ((_%e143976144253%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143966144226%_))))
                  (let ((_%tl143978144258%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143976144253%_)))
                        (_%hd143977144256%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143976144253%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143977144256%_))
                        (let ((_%e143979144261%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143977144256%_))))
                          (let ((_%tl143981144266%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143979144261%_)))
                                (_%hd143980144264%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143979144261%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143980144264%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143980144264%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143981144266%_))
                                        (let ((_%e143982144269%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143981144266%_))))
                                          (let ((_%tl143984144274%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143982144269%_)))
                                                (_%hd143983144272%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143982144269%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143983144272%_))
                                                (let ((_%e143985144277%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143983144272%_))))
                                                  (let ((_%tl143987144282%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143985144277%_)))
                                                        (_%hd143986144280%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143985144277%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143986144280%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143986144280%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143987144282%_))
                        (let ((_%e143988144285%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143987144282%_))))
                          (let ((_%tl143990144290%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143988144285%_)))
                                (_%hd143989144288%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143988144285%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143990144290%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl143984144274%_))
                                    (let ((_%e143991144293%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl143984144274%_))))
                                      (let ((_%tl143993144298%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e143991144293%_)))
                                            (_%hd143992144296%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e143991144293%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd143992144296%_))
                                            (let ((_%e143994144301%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd143992144296%_))))
                                              (let ((_%tl143996144306%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143994144301%_)))
                                                    (_%hd143995144304%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143994144301%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd143995144304%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd143995144304%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl143996144306%_))
                                                            (let ((_%e143997144309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl143996144306%_))))
                      (let ((_%tl143999144314%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143997144309%_)))
                            (_%hd143998144312%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143997144309%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl143999144314%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl143993144298%_))
                                (if (let ((__tmp147510
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl143993144298%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp147510 '1))
                                    (let ((_%__splice146240146241%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl143993144298%_
                                              '1))))
                                      (let ((_%tl144002144319%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146240146241%_
                                                '1)))
                                            (_%target144000144317%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146240146241%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl144002144319%_))
                                            (let ((_%e144009144322%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl144002144319%_))))
                                              (let ((_%tl144011144327%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144009144322%_)))
                                                    (_%hd144010144325%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144009144322%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd144010144325%_))
                                                    (let ((_%e144012144330%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd144010144325%_))))
                                                      (let ((_%tl144014144335%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e144012144330%_)))
                    (_%hd144013144333%_
                     (let () (declare (not safe)) (##car _%e144012144330%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd144013144333%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd144013144333%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl144014144335%_))
                            (let ((_%e144015144338%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl144014144335%_))))
                              (let ((_%tl144017144343%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e144015144338%_)))
                                    (_%hd144016144341%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e144015144338%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl144017144343%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl144011144327%_))
                                        (letrec ((_%loop144003144346%_
                                                  (lambda (_%hd144001144349%_
                                                           _%xarg144007144351%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd144001144349%_))
                                                        (let ((_%e144004144354%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd144001144349%_))))
                  (let ((_%lp-tl144006144359%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e144004144354%_)))
                        (_%lp-hd144005144357%_
                         (let ()
                           (declare (not safe))
                           (##car _%e144004144354%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd144005144357%_))
                        (let ((_%e144018144362%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd144005144357%_))))
                          (let ((_%tl144020144367%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144018144362%_)))
                                (_%hd144019144365%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144018144362%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd144019144365%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd144019144365%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144020144367%_))
                                        (let ((_%e144021144370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144020144367%_))))
                                          (let ((_%tl144023144375%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144021144370%_)))
                                                (_%hd144022144373%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144021144370%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144023144375%_))
                                                (_%loop144003144346%_
                                                 _%lp-tl144006144359%_
                                                 (cons _%hd144022144373%_
                                                       _%xarg144007144351%_))
                                                (_%__match146341146342%_
                                                 _%e143964144221%_
                                                 _%hd143965144224%_
                                                 _%tl143966144226%_
                                                 _%e143976144253%_
                                                 _%hd143977144256%_
                                                 _%tl143978144258%_
                                                 _%e143979144261%_
                                                 _%hd143980144264%_
                                                 _%tl143981144266%_
                                                 _%e143982144269%_
                                                 _%hd143983144272%_
                                                 _%tl143984144274%_
                                                 _%e143985144277%_
                                                 _%hd143986144280%_
                                                 _%tl143987144282%_
                                                 _%e143988144285%_
                                                 _%hd143989144288%_
                                                 _%tl143990144290%_
                                                 _%e143991144293%_
                                                 _%hd143992144296%_
                                                 _%tl143993144298%_
                                                 _%e143994144301%_
                                                 _%hd143995144304%_
                                                 _%tl143996144306%_
                                                 _%e143997144309%_
                                                 _%hd143998144312%_
                                                 _%tl143999144314%_))))
                                        (_%__match146341146342%_
                                         _%e143964144221%_
                                         _%hd143965144224%_
                                         _%tl143966144226%_
                                         _%e143976144253%_
                                         _%hd143977144256%_
                                         _%tl143978144258%_
                                         _%e143979144261%_
                                         _%hd143980144264%_
                                         _%tl143981144266%_
                                         _%e143982144269%_
                                         _%hd143983144272%_
                                         _%tl143984144274%_
                                         _%e143985144277%_
                                         _%hd143986144280%_
                                         _%tl143987144282%_
                                         _%e143988144285%_
                                         _%hd143989144288%_
                                         _%tl143990144290%_
                                         _%e143991144293%_
                                         _%hd143992144296%_
                                         _%tl143993144298%_
                                         _%e143994144301%_
                                         _%hd143995144304%_
                                         _%tl143996144306%_
                                         _%e143997144309%_
                                         _%hd143998144312%_
                                         _%tl143999144314%_))
                                    (_%__match146341146342%_
                                     _%e143964144221%_
                                     _%hd143965144224%_
                                     _%tl143966144226%_
                                     _%e143976144253%_
                                     _%hd143977144256%_
                                     _%tl143978144258%_
                                     _%e143979144261%_
                                     _%hd143980144264%_
                                     _%tl143981144266%_
                                     _%e143982144269%_
                                     _%hd143983144272%_
                                     _%tl143984144274%_
                                     _%e143985144277%_
                                     _%hd143986144280%_
                                     _%tl143987144282%_
                                     _%e143988144285%_
                                     _%hd143989144288%_
                                     _%tl143990144290%_
                                     _%e143991144293%_
                                     _%hd143992144296%_
                                     _%tl143993144298%_
                                     _%e143994144301%_
                                     _%hd143995144304%_
                                     _%tl143996144306%_
                                     _%e143997144309%_
                                     _%hd143998144312%_
                                     _%tl143999144314%_))
                                (_%__match146341146342%_
                                 _%e143964144221%_
                                 _%hd143965144224%_
                                 _%tl143966144226%_
                                 _%e143976144253%_
                                 _%hd143977144256%_
                                 _%tl143978144258%_
                                 _%e143979144261%_
                                 _%hd143980144264%_
                                 _%tl143981144266%_
                                 _%e143982144269%_
                                 _%hd143983144272%_
                                 _%tl143984144274%_
                                 _%e143985144277%_
                                 _%hd143986144280%_
                                 _%tl143987144282%_
                                 _%e143988144285%_
                                 _%hd143989144288%_
                                 _%tl143990144290%_
                                 _%e143991144293%_
                                 _%hd143992144296%_
                                 _%tl143993144298%_
                                 _%e143994144301%_
                                 _%hd143995144304%_
                                 _%tl143996144306%_
                                 _%e143997144309%_
                                 _%hd143998144312%_
                                 _%tl143999144314%_))))
                        (_%__match146341146342%_
                         _%e143964144221%_
                         _%hd143965144224%_
                         _%tl143966144226%_
                         _%e143976144253%_
                         _%hd143977144256%_
                         _%tl143978144258%_
                         _%e143979144261%_
                         _%hd143980144264%_
                         _%tl143981144266%_
                         _%e143982144269%_
                         _%hd143983144272%_
                         _%tl143984144274%_
                         _%e143985144277%_
                         _%hd143986144280%_
                         _%tl143987144282%_
                         _%e143988144285%_
                         _%hd143989144288%_
                         _%tl143990144290%_
                         _%e143991144293%_
                         _%hd143992144296%_
                         _%tl143993144298%_
                         _%e143994144301%_
                         _%hd143995144304%_
                         _%tl143996144306%_
                         _%e143997144309%_
                         _%hd143998144312%_
                         _%tl143999144314%_))))
                (let ((_%xarg144008144378%_ (reverse _%xarg144007144351%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl143978144258%_))
                      (let ((_%L144381%_ _%hd144016144341%_)
                            (_%L144382%_ _%xarg144008144378%_)
                            (_%L144383%_ _%hd143998144312%_)
                            (_%L144384%_ _%hd143989144288%_)
                            (_%L144385%_ _%tl143969144231%_)
                            (_%L144386%_ _%arg143975144250%_))
                        (if (and (let ((__tmp147511
                                        (let ((__tmp147512
                                               (lambda (_%g144429144432%_
                                                        _%g144430144434%_)
                                                 (cons _%g144429144432%_
                                                       _%g144430144434%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp147512
                                           '()
                                           _%L144386%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp147511))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L144385%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L144384%_
                                    'apply))
                                 (let ((__tmp147515
                                        (length (let ((__tmp147516
                                                       (lambda (_%g144436144439%_
                                                                _%g144437144441%_)
                                                         (cons _%g144436144439%_
                                                               _%g144437144441%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp147516
                                                   '()
                                                   _%L144386%_))))
                                       (__tmp147513
                                        (length (let ((__tmp147514
                                                       (lambda (_%g144443144446%_
                                                                _%g144444144448%_)
                                                         (cons _%g144443144446%_
                                                               _%g144444144448%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp147514
                                                   '()
                                                   _%L144382%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp147515 __tmp147513))
                                 (let ((__tmp147519
                                        (let ((__tmp147520
                                               (lambda (_%g144450144453%_
                                                        _%g144451144455%_)
                                                 (cons _%g144450144453%_
                                                       _%g144451144455%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp147520
                                           '()
                                           _%L144386%_)))
                                       (__tmp147517
                                        (let ((__tmp147518
                                               (lambda (_%g144457144460%_
                                                        _%g144458144462%_)
                                                 (cons _%g144457144460%_
                                                       _%g144458144462%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp147518
                                           '()
                                           _%L144382%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp147519
                                    __tmp147517))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L144385%_
                                    _%L144381%_))
                                 (not (let ((__tmp147524
                                             (lambda (_%g144464144466%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g144464144466%_
                                                  _%L144383%_))))
                                            (__tmp147521
                                             (let ((__tmp147523
                                                    (lambda (_%g144468144471%_
                                                             _%g144469144473%_)
                                                      (cons _%g144468144471%_
                                                            _%g144469144473%_)))
                                                   (__tmp147522
                                                    (cons _%L144385%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp147523
                                                __tmp147522
                                                _%L144386%_))))
                                        (declare (not safe))
                                        (__find __tmp147524 __tmp147521))))
                            (_%__kont146236146237%_
                             _%L144381%_
                             _%L144382%_
                             _%L144383%_
                             _%L144384%_
                             _%L144385%_
                             _%L144386%_)
                            (_%__match146341146342%_
                             _%e143964144221%_
                             _%hd143965144224%_
                             _%tl143966144226%_
                             _%e143976144253%_
                             _%hd143977144256%_
                             _%tl143978144258%_
                             _%e143979144261%_
                             _%hd143980144264%_
                             _%tl143981144266%_
                             _%e143982144269%_
                             _%hd143983144272%_
                             _%tl143984144274%_
                             _%e143985144277%_
                             _%hd143986144280%_
                             _%tl143987144282%_
                             _%e143988144285%_
                             _%hd143989144288%_
                             _%tl143990144290%_
                             _%e143991144293%_
                             _%hd143992144296%_
                             _%tl143993144298%_
                             _%e143994144301%_
                             _%hd143995144304%_
                             _%tl143996144306%_
                             _%e143997144309%_
                             _%hd143998144312%_
                             _%tl143999144314%_)))
                      (_%__match146341146342%_
                       _%e143964144221%_
                       _%hd143965144224%_
                       _%tl143966144226%_
                       _%e143976144253%_
                       _%hd143977144256%_
                       _%tl143978144258%_
                       _%e143979144261%_
                       _%hd143980144264%_
                       _%tl143981144266%_
                       _%e143982144269%_
                       _%hd143983144272%_
                       _%tl143984144274%_
                       _%e143985144277%_
                       _%hd143986144280%_
                       _%tl143987144282%_
                       _%e143988144285%_
                       _%hd143989144288%_
                       _%tl143990144290%_
                       _%e143991144293%_
                       _%hd143992144296%_
                       _%tl143993144298%_
                       _%e143994144301%_
                       _%hd143995144304%_
                       _%tl143996144306%_
                       _%e143997144309%_
                       _%hd143998144312%_
                       _%tl143999144314%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop144003144346%_
                                           _%target144000144317%_
                                           '()))
                                        (_%__match146341146342%_
                                         _%e143964144221%_
                                         _%hd143965144224%_
                                         _%tl143966144226%_
                                         _%e143976144253%_
                                         _%hd143977144256%_
                                         _%tl143978144258%_
                                         _%e143979144261%_
                                         _%hd143980144264%_
                                         _%tl143981144266%_
                                         _%e143982144269%_
                                         _%hd143983144272%_
                                         _%tl143984144274%_
                                         _%e143985144277%_
                                         _%hd143986144280%_
                                         _%tl143987144282%_
                                         _%e143988144285%_
                                         _%hd143989144288%_
                                         _%tl143990144290%_
                                         _%e143991144293%_
                                         _%hd143992144296%_
                                         _%tl143993144298%_
                                         _%e143994144301%_
                                         _%hd143995144304%_
                                         _%tl143996144306%_
                                         _%e143997144309%_
                                         _%hd143998144312%_
                                         _%tl143999144314%_))
                                    (_%__match146341146342%_
                                     _%e143964144221%_
                                     _%hd143965144224%_
                                     _%tl143966144226%_
                                     _%e143976144253%_
                                     _%hd143977144256%_
                                     _%tl143978144258%_
                                     _%e143979144261%_
                                     _%hd143980144264%_
                                     _%tl143981144266%_
                                     _%e143982144269%_
                                     _%hd143983144272%_
                                     _%tl143984144274%_
                                     _%e143985144277%_
                                     _%hd143986144280%_
                                     _%tl143987144282%_
                                     _%e143988144285%_
                                     _%hd143989144288%_
                                     _%tl143990144290%_
                                     _%e143991144293%_
                                     _%hd143992144296%_
                                     _%tl143993144298%_
                                     _%e143994144301%_
                                     _%hd143995144304%_
                                     _%tl143996144306%_
                                     _%e143997144309%_
                                     _%hd143998144312%_
                                     _%tl143999144314%_))))
                            (_%__match146341146342%_
                             _%e143964144221%_
                             _%hd143965144224%_
                             _%tl143966144226%_
                             _%e143976144253%_
                             _%hd143977144256%_
                             _%tl143978144258%_
                             _%e143979144261%_
                             _%hd143980144264%_
                             _%tl143981144266%_
                             _%e143982144269%_
                             _%hd143983144272%_
                             _%tl143984144274%_
                             _%e143985144277%_
                             _%hd143986144280%_
                             _%tl143987144282%_
                             _%e143988144285%_
                             _%hd143989144288%_
                             _%tl143990144290%_
                             _%e143991144293%_
                             _%hd143992144296%_
                             _%tl143993144298%_
                             _%e143994144301%_
                             _%hd143995144304%_
                             _%tl143996144306%_
                             _%e143997144309%_
                             _%hd143998144312%_
                             _%tl143999144314%_))
                        (_%__match146341146342%_
                         _%e143964144221%_
                         _%hd143965144224%_
                         _%tl143966144226%_
                         _%e143976144253%_
                         _%hd143977144256%_
                         _%tl143978144258%_
                         _%e143979144261%_
                         _%hd143980144264%_
                         _%tl143981144266%_
                         _%e143982144269%_
                         _%hd143983144272%_
                         _%tl143984144274%_
                         _%e143985144277%_
                         _%hd143986144280%_
                         _%tl143987144282%_
                         _%e143988144285%_
                         _%hd143989144288%_
                         _%tl143990144290%_
                         _%e143991144293%_
                         _%hd143992144296%_
                         _%tl143993144298%_
                         _%e143994144301%_
                         _%hd143995144304%_
                         _%tl143996144306%_
                         _%e143997144309%_
                         _%hd143998144312%_
                         _%tl143999144314%_))
                    (_%__match146341146342%_
                     _%e143964144221%_
                     _%hd143965144224%_
                     _%tl143966144226%_
                     _%e143976144253%_
                     _%hd143977144256%_
                     _%tl143978144258%_
                     _%e143979144261%_
                     _%hd143980144264%_
                     _%tl143981144266%_
                     _%e143982144269%_
                     _%hd143983144272%_
                     _%tl143984144274%_
                     _%e143985144277%_
                     _%hd143986144280%_
                     _%tl143987144282%_
                     _%e143988144285%_
                     _%hd143989144288%_
                     _%tl143990144290%_
                     _%e143991144293%_
                     _%hd143992144296%_
                     _%tl143993144298%_
                     _%e143994144301%_
                     _%hd143995144304%_
                     _%tl143996144306%_
                     _%e143997144309%_
                     _%hd143998144312%_
                     _%tl143999144314%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match146341146342%_
                                                     _%e143964144221%_
                                                     _%hd143965144224%_
                                                     _%tl143966144226%_
                                                     _%e143976144253%_
                                                     _%hd143977144256%_
                                                     _%tl143978144258%_
                                                     _%e143979144261%_
                                                     _%hd143980144264%_
                                                     _%tl143981144266%_
                                                     _%e143982144269%_
                                                     _%hd143983144272%_
                                                     _%tl143984144274%_
                                                     _%e143985144277%_
                                                     _%hd143986144280%_
                                                     _%tl143987144282%_
                                                     _%e143988144285%_
                                                     _%hd143989144288%_
                                                     _%tl143990144290%_
                                                     _%e143991144293%_
                                                     _%hd143992144296%_
                                                     _%tl143993144298%_
                                                     _%e143994144301%_
                                                     _%hd143995144304%_
                                                     _%tl143996144306%_
                                                     _%e143997144309%_
                                                     _%hd143998144312%_
                                                     _%tl143999144314%_))))
                                            (_%__match146341146342%_
                                             _%e143964144221%_
                                             _%hd143965144224%_
                                             _%tl143966144226%_
                                             _%e143976144253%_
                                             _%hd143977144256%_
                                             _%tl143978144258%_
                                             _%e143979144261%_
                                             _%hd143980144264%_
                                             _%tl143981144266%_
                                             _%e143982144269%_
                                             _%hd143983144272%_
                                             _%tl143984144274%_
                                             _%e143985144277%_
                                             _%hd143986144280%_
                                             _%tl143987144282%_
                                             _%e143988144285%_
                                             _%hd143989144288%_
                                             _%tl143990144290%_
                                             _%e143991144293%_
                                             _%hd143992144296%_
                                             _%tl143993144298%_
                                             _%e143994144301%_
                                             _%hd143995144304%_
                                             _%tl143996144306%_
                                             _%e143997144309%_
                                             _%hd143998144312%_
                                             _%tl143999144314%_))))
                                    (_%__match146341146342%_
                                     _%e143964144221%_
                                     _%hd143965144224%_
                                     _%tl143966144226%_
                                     _%e143976144253%_
                                     _%hd143977144256%_
                                     _%tl143978144258%_
                                     _%e143979144261%_
                                     _%hd143980144264%_
                                     _%tl143981144266%_
                                     _%e143982144269%_
                                     _%hd143983144272%_
                                     _%tl143984144274%_
                                     _%e143985144277%_
                                     _%hd143986144280%_
                                     _%tl143987144282%_
                                     _%e143988144285%_
                                     _%hd143989144288%_
                                     _%tl143990144290%_
                                     _%e143991144293%_
                                     _%hd143992144296%_
                                     _%tl143993144298%_
                                     _%e143994144301%_
                                     _%hd143995144304%_
                                     _%tl143996144306%_
                                     _%e143997144309%_
                                     _%hd143998144312%_
                                     _%tl143999144314%_))
                                (_%__match146341146342%_
                                 _%e143964144221%_
                                 _%hd143965144224%_
                                 _%tl143966144226%_
                                 _%e143976144253%_
                                 _%hd143977144256%_
                                 _%tl143978144258%_
                                 _%e143979144261%_
                                 _%hd143980144264%_
                                 _%tl143981144266%_
                                 _%e143982144269%_
                                 _%hd143983144272%_
                                 _%tl143984144274%_
                                 _%e143985144277%_
                                 _%hd143986144280%_
                                 _%tl143987144282%_
                                 _%e143988144285%_
                                 _%hd143989144288%_
                                 _%tl143990144290%_
                                 _%e143991144293%_
                                 _%hd143992144296%_
                                 _%tl143993144298%_
                                 _%e143994144301%_
                                 _%hd143995144304%_
                                 _%tl143996144306%_
                                 _%e143997144309%_
                                 _%hd143998144312%_
                                 _%tl143999144314%_))
                            (_%__kont146244146245%_))))
                    (_%__kont146244146245%_))
                (_%__kont146244146245%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont146244146245%_))))
                                            (_%__kont146244146245%_))))
                                    (_%__kont146244146245%_))
                                (_%__kont146244146245%_))))
                        (_%__kont146244146245%_))
                    (_%__kont146244146245%_))
                (_%__kont146244146245%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont146244146245%_))))
                                        (_%__kont146244146245%_))
                                    (_%__kont146244146245%_))
                                (_%__kont146244146245%_))))
                        (_%__kont146244146245%_))))
                (_%__kont146244146245%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143970144234%_
                                     _%target143967144229%_
                                     '()))))
                               (_%__match146259146260%_
                                (lambda (_%e143916144481%_
                                         _%hd143917144484%_
                                         _%tl143918144486%_
                                         _%__splice146232146233%_
                                         _%target143919144489%_
                                         _%tl143921144491%_)
                                  (letrec ((_%loop143922144494%_
                                            (lambda (_%hd143920144497%_
                                                     _%arg143926144499%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143920144497%_))
                                                  (let ((_%e143923144502%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143920144497%_))))
                                                    (let ((_%lp-tl143925144507%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143923144502%_)))
                                                          (_%lp-hd143924144505%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143923144502%_))))
                                                      (_%loop143922144494%_
                                                       _%lp-tl143925144507%_
                                                       (cons _%lp-hd143924144505%_
                                                             _%arg143926144499%_))))
                                                  (let ((_%arg143927144510%_
                                                         (reverse _%arg143926144499%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143918144486%_))
                                                        (let ((_%e143928144513%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143918144486%_))))
                  (let ((_%tl143930144518%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143928144513%_)))
                        (_%hd143929144516%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143928144513%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143929144516%_))
                        (let ((_%e143931144521%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143929144516%_))))
                          (let ((_%tl143933144526%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143931144521%_)))
                                (_%hd143932144524%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143931144521%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143932144524%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143932144524%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143933144526%_))
                                        (let ((_%e143934144529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143933144526%_))))
                                          (let ((_%tl143936144534%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143934144529%_)))
                                                (_%hd143935144532%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143934144529%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143935144532%_))
                                                (let ((_%e143937144537%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143935144532%_))))
                                                  (let ((_%tl143939144542%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143937144537%_)))
                                                        (_%hd143938144540%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143937144537%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143938144540%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143938144540%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143939144542%_))
                        (let ((_%e143940144545%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143939144542%_))))
                          (let ((_%tl143942144550%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143940144545%_)))
                                (_%hd143941144548%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143940144545%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143942144550%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl143936144534%_))
                                    (let ((_%__splice146234146235%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl143936144534%_
                                              '0))))
                                      (let ((_%tl143945144555%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146234146235%_
                                                '1)))
                                            (_%target143943144553%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146234146235%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl143945144555%_))
                                            (letrec ((_%loop143946144558%_
                                                      (lambda (_%hd143944144561%_
                                                               _%xarg143950144563%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd143944144561%_))
                                                            (let ((_%e143947144566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd143944144561%_))))
                      (let ((_%lp-tl143949144571%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143947144566%_)))
                            (_%lp-hd143948144569%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143947144566%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd143948144569%_))
                            (let ((_%e143952144574%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd143948144569%_))))
                              (let ((_%tl143954144579%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e143952144574%_)))
                                    (_%hd143953144577%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e143952144574%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd143953144577%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd143953144577%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143954144579%_))
                                            (let ((_%e143955144582%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143954144579%_))))
                                              (let ((_%tl143957144587%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143955144582%_)))
                                                    (_%hd143956144585%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143955144582%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl143957144587%_))
                                                    (_%loop143946144558%_
                                                     _%lp-tl143949144571%_
                                                     (cons _%hd143956144585%_
                                                           _%xarg143950144563%_))
                                                    (_%__match146271146272%_
                                                     _%e143916144481%_
                                                     _%hd143917144484%_
                                                     _%tl143918144486%_
                                                     _%__splice146232146233%_
                                                     _%target143919144489%_
                                                     _%tl143921144491%_))))
                                            (_%__match146271146272%_
                                             _%e143916144481%_
                                             _%hd143917144484%_
                                             _%tl143918144486%_
                                             _%__splice146232146233%_
                                             _%target143919144489%_
                                             _%tl143921144491%_))
                                        (_%__match146271146272%_
                                         _%e143916144481%_
                                         _%hd143917144484%_
                                         _%tl143918144486%_
                                         _%__splice146232146233%_
                                         _%target143919144489%_
                                         _%tl143921144491%_))
                                    (_%__match146271146272%_
                                     _%e143916144481%_
                                     _%hd143917144484%_
                                     _%tl143918144486%_
                                     _%__splice146232146233%_
                                     _%target143919144489%_
                                     _%tl143921144491%_))))
                            (_%__match146271146272%_
                             _%e143916144481%_
                             _%hd143917144484%_
                             _%tl143918144486%_
                             _%__splice146232146233%_
                             _%target143919144489%_
                             _%tl143921144491%_))))
                    (let ((_%xarg143951144590%_
                           (reverse _%xarg143950144563%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl143930144518%_))
                          (let ((_%L144593%_ _%xarg143951144590%_)
                                (_%L144594%_ _%hd143941144548%_)
                                (_%L144595%_ _%arg143927144510%_))
                            (if (and (let ((__tmp147525
                                            (let ((__tmp147526
                                                   (lambda (_%g144623144626%_
                                                            _%g144624144628%_)
                                                     (cons _%g144623144626%_
                                                           _%g144624144628%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147526
                                               '()
                                               _%L144595%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp147525))
                                     (let ((__tmp147529
                                            (length (let ((__tmp147530
                                                           (lambda (_%g144630144633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g144631144635%_)
                     (cons _%g144630144633%_ _%g144631144635%_))))
              (declare (not safe))
              (__foldr1 __tmp147530 '() _%L144595%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp147527
                                            (length (let ((__tmp147528
                                                           (lambda (_%g144637144640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g144638144642%_)
                     (cons _%g144637144640%_ _%g144638144642%_))))
              (declare (not safe))
              (__foldr1 __tmp147528 '() _%L144593%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp147529 __tmp147527))
                                     (let ((__tmp147533
                                            (let ((__tmp147534
                                                   (lambda (_%g144644144647%_
                                                            _%g144645144649%_)
                                                     (cons _%g144644144647%_
                                                           _%g144645144649%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147534
                                               '()
                                               _%L144595%_)))
                                           (__tmp147531
                                            (let ((__tmp147532
                                                   (lambda (_%g144651144654%_
                                                            _%g144652144656%_)
                                                     (cons _%g144651144654%_
                                                           _%g144652144656%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147532
                                               '()
                                               _%L144593%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp147533
                                        __tmp147531))
                                     (not (let ((__tmp147537
                                                 (lambda (_%g144658144660%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g144658144660%_
                                                      _%L144594%_))))
                                                (__tmp147535
                                                 (let ((__tmp147536
                                                        (lambda (_%g144662144665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g144663144667%_)
                  (cons _%g144662144665%_ _%g144663144667%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp147536
                                                    '()
                                                    _%L144595%_))))
                                            (declare (not safe))
                                            (__find __tmp147537 __tmp147535))))
                                (_%__kont146230146231%_
                                 _%L144593%_
                                 _%L144594%_
                                 _%L144595%_)
                                (_%__match146271146272%_
                                 _%e143916144481%_
                                 _%hd143917144484%_
                                 _%tl143918144486%_
                                 _%__splice146232146233%_
                                 _%target143919144489%_
                                 _%tl143921144491%_)))
                          (_%__match146271146272%_
                           _%e143916144481%_
                           _%hd143917144484%_
                           _%tl143918144486%_
                           _%__splice146232146233%_
                           _%target143919144489%_
                           _%tl143921144491%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop143946144558%_
                                               _%target143943144553%_
                                               '()))
                                            (_%__match146271146272%_
                                             _%e143916144481%_
                                             _%hd143917144484%_
                                             _%tl143918144486%_
                                             _%__splice146232146233%_
                                             _%target143919144489%_
                                             _%tl143921144491%_))))
                                    (_%__match146271146272%_
                                     _%e143916144481%_
                                     _%hd143917144484%_
                                     _%tl143918144486%_
                                     _%__splice146232146233%_
                                     _%target143919144489%_
                                     _%tl143921144491%_))
                                (_%__match146271146272%_
                                 _%e143916144481%_
                                 _%hd143917144484%_
                                 _%tl143918144486%_
                                 _%__splice146232146233%_
                                 _%target143919144489%_
                                 _%tl143921144491%_))))
                        (_%__match146271146272%_
                         _%e143916144481%_
                         _%hd143917144484%_
                         _%tl143918144486%_
                         _%__splice146232146233%_
                         _%target143919144489%_
                         _%tl143921144491%_))
                    (_%__match146271146272%_
                     _%e143916144481%_
                     _%hd143917144484%_
                     _%tl143918144486%_
                     _%__splice146232146233%_
                     _%target143919144489%_
                     _%tl143921144491%_))
                (_%__match146271146272%_
                 _%e143916144481%_
                 _%hd143917144484%_
                 _%tl143918144486%_
                 _%__splice146232146233%_
                 _%target143919144489%_
                 _%tl143921144491%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match146271146272%_
                                                 _%e143916144481%_
                                                 _%hd143917144484%_
                                                 _%tl143918144486%_
                                                 _%__splice146232146233%_
                                                 _%target143919144489%_
                                                 _%tl143921144491%_))))
                                        (_%__match146271146272%_
                                         _%e143916144481%_
                                         _%hd143917144484%_
                                         _%tl143918144486%_
                                         _%__splice146232146233%_
                                         _%target143919144489%_
                                         _%tl143921144491%_))
                                    (_%__match146271146272%_
                                     _%e143916144481%_
                                     _%hd143917144484%_
                                     _%tl143918144486%_
                                     _%__splice146232146233%_
                                     _%target143919144489%_
                                     _%tl143921144491%_))
                                (_%__match146271146272%_
                                 _%e143916144481%_
                                 _%hd143917144484%_
                                 _%tl143918144486%_
                                 _%__splice146232146233%_
                                 _%target143919144489%_
                                 _%tl143921144491%_))))
                        (_%__match146271146272%_
                         _%e143916144481%_
                         _%hd143917144484%_
                         _%tl143918144486%_
                         _%__splice146232146233%_
                         _%target143919144489%_
                         _%tl143921144491%_))))
                (_%__match146271146272%_
                 _%e143916144481%_
                 _%hd143917144484%_
                 _%tl143918144486%_
                 _%__splice146232146233%_
                 _%target143919144489%_
                 _%tl143921144491%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143922144494%_
                                     _%target143919144489%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx146228146229%_))
                              (let ((_%e143916144481%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx146228146229%_))))
                                (let ((_%tl143918144486%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143916144481%_)))
                                      (_%hd143917144484%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143916144481%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd143917144484%_))
                                      (let ((_%__splice146232146233%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd143917144484%_
                                                '0))))
                                        (let ((_%tl143921144491%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice146232146233%_
                                                  '1)))
                                              (_%target143919144489%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice146232146233%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143921144491%_))
                                              (_%__match146259146260%_
                                               _%e143916144481%_
                                               _%hd143917144484%_
                                               _%tl143918144486%_
                                               _%__splice146232146233%_
                                               _%target143919144489%_
                                               _%tl143921144491%_)
                                              (_%__match146271146272%_
                                               _%e143916144481%_
                                               _%hd143917144484%_
                                               _%tl143918144486%_
                                               _%__splice146232146233%_
                                               _%target143919144489%_
                                               _%tl143921144491%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl143918144486%_))
                                          (let ((_%e144031144088%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl143918144486%_))))
                                            (let ((_%tl144033144093%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e144031144088%_)))
                                                  (_%hd144032144091%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e144031144088%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd144032144091%_))
                                                  (let ((_%e144034144096%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd144032144091%_))))
                                                    (let ((_%tl144036144101%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e144034144096%_)))
                                                          (_%hd144035144099%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e144034144096%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd144035144099%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd144035144099%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl144036144101%_))
                          (let ((_%e144037144104%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl144036144101%_))))
                            (let ((_%tl144039144109%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144037144104%_)))
                                  (_%hd144038144107%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144037144104%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd144038144107%_))
                                  (let ((_%e144040144112%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd144038144107%_))))
                                    (let ((_%tl144042144117%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e144040144112%_)))
                                          (_%hd144041144115%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e144040144112%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd144041144115%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd144041144115%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl144042144117%_))
                                                  (let ((_%e144043144120%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl144042144117%_))))
                                                    (let ((_%tl144045144125%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e144043144120%_)))
                                                          (_%hd144044144123%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e144043144120%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl144045144125%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl144039144109%_))
                      (let ((_%e144046144128%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl144039144109%_))))
                        (let ((_%tl144048144133%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144046144128%_)))
                              (_%hd144047144131%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144046144128%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd144047144131%_))
                              (let ((_%e144049144136%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd144047144131%_))))
                                (let ((_%tl144051144141%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144049144136%_)))
                                      (_%hd144050144139%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144049144136%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd144050144139%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd144050144139%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl144051144141%_))
                                              (let ((_%e144052144144%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl144051144141%_))))
                                                (let ((_%tl144054144149%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144052144144%_)))
                                                      (_%hd144053144147%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144052144144%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl144054144149%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl144048144133%_))
                                                          (let ((_%e144055144152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl144048144133%_))))
                    (let ((_%tl144057144157%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e144055144152%_)))
                          (_%hd144056144155%_
                           (let ()
                             (declare (not safe))
                             (##car _%e144055144152%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd144056144155%_))
                          (let ((_%e144058144160%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd144056144155%_))))
                            (let ((_%tl144060144165%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144058144160%_)))
                                  (_%hd144059144163%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144058144160%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd144059144163%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd144059144163%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl144060144165%_))
                                          (let ((_%e144061144168%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl144060144165%_))))
                                            (let ((_%tl144063144173%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e144061144168%_)))
                                                  (_%hd144062144171%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e144061144168%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl144063144173%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl144057144157%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl144033144093%_))
                                                          (_%__match146369146370%_
                                                           _%e143916144481%_
                                                           _%hd143917144484%_
                                                           _%tl143918144486%_
                                                           _%e144031144088%_
                                                           _%hd144032144091%_
                                                           _%tl144033144093%_
                                                           _%e144034144096%_
                                                           _%hd144035144099%_
                                                           _%tl144036144101%_
                                                           _%e144037144104%_
                                                           _%hd144038144107%_
                                                           _%tl144039144109%_
                                                           _%e144040144112%_
                                                           _%hd144041144115%_
                                                           _%tl144042144117%_
                                                           _%e144043144120%_
                                                           _%hd144044144123%_
                                                           _%tl144045144125%_
                                                           _%e144046144128%_
                                                           _%hd144047144131%_
                                                           _%tl144048144133%_
                                                           _%e144049144136%_
                                                           _%hd144050144139%_
                                                           _%tl144051144141%_
                                                           _%e144052144144%_
                                                           _%hd144053144147%_
                                                           _%tl144054144149%_
                                                           _%e144055144152%_
                                                           _%hd144056144155%_
                                                           _%tl144057144157%_
                                                           _%e144058144160%_
                                                           _%hd144059144163%_
                                                           _%tl144060144165%_
                                                           _%e144061144168%_
                                                           _%hd144062144171%_
                                                           _%tl144063144173%_)
                                                          (_%__kont146244146245%_))
                                                      (_%__kont146244146245%_))
                                                  (_%__kont146244146245%_))))
                                          (_%__kont146244146245%_))
                                      (_%__kont146244146245%_))
                                  (_%__kont146244146245%_))))
                          (_%__kont146244146245%_))))
                  (_%__kont146244146245%_))
              (_%__kont146244146245%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont146244146245%_))
                                          (_%__kont146244146245%_))
                                      (_%__kont146244146245%_))))
                              (_%__kont146244146245%_))))
                      (_%__kont146244146245%_))
                  (_%__kont146244146245%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont146244146245%_))
                                              (_%__kont146244146245%_))
                                          (_%__kont146244146245%_))))
                                  (_%__kont146244146245%_))))
                          (_%__kont146244146245%_))
                      (_%__kont146244146245%_))
                  (_%__kont146244146245%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont146244146245%_))))
                                          (_%__kont146244146245%_)))))
                              (_%__kont146244146245%_)))))))
                 (_%dispatch-case-e143216%_
                  (lambda (_%hd143367%_ _%body143368%_)
                    (let* ((_%form143370%_
                            (cons _%hd143367%_ (cons _%body143368%_ '())))
                           (_%__stx146372146373%_ _%form143370%_)
                           (_%g143374143498%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx146372146373%_)))))
                      (let ((_%__kont146374146375%_
                             (lambda (_%L143869%_ _%L143870%_ _%L143871%_)
                               (let ((__tmp147538
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L143870%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self143212%_
                                  __tmp147538))))
                            (_%__kont146380146381%_
                             (lambda (_%L143717%_
                                      _%L143718%_
                                      _%L143719%_
                                      _%L143720%_)
                               (let ((__tmp147539
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L143717%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self143212%_
                                  __tmp147539))))
                            (_%__kont146384146385%_
                             (lambda (_%L143583%_ _%L143584%_ _%L143585%_)
                               (let ((__tmp147540
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L143583%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self143212%_
                                  __tmp147540)))))
                        (let* ((_%__match146481146482%_
                                (lambda (_%e143464143503%_
                                         _%hd143465143506%_
                                         _%tl143466143508%_
                                         _%e143467143511%_
                                         _%hd143468143514%_
                                         _%tl143469143516%_
                                         _%e143470143519%_
                                         _%hd143471143522%_
                                         _%tl143472143524%_
                                         _%e143473143527%_
                                         _%hd143474143530%_
                                         _%tl143475143532%_
                                         _%e143476143535%_
                                         _%hd143477143538%_
                                         _%tl143478143540%_
                                         _%e143479143543%_
                                         _%hd143480143546%_
                                         _%tl143481143548%_
                                         _%e143482143551%_
                                         _%hd143483143554%_
                                         _%tl143484143556%_
                                         _%e143485143559%_
                                         _%hd143486143562%_
                                         _%tl143487143564%_
                                         _%e143488143567%_
                                         _%hd143489143570%_
                                         _%tl143490143572%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143484143556%_))
                                      (let ((_%e143491143575%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143484143556%_))))
                                        (let ((_%tl143493143580%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143491143575%_)))
                                              (_%hd143492143578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143491143575%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143493143580%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl143469143516%_))
                                                  (_%__kont146384146385%_
                                                   _%hd143489143570%_
                                                   _%hd143480143546%_
                                                   _%hd143465143506%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g143374143498%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g143374143498%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143374143498%_)))))
                               (_%__match146411146412%_
                                (lambda (_%e143425143621%_
                                         _%hd143426143624%_
                                         _%tl143427143626%_
                                         _%__splice146382146383%_
                                         _%target143428143629%_
                                         _%tl143430143631%_)
                                  (letrec ((_%loop143431143634%_
                                            (lambda (_%hd143429143637%_
                                                     _%arg143435143639%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143429143637%_))
                                                  (let ((_%e143432143642%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143429143637%_))))
                                                    (let ((_%lp-tl143434143647%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143432143642%_)))
                                                          (_%lp-hd143433143645%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143432143642%_))))
                                                      (_%loop143431143634%_
                                                       _%lp-tl143434143647%_
                                                       (cons _%lp-hd143433143645%_
                                                             _%arg143435143639%_))))
                                                  (let ((_%arg143436143650%_
                                                         (reverse _%arg143435143639%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143427143626%_))
                                                        (let ((_%e143437143653%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143427143626%_))))
                  (let ((_%tl143439143658%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143437143653%_)))
                        (_%hd143438143656%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143437143653%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143438143656%_))
                        (let ((_%e143440143661%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143438143656%_))))
                          (let ((_%tl143442143666%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143440143661%_)))
                                (_%hd143441143664%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143440143661%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143441143664%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143441143664%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143442143666%_))
                                        (let ((_%e143443143669%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143442143666%_))))
                                          (let ((_%tl143445143674%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143443143669%_)))
                                                (_%hd143444143672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143443143669%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143444143672%_))
                                                (let ((_%e143446143677%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143444143672%_))))
                                                  (let ((_%tl143448143682%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143446143677%_)))
                                                        (_%hd143447143680%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143446143677%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143447143680%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143447143680%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143448143682%_))
                        (let ((_%e143449143685%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143448143682%_))))
                          (let ((_%tl143451143690%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143449143685%_)))
                                (_%hd143450143688%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143449143685%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143451143690%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl143445143674%_))
                                    (let ((_%e143452143693%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl143445143674%_))))
                                      (let ((_%tl143454143698%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e143452143693%_)))
                                            (_%hd143453143696%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e143452143693%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd143453143696%_))
                                            (let ((_%e143455143701%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd143453143696%_))))
                                              (let ((_%tl143457143706%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143455143701%_)))
                                                    (_%hd143456143704%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143455143701%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd143456143704%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd143456143704%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl143457143706%_))
                                                            (let ((_%e143458143709%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl143457143706%_))))
                      (let ((_%tl143460143714%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143458143709%_)))
                            (_%hd143459143712%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143458143709%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl143460143714%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143439143658%_))
                                (_%__kont146380146381%_
                                 _%hd143459143712%_
                                 _%hd143450143688%_
                                 _%tl143430143631%_
                                 _%arg143436143650%_)
                                (_%__match146481146482%_
                                 _%e143425143621%_
                                 _%hd143426143624%_
                                 _%tl143427143626%_
                                 _%e143437143653%_
                                 _%hd143438143656%_
                                 _%tl143439143658%_
                                 _%e143440143661%_
                                 _%hd143441143664%_
                                 _%tl143442143666%_
                                 _%e143443143669%_
                                 _%hd143444143672%_
                                 _%tl143445143674%_
                                 _%e143446143677%_
                                 _%hd143447143680%_
                                 _%tl143448143682%_
                                 _%e143449143685%_
                                 _%hd143450143688%_
                                 _%tl143451143690%_
                                 _%e143452143693%_
                                 _%hd143453143696%_
                                 _%tl143454143698%_
                                 _%e143455143701%_
                                 _%hd143456143704%_
                                 _%tl143457143706%_
                                 _%e143458143709%_
                                 _%hd143459143712%_
                                 _%tl143460143714%_))
                            (let ()
                              (declare (not safe))
                              (_%g143374143498%_)))))
                    (let () (declare (not safe)) (_%g143374143498%_)))
                (let () (declare (not safe)) (_%g143374143498%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g143374143498%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g143374143498%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g143374143498%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g143374143498%_)))))
                        (let () (declare (not safe)) (_%g143374143498%_)))
                    (let () (declare (not safe)) (_%g143374143498%_)))
                (let () (declare (not safe)) (_%g143374143498%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g143374143498%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g143374143498%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g143374143498%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g143374143498%_)))))
                        (let () (declare (not safe)) (_%g143374143498%_)))))
                (let () (declare (not safe)) (_%g143374143498%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143431143634%_
                                     _%target143428143629%_
                                     '()))))
                               (_%__match146399146400%_
                                (lambda (_%e143379143757%_
                                         _%hd143380143760%_
                                         _%tl143381143762%_
                                         _%__splice146376146377%_
                                         _%target143382143765%_
                                         _%tl143384143767%_)
                                  (letrec ((_%loop143385143770%_
                                            (lambda (_%hd143383143773%_
                                                     _%arg143389143775%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143383143773%_))
                                                  (let ((_%e143386143778%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143383143773%_))))
                                                    (let ((_%lp-tl143388143783%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143386143778%_)))
                                                          (_%lp-hd143387143781%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143386143778%_))))
                                                      (_%loop143385143770%_
                                                       _%lp-tl143388143783%_
                                                       (cons _%lp-hd143387143781%_
                                                             _%arg143389143775%_))))
                                                  (let ((_%arg143390143786%_
                                                         (reverse _%arg143389143775%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143381143762%_))
                                                        (let ((_%e143391143789%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143381143762%_))))
                  (let ((_%tl143393143794%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143391143789%_)))
                        (_%hd143392143792%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143391143789%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143392143792%_))
                        (let ((_%e143394143797%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143392143792%_))))
                          (let ((_%tl143396143802%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143394143797%_)))
                                (_%hd143395143800%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143394143797%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143395143800%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143395143800%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143396143802%_))
                                        (let ((_%e143397143805%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143396143802%_))))
                                          (let ((_%tl143399143810%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143397143805%_)))
                                                (_%hd143398143808%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143397143805%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143398143808%_))
                                                (let ((_%e143400143813%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143398143808%_))))
                                                  (let ((_%tl143402143818%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143400143813%_)))
                                                        (_%hd143401143816%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143400143813%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143401143816%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143401143816%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143402143818%_))
                        (let ((_%e143403143821%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143402143818%_))))
                          (let ((_%tl143405143826%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143403143821%_)))
                                (_%hd143404143824%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143403143821%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143405143826%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl143399143810%_))
                                    (let ((_%__splice146378146379%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl143399143810%_
                                              '0))))
                                      (let ((_%tl143408143831%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146378146379%_
                                                '1)))
                                            (_%target143406143829%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146378146379%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl143408143831%_))
                                            (letrec ((_%loop143409143834%_
                                                      (lambda (_%hd143407143837%_
                                                               _%xarg143413143839%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd143407143837%_))
                                                            (let ((_%e143410143842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd143407143837%_))))
                      (let ((_%lp-tl143412143847%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143410143842%_)))
                            (_%lp-hd143411143845%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143410143842%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd143411143845%_))
                            (let ((_%e143415143850%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd143411143845%_))))
                              (let ((_%tl143417143855%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e143415143850%_)))
                                    (_%hd143416143853%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e143415143850%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd143416143853%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd143416143853%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143417143855%_))
                                            (let ((_%e143418143858%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143417143855%_))))
                                              (let ((_%tl143420143863%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143418143858%_)))
                                                    (_%hd143419143861%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143418143858%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl143420143863%_))
                                                    (_%loop143409143834%_
                                                     _%lp-tl143412143847%_
                                                     (cons _%hd143419143861%_
                                                           _%xarg143413143839%_))
                                                    (_%__match146411146412%_
                                                     _%e143379143757%_
                                                     _%hd143380143760%_
                                                     _%tl143381143762%_
                                                     _%__splice146376146377%_
                                                     _%target143382143765%_
                                                     _%tl143384143767%_))))
                                            (_%__match146411146412%_
                                             _%e143379143757%_
                                             _%hd143380143760%_
                                             _%tl143381143762%_
                                             _%__splice146376146377%_
                                             _%target143382143765%_
                                             _%tl143384143767%_))
                                        (_%__match146411146412%_
                                         _%e143379143757%_
                                         _%hd143380143760%_
                                         _%tl143381143762%_
                                         _%__splice146376146377%_
                                         _%target143382143765%_
                                         _%tl143384143767%_))
                                    (_%__match146411146412%_
                                     _%e143379143757%_
                                     _%hd143380143760%_
                                     _%tl143381143762%_
                                     _%__splice146376146377%_
                                     _%target143382143765%_
                                     _%tl143384143767%_))))
                            (_%__match146411146412%_
                             _%e143379143757%_
                             _%hd143380143760%_
                             _%tl143381143762%_
                             _%__splice146376146377%_
                             _%target143382143765%_
                             _%tl143384143767%_))))
                    (let ((_%xarg143414143866%_
                           (reverse _%xarg143413143839%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl143393143794%_))
                          (_%__kont146374146375%_
                           _%xarg143414143866%_
                           _%hd143404143824%_
                           _%arg143390143786%_)
                          (_%__match146411146412%_
                           _%e143379143757%_
                           _%hd143380143760%_
                           _%tl143381143762%_
                           _%__splice146376146377%_
                           _%target143382143765%_
                           _%tl143384143767%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop143409143834%_
                                               _%target143406143829%_
                                               '()))
                                            (_%__match146411146412%_
                                             _%e143379143757%_
                                             _%hd143380143760%_
                                             _%tl143381143762%_
                                             _%__splice146376146377%_
                                             _%target143382143765%_
                                             _%tl143384143767%_))))
                                    (_%__match146411146412%_
                                     _%e143379143757%_
                                     _%hd143380143760%_
                                     _%tl143381143762%_
                                     _%__splice146376146377%_
                                     _%target143382143765%_
                                     _%tl143384143767%_))
                                (_%__match146411146412%_
                                 _%e143379143757%_
                                 _%hd143380143760%_
                                 _%tl143381143762%_
                                 _%__splice146376146377%_
                                 _%target143382143765%_
                                 _%tl143384143767%_))))
                        (_%__match146411146412%_
                         _%e143379143757%_
                         _%hd143380143760%_
                         _%tl143381143762%_
                         _%__splice146376146377%_
                         _%target143382143765%_
                         _%tl143384143767%_))
                    (_%__match146411146412%_
                     _%e143379143757%_
                     _%hd143380143760%_
                     _%tl143381143762%_
                     _%__splice146376146377%_
                     _%target143382143765%_
                     _%tl143384143767%_))
                (_%__match146411146412%_
                 _%e143379143757%_
                 _%hd143380143760%_
                 _%tl143381143762%_
                 _%__splice146376146377%_
                 _%target143382143765%_
                 _%tl143384143767%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match146411146412%_
                                                 _%e143379143757%_
                                                 _%hd143380143760%_
                                                 _%tl143381143762%_
                                                 _%__splice146376146377%_
                                                 _%target143382143765%_
                                                 _%tl143384143767%_))))
                                        (_%__match146411146412%_
                                         _%e143379143757%_
                                         _%hd143380143760%_
                                         _%tl143381143762%_
                                         _%__splice146376146377%_
                                         _%target143382143765%_
                                         _%tl143384143767%_))
                                    (_%__match146411146412%_
                                     _%e143379143757%_
                                     _%hd143380143760%_
                                     _%tl143381143762%_
                                     _%__splice146376146377%_
                                     _%target143382143765%_
                                     _%tl143384143767%_))
                                (_%__match146411146412%_
                                 _%e143379143757%_
                                 _%hd143380143760%_
                                 _%tl143381143762%_
                                 _%__splice146376146377%_
                                 _%target143382143765%_
                                 _%tl143384143767%_))))
                        (_%__match146411146412%_
                         _%e143379143757%_
                         _%hd143380143760%_
                         _%tl143381143762%_
                         _%__splice146376146377%_
                         _%target143382143765%_
                         _%tl143384143767%_))))
                (_%__match146411146412%_
                 _%e143379143757%_
                 _%hd143380143760%_
                 _%tl143381143762%_
                 _%__splice146376146377%_
                 _%target143382143765%_
                 _%tl143384143767%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143385143770%_
                                     _%target143382143765%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx146372146373%_))
                              (let ((_%e143379143757%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx146372146373%_))))
                                (let ((_%tl143381143762%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143379143757%_)))
                                      (_%hd143380143760%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143379143757%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd143380143760%_))
                                      (let ((_%__splice146376146377%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd143380143760%_
                                                '0))))
                                        (let ((_%tl143384143767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice146376146377%_
                                                  '1)))
                                              (_%target143382143765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice146376146377%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143384143767%_))
                                              (_%__match146399146400%_
                                               _%e143379143757%_
                                               _%hd143380143760%_
                                               _%tl143381143762%_
                                               _%__splice146376146377%_
                                               _%target143382143765%_
                                               _%tl143384143767%_)
                                              (_%__match146411146412%_
                                               _%e143379143757%_
                                               _%hd143380143760%_
                                               _%tl143381143762%_
                                               _%__splice146376146377%_
                                               _%target143382143765%_
                                               _%tl143384143767%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl143381143762%_))
                                          (let ((_%e143467143511%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl143381143762%_))))
                                            (let ((_%tl143469143516%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e143467143511%_)))
                                                  (_%hd143468143514%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e143467143511%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143468143514%_))
                                                  (let ((_%e143470143519%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143468143514%_))))
                                                    (let ((_%tl143472143524%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143470143519%_)))
                                                          (_%hd143471143522%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143470143519%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd143471143522%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd143471143522%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143472143524%_))
                          (let ((_%e143473143527%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143472143524%_))))
                            (let ((_%tl143475143532%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143473143527%_)))
                                  (_%hd143474143530%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143473143527%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd143474143530%_))
                                  (let ((_%e143476143535%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd143474143530%_))))
                                    (let ((_%tl143478143540%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143476143535%_)))
                                          (_%hd143477143538%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143476143535%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd143477143538%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd143477143538%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl143478143540%_))
                                                  (let ((_%e143479143543%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl143478143540%_))))
                                                    (let ((_%tl143481143548%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143479143543%_)))
                                                          (_%hd143480143546%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143479143543%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143481143548%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl143475143532%_))
                      (let ((_%e143482143551%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl143475143532%_))))
                        (let ((_%tl143484143556%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143482143551%_)))
                              (_%hd143483143554%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143482143551%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd143483143554%_))
                              (let ((_%e143485143559%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd143483143554%_))))
                                (let ((_%tl143487143564%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143485143559%_)))
                                      (_%hd143486143562%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143485143559%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd143486143562%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd143486143562%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl143487143564%_))
                                              (let ((_%e143488143567%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl143487143564%_))))
                                                (let ((_%tl143490143572%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143488143567%_)))
                                                      (_%hd143489143570%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143488143567%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143490143572%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl143484143556%_))
                                                          (let ((_%e143491143575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl143484143556%_))))
                    (let ((_%tl143493143580%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143491143575%_)))
                          (_%hd143492143578%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143491143575%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl143493143580%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl143469143516%_))
                              (_%__kont146384146385%_
                               _%hd143489143570%_
                               _%hd143480143546%_
                               _%hd143380143760%_)
                              (let ()
                                (declare (not safe))
                                (_%g143374143498%_)))
                          (let () (declare (not safe)) (_%g143374143498%_)))))
                  (let () (declare (not safe)) (_%g143374143498%_)))
              (let () (declare (not safe)) (_%g143374143498%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g143374143498%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g143374143498%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143374143498%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143374143498%_)))))
                      (let () (declare (not safe)) (_%g143374143498%_)))
                  (let () (declare (not safe)) (_%g143374143498%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g143374143498%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g143374143498%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g143374143498%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g143374143498%_)))))
                          (let () (declare (not safe)) (_%g143374143498%_)))
                      (let () (declare (not safe)) (_%g143374143498%_)))
                  (let () (declare (not safe)) (_%g143374143498%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g143374143498%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g143374143498%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g143374143498%_))))))))
                 (_%generate1143217%_
                  (lambda (_%args143352%_
                           _%arglen143353%_
                           _%hd143354%_
                           _%body143355%_)
                    (let* ((_%len143357%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd143354%_)))
                           (_%condition143362%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd143354%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen143353%_
                                                (cons _%len143357%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen143353%_ (cons _%len143357%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len143357%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen143353%_
                                                    (cons _%len143357%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen143353%_ (cons _%len143357%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch143364%_
                            (if (_%dispatch-case?143215%_
                                 _%hd143354%_
                                 _%body143355%_)
                                (_%dispatch-case-e143216%_
                                 _%hd143354%_
                                 _%body143355%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self143212%_
                                 _%hd143354%_
                                 _%body143355%_))))
                      (cons _%condition143362%_
                            (cons (cons 'apply
                                        (cons _%dispatch143364%_
                                              (cons _%args143352%_ '())))
                                  '()))))))
          (let* ((_%g143219143247%_
                  (lambda (_%g143220143244%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143220143244%_))))
                 (_%g143218143349%_
                  (lambda (_%g143220143250%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143220143250%_))
                        (let ((_%e143223143252%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143220143250%_))))
                          (let ((_%hd143224143255%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143223143252%_)))
                                (_%tl143225143257%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143223143252%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl143225143257%_))
                                (let ((_g147541_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl143225143257%_
                                          '0))))
                                  (begin
                                    (let ((_g147542_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g147541_)
                                                 (##vector-length _g147541_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g147542_ 2)))
                                          (error "Context expects 2 values"
                                                 _g147542_)))
                                    (let ((_%target143226143260%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147541_ 0)))
                                          (_%tl143228143262%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147541_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl143228143262%_))
                                          (letrec ((_%loop143229143265%_
                                                    (lambda (_%hd143227143268%_
                                                             _%body143233143270%_
                                                             _%hd143234143272%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd143227143268%_))
                                                          (let ((_%e143230143275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd143227143268%_))))
                    (let ((_%lp-hd143231143278%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143230143275%_)))
                          (_%lp-tl143232143280%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143230143275%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd143231143278%_))
                          (let ((_%e143237143283%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd143231143278%_))))
                            (let ((_%hd143238143286%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143237143283%_)))
                                  (_%tl143239143288%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143237143283%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl143239143288%_))
                                  (let ((_%e143240143291%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl143239143288%_))))
                                    (let ((_%hd143241143294%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143240143291%_)))
                                          (_%tl143242143296%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143240143291%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl143242143296%_))
                                          (_%loop143229143265%_
                                           _%lp-tl143232143280%_
                                           (cons _%hd143241143294%_
                                                 _%body143233143270%_)
                                           (cons _%hd143238143286%_
                                                 _%hd143234143272%_))
                                          (_%g143219143247%_
                                           _%g143220143250%_))))
                                  (_%g143219143247%_ _%g143220143250%_))))
                          (_%g143219143247%_ _%g143220143250%_))))
                  (let ((_%body143235143299%_ (reverse _%body143233143270%_))
                        (_%hd143236143301%_ (reverse _%hd143234143272%_)))
                    ((lambda (_%L143304%_ _%L143305%_)
                       (let ((_%args143324%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen143325%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name143326%_
                              (let ((_%$e143321%_
                                     (let ((__tmp147543
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp147543 _%stx143213%_))))
                                (if _%$e143321%_
                                    _%$e143321%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args143324%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen143325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args143324%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args143324%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp147547
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name143326%_
                                                                (cons _%args143324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp147544
                                  (map (lambda (_%g143327143330%_
                                                _%g143328143332%_)
                                         (_%generate1143217%_
                                          _%args143324%_
                                          _%arglen143325%_
                                          _%g143327143330%_
                                          _%g143328143332%_))
                                       (let ((__tmp147545
                                              (lambda (_%g143334143337%_
                                                       _%g143335143339%_)
                                                (cons _%g143334143337%_
                                                      _%g143335143339%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp147545
                                          '()
                                          _%L143305%_))
                                       (let ((__tmp147546
                                              (lambda (_%g143341143344%_
                                                       _%g143342143346%_)
                                                (cons _%g143341143344%_
                                                      _%g143342143346%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp147546
                                          '()
                                          _%L143304%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp147547 __tmp147544)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body143235143299%_
                     _%hd143236143301%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop143229143265%_
                                             _%target143226143260%_
                                             '()
                                             '()))
                                          (_%g143219143247%_
                                           _%g143220143250%_)))))
                                (_%g143219143247%_ _%g143220143250%_))))
                        (_%g143219143247%_ _%g143220143250%_)))))
            (_%g143218143349%_ _%stx143213%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self142449%_ _%stx142450%_ _%compiled-body?142451%_)
        (letrec ((_%generate-simple142453%_
                  (lambda (_%hd143197%_ _%body143198%_)
                    (_%coalesce-boolean142454%_
                     (_%simplify-let142455%_
                      (gxc#generate-runtime-simple-let
                       _%self142449%_
                       'let
                       _%hd143197%_
                       _%body143198%_
                       _%compiled-body?142451%_)))))
                 (_%coalesce-boolean142454%_
                  (lambda (_%code143058%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code143059143085%_ _%code143058%_)
                               (_%else143061143093%_
                                (lambda () _%code143058%_))
                               (_%K143063143130%_
                                (lambda (_%expr2143096%_
                                         _%expr1143097%_
                                         _%id143098%_)
                                  (let* ((_%expr2143099143107%_
                                          _%expr2143096%_)
                                         (_%else143101143115%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1143097%_
                                                        (cons _%expr2143096%_
                                                              '())))))
                                         (_%K143103143120%_
                                          (lambda (_%exprs143118%_)
                                            (cons 'or
                                                  (cons _%expr1143097%_
                                                        _%exprs143118%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2143099143107%_))
                                        (let ((_%hd143104143123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2143099143107%_)))
                                              (_%tl143105143125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2143099143107%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd143104143123%_ 'or))
                                              (let ((_%exprs143128%_
                                                     _%tl143105143125%_))
                                                (_%K143103143120%_
                                                 _%exprs143128%_))
                                              (_%else143101143115%_)))
                                        (_%else143101143115%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code143059143085%_))
                              (let ((_%hd143064143133%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code143059143085%_)))
                                    (_%tl143065143135%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code143059143085%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd143064143133%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl143065143135%_))
                                        (let ((_%hd143066143138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl143065143135%_)))
                                              (_%tl143067143140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl143065143135%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd143066143138%_))
                                              (let ((_%hd143078143143%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd143066143138%_)))
                                                    (_%tl143079143145%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd143066143138%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd143078143143%_))
                                                    (let ((_%hd143080143148%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd143078143143%_)))
                                                          (_%tl143081143150%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd143078143143%_))))
                                                      (let ((_%id143153%_
                                                             _%hd143080143148%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl143081143150%_))
                                                            (let ((_%hd143082143155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl143081143150%_)))
                          (_%tl143083143157%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl143081143150%_))))
                      (let ((_%expr1143160%_ _%hd143082143155%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl143083143157%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl143079143145%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl143067143140%_))
                                    (let ((_%hd143068143162%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl143067143140%_)))
                                          (_%tl143069143164%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl143067143140%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd143068143162%_))
                                          (let ((_%hd143070143167%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd143068143162%_)))
                                                (_%tl143071143169%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd143068143162%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd143070143167%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl143071143169%_))
                                                    (let ((_%hd143072143172%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl143071143169%_)))
                                                          (_%tl143073143174%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl143071143169%_))))
                                                      (if ((lambda (_%g143176143178%_)
                                                             (eq? _%g143176143178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id143153%_))
                   _%hd143072143172%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl143073143174%_))
                      (let ((_%hd143074143181%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl143073143174%_)))
                            (_%tl143075143183%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl143073143174%_))))
                        (if ((lambda (_%g143185143187%_)
                               (eq? _%g143185143187%_ _%id143153%_))
                             _%hd143074143181%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl143075143183%_))
                                (let ((_%hd143076143190%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl143075143183%_)))
                                      (_%tl143077143192%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl143075143183%_))))
                                  (let ((_%expr2143195%_ _%hd143076143190%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl143077143192%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl143069143164%_))
                                            (_%K143063143130%_
                                             _%expr2143195%_
                                             _%expr1143160%_
                                             _%id143153%_)
                                            (_%else143061143093%_))
                                        (_%else143061143093%_))))
                                (_%else143061143093%_))
                            (_%else143061143093%_)))
                      (_%else143061143093%_))
                  (_%else143061143093%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else143061143093%_))
                                                (_%else143061143093%_)))
                                          (_%else143061143093%_)))
                                    (_%else143061143093%_))
                                (_%else143061143093%_))
                            (_%else143061143093%_))))
                    (_%else143061143093%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else143061143093%_)))
                                              (_%else143061143093%_)))
                                        (_%else143061143093%_))
                                    (_%else143061143093%_)))
                              (_%else143061143093%_)))
                        _%code143058%_)))
                 (_%simplify-let142455%_
                  (lambda (_%code142757%_)
                    (let* ((_%code142758142830%_ _%code142757%_)
                           (_%else142763142838%_ (lambda () _%code142757%_)))
                      (let ((_%K142822143038%_
                             (lambda (_%expr143036%_) _%expr143036%_))
                            (_%K142805142984%_
                             (lambda (_%body142980%_
                                      _%expr142981%_
                                      _%id142982%_)
                               (cons 'let
                                     (cons (cons (cons _%id142982%_
                                                       (cons _%expr142981%_
                                                             '()))
                                                 '())
                                           _%body142980%_))))
                            (_%K142782142908%_
                             (lambda (_%body142902%_
                                      _%expr2142903%_
                                      _%id2142904%_
                                      _%expr1142905%_
                                      _%id1142906%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1142906%_
                                                       (cons _%expr1142905%_
                                                             '()))
                                                 (cons (cons _%id2142904%_
                                                             (cons _%expr2142903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body142902%_))))
                            (_%K142765142847%_
                             (lambda (_%body142842%_
                                      _%bind142843%_
                                      _%expr1142844%_
                                      _%id1142845%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1142845%_
                                                       (cons _%expr1142844%_
                                                             '()))
                                                 _%bind142843%_)
                                           _%body142842%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code142758142830%_))
                            (let ((_%tl142824143043%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code142758142830%_)))
                                  (_%hd142823143041%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code142758142830%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd142823143041%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl142824143043%_))
                                      (let ((_%tl142826143048%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl142824143043%_)))
                                            (_%hd142825143046%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl142824143043%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%hd142825143046%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tl142826143048%_))
                                                (let ((_%tl142828143053%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl142826143048%_)))
                                                      (_%hd142827143051%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl142826143048%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _%tl142828143053%_))
                                                      (let ((_%expr143056%_
                                                             _%hd142827143051%_))
                                                        (_%K142822143038%_
                                                         _%expr143056%_))
                                                      (_%else142763142838%_)))
                                                (_%else142763142838%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd142825143046%_))
                                                (let ((_%tl142817142999%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd142825143046%_)))
                                                      (_%hd142816142997%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd142825143046%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd142816142997%_))
                                                      (let ((_%tl142819143004%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd142816142997%_)))
                    (_%hd142818143002%_
                     (let () (declare (not safe)) (##car _%hd142816142997%_))))
                (if (let () (declare (not safe)) (##pair? _%tl142819143004%_))
                    (let ((_%tl142821143011%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl142819143004%_)))
                          (_%hd142820143009%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl142819143004%_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl142821143011%_))
                          (if (let ()
                                (declare (not safe))
                                (##null? _%tl142817142999%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl142826143048%_))
                                  (let ((_%tl142811143018%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl142826143048%_)))
                                        (_%hd142810143016%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl142826143048%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%hd142810143016%_))
                                        (let ((_%tl142813143023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd142810143016%_)))
                                              (_%hd142812143021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd142810143016%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd142812143021%_
                                                       'let))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl142813143023%_))
                                                  (let ((_%tl142815143028%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl142813143023%_)))
                                                        (_%hd142814143026%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl142813143023%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%hd142814143026%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##null? _%tl142811143018%_))
                                                            (let ((_%id143007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd142818143002%_)
                          (_%expr143014%_ _%hd142820143009%_)
                          (_%body143031%_ _%tl142815143028%_))
                      (_%K142805142984%_
                       _%body143031%_
                       _%expr143014%_
                       _%id143007%_))
                    (_%else142763142838%_))
                (if (let () (declare (not safe)) (##pair? _%hd142814143026%_))
                    (let ((_%tl142794142957%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd142814143026%_)))
                          (_%hd142793142955%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd142814143026%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd142793142955%_))
                          (let ((_%tl142796142962%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd142793142955%_)))
                                (_%hd142795142960%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd142793142955%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl142796142962%_))
                                (let ((_%tl142798142969%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl142796142962%_)))
                                      (_%hd142797142967%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl142796142962%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl142798142969%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl142794142957%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl142811143018%_))
                                              (let ((_%id1142931%_
                                                     _%hd142818143002%_)
                                                    (_%expr1142938%_
                                                     _%hd142820143009%_)
                                                    (_%id2142965%_
                                                     _%hd142795142960%_)
                                                    (_%expr2142972%_
                                                     _%hd142797142967%_)
                                                    (_%body142974%_
                                                     _%tl142815143028%_))
                                                (_%K142782142908%_
                                                 _%body142974%_
                                                 _%expr2142972%_
                                                 _%id2142965%_
                                                 _%expr1142938%_
                                                 _%id1142931%_))
                                              (_%else142763142838%_))
                                          (_%else142763142838%_))
                                      (_%else142763142838%_)))
                                (_%else142763142838%_)))
                          (_%else142763142838%_)))
                    (_%else142763142838%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else142763142838%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd142812143021%_
                                                           'let*))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%tl142813143023%_))
                                                      (let ((_%tl142775142891%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl142813143023%_)))
                    (_%hd142774142889%_
                     (let () (declare (not safe)) (##car _%tl142813143023%_))))
                (if (let () (declare (not safe)) (##null? _%tl142811143018%_))
                    (let ((_%id1142870%_ _%hd142818143002%_)
                          (_%expr1142877%_ _%hd142820143009%_)
                          (_%bind142894%_ _%hd142774142889%_)
                          (_%body142896%_ _%tl142775142891%_))
                      (_%K142765142847%_
                       _%body142896%_
                       _%bind142894%_
                       _%expr1142877%_
                       _%id1142870%_))
                    (_%else142763142838%_)))
              (_%else142763142838%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else142763142838%_))))
                                        (_%else142763142838%_)))
                                  (_%else142763142838%_))
                              (_%else142763142838%_))
                          (_%else142763142838%_)))
                    (_%else142763142838%_)))
              (_%else142763142838%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else142763142838%_))))
                                      (_%else142763142838%_))
                                  (_%else142763142838%_)))
                            (_%else142763142838%_))))))
                 (_%generate-values142456%_
                  (lambda (_%hd142570%_ _%body142571%_)
                    (let _%lp142573%_ ((_%rest142575%_ _%hd142570%_)
                                       (_%bind142576%_ '())
                                       (_%check142577%_ '())
                                       (_%post142578%_ '()))
                      (let* ((_%__stx146701146702%_ _%rest142575%_)
                             (_%g142581142592%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx146701146702%_)))))
                        (let ((_%__kont146703146704%_
                               (lambda (_%L142619%_ _%L142620%_)
                                 (let* ((_%__stx146657146658%_ _%L142620%_)
                                        (_%g142635142660%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx146657146658%_)))))
                                   (let ((_%__kont146659146660%_
                                          (lambda (_%L142733%_ _%L142734%_)
                                            (let ((_%eid142748%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L142734%_)))
                                                  (_%expr142749%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self142449%_
                                                      _%L142733%_))))
                                              (_%lp142573%_
                                               _%L142619%_
                                               (cons (cons _%eid142748%_
                                                           (cons _%expr142749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind142576%_)
                                               _%check142577%_
                                               _%post142578%_))))
                                         (_%__kont146661146662%_
                                          (lambda (_%L142681%_ _%L142682%_)
                                            (let* ((_%vals142695%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values142697%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals142695%_
                                                     _%L142682%_
                                                     _%L142681%_))
                                                   (_%refs142699%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals142695%_
                                                     _%L142682%_))
                                                   (_%expr142701%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self142449%_
                                                       _%L142681%_))))
                                              (_%lp142573%_
                                               _%L142619%_
                                               (cons (cons _%vals142695%_
                                                           (cons _%expr142701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind142576%_)
                                               (cons _%check-values142697%_
                                                     _%check142577%_)
                                               (cons _%refs142699%_
                                                     _%post142578%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx146657146658%_))
                                         (let ((_%e142639142709%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx146657146658%_))))
                                           (let ((_%tl142641142714%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e142639142709%_)))
                                                 (_%hd142640142712%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e142639142709%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd142640142712%_))
                                                 (let ((_%e142642142717%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd142640142712%_))))
                                                   (let ((_%tl142644142722%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e142642142717%_)))
                                                         (_%hd142643142720%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e142642142717%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl142644142722%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl142641142714%_))
                     (let ((_%e142645142725%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142641142714%_))))
                       (let ((_%tl142647142730%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142645142725%_)))
                             (_%hd142646142728%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142645142725%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142647142730%_))
                             (_%__kont146659146660%_
                              _%hd142646142728%_
                              _%hd142643142720%_)
                             (let ()
                               (declare (not safe))
                               (_%g142635142660%_)))))
                     (let () (declare (not safe)) (_%g142635142660%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl142641142714%_))
                     (let ((_%e142653142673%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142641142714%_))))
                       (let ((_%tl142655142678%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142653142673%_)))
                             (_%hd142654142676%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142653142673%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142655142678%_))
                             (_%__kont146661146662%_
                              _%hd142654142676%_
                              _%hd142640142712%_)
                             (let ()
                               (declare (not safe))
                               (_%g142635142660%_)))))
                     (let () (declare (not safe)) (_%g142635142660%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl142641142714%_))
                                                     (let ((_%e142653142673%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl142641142714%_))))
                                                       (let ((_%tl142655142678%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e142653142673%_)))
                     (_%hd142654142676%_
                      (let () (declare (not safe)) (##car _%e142653142673%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl142655142678%_))
                     (_%__kont146661146662%_
                      _%hd142654142676%_
                      _%hd142640142712%_)
                     (let () (declare (not safe)) (_%g142635142660%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g142635142660%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g142635142660%_)))))))
                              (_%__kont146705146706%_
                               (lambda ()
                                 (let* ((_%body142599%_
                                         (if _%compiled-body?142451%_
                                             _%body142571%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self142449%_
                                                _%body142571%_))))
                                        (_%body142601%_
                                         (_%generate-values-post142457%_
                                          _%post142578%_
                                          _%body142599%_))
                                        (_%body142603%_
                                         (_%generate-values-check142458%_
                                          _%check142577%_
                                          _%body142601%_)))
                                   (cons 'let
                                         (cons (reverse _%bind142576%_)
                                               (cons _%body142603%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx146701146702%_))
                              (let ((_%e142585142611%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx146701146702%_))))
                                (let ((_%tl142587142616%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142585142611%_)))
                                      (_%hd142586142614%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142585142611%_))))
                                  (_%__kont146703146704%_
                                   _%tl142587142616%_
                                   _%hd142586142614%_)))
                              (_%__kont146705146706%_)))))))
                 (_%generate-values-post142457%_
                  (lambda (_%post142529%_ _%body142530%_)
                    (let _%lp142532%_ ((_%rest142534%_ _%post142529%_)
                                       (_%body142535%_ _%body142530%_))
                      (let* ((_%rest142536142544%_ _%rest142534%_)
                             (_%else142538142552%_ (lambda () _%body142535%_))
                             (_%K142540142558%_
                              (lambda (_%rest142555%_ _%bind142556%_)
                                (_%lp142532%_
                                 _%rest142555%_
                                 (cons 'let
                                       (cons _%bind142556%_
                                             (cons _%body142535%_ '())))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest142536142544%_))
                            (let ((_%hd142541142561%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest142536142544%_)))
                                  (_%tl142542142563%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest142536142544%_))))
                              (let* ((_%bind142566%_ _%hd142541142561%_)
                                     (_%rest142568%_ _%tl142542142563%_))
                                (_%K142540142558%_
                                 _%rest142568%_
                                 _%bind142566%_)))
                            (_%else142538142552%_))))))
                 (_%generate-values-check142458%_
                  (lambda (_%check142526%_ _%body142527%_)
                    (cons 'begin
                          (let ((__tmp147549 (cons _%body142527%_ '()))
                                (__tmp147548 (reverse _%check142526%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp147549 __tmp147548))))))
          (let* ((_%g142460142477%_
                  (lambda (_%g142461142474%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142461142474%_))))
                 (_%g142459142523%_
                  (lambda (_%g142461142480%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142461142480%_))
                        (let ((_%e142464142482%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142461142480%_))))
                          (let ((_%hd142465142485%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142464142482%_)))
                                (_%tl142466142487%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142464142482%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142466142487%_))
                                (let ((_%e142467142490%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142466142487%_))))
                                  (let ((_%hd142468142493%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142467142490%_)))
                                        (_%tl142469142495%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142467142490%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142469142495%_))
                                        (let ((_%e142470142498%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142469142495%_))))
                                          (let ((_%hd142471142501%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142470142498%_)))
                                                (_%tl142472142503%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142470142498%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142472142503%_))
                                                ((lambda (_%L142506%_
                                                          _%L142507%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L142507%_)
                                                       (_%generate-simple142453%_
                                                        _%L142507%_
                                                        _%L142506%_)
                                                       (_%generate-values142456%_
                                                        _%L142507%_
                                                        _%L142506%_)))
                                                 _%hd142471142501%_
                                                 _%hd142468142493%_)
                                                (_%g142460142477%_
                                                 _%g142461142480%_))))
                                        (_%g142460142477%_
                                         _%g142461142480%_))))
                                (_%g142460142477%_ _%g142461142480%_))))
                        (_%g142460142477%_ _%g142461142480%_)))))
            (_%g142459142523%_ _%stx142450%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self143203%_ _%stx143204%_)
        (let ((_%compiled-body?143206%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self143203%_
           _%stx143204%_
           _%compiled-body?143206%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g147551_
        (let ((_g147550_ (let () (declare (not safe)) (##length _g147551_))))
          (cond ((let () (declare (not safe)) (##fx= _g147550_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g147551_))
                ((let () (declare (not safe)) (##fx= _g147550_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g147551_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g147551_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals142343%_ _%hd142344%_)
        (let _%lp142346%_ ((_%rest142348%_ _%hd142344%_)
                           (_%k142349%_ '0)
                           (_%r142350%_ '()))
          (let* ((_%__stx146715146716%_ _%rest142348%_)
                 (_%g142355142372%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx146715146716%_)))))
            (let ((_%__kont146717146718%_
                   (lambda (_%L142435%_)
                     (_%lp142346%_
                      _%L142435%_
                      (let () (declare (not safe)) (##fx+ _%k142349%_ '1))
                      _%r142350%_)))
                  (_%__kont146719146720%_
                   (lambda (_%L142408%_ _%L142409%_)
                     (_%lp142346%_
                      _%L142408%_
                      (let () (declare (not safe)) (##fx+ _%k142349%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L142409%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals142343%_
                                         _%k142349%_
                                         _%L142408%_)
                                        '()))
                            _%r142350%_))))
                  (_%__kont146721146722%_
                   (lambda (_%L142384%_)
                     (let ((__tmp147552
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L142384%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals142343%_
                                               _%k142349%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp147552 _%r142350%_))))
                  (_%__kont146723146724%_ (lambda () (reverse _%r142350%_))))
              (let ((_%g142353142395%_
                     (lambda ()
                       (let ((_%L142384%_ _%__stx146715146716%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L142384%_))
                             (_%__kont146721146722%_ _%L142384%_)
                             (_%__kont146723146724%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx146715146716%_))
                    (let ((_%e142358142424%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx146715146716%_))))
                      (let ((_%tl142360142429%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142358142424%_)))
                            (_%hd142359142427%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142358142424%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd142359142427%_))
                            (let ((_%e142361142432%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd142359142427%_))))
                              (if (equal? _%e142361142432%_ '#f)
                                  (_%__kont146717146718%_ _%tl142360142429%_)
                                  (_%__kont146719146720%_
                                   _%tl142360142429%_
                                   _%hd142359142427%_)))
                            (_%__kont146719146720%_
                             _%tl142360142429%_
                             _%hd142359142427%_))))
                    (let () (declare (not safe)) (_%g142353142395%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self142022%_ _%stx142023%_ _%compiled-body?142024%_)
        (letrec ((_%generate-simple142026%_
                  (lambda (_%hd142328%_ _%body142329%_)
                    (gxc#generate-runtime-simple-let
                     _%self142022%_
                     'letrec
                     _%hd142328%_
                     _%body142329%_
                     _%compiled-body?142024%_)))
                 (_%generate-values142027%_
                  (lambda (_%hd142107%_ _%body142108%_)
                    (let _%lp142110%_ ((_%rest142112%_ _%hd142107%_)
                                       (_%bind142113%_ '())
                                       (_%check142114%_ '())
                                       (_%post142115%_ '()))
                      (let* ((_%__stx146789146790%_ _%rest142112%_)
                             (_%g142118142129%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx146789146790%_)))))
                        (let ((_%__kont146791146792%_
                               (lambda (_%L142156%_ _%L142157%_)
                                 (let* ((_%__stx146745146746%_ _%L142157%_)
                                        (_%g142172142197%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx146745146746%_)))))
                                   (let ((_%__kont146747146748%_
                                          (lambda (_%L142304%_ _%L142305%_)
                                            (let ((_%eid142319%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L142305%_)))
                                                  (_%expr142320%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self142022%_
                                                      _%L142304%_))))
                                              (_%lp142110%_
                                               _%L142156%_
                                               (cons (cons _%eid142319%_
                                                           (cons _%expr142320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind142113%_)
                                               _%check142114%_
                                               _%post142115%_))))
                                         (_%__kont146749146750%_
                                          (lambda (_%L142218%_ _%L142219%_)
                                            (let* ((_%vals142232%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values142234%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals142232%_
                                                     _%L142219%_
                                                     _%L142218%_))
                                                   (_%refs142236%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals142232%_
                                                     _%L142219%_))
                                                   (_%expr142238%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self142022%_
                                                       _%L142218%_))))
                                              (_%lp142110%_
                                               _%L142156%_
                                               (let ((__tmp147554
                                                      (cons (cons _%vals142232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr142238%_ '()))
                    _%bind142113%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp147553
                                                      (map (lambda (_%e142240142242%_)
                                                             (let* ((_%g142244142253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e142240142242%_)
                            (_%E142246142257%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g142244142253%_
                                        '([eid _])))
                               '#!void))
                            (_%K142247142262%_
                             (lambda (_%eid142260%_)
                               (cons _%eid142260%_ (cons '#!void '())))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g142244142253%_))
                           (let ((_%hd142248142265%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g142244142253%_)))
                                 (_%tl142249142267%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g142244142253%_))))
                             (let ((_%eid142270%_ _%hd142248142265%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _%tl142249142267%_))
                                   (let ((_%tl142251142272%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl142249142267%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _%tl142251142272%_))
                                         (_%K142247142262%_ _%eid142270%_)
                                         (_%E142246142257%_)))
                                   (_%E142246142257%_))))
                           (_%E142246142257%_))))
                   _%refs142236%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp147554
                                                  __tmp147553))
                                               (cons _%check-values142234%_
                                                     _%check142114%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs142236%_
                                                  _%post142115%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx146745146746%_))
                                         (let ((_%e142176142280%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx146745146746%_))))
                                           (let ((_%tl142178142285%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e142176142280%_)))
                                                 (_%hd142177142283%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e142176142280%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd142177142283%_))
                                                 (let ((_%e142179142288%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd142177142283%_))))
                                                   (let ((_%tl142181142293%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e142179142288%_)))
                                                         (_%hd142180142291%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e142179142288%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl142181142293%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl142178142285%_))
                     (let ((_%e142182142296%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142178142285%_))))
                       (let ((_%tl142184142301%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142182142296%_)))
                             (_%hd142183142299%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142182142296%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142184142301%_))
                             (_%__kont146747146748%_
                              _%hd142183142299%_
                              _%hd142180142291%_)
                             (let ()
                               (declare (not safe))
                               (_%g142172142197%_)))))
                     (let () (declare (not safe)) (_%g142172142197%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl142178142285%_))
                     (let ((_%e142190142210%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142178142285%_))))
                       (let ((_%tl142192142215%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142190142210%_)))
                             (_%hd142191142213%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142190142210%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142192142215%_))
                             (_%__kont146749146750%_
                              _%hd142191142213%_
                              _%hd142177142283%_)
                             (let ()
                               (declare (not safe))
                               (_%g142172142197%_)))))
                     (let () (declare (not safe)) (_%g142172142197%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl142178142285%_))
                                                     (let ((_%e142190142210%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl142178142285%_))))
                                                       (let ((_%tl142192142215%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e142190142210%_)))
                     (_%hd142191142213%_
                      (let () (declare (not safe)) (##car _%e142190142210%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl142192142215%_))
                     (_%__kont146749146750%_
                      _%hd142191142213%_
                      _%hd142177142283%_)
                     (let () (declare (not safe)) (_%g142172142197%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g142172142197%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g142172142197%_)))))))
                              (_%__kont146793146794%_
                               (lambda ()
                                 (let* ((_%body142136%_
                                         (if _%compiled-body?142024%_
                                             _%body142108%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self142022%_
                                                _%body142108%_))))
                                        (_%body142138%_
                                         (_%generate-values-post142029%_
                                          _%post142115%_
                                          _%body142136%_))
                                        (_%body142140%_
                                         (_%generate-values-check142028%_
                                          _%check142114%_
                                          _%body142138%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind142113%_)
                                               (cons _%body142140%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx146789146790%_))
                              (let ((_%e142122142148%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx146789146790%_))))
                                (let ((_%tl142124142153%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142122142148%_)))
                                      (_%hd142123142151%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142122142148%_))))
                                  (_%__kont146791146792%_
                                   _%tl142124142153%_
                                   _%hd142123142151%_)))
                              (_%__kont146793146794%_)))))))
                 (_%generate-values-check142028%_
                  (lambda (_%check142104%_ _%body142105%_)
                    (cons 'begin
                          (let ((__tmp147556 (cons _%body142105%_ '()))
                                (__tmp147555 (reverse _%check142104%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp147556 __tmp147555)))))
                 (_%generate-values-post142029%_
                  (lambda (_%post142097%_ _%body142098%_)
                    (cons 'begin
                          (let ((__tmp147560 (cons _%body142098%_ '()))
                                (__tmp147557
                                 (let ((__tmp147559
                                        (lambda (_%g142099142101%_)
                                          (cons 'set! _%g142099142101%_)))
                                       (__tmp147558 (reverse _%post142097%_)))
                                   (declare (not safe))
                                   (##map __tmp147559 __tmp147558))))
                            (declare (not safe))
                            (__foldr1 cons __tmp147560 __tmp147557))))))
          (let* ((_%g142031142048%_
                  (lambda (_%g142032142045%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142032142045%_))))
                 (_%g142030142094%_
                  (lambda (_%g142032142051%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142032142051%_))
                        (let ((_%e142035142053%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142032142051%_))))
                          (let ((_%hd142036142056%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142035142053%_)))
                                (_%tl142037142058%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142035142053%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142037142058%_))
                                (let ((_%e142038142061%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142037142058%_))))
                                  (let ((_%hd142039142064%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142038142061%_)))
                                        (_%tl142040142066%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142038142061%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142040142066%_))
                                        (let ((_%e142041142069%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142040142066%_))))
                                          (let ((_%hd142042142072%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142041142069%_)))
                                                (_%tl142043142074%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142041142069%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142043142074%_))
                                                ((lambda (_%L142077%_
                                                          _%L142078%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L142078%_)
                                                       (_%generate-simple142026%_
                                                        _%L142078%_
                                                        _%L142077%_)
                                                       (_%generate-values142027%_
                                                        _%L142078%_
                                                        _%L142077%_)))
                                                 _%hd142042142072%_
                                                 _%hd142039142064%_)
                                                (_%g142031142048%_
                                                 _%g142032142051%_))))
                                        (_%g142031142048%_
                                         _%g142032142051%_))))
                                (_%g142031142048%_ _%g142032142051%_))))
                        (_%g142031142048%_ _%g142032142051%_)))))
            (_%g142030142094%_ _%stx142023%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self142334%_ _%stx142335%_)
        (let ((_%compiled-body?142337%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self142334%_
           _%stx142335%_
           _%compiled-body?142337%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g147562_
        (let ((_g147561_ (let () (declare (not safe)) (##length _g147562_))))
          (cond ((let () (declare (not safe)) (##fx= _g147561_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g147562_))
                ((let () (declare (not safe)) (##fx= _g147561_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g147562_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g147562_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self141603%_ _%stx141604%_)
        (letrec ((_%generate-values141606%_
                  (lambda (_%hd141849%_ _%body141850%_)
                    (let _%lp141852%_ ((_%rest141854%_ _%hd141849%_)
                                       (_%bind141855%_ '()))
                      (let* ((_%rest141856141864%_ _%rest141854%_)
                             (_%else141858141875%_
                              (lambda ()
                                (let ((_%bind141872%_ (reverse _%bind141855%_))
                                      (_%body141873%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self141603%_
                                          _%body141850%_))))
                                  (cons 'letrec*
                                        (cons _%bind141872%_
                                              (cons _%body141873%_ '()))))))
                             (_%K141860142009%_
                              (lambda (_%rest141878%_ _%hd-bind141879%_)
                                (let* ((_%__stx146803146804%_
                                        _%hd-bind141879%_)
                                       (_%g141882141907%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx146803146804%_)))))
                                  (let ((_%__kont146805146806%_
                                         (lambda (_%L141988%_ _%L141989%_)
                                           (let ((_%eid142003%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L141989%_)))
                                                 (_%expr142004%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self141603%_
                                                     _%L141988%_))))
                                             (_%lp141852%_
                                              _%rest141878%_
                                              (cons (cons _%eid142003%_
                                                          (cons _%expr142004%_
                                                                '()))
                                                    _%bind141855%_)))))
                                        (_%__kont146807146808%_
                                         (lambda (_%L141928%_ _%L141929%_)
                                           (let* ((_%vals141948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp141950%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values141952%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp141950%_
                                                    _%L141929%_
                                                    _%L141928%_))
                                                  (_%refs141954%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals141948%_
                                                    _%L141929%_))
                                                  (_%expr141956%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self141603%_
                                                      _%L141928%_))))
                                             (_%lp141852%_
                                              _%rest141878%_
                                              (let ((__tmp147563
                                                     (cons (cons _%vals141948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp141950%_
                                                       (cons _%expr141956%_
                                                             '()))
                                                 '())
                                           (cons _%check-values141952%_
                                                 (cons _%tmp141950%_ '()))))
                               '()))
                   _%bind141855%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp147563
                                                 _%refs141954%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx146803146804%_))
                                        (let ((_%e141886141964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx146803146804%_))))
                                          (let ((_%tl141888141969%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141886141964%_)))
                                                (_%hd141887141967%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141886141964%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141887141967%_))
                                                (let ((_%e141889141972%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141887141967%_))))
                                                  (let ((_%tl141891141977%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141889141972%_)))
                                                        (_%hd141890141975%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141889141972%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl141891141977%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141888141969%_))
                                                            (let ((_%e141892141980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141888141969%_))))
                      (let ((_%tl141894141985%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141892141980%_)))
                            (_%hd141893141983%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141892141980%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141894141985%_))
                            (_%__kont146805146806%_
                             _%hd141893141983%_
                             _%hd141890141975%_)
                            (let ()
                              (declare (not safe))
                              (_%g141882141907%_)))))
                    (let () (declare (not safe)) (_%g141882141907%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl141888141969%_))
                    (let ((_%e141900141920%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141888141969%_))))
                      (let ((_%tl141902141925%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141900141920%_)))
                            (_%hd141901141923%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141900141920%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141902141925%_))
                            (_%__kont146807146808%_
                             _%hd141901141923%_
                             _%hd141887141967%_)
                            (let ()
                              (declare (not safe))
                              (_%g141882141907%_)))))
                    (let () (declare (not safe)) (_%g141882141907%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl141888141969%_))
                                                    (let ((_%e141900141920%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl141888141969%_))))
                                                      (let ((_%tl141902141925%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e141900141920%_)))
                    (_%hd141901141923%_
                     (let () (declare (not safe)) (##car _%e141900141920%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl141902141925%_))
                    (_%__kont146807146808%_
                     _%hd141901141923%_
                     _%hd141887141967%_)
                    (let () (declare (not safe)) (_%g141882141907%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g141882141907%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g141882141907%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest141856141864%_))
                            (let ((_%hd141861142012%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest141856141864%_)))
                                  (_%tl141862142014%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest141856141864%_))))
                              (let* ((_%hd-bind142017%_ _%hd141861142012%_)
                                     (_%rest142019%_ _%tl141862142014%_))
                                (_%K141860142009%_
                                 _%rest142019%_
                                 _%hd-bind142017%_)))
                            (_%else141858141875%_))))))
                 (_%generate-letrec?141607%_
                  (lambda (_%hd141739%_)
                    (let _%lp141741%_ ((_%rest141743%_ _%hd141739%_))
                      (let* ((_%rest141744141752%_ _%rest141743%_)
                             (_%else141746141760%_ (lambda () '#t))
                             (_%K141748141837%_
                              (lambda (_%rest141763%_ _%hd-bind141764%_)
                                (let* ((_%g141766141783%_
                                        (lambda (_%g141767141780%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g141767141780%_))))
                                       (_%g141765141834%_
                                        (lambda (_%g141767141786%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g141767141786%_))
                                              (let ((_%e141770141788%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g141767141786%_))))
                                                (let ((_%hd141771141791%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141770141788%_)))
                                                      (_%tl141772141793%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141770141788%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd141771141791%_))
                                                      (let ((_%e141773141796%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd141771141791%_))))
                (let ((_%hd141774141799%_
                       (let () (declare (not safe)) (##car _%e141773141796%_)))
                      (_%tl141775141801%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e141773141796%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141775141801%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141772141793%_))
                          (let ((_%e141776141804%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141772141793%_))))
                            (let ((_%hd141777141807%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141776141804%_)))
                                  (_%tl141778141809%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141776141804%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl141778141809%_))
                                  ((lambda (_%L141812%_ _%L141813%_)
                                     (if (_%is-lambda-expr?141608%_
                                          _%L141812%_)
                                         (_%lp141741%_ _%rest141763%_)
                                         '#f))
                                   _%hd141777141807%_
                                   _%hd141774141799%_)
                                  (_%g141766141783%_ _%g141767141786%_))))
                          (_%g141766141783%_ _%g141767141786%_))
                      (_%g141766141783%_ _%g141767141786%_))))
              (_%g141766141783%_ _%g141767141786%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141766141783%_
                                               _%g141767141786%_)))))
                                  (_%g141765141834%_ _%hd-bind141764%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest141744141752%_))
                            (let ((_%hd141749141840%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest141744141752%_)))
                                  (_%tl141750141842%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest141744141752%_))))
                              (let* ((_%hd-bind141845%_ _%hd141749141840%_)
                                     (_%rest141847%_ _%tl141750141842%_))
                                (_%K141748141837%_
                                 _%rest141847%_
                                 _%hd-bind141845%_)))
                            (_%else141746141760%_))))))
                 (_%is-lambda-expr?141608%_
                  (lambda (_%expr141676%_)
                    (let* ((_%__stx146847146848%_ _%expr141676%_)
                           (_%g141679141693%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx146847146848%_)))))
                      (let ((_%__kont146849146850%_
                             (lambda (_%L141721%_ _%L141722%_) '#t))
                            (_%__kont146851146852%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx146847146848%_))
                            (let ((_%e141683141705%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx146847146848%_))))
                              (let ((_%tl141685141710%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141683141705%_)))
                                    (_%hd141684141708%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141683141705%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141684141708%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd141684141708%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141685141710%_))
                                            (let ((_%e141686141713%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141685141710%_))))
                                              (let ((_%tl141688141718%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141686141713%_)))
                                                    (_%hd141687141716%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141686141713%_))))
                                                (_%__kont146849146850%_
                                                 _%tl141688141718%_
                                                 _%hd141687141716%_)))
                                            (_%__kont146851146852%_))
                                        (_%__kont146851146852%_))
                                    (_%__kont146851146852%_))))
                            (_%__kont146851146852%_)))))))
          (let* ((_%g141610141627%_
                  (lambda (_%g141611141624%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141611141624%_))))
                 (_%g141609141673%_
                  (lambda (_%g141611141630%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141611141630%_))
                        (let ((_%e141614141632%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141611141630%_))))
                          (let ((_%hd141615141635%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141614141632%_)))
                                (_%tl141616141637%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141614141632%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141616141637%_))
                                (let ((_%e141617141640%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141616141637%_))))
                                  (let ((_%hd141618141643%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141617141640%_)))
                                        (_%tl141619141645%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141617141640%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141619141645%_))
                                        (let ((_%e141620141648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141619141645%_))))
                                          (let ((_%hd141621141651%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141620141648%_)))
                                                (_%tl141622141653%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141620141648%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141622141653%_))
                                                ((lambda (_%L141656%_
                                                          _%L141657%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L141657%_)
                                                       (if (_%generate-letrec?141607%_
                                                            _%L141657%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self141603%_
                                                            'letrec
                                                            _%L141657%_
                                                            _%L141656%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self141603%_
                                                            'letrec*
                                                            _%L141657%_
                                                            _%L141656%_
                                                            '#f))
                                                       (_%generate-values141606%_
                                                        _%L141657%_
                                                        _%L141656%_)))
                                                 _%hd141621141651%_
                                                 _%hd141618141643%_)
                                                (_%g141610141627%_
                                                 _%g141611141630%_))))
                                        (_%g141610141627%_
                                         _%g141611141630%_))))
                                (_%g141610141627%_ _%g141611141630%_))))
                        (_%g141610141627%_ _%g141611141630%_)))))
            (_%g141609141673%_ _%stx141604%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd141540%_)
        (let _%lp141542%_ ((_%rest141544%_ _%hd141540%_))
          (let* ((_%rest141545141561%_ _%rest141544%_)
                 (_%else141548141569%_ (lambda () '#f)))
            (let ((_%K141551141582%_
                   (lambda (_%rest141580%_) (_%lp141542%_ _%rest141580%_)))
                  (_%K141550141574%_ (lambda () '#t)))
              (let ((_%try-match141547141577%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest141545141561%_))
                           (_%K141550141574%_)
                           (_%else141548141569%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest141545141561%_))
                    (let ((_%tl141553141587%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest141545141561%_)))
                          (_%hd141552141585%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest141545141561%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd141552141585%_))
                          (let ((_%tl141555141592%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd141552141585%_)))
                                (_%hd141554141590%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd141552141585%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd141554141590%_))
                                (let ((_%tl141559141595%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd141554141590%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl141559141595%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl141555141592%_))
                                          (let ((_%tl141557141598%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl141555141592%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl141557141598%_))
                                                (let ((_%rest141601%_
                                                       _%tl141553141587%_))
                                                  (_%lp141542%_
                                                   _%rest141601%_))
                                                (_%else141548141569%_)))
                                          (_%else141548141569%_))
                                      (_%else141548141569%_)))
                                (_%else141548141569%_)))
                          (_%else141548141569%_)))
                    (_%try-match141547141577%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self141451%_
               _%form141452%_
               _%hd141453%_
               _%body141454%_
               _%compiled-body?141455%_)
        (letrec ((_%generate1141457%_
                  (lambda (_%bind141496%_)
                    (let* ((_%bind141497141508%_ _%bind141496%_)
                           (_%E141499141512%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind141497141508%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K141500141518%_
                            (lambda (_%expr141515%_ _%id141516%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id141516%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self141451%_
                                             _%expr141515%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind141497141508%_))
                          (let ((_%hd141501141521%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind141497141508%_)))
                                (_%tl141502141523%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind141497141508%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd141501141521%_))
                                (let ((_%hd141505141526%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd141501141521%_)))
                                      (_%tl141506141528%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd141501141521%_))))
                                  (let ((_%id141531%_ _%hd141505141526%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl141506141528%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl141502141523%_))
                                            (let ((_%hd141503141533%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl141502141523%_)))
                                                  (_%tl141504141535%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl141502141523%_))))
                                              (let ((_%expr141538%_
                                                     _%hd141503141533%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl141504141535%_))
                                                    (_%K141500141518%_
                                                     _%expr141538%_
                                                     _%id141531%_)
                                                    (_%E141499141512%_))))
                                            (_%E141499141512%_))
                                        (_%E141499141512%_))))
                                (_%E141499141512%_)))
                          (_%E141499141512%_))))))
          (let* ((_%bind141459%_ (map _%generate1141457%_ _%hd141453%_))
                 (_%body141461%_
                  (if _%compiled-body?141455%_
                      _%body141454%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self141451%_ _%body141454%_))))
                 (_%body141493%_
                  (let* ((_%body141462141470%_ _%body141461%_)
                         (_%else141464141478%_
                          (lambda () (cons _%body141461%_ '())))
                         (_%K141466141483%_
                          (lambda (_%exprs141481%_) _%exprs141481%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body141462141470%_))
                        (let ((_%hd141467141486%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body141462141470%_)))
                              (_%tl141468141488%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body141462141470%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd141467141486%_ 'begin))
                              (let ((_%exprs141491%_ _%tl141468141488%_))
                                (_%K141466141483%_ _%exprs141491%_))
                              (_%else141464141478%_)))
                        (_%else141464141478%_)))))
            (cons _%form141452%_ (cons _%bind141459%_ _%body141493%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self141351%_ _%stx141352%_)
        (letrec ((_%generate1141354%_
                  (lambda (_%datum141406%_)
                    (if (or (null? _%datum141406%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum141406%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum141406%_))
                            (eof-object? _%datum141406%_))
                        _%datum141406%_
                        (if (uninterned-symbol? _%datum141406%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum141406%_
                               '#t))
                            (if (pair? _%datum141406%_)
                                (cons (_%generate1141354%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum141406%_)))
                                      (_%generate1141354%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum141406%_))))
                                (if (box? _%datum141406%_)
                                    (box (_%generate1141354%_
                                          (unbox _%datum141406%_)))
                                    (if (vector? _%datum141406%_)
                                        (vector-map
                                         _%generate1141354%_
                                         _%datum141406%_)
                                        (if (or (s8vector? _%datum141406%_)
                                                (u8vector? _%datum141406%_)
                                                (s16vector? _%datum141406%_)
                                                (u16vector? _%datum141406%_)
                                                (s32vector? _%datum141406%_)
                                                (u32vector? _%datum141406%_)
                                                (s64vector? _%datum141406%_)
                                                (u64vector? _%datum141406%_)
                                                (f32vector? _%datum141406%_)
                                                (f64vector? _%datum141406%_))
                                            _%datum141406%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx141352%_)))))))))))
          (let* ((_%g141356141369%_
                  (lambda (_%g141357141366%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141357141366%_))))
                 (_%g141355141403%_
                  (lambda (_%g141357141372%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141357141372%_))
                        (let ((_%e141359141374%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141357141372%_))))
                          (let ((_%hd141360141377%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141359141374%_)))
                                (_%tl141361141379%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141359141374%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141361141379%_))
                                (let ((_%e141362141382%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141361141379%_))))
                                  (let ((_%hd141363141385%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141362141382%_)))
                                        (_%tl141364141387%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141362141382%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl141364141387%_))
                                        ((lambda (_%L141390%_)
                                           (cons 'quote
                                                 (cons (_%generate1141354%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L141390%_)))
                                                       '())))
                                         _%hd141363141385%_)
                                        (_%g141356141369%_
                                         _%g141357141372%_))))
                                (_%g141356141369%_ _%g141357141372%_))))
                        (_%g141356141369%_ _%g141357141372%_)))))
            (_%g141355141403%_ _%stx141352%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self140792%_ _%stx140793%_)
        (letrec ((_%compile-call140795%_
                  (lambda (_%rator141084%_ _%rands141085%_)
                    (let ((_%rator141091%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self140792%_
                              _%rator141084%_)))
                          (_%rands141092%_
                           (map (lambda (_%g141086141088%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self140792%_
                                     _%g141086141088%_)))
                                _%rands141085%_)))
                      (let* ((_%__stx146894146895%_ _%rator141091%_)
                             (_%g141095141147%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx146894146895%_)))))
                        (let ((_%__kont146896146897%_
                               (lambda (_%L141271%_
                                        _%L141272%_
                                        _%L141273%_
                                        _%L141274%_)
                                 (if (let ((__tmp147566
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands141092%_)))
                                           (__tmp147564
                                            (length (let ((__tmp147565
                                                           (lambda (_%g141310141313%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g141311141315%_)
                     (cons _%g141310141313%_ _%g141311141315%_))))
              (declare (not safe))
              (__foldr1 __tmp147565 '() _%L141273%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp147566 __tmp147564))
                                     (let* ((_%id141318%_ _%L141274%_)
                                            (_%args141327%_
                                             (let ((__tmp147567
                                                    (lambda (_%g141319141322%_
                                                             _%g141320141324%_)
                                                      (cons _%g141319141322%_
                                                            _%g141320141324%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp147567
                                                '()
                                                _%L141273%_)))
                                            (_%body141336%_
                                             (let ((__tmp147568
                                                    (lambda (_%g141328141331%_
                                                             _%g141329141333%_)
                                                      (cons _%g141328141331%_
                                                            _%g141329141333%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp147568
                                                '()
                                                _%L141272%_)))
                                            (_%init141338%_
                                             (map list
                                                  _%args141327%_
                                                  _%rands141092%_)))
                                       (cons 'let
                                             (cons _%id141318%_
                                                   (cons _%init141338%_
                                                         _%body141336%_))))
                                     (let ((__tmp147569
                                            (let ((__tmp147570
                                                   (lambda (_%g141340141343%_
                                                            _%g141341141345%_)
                                                     (cons _%g141340141343%_
                                                           _%g141341141345%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147570
                                               '()
                                               _%L141273%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx140793%_
                                        __tmp147569
                                        _%rands141092%_)))))
                              (_%__kont146902146903%_
                               (lambda ()
                                 (cons _%rator141091%_ _%rands141092%_))))
                          (let ((_%__match146961146962%_
                                 (lambda (_%e141101141159%_
                                          _%hd141102141162%_
                                          _%tl141103141164%_
                                          _%e141104141167%_
                                          _%hd141105141170%_
                                          _%tl141106141172%_
                                          _%e141107141175%_
                                          _%hd141108141178%_
                                          _%tl141109141180%_
                                          _%e141110141183%_
                                          _%hd141111141186%_
                                          _%tl141112141188%_
                                          _%e141113141191%_
                                          _%hd141114141194%_
                                          _%tl141115141196%_
                                          _%e141116141199%_
                                          _%hd141117141202%_
                                          _%tl141118141204%_
                                          _%e141119141207%_
                                          _%hd141120141210%_
                                          _%tl141121141212%_
                                          _%__splice146898146899%_
                                          _%target141122141215%_
                                          _%tl141124141217%_)
                                   (letrec ((_%loop141125141220%_
                                             (lambda (_%hd141123141223%_
                                                      _%arg141129141225%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd141123141223%_))
                                                   (let ((_%e141126141228%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd141123141223%_))))
                                                     (let ((_%lp-tl141128141233%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e141126141228%_)))
                                                           (_%lp-hd141127141231%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e141126141228%_))))
                                                       (_%loop141125141220%_
                                                        _%lp-tl141128141233%_
                                                        (cons _%lp-hd141127141231%_
                                                              _%arg141129141225%_))))
                                                   (let ((_%arg141130141236%_
                                                          (reverse _%arg141129141225%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl141121141212%_))
                                                         (let ((_%__splice146900146901%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl141121141212%_ '0))))
                   (let ((_%tl141133141241%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice146900146901%_ '1)))
                         (_%target141131141239%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice146900146901%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl141133141241%_))
                         (letrec ((_%loop141134141244%_
                                   (lambda (_%hd141132141247%_
                                            _%body141138141249%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd141132141247%_))
                                         (let ((_%e141135141252%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd141132141247%_))))
                                           (let ((_%lp-tl141137141257%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e141135141252%_)))
                                                 (_%lp-hd141136141255%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e141135141252%_))))
                                             (_%loop141134141244%_
                                              _%lp-tl141137141257%_
                                              (cons _%lp-hd141136141255%_
                                                    _%body141138141249%_))))
                                         (let ((_%body141139141260%_
                                                (reverse _%body141138141249%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl141115141196%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl141109141180%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl141106141172%_))
                                                       (let ((_%e141140141263%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl141106141172%_))))
                 (let ((_%tl141142141268%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e141140141263%_)))
                       (_%hd141141141266%_
                        (let ()
                          (declare (not safe))
                          (##car _%e141140141263%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl141142141268%_))
                       (let ((_%L141271%_ _%hd141141141266%_)
                             (_%L141272%_ _%body141139141260%_)
                             (_%L141273%_ _%arg141130141236%_)
                             (_%L141274%_ _%hd141111141186%_))
                         (if (eq? _%L141274%_ _%L141271%_)
                             (_%__kont146896146897%_
                              _%L141271%_
                              _%L141272%_
                              _%L141273%_
                              _%L141274%_)
                             (_%__kont146902146903%_)))
                       (_%__kont146902146903%_))))
               (_%__kont146902146903%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont146902146903%_))
                                               (_%__kont146902146903%_)))))))
                           (_%loop141134141244%_ _%target141131141239%_ '()))
                         (_%__kont146902146903%_))))
                 (_%__kont146902146903%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop141125141220%_
                                      _%target141122141215%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx146894146895%_))
                                (let ((_%e141101141159%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx146894146895%_))))
                                  (let ((_%tl141103141164%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141101141159%_)))
                                        (_%hd141102141162%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141101141159%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd141102141162%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd141102141162%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl141103141164%_))
                                                (let ((_%e141104141167%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl141103141164%_))))
                                                  (let ((_%tl141106141172%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141104141167%_)))
                                                        (_%hd141105141170%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141104141167%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd141105141170%_))
                                                        (let ((_%e141107141175%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd141105141170%_))))
                  (let ((_%tl141109141180%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141107141175%_)))
                        (_%hd141108141178%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141107141175%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141108141178%_))
                        (let ((_%e141110141183%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141108141178%_))))
                          (let ((_%tl141112141188%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141110141183%_)))
                                (_%hd141111141186%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141110141183%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141112141188%_))
                                (let ((_%e141113141191%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141112141188%_))))
                                  (let ((_%tl141115141196%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141113141191%_)))
                                        (_%hd141114141194%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141113141191%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd141114141194%_))
                                        (let ((_%e141116141199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd141114141194%_))))
                                          (let ((_%tl141118141204%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141116141199%_)))
                                                (_%hd141117141202%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141116141199%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd141117141202%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd141117141202%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141118141204%_))
                                                        (let ((_%e141119141207%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141118141204%_))))
                  (let ((_%tl141121141212%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141119141207%_)))
                        (_%hd141120141210%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141119141207%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd141120141210%_))
                        (let ((_%__splice146898146899%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd141120141210%_
                                  '0))))
                          (let ((_%tl141124141217%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice146898146899%_ '1)))
                                (_%target141122141215%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice146898146899%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141124141217%_))
                                (_%__match146961146962%_
                                 _%e141101141159%_
                                 _%hd141102141162%_
                                 _%tl141103141164%_
                                 _%e141104141167%_
                                 _%hd141105141170%_
                                 _%tl141106141172%_
                                 _%e141107141175%_
                                 _%hd141108141178%_
                                 _%tl141109141180%_
                                 _%e141110141183%_
                                 _%hd141111141186%_
                                 _%tl141112141188%_
                                 _%e141113141191%_
                                 _%hd141114141194%_
                                 _%tl141115141196%_
                                 _%e141116141199%_
                                 _%hd141117141202%_
                                 _%tl141118141204%_
                                 _%e141119141207%_
                                 _%hd141120141210%_
                                 _%tl141121141212%_
                                 _%__splice146898146899%_
                                 _%target141122141215%_
                                 _%tl141124141217%_)
                                (_%__kont146902146903%_))))
                        (_%__kont146902146903%_))))
                (_%__kont146902146903%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont146902146903%_))
                                                (_%__kont146902146903%_))))
                                        (_%__kont146902146903%_))))
                                (_%__kont146902146903%_))))
                        (_%__kont146902146903%_))))
                (_%__kont146902146903%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont146902146903%_))
                                            (_%__kont146902146903%_))
                                        (_%__kont146902146903%_))))
                                (_%__kont146902146903%_)))))))))
          (let* ((_%g140797140820%_
                  (lambda (_%g140798140817%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140798140817%_))))
                 (_%g140796141081%_
                  (lambda (_%g140798140823%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140798140823%_))
                        (let ((_%e140801140825%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140798140823%_))))
                          (let ((_%hd140802140828%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140801140825%_)))
                                (_%tl140803140830%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140801140825%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140803140830%_))
                                (let ((_%e140804140833%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140803140830%_))))
                                  (let ((_%hd140805140836%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140804140833%_)))
                                        (_%tl140806140838%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140804140833%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl140806140838%_))
                                        (let ((_g147571_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl140806140838%_
                                                  '0))))
                                          (begin
                                            (let ((_g147572_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g147571_)
                                                         (##vector-length
                                                          _g147571_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g147572_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g147572_)))
                                            (let ((_%target140807140841%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g147571_
                                                      0)))
                                                  (_%tl140809140843%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g147571_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl140809140843%_))
                                                  (letrec ((_%loop140810140846%_
                                                            (lambda (_%hd140808140849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand140814140851%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd140808140849%_))
                          (let ((_%e140811140854%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd140808140849%_))))
                            (let ((_%lp-hd140812140857%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140811140854%_)))
                                  (_%lp-tl140813140859%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140811140854%_))))
                              (_%loop140810140846%_
                               _%lp-tl140813140859%_
                               (cons _%lp-hd140812140857%_
                                     _%rand140814140851%_))))
                          (let ((_%rand140815140862%_
                                 (reverse _%rand140814140851%_)))
                            ((lambda (_%L140865%_ _%L140866%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call140795%_
                                    _%L140866%_
                                    (let ((__tmp147573
                                           (lambda (_%g140883140886%_
                                                    _%g140884140888%_)
                                             (cons _%g140883140886%_
                                                   _%g140884140888%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp147573 '() _%L140865%_)))
                                   (let* ((_%__stx147010147011%_ _%L140866%_)
                                          (_%g140892140904%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx147010147011%_)))))
                                     (let ((_%__kont147012147013%_
                                            (lambda ()
                                              (let ((_%f140941%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self140792%_
                                                        _%L140866%_))))
                                                (if (and (let ((__tmp147574
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f140941%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp147574))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f140941%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp140943%_ ((_%rest140946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp147576
                                                (lambda (_%g141063141066%_
                                                         _%g141064141068%_)
                                                  (cons _%g141063141066%_
                                                        _%g141064141068%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp147576
                                            '()
                                            _%L140865%_))))
                               (_%bind140948%_ '())
                               (_%args140949%_ '()))
              (let* ((_%rest140950140958%_ _%rest140946%_)
                     (_%else140952140966%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind140948%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f140941%_
                                                      _%args140949%_)
                                                '()))))))
                     (_%K140954141052%_
                      (lambda (_%rest140969%_ _%e140970%_)
                        (let* ((_%__stx146964146965%_ _%e140970%_)
                               (_%g140975140993%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx146964146965%_)))))
                          (let ((_%__kont146966146967%_
                                 (lambda ()
                                   (_%lp140943%_
                                    _%rest140969%_
                                    _%bind140948%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e140970%_))
                                          _%args140949%_))))
                                (_%__kont146968146969%_
                                 (lambda ()
                                   (_%lp140943%_
                                    _%rest140969%_
                                    _%bind140948%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e140970%_))
                                          _%args140949%_))))
                                (_%__kont146970146971%_
                                 (lambda ()
                                   (let ((_%tmp141000%_
                                          (let ((__tmp147575
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp147575))))
                                     (_%lp140943%_
                                      _%rest140969%_
                                      (cons (cons _%tmp141000%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e140970%_))
                                                        '()))
                                            _%bind140948%_)
                                      (cons _%tmp141000%_ _%args140949%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx146964146965%_))
                                (let ((_%e140977141031%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx146964146965%_))))
                                  (let ((_%tl140979141036%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140977141031%_)))
                                        (_%hd140978141034%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140977141031%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd140978141034%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd140978141034%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl140979141036%_))
                                                (let ((_%e140980141039%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl140979141036%_))))
                                                  (let ((_%tl140982141044%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140980141039%_)))
                                                        (_%hd140981141042%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140980141039%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140982141044%_))
                                                        (_%__kont146966146967%_)
                                                        (_%__kont146970146971%_))))
                                                (_%__kont146970146971%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd140978141034%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl140979141036%_))
                                                    (let ((_%e140986141016%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl140979141036%_))))
                                                      (let ((_%tl140988141021%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e140986141016%_)))
                    (_%hd140987141019%_
                     (let () (declare (not safe)) (##car _%e140986141016%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl140988141021%_))
                    (_%__kont146968146969%_)
                    (_%__kont146970146971%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont146970146971%_))
                                                (_%__kont146970146971%_)))
                                        (_%__kont146970146971%_))))
                                (_%__kont146970146971%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest140950140958%_))
                    (let ((_%hd140955141055%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest140950140958%_)))
                          (_%tl140956141057%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest140950140958%_))))
                      (let* ((_%e141060%_ _%hd140955141055%_)
                             (_%rest141062%_ _%tl140956141057%_))
                        (_%K140954141052%_ _%rest141062%_ _%e141060%_)))
                    (_%else140952140966%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call140795%_
                                                     _%L140866%_
                                                     (let ((__tmp147577
                                                            (lambda (_%g141070141073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g141071141075%_)
                      (cons _%g141070141073%_ _%g141071141075%_))))
               (declare (not safe))
               (__foldr1 __tmp147577 '() _%L140865%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont147014147015%_
                                            (lambda ()
                                              (_%compile-call140795%_
                                               _%L140866%_
                                               (let ((__tmp147578
                                                      (lambda (_%g140910140913%_
                                                               _%g140911140915%_)
                                                        (cons _%g140910140913%_
                                                              _%g140911140915%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp147578
                                                  '()
                                                  _%L140865%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx147010147011%_))
                                           (let ((_%e140894140923%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx147010147011%_))))
                                             (let ((_%tl140896140928%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e140894140923%_)))
                                                   (_%hd140895140926%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e140894140923%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd140895140926%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd140895140926%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl140896140928%_))
                                                           (let ((_%e140897140931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl140896140928%_))))
                     (let ((_%tl140899140936%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e140897140931%_)))
                           (_%hd140898140934%_
                            (let ()
                              (declare (not safe))
                              (##car _%e140897140931%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl140899140936%_))
                           (_%__kont147012147013%_)
                           (_%__kont147014147015%_))))
                   (_%__kont147014147015%_))
               (_%__kont147014147015%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont147014147015%_))))
                                           (_%__kont147014147015%_))))))
                             _%rand140815140862%_
                             _%hd140805140836%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop140810140846%_
                                                     _%target140807140841%_
                                                     '()))
                                                  (_%g140797140820%_
                                                   _%g140798140823%_)))))
                                        (_%g140797140820%_
                                         _%g140798140823%_))))
                                (_%g140797140820%_ _%g140798140823%_))))
                        (_%g140797140820%_ _%g140798140823%_)))))
            (_%g140796141081%_ _%stx140793%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self140535%_ _%stx140536%_)
        (let* ((_%__stx147082147083%_ _%stx140536%_)
               (_%g140539140568%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx147082147083%_)))))
          (let ((_%__kont147084147085%_
                 (lambda (_%L140636%_ _%L140637%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self140535%_
                        _%stx140536%_)
                       (let ((_%f140659%_
                              (let ((__tmp147579
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L140637%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self140535%_
                                 __tmp147579))))
                         (let _%lp140661%_ ((_%rest140664%_
                                             (reverse (let ((__tmp147581
                                                             (lambda (_%g140781140784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g140782140786%_)
                       (cons _%g140781140784%_ _%g140782140786%_))))
                (declare (not safe))
                (__foldr1 __tmp147581 '() _%L140636%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind140666%_ '())
                                            (_%args140667%_ '()))
                           (let* ((_%rest140668140676%_ _%rest140664%_)
                                  (_%else140670140684%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind140666%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f140659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args140667%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K140672140770%_
                                   (lambda (_%rest140687%_ _%e140688%_)
                                     (let* ((_%__stx147036147037%_ _%e140688%_)
                                            (_%g140693140711%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx147036147037%_)))))
                                       (let ((_%__kont147038147039%_
                                              (lambda ()
                                                (_%lp140661%_
                                                 _%rest140687%_
                                                 _%bind140666%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e140688%_))
                                                       _%args140667%_))))
                                             (_%__kont147040147041%_
                                              (lambda ()
                                                (_%lp140661%_
                                                 _%rest140687%_
                                                 _%bind140666%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e140688%_))
                                                       _%args140667%_))))
                                             (_%__kont147042147043%_
                                              (lambda ()
                                                (let ((_%tmp140718%_
                                                       (let ((__tmp147580
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp147580))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp140661%_
                                                   _%rest140687%_
                                                   (cons (cons _%tmp140718%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e140688%_))
                             '()))
                 _%bind140666%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp140718%_
                                                         _%args140667%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx147036147037%_))
                                             (let ((_%e140695140749%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx147036147037%_))))
                                               (let ((_%tl140697140754%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e140695140749%_)))
                                                     (_%hd140696140752%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e140695140749%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd140696140752%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd140696140752%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140697140754%_))
                     (let ((_%e140698140757%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140697140754%_))))
                       (let ((_%tl140700140762%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140698140757%_)))
                             (_%hd140699140760%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140698140757%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140700140762%_))
                             (_%__kont147038147039%_)
                             (_%__kont147042147043%_))))
                     (_%__kont147042147043%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd140696140752%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl140697140754%_))
                         (let ((_%e140704140734%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl140697140754%_))))
                           (let ((_%tl140706140739%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e140704140734%_)))
                                 (_%hd140705140737%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e140704140734%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl140706140739%_))
                                 (_%__kont147040147041%_)
                                 (_%__kont147042147043%_))))
                         (_%__kont147042147043%_))
                     (_%__kont147042147043%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont147042147043%_))))
                                             (_%__kont147042147043%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest140668140676%_))
                                 (let ((_%hd140673140773%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest140668140676%_)))
                                       (_%tl140674140775%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest140668140676%_))))
                                   (let* ((_%e140778%_ _%hd140673140773%_)
                                          (_%rest140780%_ _%tl140674140775%_))
                                     (_%K140672140770%_
                                      _%rest140780%_
                                      _%e140778%_)))
                                 (_%else140670140684%_))))))))
                (_%__kont147088147089%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self140535%_ _%stx140536%_))))
            (let ((_%__match147127147128%_
                   (lambda (_%e140543140580%_
                            _%hd140544140583%_
                            _%tl140545140585%_
                            _%e140546140588%_
                            _%hd140547140591%_
                            _%tl140548140593%_
                            _%e140549140596%_
                            _%hd140550140599%_
                            _%tl140551140601%_
                            _%e140552140604%_
                            _%hd140553140607%_
                            _%tl140554140609%_
                            _%__splice147086147087%_
                            _%target140555140612%_
                            _%tl140557140614%_)
                     (letrec ((_%loop140558140617%_
                               (lambda (_%hd140556140620%_
                                        _%rand140562140622%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd140556140620%_))
                                     (let ((_%e140559140625%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd140556140620%_))))
                                       (let ((_%lp-tl140561140630%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e140559140625%_)))
                                             (_%lp-hd140560140628%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e140559140625%_))))
                                         (_%loop140558140617%_
                                          _%lp-tl140561140630%_
                                          (cons _%lp-hd140560140628%_
                                                _%rand140562140622%_))))
                                     (let ((_%rand140563140633%_
                                            (reverse _%rand140562140622%_)))
                                       (_%__kont147084147085%_
                                        _%rand140563140633%_
                                        _%hd140553140607%_))))))
                       (_%loop140558140617%_ _%target140555140612%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx147082147083%_))
                  (let ((_%e140543140580%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx147082147083%_))))
                    (let ((_%tl140545140585%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140543140580%_)))
                          (_%hd140544140583%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140543140580%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl140545140585%_))
                          (let ((_%e140546140588%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl140545140585%_))))
                            (let ((_%tl140548140593%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140546140588%_)))
                                  (_%hd140547140591%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140546140588%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd140547140591%_))
                                  (let ((_%e140549140596%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd140547140591%_))))
                                    (let ((_%tl140551140601%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140549140596%_)))
                                          (_%hd140550140599%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140549140596%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd140550140599%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd140550140599%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl140551140601%_))
                                                  (let ((_%e140552140604%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl140551140601%_))))
                                                    (let ((_%tl140554140609%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140552140604%_)))
                                                          (_%hd140553140607%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140552140604%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl140554140609%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl140548140593%_))
                      (let ((_%__splice147086147087%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl140548140593%_
                                '0))))
                        (let ((_%tl140557140614%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice147086147087%_ '1)))
                              (_%target140555140612%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice147086147087%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl140557140614%_))
                              (_%__match147127147128%_
                               _%e140543140580%_
                               _%hd140544140583%_
                               _%tl140545140585%_
                               _%e140546140588%_
                               _%hd140547140591%_
                               _%tl140548140593%_
                               _%e140549140596%_
                               _%hd140550140599%_
                               _%tl140551140601%_
                               _%e140552140604%_
                               _%hd140553140607%_
                               _%tl140554140609%_
                               _%__splice147086147087%_
                               _%target140555140612%_
                               _%tl140557140614%_)
                              (_%__kont147088147089%_))))
                      (_%__kont147088147089%_))
                  (_%__kont147088147089%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont147088147089%_))
                                              (_%__kont147088147089%_))
                                          (_%__kont147088147089%_))))
                                  (_%__kont147088147089%_))))
                          (_%__kont147088147089%_))))
                  (_%__kont147088147089%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self140347%_ _%stx140348%_)
        (letrec ((_%simplify140350%_
                  (lambda (_%code140435%_)
                    (let* ((_%code140436140454%_ _%code140435%_)
                           (_%else140438140462%_ (lambda () _%code140435%_))
                           (_%K140440140498%_
                            (lambda (_%expr140465%_ _%test140466%_)
                              (let* ((_%expr140467140475%_ _%expr140465%_)
                                     (_%else140469140483%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test140466%_
                                                    (cons _%expr140465%_
                                                          '())))))
                                     (_%K140471140488%_
                                      (lambda (_%exprs140486%_)
                                        (cons 'and
                                              (cons _%test140466%_
                                                    _%exprs140486%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr140467140475%_))
                                    (let ((_%hd140472140491%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr140467140475%_)))
                                          (_%tl140473140493%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr140467140475%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd140472140491%_ 'and))
                                          (let ((_%exprs140496%_
                                                 _%tl140473140493%_))
                                            (_%K140471140488%_
                                             _%exprs140496%_))
                                          (_%else140469140483%_)))
                                    (_%else140469140483%_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code140436140454%_))
                          (let ((_%hd140441140501%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code140436140454%_)))
                                (_%tl140442140503%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code140436140454%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd140441140501%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl140442140503%_))
                                    (let ((_%hd140443140506%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl140442140503%_)))
                                          (_%tl140444140508%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl140442140503%_))))
                                      (let ((_%test140511%_
                                             _%hd140443140506%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl140444140508%_))
                                            (let ((_%hd140445140513%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl140444140508%_)))
                                                  (_%tl140446140515%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl140444140508%_))))
                                              (let ((_%expr140518%_
                                                     _%hd140445140513%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl140446140515%_))
                                                    (let ((_%hd140447140520%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl140446140515%_)))
                                                          (_%tl140448140522%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl140446140515%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd140447140520%_))
                                                          (let ((_%hd140449140525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd140447140520%_)))
                        (_%tl140450140527%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd140447140520%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd140449140525%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl140450140527%_))
                            (let ((_%hd140451140530%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl140450140527%_)))
                                  (_%tl140452140532%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl140450140527%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd140451140530%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl140452140532%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl140448140522%_))
                                          (_%K140440140498%_
                                           _%expr140518%_
                                           _%test140511%_)
                                          (_%else140438140462%_))
                                      (_%else140438140462%_))
                                  (_%else140438140462%_)))
                            (_%else140438140462%_))
                        (_%else140438140462%_)))
                  (_%else140438140462%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else140438140462%_))))
                                            (_%else140438140462%_))))
                                    (_%else140438140462%_))
                                (_%else140438140462%_)))
                          (_%else140438140462%_))))))
          (let* ((_%g140352140373%_
                  (lambda (_%g140353140370%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140353140370%_))))
                 (_%g140351140432%_
                  (lambda (_%g140353140376%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140353140376%_))
                        (let ((_%e140357140378%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140353140376%_))))
                          (let ((_%hd140358140381%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140357140378%_)))
                                (_%tl140359140383%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140357140378%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140359140383%_))
                                (let ((_%e140360140386%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140359140383%_))))
                                  (let ((_%hd140361140389%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140360140386%_)))
                                        (_%tl140362140391%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140360140386%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140362140391%_))
                                        (let ((_%e140363140394%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140362140391%_))))
                                          (let ((_%hd140364140397%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140363140394%_)))
                                                (_%tl140365140399%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140363140394%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl140365140399%_))
                                                (let ((_%e140366140402%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl140365140399%_))))
                                                  (let ((_%hd140367140405%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140366140402%_)))
                                                        (_%tl140368140407%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140366140402%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140368140407%_))
                                                        ((lambda (_%L140410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L140411%_
                          _%L140412%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify140350%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self140347%_
                                       _%L140412%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self140347%_
                                             _%L140411%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self140347%_
                                                   _%L140410%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp147582
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self140347%_
                                               _%L140412%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp147582
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self140347%_
                                            _%L140411%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self140347%_
                                                  _%L140410%_))
                                               '()))))))
                 _%hd140367140405%_
                 _%hd140364140397%_
                 _%hd140361140389%_)
                (_%g140352140373%_ _%g140353140376%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g140352140373%_
                                                 _%g140353140376%_))))
                                        (_%g140352140373%_
                                         _%g140353140376%_))))
                                (_%g140352140373%_ _%g140353140376%_))))
                        (_%g140352140373%_ _%g140353140376%_)))))
            (_%g140351140432%_ _%stx140348%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self140295%_ _%stx140296%_)
        (let* ((_%g140298140311%_
                (lambda (_%g140299140308%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140299140308%_))))
               (_%g140297140344%_
                (lambda (_%g140299140314%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140299140314%_))
                      (let ((_%e140301140316%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140299140314%_))))
                        (let ((_%hd140302140319%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140301140316%_)))
                              (_%tl140303140321%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140301140316%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140303140321%_))
                              (let ((_%e140304140324%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140303140321%_))))
                                (let ((_%hd140305140327%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140304140324%_)))
                                      (_%tl140306140329%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140304140324%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl140306140329%_))
                                      ((lambda (_%L140332%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L140332%_)))
                                       _%hd140305140327%_)
                                      (_%g140298140311%_ _%g140299140314%_))))
                              (_%g140298140311%_ _%g140299140314%_))))
                      (_%g140298140311%_ _%g140299140314%_)))))
          (_%g140297140344%_ _%stx140296%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self140227%_ _%stx140228%_)
        (let* ((_%g140230140247%_
                (lambda (_%g140231140244%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140231140244%_))))
               (_%g140229140292%_
                (lambda (_%g140231140250%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140231140250%_))
                      (let ((_%e140234140252%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140231140250%_))))
                        (let ((_%hd140235140255%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140234140252%_)))
                              (_%tl140236140257%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140234140252%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140236140257%_))
                              (let ((_%e140237140260%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140236140257%_))))
                                (let ((_%hd140238140263%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140237140260%_)))
                                      (_%tl140239140265%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140237140260%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140239140265%_))
                                      (let ((_%e140240140268%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140239140265%_))))
                                        (let ((_%hd140241140271%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140240140268%_)))
                                              (_%tl140242140273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140240140268%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140242140273%_))
                                              ((lambda (_%L140276%_
                                                        _%L140277%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L140277%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self140227%_ _%L140276%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140241140271%_
                                               _%hd140238140263%_)
                                              (_%g140230140247%_
                                               _%g140231140250%_))))
                                      (_%g140230140247%_ _%g140231140250%_))))
                              (_%g140230140247%_ _%g140231140250%_))))
                      (_%g140230140247%_ _%g140231140250%_)))))
          (_%g140229140292%_ _%stx140228%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self140038%_ _%stx140039%_)
        (let* ((_%g140041140058%_
                (lambda (_%g140042140055%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140042140055%_))))
               (_%g140040140224%_
                (lambda (_%g140042140061%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140042140061%_))
                      (let ((_%e140045140063%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140042140061%_))))
                        (let ((_%hd140046140066%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140045140063%_)))
                              (_%tl140047140068%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140045140063%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140047140068%_))
                              (let ((_%e140048140071%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140047140068%_))))
                                (let ((_%hd140049140074%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140048140071%_)))
                                      (_%tl140050140076%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140048140071%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140050140076%_))
                                      (let ((_%e140051140079%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140050140076%_))))
                                        (let ((_%hd140052140082%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140051140079%_)))
                                              (_%tl140053140084%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140051140079%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140053140084%_))
                                              ((lambda (_%L140087%_
                                                        _%L140088%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self140038%_ _%L140087%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self140038%_ _%L140088%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp140103%_ ((_%rest140106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L140088%_ (cons _%L140087%_ '())))
                                (_%bind140108%_ '())
                                (_%args140109%_ '()))
               (let* ((_%rest140110140118%_ _%rest140106%_)
                      (_%else140112140126%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind140108%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args140109%_)
                                                 '()))))))
                      (_%K140114140212%_
                       (lambda (_%rest140129%_ _%e140130%_)
                         (let* ((_%__stx147130147131%_ _%e140130%_)
                                (_%g140135140153%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx147130147131%_)))))
                           (let ((_%__kont147132147133%_
                                  (lambda ()
                                    (_%lp140103%_
                                     _%rest140129%_
                                     _%bind140108%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e140130%_))
                                           _%args140109%_))))
                                 (_%__kont147134147135%_
                                  (lambda ()
                                    (_%lp140103%_
                                     _%rest140129%_
                                     _%bind140108%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e140130%_))
                                           _%args140109%_))))
                                 (_%__kont147136147137%_
                                  (lambda ()
                                    (let ((_%tmp140160%_
                                           (let ((__tmp147583
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp147583))))
                                      (_%lp140103%_
                                       _%rest140129%_
                                       (cons (cons _%tmp140160%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e140130%_))
                                                         '()))
                                             _%bind140108%_)
                                       (cons _%tmp140160%_ _%args140109%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx147130147131%_))
                                 (let ((_%e140137140191%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx147130147131%_))))
                                   (let ((_%tl140139140196%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e140137140191%_)))
                                         (_%hd140138140194%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e140137140191%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd140138140194%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd140138140194%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl140139140196%_))
                                                 (let ((_%e140140140199%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl140139140196%_))))
                                                   (let ((_%tl140142140204%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140140140199%_)))
                                                         (_%hd140141140202%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140140140199%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140142140204%_))
                                                         (_%__kont147132147133%_)
                                                         (_%__kont147136147137%_))))
                                                 (_%__kont147136147137%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd140138140194%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140139140196%_))
                                                     (let ((_%e140146140176%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140139140196%_))))
                                                       (let ((_%tl140148140181%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140146140176%_)))
                     (_%hd140147140179%_
                      (let () (declare (not safe)) (##car _%e140146140176%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140148140181%_))
                     (_%__kont147134147135%_)
                     (_%__kont147136147137%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont147136147137%_))
                                                 (_%__kont147136147137%_)))
                                         (_%__kont147136147137%_))))
                                 (_%__kont147136147137%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest140110140118%_))
                     (let ((_%hd140115140215%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest140110140118%_)))
                           (_%tl140116140217%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest140110140118%_))))
                       (let* ((_%e140220%_ _%hd140115140215%_)
                              (_%rest140222%_ _%tl140116140217%_))
                         (_%K140114140212%_ _%rest140222%_ _%e140220%_)))
                     (_%else140112140126%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140052140082%_
                                               _%hd140049140074%_)
                                              (_%g140041140058%_
                                               _%g140042140061%_))))
                                      (_%g140041140058%_ _%g140042140061%_))))
                              (_%g140041140058%_ _%g140042140061%_))))
                      (_%g140041140058%_ _%g140042140061%_)))))
          (_%g140040140224%_ _%stx140039%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self139849%_ _%stx139850%_)
        (let* ((_%g139852139869%_
                (lambda (_%g139853139866%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139853139866%_))))
               (_%g139851140035%_
                (lambda (_%g139853139872%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139853139872%_))
                      (let ((_%e139856139874%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139853139872%_))))
                        (let ((_%hd139857139877%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139856139874%_)))
                              (_%tl139858139879%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139856139874%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139858139879%_))
                              (let ((_%e139859139882%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139858139879%_))))
                                (let ((_%hd139860139885%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139859139882%_)))
                                      (_%tl139861139887%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139859139882%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139861139887%_))
                                      (let ((_%e139862139890%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139861139887%_))))
                                        (let ((_%hd139863139893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139862139890%_)))
                                              (_%tl139864139895%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139862139890%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139864139895%_))
                                              ((lambda (_%L139898%_
                                                        _%L139899%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self139849%_ _%L139898%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self139849%_ _%L139899%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp139914%_ ((_%rest139917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L139899%_ (cons _%L139898%_ '())))
                                (_%bind139919%_ '())
                                (_%args139920%_ '()))
               (let* ((_%rest139921139929%_ _%rest139917%_)
                      (_%else139923139937%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind139919%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args139920%_)
                                                 '()))))))
                      (_%K139925140023%_
                       (lambda (_%rest139940%_ _%e139941%_)
                         (let* ((_%__stx147176147177%_ _%e139941%_)
                                (_%g139946139964%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx147176147177%_)))))
                           (let ((_%__kont147178147179%_
                                  (lambda ()
                                    (_%lp139914%_
                                     _%rest139940%_
                                     _%bind139919%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e139941%_))
                                           _%args139920%_))))
                                 (_%__kont147180147181%_
                                  (lambda ()
                                    (_%lp139914%_
                                     _%rest139940%_
                                     _%bind139919%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e139941%_))
                                           _%args139920%_))))
                                 (_%__kont147182147183%_
                                  (lambda ()
                                    (let ((_%tmp139971%_
                                           (let ((__tmp147584
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp147584))))
                                      (_%lp139914%_
                                       _%rest139940%_
                                       (cons (cons _%tmp139971%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e139941%_))
                                                         '()))
                                             _%bind139919%_)
                                       (cons _%tmp139971%_ _%args139920%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx147176147177%_))
                                 (let ((_%e139948140002%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx147176147177%_))))
                                   (let ((_%tl139950140007%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e139948140002%_)))
                                         (_%hd139949140005%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e139948140002%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd139949140005%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd139949140005%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl139950140007%_))
                                                 (let ((_%e139951140010%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl139950140007%_))))
                                                   (let ((_%tl139953140015%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139951140010%_)))
                                                         (_%hd139952140013%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139951140010%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl139953140015%_))
                                                         (_%__kont147178147179%_)
                                                         (_%__kont147182147183%_))))
                                                 (_%__kont147182147183%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd139949140005%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl139950140007%_))
                                                     (let ((_%e139957139987%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl139950140007%_))))
                                                       (let ((_%tl139959139992%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e139957139987%_)))
                     (_%hd139958139990%_
                      (let () (declare (not safe)) (##car _%e139957139987%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl139959139992%_))
                     (_%__kont147180147181%_)
                     (_%__kont147182147183%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont147182147183%_))
                                                 (_%__kont147182147183%_)))
                                         (_%__kont147182147183%_))))
                                 (_%__kont147182147183%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest139921139929%_))
                     (let ((_%hd139926140026%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest139921139929%_)))
                           (_%tl139927140028%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest139921139929%_))))
                       (let* ((_%e140031%_ _%hd139926140026%_)
                              (_%rest140033%_ _%tl139927140028%_))
                         (_%K139925140023%_ _%rest140033%_ _%e140031%_)))
                     (_%else139923139937%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139863139893%_
                                               _%hd139860139885%_)
                                              (_%g139852139869%_
                                               _%g139853139872%_))))
                                      (_%g139852139869%_ _%g139853139872%_))))
                              (_%g139852139869%_ _%g139853139872%_))))
                      (_%g139852139869%_ _%g139853139872%_)))))
          (_%g139851140035%_ _%stx139850%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self139765%_ _%stx139766%_)
        (let* ((_%g139768139789%_
                (lambda (_%g139769139786%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139769139786%_))))
               (_%g139767139846%_
                (lambda (_%g139769139792%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139769139792%_))
                      (let ((_%e139773139794%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139769139792%_))))
                        (let ((_%hd139774139797%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139773139794%_)))
                              (_%tl139775139799%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139773139794%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139775139799%_))
                              (let ((_%e139776139802%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139775139799%_))))
                                (let ((_%hd139777139805%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139776139802%_)))
                                      (_%tl139778139807%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139776139802%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139778139807%_))
                                      (let ((_%e139779139810%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139778139807%_))))
                                        (let ((_%hd139780139813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139779139810%_)))
                                              (_%tl139781139815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139779139810%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139781139815%_))
                                              (let ((_%e139782139818%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139781139815%_))))
                                                (let ((_%hd139783139821%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139782139818%_)))
                                                      (_%tl139784139823%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139782139818%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139784139823%_))
                                                      ((lambda (_%L139826%_
                                                                _%L139827%_
                                                                _%L139828%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self139765%_ _%L139826%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self139765%_
                                      _%L139827%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self139765%_
                                            _%L139828%_))
                                         (cons ''#f '()))))))
               _%hd139783139821%_
               _%hd139780139813%_
               _%hd139777139805%_)
              (_%g139768139789%_ _%g139769139792%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139768139789%_
                                               _%g139769139792%_))))
                                      (_%g139768139789%_ _%g139769139792%_))))
                              (_%g139768139789%_ _%g139769139792%_))))
                      (_%g139768139789%_ _%g139769139792%_)))))
          (_%g139767139846%_ _%stx139766%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self139665%_ _%stx139666%_)
        (let* ((_%g139668139693%_
                (lambda (_%g139669139690%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139669139690%_))))
               (_%g139667139762%_
                (lambda (_%g139669139696%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139669139696%_))
                      (let ((_%e139674139698%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139669139696%_))))
                        (let ((_%hd139675139701%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139674139698%_)))
                              (_%tl139676139703%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139674139698%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139676139703%_))
                              (let ((_%e139677139706%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139676139703%_))))
                                (let ((_%hd139678139709%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139677139706%_)))
                                      (_%tl139679139711%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139677139706%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139679139711%_))
                                      (let ((_%e139680139714%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139679139711%_))))
                                        (let ((_%hd139681139717%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139680139714%_)))
                                              (_%tl139682139719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139680139714%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139682139719%_))
                                              (let ((_%e139683139722%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139682139719%_))))
                                                (let ((_%hd139684139725%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139683139722%_)))
                                                      (_%tl139685139727%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139683139722%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl139685139727%_))
                                                      (let ((_%e139686139730%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl139685139727%_))))
                (let ((_%hd139687139733%_
                       (let () (declare (not safe)) (##car _%e139686139730%_)))
                      (_%tl139688139735%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139686139730%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139688139735%_))
                      ((lambda (_%L139738%_
                                _%L139739%_
                                _%L139740%_
                                _%L139741%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self139665%_
                                        _%L139739%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self139665%_
                                              _%L139738%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self139665%_
                                                    _%L139740%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self139665%_
                                                          _%L139741%_))
                                                       (cons ''#f '())))))))
                       _%hd139687139733%_
                       _%hd139684139725%_
                       _%hd139681139717%_
                       _%hd139678139709%_)
                      (_%g139668139693%_ _%g139669139696%_))))
              (_%g139668139693%_ _%g139669139696%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139668139693%_
                                               _%g139669139696%_))))
                                      (_%g139668139693%_ _%g139669139696%_))))
                              (_%g139668139693%_ _%g139669139696%_))))
                      (_%g139668139693%_ _%g139669139696%_)))))
          (_%g139667139762%_ _%stx139666%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self139581%_ _%stx139582%_)
        (let* ((_%g139584139605%_
                (lambda (_%g139585139602%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139585139602%_))))
               (_%g139583139662%_
                (lambda (_%g139585139608%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139585139608%_))
                      (let ((_%e139589139610%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139585139608%_))))
                        (let ((_%hd139590139613%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139589139610%_)))
                              (_%tl139591139615%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139589139610%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139591139615%_))
                              (let ((_%e139592139618%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139591139615%_))))
                                (let ((_%hd139593139621%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139592139618%_)))
                                      (_%tl139594139623%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139592139618%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139594139623%_))
                                      (let ((_%e139595139626%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139594139623%_))))
                                        (let ((_%hd139596139629%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139595139626%_)))
                                              (_%tl139597139631%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139595139626%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139597139631%_))
                                              (let ((_%e139598139634%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139597139631%_))))
                                                (let ((_%hd139599139637%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139598139634%_)))
                                                      (_%tl139600139639%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139598139634%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139600139639%_))
                                                      ((lambda (_%L139642%_
                                                                _%L139643%_
                                                                _%L139644%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self139581%_ _%L139642%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self139581%_
                                      _%L139643%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self139581%_
                                            _%L139644%_))
                                         (cons ''#f '()))))))
               _%hd139599139637%_
               _%hd139596139629%_
               _%hd139593139621%_)
              (_%g139584139605%_ _%g139585139608%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139584139605%_
                                               _%g139585139608%_))))
                                      (_%g139584139605%_ _%g139585139608%_))))
                              (_%g139584139605%_ _%g139585139608%_))))
                      (_%g139584139605%_ _%g139585139608%_)))))
          (_%g139583139662%_ _%stx139582%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self139481%_ _%stx139482%_)
        (let* ((_%g139484139509%_
                (lambda (_%g139485139506%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139485139506%_))))
               (_%g139483139578%_
                (lambda (_%g139485139512%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139485139512%_))
                      (let ((_%e139490139514%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139485139512%_))))
                        (let ((_%hd139491139517%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139490139514%_)))
                              (_%tl139492139519%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139490139514%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139492139519%_))
                              (let ((_%e139493139522%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139492139519%_))))
                                (let ((_%hd139494139525%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139493139522%_)))
                                      (_%tl139495139527%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139493139522%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139495139527%_))
                                      (let ((_%e139496139530%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139495139527%_))))
                                        (let ((_%hd139497139533%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139496139530%_)))
                                              (_%tl139498139535%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139496139530%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139498139535%_))
                                              (let ((_%e139499139538%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139498139535%_))))
                                                (let ((_%hd139500139541%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139499139538%_)))
                                                      (_%tl139501139543%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139499139538%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl139501139543%_))
                                                      (let ((_%e139502139546%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl139501139543%_))))
                (let ((_%hd139503139549%_
                       (let () (declare (not safe)) (##car _%e139502139546%_)))
                      (_%tl139504139551%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139502139546%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139504139551%_))
                      ((lambda (_%L139554%_
                                _%L139555%_
                                _%L139556%_
                                _%L139557%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self139481%_
                                        _%L139555%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self139481%_
                                              _%L139554%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self139481%_
                                                    _%L139556%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self139481%_
                                                          _%L139557%_))
                                                       (cons ''#f '())))))))
                       _%hd139503139549%_
                       _%hd139500139541%_
                       _%hd139497139533%_
                       _%hd139494139525%_)
                      (_%g139484139509%_ _%g139485139512%_))))
              (_%g139484139509%_ _%g139485139512%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139484139509%_
                                               _%g139485139512%_))))
                                      (_%g139484139509%_ _%g139485139512%_))))
                              (_%g139484139509%_ _%g139485139512%_))))
                      (_%g139484139509%_ _%g139485139512%_)))))
          (_%g139483139578%_ _%stx139482%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self139276%_ _%stx139277%_)
        (let* ((_%g139279139300%_
                (lambda (_%g139280139297%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139280139297%_))))
               (_%g139278139478%_
                (lambda (_%g139280139303%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139280139303%_))
                      (let ((_%e139284139305%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139280139303%_))))
                        (let ((_%hd139285139308%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139284139305%_)))
                              (_%tl139286139310%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139284139305%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139286139310%_))
                              (let ((_%e139287139313%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139286139310%_))))
                                (let ((_%hd139288139316%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139287139313%_)))
                                      (_%tl139289139318%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139287139313%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139289139318%_))
                                      (let ((_%e139290139321%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139289139318%_))))
                                        (let ((_%hd139291139324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139290139321%_)))
                                              (_%tl139292139326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139290139321%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139292139326%_))
                                              (let ((_%e139293139329%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139292139326%_))))
                                                (let ((_%hd139294139332%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139293139329%_)))
                                                      (_%tl139295139334%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139293139329%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139295139334%_))
                                                      ((lambda (_%L139337%_
                                                                _%L139338%_
                                                                _%L139339%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self139276%_
                                    _%L139337%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self139276%_
                                          _%L139338%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp139357%_ ((_%rest139360%_
                                         (cons _%L139338%_
                                               (cons _%L139337%_ '())))
                                        (_%bind139362%_ '())
                                        (_%args139363%_ '()))
                       (let* ((_%rest139364139372%_ _%rest139360%_)
                              (_%else139366139380%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind139362%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp147585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp147585 _%args139363%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K139368139466%_
                               (lambda (_%rest139383%_ _%e139384%_)
                                 (let* ((_%__stx147222147223%_ _%e139384%_)
                                        (_%g139389139407%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx147222147223%_)))))
                                   (let ((_%__kont147224147225%_
                                          (lambda ()
                                            (_%lp139357%_
                                             _%rest139383%_
                                             _%bind139362%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e139384%_))
                                                   _%args139363%_))))
                                         (_%__kont147226147227%_
                                          (lambda ()
                                            (_%lp139357%_
                                             _%rest139383%_
                                             _%bind139362%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e139384%_))
                                                   _%args139363%_))))
                                         (_%__kont147228147229%_
                                          (lambda ()
                                            (let ((_%tmp139414%_
                                                   (let ((__tmp147586
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp147586))))
                                              (_%lp139357%_
                                               _%rest139383%_
                                               (cons (cons _%tmp139414%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e139384%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind139362%_)
                                               (cons _%tmp139414%_
                                                     _%args139363%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx147222147223%_))
                                         (let ((_%e139391139445%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx147222147223%_))))
                                           (let ((_%tl139393139450%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e139391139445%_)))
                                                 (_%hd139392139448%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e139391139445%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd139392139448%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd139392139448%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl139393139450%_))
                                                         (let ((_%e139394139453%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl139393139450%_))))
                   (let ((_%tl139396139458%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e139394139453%_)))
                         (_%hd139395139456%_
                          (let ()
                            (declare (not safe))
                            (##car _%e139394139453%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl139396139458%_))
                         (_%__kont147224147225%_)
                         (_%__kont147228147229%_))))
                 (_%__kont147228147229%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd139392139448%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl139393139450%_))
                     (let ((_%e139400139430%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139393139450%_))))
                       (let ((_%tl139402139435%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139400139430%_)))
                             (_%hd139401139433%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139400139430%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139402139435%_))
                             (_%__kont147226147227%_)
                             (_%__kont147228147229%_))))
                     (_%__kont147228147229%_))
                 (_%__kont147228147229%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont147228147229%_))))
                                         (_%__kont147228147229%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest139364139372%_))
                             (let ((_%hd139369139469%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest139364139372%_)))
                                   (_%tl139370139471%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest139364139372%_))))
                               (let* ((_%e139474%_ _%hd139369139469%_)
                                      (_%rest139476%_ _%tl139370139471%_))
                                 (_%K139368139466%_
                                  _%rest139476%_
                                  _%e139474%_)))
                             (_%else139366139380%_))))))
               _%hd139294139332%_
               _%hd139291139324%_
               _%hd139288139316%_)
              (_%g139279139300%_ _%g139280139303%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139279139300%_
                                               _%g139280139303%_))))
                                      (_%g139279139300%_ _%g139280139303%_))))
                              (_%g139279139300%_ _%g139280139303%_))))
                      (_%g139279139300%_ _%g139280139303%_)))))
          (_%g139278139478%_ _%stx139277%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self139055%_ _%stx139056%_)
        (let* ((_%g139058139083%_
                (lambda (_%g139059139080%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139059139080%_))))
               (_%g139057139273%_
                (lambda (_%g139059139086%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139059139086%_))
                      (let ((_%e139064139088%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139059139086%_))))
                        (let ((_%hd139065139091%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139064139088%_)))
                              (_%tl139066139093%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139064139088%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139066139093%_))
                              (let ((_%e139067139096%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139066139093%_))))
                                (let ((_%hd139068139099%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139067139096%_)))
                                      (_%tl139069139101%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139067139096%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139069139101%_))
                                      (let ((_%e139070139104%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139069139101%_))))
                                        (let ((_%hd139071139107%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139070139104%_)))
                                              (_%tl139072139109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139070139104%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139072139109%_))
                                              (let ((_%e139073139112%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139072139109%_))))
                                                (let ((_%hd139074139115%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139073139112%_)))
                                                      (_%tl139075139117%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139073139112%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl139075139117%_))
                                                      (let ((_%e139076139120%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl139075139117%_))))
                (let ((_%hd139077139123%_
                       (let () (declare (not safe)) (##car _%e139076139120%_)))
                      (_%tl139078139125%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139076139120%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139078139125%_))
                      ((lambda (_%L139128%_
                                _%L139129%_
                                _%L139130%_
                                _%L139131%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self139055%_
                                            _%L139129%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self139055%_
                                                  _%L139128%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self139055%_
                                                        _%L139130%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp139152%_ ((_%rest139155%_
                                                 (cons _%L139130%_
                                                       (cons _%L139128%_
                                                             (cons _%L139129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind139157%_ '())
                                                (_%args139158%_ '()))
                               (let* ((_%rest139159139167%_ _%rest139155%_)
                                      (_%else139161139175%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind139157%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp147587 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp147587 _%args139158%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K139163139261%_
                                       (lambda (_%rest139178%_ _%e139179%_)
                                         (let* ((_%__stx147268147269%_
                                                 _%e139179%_)
                                                (_%g139184139202%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx147268147269%_)))))
                                           (let ((_%__kont147270147271%_
                                                  (lambda ()
                                                    (_%lp139152%_
                                                     _%rest139178%_
                                                     _%bind139157%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e139179%_))
                                                           _%args139158%_))))
                                                 (_%__kont147272147273%_
                                                  (lambda ()
                                                    (_%lp139152%_
                                                     _%rest139178%_
                                                     _%bind139157%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e139179%_))
                                                           _%args139158%_))))
                                                 (_%__kont147274147275%_
                                                  (lambda ()
                                                    (let ((_%tmp139209%_
                                                           (let ((__tmp147588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp147588))))
              (_%lp139152%_
               _%rest139178%_
               (cons (cons _%tmp139209%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e139179%_))
                                 '()))
                     _%bind139157%_)
               (cons _%tmp139209%_ _%args139158%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx147268147269%_))
                                                 (let ((_%e139186139240%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx147268147269%_))))
                                                   (let ((_%tl139188139245%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139186139240%_)))
                                                         (_%hd139187139243%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139186139240%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd139187139243%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd139187139243%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl139188139245%_))
                         (let ((_%e139189139248%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl139188139245%_))))
                           (let ((_%tl139191139253%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e139189139248%_)))
                                 (_%hd139190139251%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e139189139248%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl139191139253%_))
                                 (_%__kont147270147271%_)
                                 (_%__kont147274147275%_))))
                         (_%__kont147274147275%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd139187139243%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl139188139245%_))
                             (let ((_%e139195139225%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl139188139245%_))))
                               (let ((_%tl139197139230%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e139195139225%_)))
                                     (_%hd139196139228%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e139195139225%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl139197139230%_))
                                     (_%__kont147272147273%_)
                                     (_%__kont147274147275%_))))
                             (_%__kont147274147275%_))
                         (_%__kont147274147275%_)))
                 (_%__kont147274147275%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont147274147275%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest139159139167%_))
                                     (let ((_%hd139164139264%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest139159139167%_)))
                                           (_%tl139165139266%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest139159139167%_))))
                                       (let* ((_%e139269%_ _%hd139164139264%_)
                                              (_%rest139271%_
                                               _%tl139165139266%_))
                                         (_%K139163139261%_
                                          _%rest139271%_
                                          _%e139269%_)))
                                     (_%else139161139175%_))))))
                       _%hd139077139123%_
                       _%hd139074139115%_
                       _%hd139071139107%_
                       _%hd139068139099%_)
                      (_%g139058139083%_ _%g139059139086%_))))
              (_%g139058139083%_ _%g139059139086%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139058139083%_
                                               _%g139059139086%_))))
                                      (_%g139058139083%_ _%g139059139086%_))))
                              (_%g139058139083%_ _%g139059139086%_))))
                      (_%g139058139083%_ _%g139059139086%_)))))
          (_%g139057139273%_ _%stx139056%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self138894%_ _%stx138895%_)
        (letrec ((_%import-set-template138897%_
                  (lambda (_%in139000%_ _%phi139001%_)
                    (let ((_%iphi139003%_
                           (fx+ _%phi139001%_
                                (##direct-structure-ref
                                 _%in139000%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports139004%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in139000%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp139006%_ ((_%rest139008%_ _%imports139004%_)
                                         (_%r139009%_ '()))
                        (let* ((_%rest139010139018%_ _%rest139008%_)
                               (_%else139012139026%_ (lambda () _%r139009%_))
                               (_%K139014139043%_
                                (lambda (_%rest139029%_ _%in139030%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in139030%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi139003%_))
                                          (_%lp139006%_
                                           _%rest139029%_
                                           (cons _%in139030%_ _%r139009%_))
                                          (_%lp139006%_
                                           _%rest139029%_
                                           _%r139009%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in139030%_
                                             'gx#module-import::t))
                                          (let ((_%iphi139034%_
                                                 (fx+ _%phi139001%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in139030%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi139034%_))
                                                (_%lp139006%_
                                                 _%rest139029%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in139030%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r139009%_))
                                                (_%lp139006%_
                                                 _%rest139029%_
                                                 _%r139009%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in139030%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi139037%_
                                                     (fx+ _%iphi139003%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in139030%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi139037%_))
                                                    (_%lp139006%_
                                                     _%rest139029%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in139030%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r139009%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi139037%_))
                                                        (_%lp139006%_
                                                         _%rest139029%_
                                                         (let ((__tmp147589
                                                                (_%import-set-template138897%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in139030%_
                         _%iphi139003%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r139009%_ __tmp147589)))
                (_%lp139006%_ _%rest139029%_ _%r139009%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp139006%_
                                               _%rest139029%_
                                               _%r139009%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest139010139018%_))
                              (let ((_%hd139015139046%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest139010139018%_)))
                                    (_%tl139016139048%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest139010139018%_))))
                                (let* ((_%in139051%_ _%hd139015139046%_)
                                       (_%rest139053%_ _%tl139016139048%_))
                                  (_%K139014139043%_
                                   _%rest139053%_
                                   _%in139051%_)))
                              (_%else139012139026%_))))))))
          (let* ((_%g138899138909%_
                  (lambda (_%g138900138906%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138900138906%_))))
                 (_%g138898138997%_
                  (lambda (_%g138900138912%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138900138912%_))
                        (let ((_%e138902138914%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138900138912%_))))
                          (let ((_%hd138903138917%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138902138914%_)))
                                (_%tl138904138919%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138902138914%_))))
                            ((lambda (_%L138922%_)
                               (let ((_%ht138933%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp138935%_ ((_%rest138937%_
                                                     _%L138922%_)
                                                    (_%loads138938%_ '()))
                                   (letrec ((_%K138940%_
                                             (lambda (_%ctx138990%_
                                                      _%rest138991%_)
                                               (let ((_%id138993%_
                                                      (##structure-ref
                                                       _%ctx138990%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht138933%_
                                                        _%id138993%_))
                                                     (_%lp138935%_
                                                      _%rest138991%_
                                                      _%loads138938%_)
                                                     (let ((_%rt138995%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id138993%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht138933%_
                                                          _%id138993%_
                                                          _%rt138995%_))
                                                       (_%lp138935%_
                                                        _%rest138991%_
                                                        (cons _%rt138995%_
                                                              _%loads138938%_))))))))
                                     (let* ((_%rest138941138949%_
                                             _%rest138937%_)
                                            (_%else138943138961%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp147591
                                                            (lambda (_%g138956138958%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g138956138958%_)))
                   (__tmp147590 (reverse _%loads138938%_)))
               (declare (not safe))
               (##map __tmp147591 __tmp147590)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K138945138978%_
                                             (lambda (_%rest138964%_
                                                      _%in138965%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in138965%_
                                                      'gx#module-context::t))
                                                   (_%K138940%_
                                                    _%in138965%_
                                                    _%rest138964%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in138965%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in138965%_
                               '3
                               '#f
                               '#f)))
                   (_%K138940%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in138965%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest138964%_)
                   (_%lp138935%_ _%rest138964%_ _%loads138938%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in138965%_
                      'gx#import-set::t))
                   (let ((_%phi138970%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in138965%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi138970%_)
                         (_%K138940%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in138965%_
                             '1
                             '#f
                             '#f))
                          _%rest138964%_)
                         (if (fxpositive? _%phi138970%_)
                             (let ((_%deps138974%_
                                    (_%import-set-template138897%_
                                     _%in138965%_
                                     '0)))
                               (_%lp138935%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest138964%_
                                   _%deps138974%_))
                                _%loads138938%_))
                             (_%lp138935%_ _%rest138964%_ _%loads138938%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx138895%_
                      _%in138965%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest138941138949%_))
                                           (let ((_%hd138946138981%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest138941138949%_)))
                                                 (_%tl138947138983%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest138941138949%_))))
                                             (let* ((_%in138986%_
                                                     _%hd138946138981%_)
                                                    (_%rest138988%_
                                                     _%tl138947138983%_))
                                               (_%K138945138978%_
                                                _%rest138988%_
                                                _%in138986%_)))
                                           (_%else138943138961%_)))))))
                             _%tl138904138919%_)))
                        (_%g138899138909%_ _%g138900138912%_)))))
            (_%g138898138997%_ _%stx138895%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self138707%_ _%stx138708%_)
        (letrec ((_%add-lift!138710%_
                  (lambda (_%expr138892%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr138892%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote138711%_
                  (lambda (_%id138889%_ _%marks138890%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id138889%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks138890%_
                                                        '()))))))))
                 (_%generate-simple138712%_
                  (lambda (_%stxq138884%_)
                    (let ((_%gid138886%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid138887%_
                           (gxc#generate-runtime-identifier _%stxq138884%_)))
                      (_%add-lift!138710%_
                       (cons 'define
                             (cons _%gid138886%_
                                   (cons (_%generate-syntax-quote138711%_
                                          _%qid138887%_
                                          ''())
                                         '()))))
                      (let ((__tmp147592
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp147592 _%stxq138884%_ _%gid138886%_))
                      _%gid138886%_)))
                 (_%generate-serialized138713%_
                  (lambda (_%stxq138874%_ _%marks138875%_)
                    (let* ((_%mark-refs138877%_
                            (map _%generate-mark138714%_ _%marks138875%_))
                           (_%gid138879%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid138881%_
                            (gxc#generate-runtime-identifier _%stxq138874%_)))
                      (_%add-lift!138710%_
                       (cons 'define
                             (cons _%gid138879%_
                                   (cons (_%generate-syntax-quote138711%_
                                          _%qid138881%_
                                          (cons 'list _%mark-refs138877%_))
                                         '()))))
                      (let ((__tmp147593
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp147593 _%stxq138874%_ _%gid138879%_))
                      _%gid138879%_)))
                 (_%generate-mark138714%_
                  (lambda (_%mark138859%_)
                    (let ((_%$e138861%_
                           (let ((__tmp147594
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp147594 _%mark138859%_))))
                      (if _%$e138861%_
                          _%$e138861%_
                          (let* ((_%gid138865%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr138867%_
                                  (_%serialize-mark138715%_ _%mark138859%_))
                                 (_%ctx138869%_
                                  (let ((__tmp147595
                                         (##structure-ref
                                          _%mark138859%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp147595)))
                                 (_%ctx-ref138871%_
                                  (if (eq? _%ctx138869%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref138716%_
                                                               _%ctx138869%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp147596
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp147596
                               _%mark138859%_
                               _%gid138865%_))
                            (_%add-lift!138710%_
                             (cons 'define
                                   (cons _%gid138865%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr138867%_ '()))
                   (cons _%ctx-ref138871%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid138865%_)))))
                 (_%serialize-mark138715%_
                  (lambda (_%mark138806%_)
                    (letrec ((_%quote-e138808%_
                              (lambda (_%sym138857%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym138857%_))
                                    _%sym138857%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym138857%_))))))
                      (let* ((_%mark138809138818%_ _%mark138806%_)
                             (_%E138811138822%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark138809138818%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K138812138834%_
                              (lambda (_%trace138825%_
                                       _%phi138826%_
                                       _%ctx138827%_
                                       _%subst138828%_)
                                (let ((_%subs138830%_
                                       (if _%subst138828%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst138828%_))
                                           '())))
                                  (cons _%phi138826%_
                                        (map (lambda (_%pair138832%_)
                                               (cons (_%quote-e138808%_
                                                      (car _%pair138832%_))
                                                     (_%quote-e138808%_
                                                      (cdr _%pair138832%_))))
                                             _%subs138830%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark138809138818%_
                               'gx#expander-mark::t))
                            (let* ((_%e138813138837%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138809138818%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst138840%_ _%e138813138837%_)
                                   (_%e138814138842%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138809138818%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx138845%_ _%e138814138842%_)
                                   (_%e138815138847%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138809138818%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi138850%_ _%e138815138847%_)
                                   (_%e138816138852%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138809138818%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace138855%_ _%e138816138852%_))
                              (_%K138812138834%_
                               _%trace138855%_
                               _%phi138850%_
                               _%ctx138845%_
                               _%subst138840%_))
                            (_%E138811138822%_))))))
                 (_%context-ref138716%_
                  (lambda (_%ctx138793%_)
                    (if (let ((__tmp147597
                               (##structure-ref
                                _%ctx138793%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp147597
                           'gx#module-context::t))
                        (let ((_%ctx-ref138795%_
                               (_%context-ref-nested138718%_ _%ctx138793%_))
                              (_%ctx-origin138796%_
                               (_%context-ref-origin138717%_ _%ctx138793%_))
                              (_%origin138797%_
                               (_%context-ref-origin138717%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin138797%_ _%ctx-origin138796%_)
                              (let ((_%ref138799%_
                                     (_%context-ref-nested138718%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp138801%_ ((_%ref138803%_
                                                    (cdr _%ref138799%_))
                                                   (_%ctx-ref138804%_
                                                    (cdr _%ctx-ref138795%_)))
                                  (if (and (pair? _%ref138803%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref138803%_))
                                                (car _%ctx-ref138804%_)))
                                      (_%lp138801%_
                                       (cdr _%ref138803%_)
                                       (cdr _%ctx-ref138804%_))
                                      (cons '#f _%ctx-ref138804%_))))
                              _%ctx-ref138795%_))
                        (let ((__tmp147598
                               (##structure-ref
                                _%ctx138793%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp147598)))))
                 (_%context-ref-origin138717%_
                  (lambda (_%ctx138785%_)
                    (let _%lp138787%_ ((_%ctx138789%_ _%ctx138785%_))
                      (let ((_%super138791%_
                             (##structure-ref
                              _%ctx138789%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super138791%_
                               'gx#module-context::t))
                            (_%lp138787%_ _%super138791%_)
                            _%ctx138789%_)))))
                 (_%context-ref-nested138718%_
                  (lambda (_%ctx138776%_)
                    (let _%lp138778%_ ((_%ctx138780%_ _%ctx138776%_)
                                       (_%r138781%_ '()))
                      (let ((_%super138783%_
                             (##structure-ref
                              _%ctx138780%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super138783%_
                               'gx#module-context::t))
                            (_%lp138778%_
                             _%super138783%_
                             (cons (car (##structure-ref
                                         _%ctx138780%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r138781%_))
                            (cons (let ((__tmp147599
                                         (##structure-ref
                                          _%ctx138780%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp147599))
                                  _%r138781%_)))))))
          (let* ((_%g138720138733%_
                  (lambda (_%g138721138730%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138721138730%_))))
                 (_%g138719138773%_
                  (lambda (_%g138721138736%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138721138736%_))
                        (let ((_%e138723138738%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138721138736%_))))
                          (let ((_%hd138724138741%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138723138738%_)))
                                (_%tl138725138743%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138723138738%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138725138743%_))
                                (let ((_%e138726138746%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138725138743%_))))
                                  (let ((_%hd138727138749%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138726138746%_)))
                                        (_%tl138728138751%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138726138746%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138728138751%_))
                                        ((lambda (_%L138754%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L138754%_))
                                               (let ((_%$e138767%_
                                                      (let ((__tmp147600
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp147600 _%L138754%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e138767%_
                                                     _%$e138767%_
                                                     (let ((_%marks138771%_
                                                            (##direct-structure-ref
                                                             _%L138754%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks138771%_)
                                                           (_%generate-simple138712%_
                                                            _%L138754%_)
                                                           (_%generate-serialized138713%_
                                                            _%L138754%_
                                                            _%marks138771%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L138754%_))))
                                         _%hd138727138749%_)
                                        (_%g138720138733%_
                                         _%g138721138736%_))))
                                (_%g138720138733%_ _%g138721138736%_))))
                        (_%g138720138733%_ _%g138721138736%_)))))
            (_%g138719138773%_ _%stx138708%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self138639%_ _%stx138640%_)
        (let* ((_%g138642138659%_
                (lambda (_%g138643138656%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138643138656%_))))
               (_%g138641138704%_
                (lambda (_%g138643138662%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138643138662%_))
                      (let ((_%e138646138664%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138643138662%_))))
                        (let ((_%hd138647138667%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138646138664%_)))
                              (_%tl138648138669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138646138664%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138648138669%_))
                              (let ((_%e138649138672%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138648138669%_))))
                                (let ((_%hd138650138675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138649138672%_)))
                                      (_%tl138651138677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138649138672%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138651138677%_))
                                      (let ((_%e138652138680%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138651138677%_))))
                                        (let ((_%hd138653138683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138652138680%_)))
                                              (_%tl138654138685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138652138680%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138654138685%_))
                                              ((lambda (_%L138688%_
                                                        _%L138689%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L138689%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self138639%_ _%L138688%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138653138683%_
                                               _%hd138650138675%_)
                                              (_%g138642138659%_
                                               _%g138643138662%_))))
                                      (_%g138642138659%_ _%g138643138662%_))))
                              (_%g138642138659%_ _%g138643138662%_))))
                      (_%g138642138659%_ _%g138643138662%_)))))
          (_%g138641138704%_ _%stx138640%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self138588%_ _%stx138589%_)
        (let* ((_%g138591138601%_
                (lambda (_%g138592138598%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138592138598%_))))
               (_%g138590138636%_
                (lambda (_%g138592138604%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138592138604%_))
                      (let ((_%e138594138606%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138592138604%_))))
                        (let ((_%hd138595138609%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138594138606%_)))
                              (_%tl138596138611%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138594138606%_))))
                          ((lambda (_%L138614%_)
                             (let* ((_%c-body138628%_
                                     (map (lambda (_%g138623138625%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self138588%_
                                               _%g138623138625%_)))
                                          _%L138614%_))
                                    (_%c-body138633%_
                                     (let ((__tmp147601
                                            (lambda (_%$obj138630%_)
                                              (not (eq? _%$obj138630%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp147601
                                        _%c-body138628%_))))
                               (cons '%#begin _%c-body138633%_)))
                           _%tl138596138611%_)))
                      (_%g138591138601%_ _%g138592138604%_)))))
          (_%g138590138636%_ _%stx138589%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self138493%_ _%stx138494%_)
        (let* ((_%g138496138506%_
                (lambda (_%g138497138503%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138497138503%_))))
               (_%g138495138585%_
                (lambda (_%g138497138509%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138497138509%_))
                      (let ((_%e138499138511%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138497138509%_))))
                        (let ((_%hd138500138514%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138499138511%_)))
                              (_%tl138501138516%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138499138511%_))))
                          ((lambda (_%L138519%_)
                             (let* ((_%phi138529%_
                                     (let ((__tmp147602
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp147602 '1)))
                                    (_%block138531%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self138493%_ 'state))
                                      _%phi138529%_))
                                    (_%compiled138534%_
                                     (let ((__tmp147603
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self138493%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L138519%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp147603
                                        gx#current-expander-phi
                                        _%phi138529%_)))
                                    (_%g138537138547%_
                                     (lambda (_%g138538138544%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g138538138544%_))))
                                    (_%g138536138582%_
                                     (lambda (_%g138538138550%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g138538138550%_))
                                           (let ((_%e138540138552%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g138538138550%_))))
                                             (let ((_%hd138541138555%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e138540138552%_)))
                                                   (_%tl138542138557%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e138540138552%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd138541138555%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd138541138555%_))
                                                       ((lambda (_%L138560%_)
                                                          (let ((_%c-body138577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj138574%_)
                                   (not (eq? _%$obj138574%_ '#!void)))
                                 _%L138560%_)))
                    (if _%block138531%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block138531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body138577%_))
                        (if (null? _%c-body138577%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body138577%_)))))
                _%tl138542138557%_)
               (_%g138537138547%_ _%g138538138550%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g138537138547%_
                                                    _%g138538138550%_))))
                                           (_%g138537138547%_
                                            _%g138538138550%_)))))
                               (_%g138536138582%_ _%compiled138534%_)))
                           _%tl138501138516%_)))
                      (_%g138496138506%_ _%g138497138509%_)))))
          (_%g138495138585%_ _%stx138494%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self138424%_ _%stx138425%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self138424%_ 'state)))
        (let* ((_%g138427138441%_
                (lambda (_%g138428138438%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138428138438%_))))
               (_%g138426138490%_
                (lambda (_%g138428138444%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138428138444%_))
                      (let ((_%e138431138446%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138428138444%_))))
                        (let ((_%hd138432138449%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138431138446%_)))
                              (_%tl138433138451%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138431138446%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138433138451%_))
                              (let ((_%e138434138454%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138433138451%_))))
                                (let ((_%hd138435138457%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138434138454%_)))
                                      (_%tl138436138459%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138434138454%_))))
                                  ((lambda (_%L138462%_ _%L138463%_)
                                     (let ((_%key138476%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L138463%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key138476%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx138425%_
                                              _%L138463%_
                                              _%key138476%_)))
                                       (let* ((_%ctx138478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L138463%_)))
                                              (_%code138481%_
                                               (let ((__tmp147604
                                                      (lambda ()
                                                        (let ((__tmp147605
                                                               (##structure-ref
                                                                _%ctx138478%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self138424%_
                                                           __tmp147605)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp147604
                                                  gx#current-expander-context
                                                  _%ctx138478%_)))
                                              (_%rt138483%_
                                               (let ((__tmp147606
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp147606
                                                  _%ctx138478%_)))
                                              (_%loader138485%_
                                               (if _%rt138483%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt138483%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid138487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L138463%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self138424%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid138487%_
                                                     (cons _%code138481%_
                                                           _%loader138485%_))))))
                                   _%tl138436138459%_
                                   _%hd138435138457%_)))
                              (_%g138427138441%_ _%g138428138444%_))))
                      (_%g138427138441%_ _%g138428138444%_)))))
          (_%g138426138490%_ _%stx138425%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx138411%_ _%context-chain138412%_)
        (let _%lp138414%_ ((_%ctx138416%_ _%ctx138411%_) (_%path138417%_ '()))
          (let ((_%super138419%_
                 (##structure-ref _%ctx138416%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super138419%_ _%context-chain138412%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx138416%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path138417%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super138419%_
                       'gx#module-context::t))
                    (_%lp138414%_
                     _%super138419%_
                     (cons (car (##structure-ref
                                 _%ctx138416%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path138417%_))
                    (cons (let ((__tmp147607
                                 (##structure-ref
                                  _%ctx138416%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp147607))
                          _%path138417%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp138404%_ ((_%ctx138406%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r138407%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx138406%_ 'gx#module-context::t))
              (_%lp138404%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx138406%_ '3 '#f '#f))
               (cons _%ctx138406%_ _%r138407%_))
              _%r138407%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self138167%_ _%stx138168%_)
        (letrec* ((_%context-chain138170%_ (gxc#current-context-chain))
                  (_%make-import-spec138171%_
                   (lambda (_%in138340%_)
                     (let* ((_%in138341138353%_ _%in138340%_)
                            (_%E138343138357%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in138341138353%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K138344138367%_
                             (lambda (_%phi138360%_
                                      _%name138361%_
                                      _%src-name138362%_
                                      _%src-phi138363%_
                                      _%src-key138364%_
                                      _%src-ctx138365%_)
                               (cons _%phi138360%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name138361%_)
                                           (cons _%src-phi138363%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name138362%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in138341138353%_
                              'gx#module-import::t))
                           (let ((_%e138345138370%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in138341138353%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e138345138370%_
                                    'gx#module-export::t))
                                 (let* ((_%e138348138373%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e138345138370%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx138376%_ _%e138348138373%_)
                                        (_%e138349138378%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e138345138370%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key138381%_ _%e138349138378%_)
                                        (_%e138350138383%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e138345138370%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi138386%_ _%e138350138383%_)
                                        (_%e138351138388%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e138345138370%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name138391%_ _%e138351138388%_)
                                        (_%e138346138393%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in138341138353%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name138396%_ _%e138346138393%_)
                                        (_%e138347138398%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in138341138353%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi138401%_ _%e138347138398%_))
                                   (_%K138344138367%_
                                    _%phi138401%_
                                    _%name138396%_
                                    _%src-name138391%_
                                    _%src-phi138386%_
                                    _%src-key138381%_
                                    _%src-ctx138376%_))
                                 (_%E138343138357%_)))
                           (_%E138343138357%_)))))
                  (_%make-import-path138172%_
                   (lambda (_%ctx138338%_)
                     (gxc#generate-meta-import-path
                      _%ctx138338%_
                      _%context-chain138170%_)))
                  (_%make-import-spec-in138173%_
                   (lambda (_%ctx138335%_ _%in138336%_)
                     (cons 'spec:
                           (cons (_%make-import-path138172%_ _%ctx138335%_)
                                 (reverse _%in138336%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self138167%_ 'state)))
          (let* ((_%g138175138185%_
                  (lambda (_%g138176138182%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138176138182%_))))
                 (_%g138174138332%_
                  (lambda (_%g138176138188%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138176138188%_))
                        (let ((_%e138178138190%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138176138188%_))))
                          (let ((_%hd138179138193%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138178138190%_)))
                                (_%tl138180138195%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138178138190%_))))
                            ((lambda (_%L138198%_)
                               (let _%lp138209%_ ((_%rest138211%_ _%L138198%_)
                                                  (_%current-src138212%_ '#f)
                                                  (_%current-in138213%_ '())
                                                  (_%r138214%_ '()))
                                 (let* ((_%rest138215138223%_ _%rest138211%_)
                                        (_%else138217138233%_
                                         (lambda ()
                                           (let ((_%r138231%_
                                                  (if _%current-src138212%_
                                                      (cons (_%make-import-spec-in138173%_
                                                             _%current-src138212%_
                                                             _%current-in138213%_)
                                                            _%r138214%_)
                                                      _%r138214%_)))
                                             (cons '%#import
                                                   (reverse _%r138231%_)))))
                                        (_%K138219138320%_
                                         (lambda (_%rest138236%_ _%in138237%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in138237%_
                                                  'gx#module-import::t))
                                               (let* ((_%in138239138246%_
                                                       _%in138237%_)
                                                      (_%E138241138250%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in138239138246%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K138242138258%_
               (lambda (_%src-ctx138253%_)
                 (if (eq? _%current-src138212%_ _%src-ctx138253%_)
                     (_%lp138209%_
                      _%rest138236%_
                      _%current-src138212%_
                      (cons (_%make-import-spec138171%_ _%in138237%_)
                            _%current-in138213%_)
                      _%r138214%_)
                     (if _%current-src138212%_
                         (_%lp138209%_
                          _%rest138236%_
                          _%src-ctx138253%_
                          (cons (_%make-import-spec138171%_ _%in138237%_) '())
                          (cons (_%make-import-spec-in138173%_
                                 _%current-src138212%_
                                 _%current-in138213%_)
                                _%r138214%_))
                         (_%lp138209%_
                          _%rest138236%_
                          _%src-ctx138253%_
                          (cons (_%make-import-spec138171%_ _%in138237%_) '())
                          _%r138214%_)))))
              (_%e138243138261%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in138239138246%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e138243138261%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e138244138264%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e138243138261%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx138267%_ _%e138244138264%_))
               (_%K138242138258%_ _%src-ctx138267%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E138241138250%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in138237%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi138270%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in138237%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src138272%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in138237%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in138312%_
                                                           (let* ((_%g138273138282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path138172%_ _%src138272%_))
                          (_%E138276138286%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g138273138282%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K138278138302%_
                            (lambda (_%path138300%_) _%path138300%_))
                           (_%K138277138292%_
                            (lambda (_%path138290%_)
                              (cons 'in: _%path138290%_))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g138273138282%_))
                           (let ((_%tl138280138307%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g138273138282%_)))
                                 (_%hd138279138305%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g138273138282%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tl138280138307%_))
                                 (let ((_%path138310%_ _%hd138279138305%_))
                                   (_%K138278138302%_ _%path138310%_))
                                 (let ((_%path138295%_ _%g138273138282%_))
                                   (_%K138277138292%_ _%path138295%_))))
                           (let ((_%path138295%_ _%g138273138282%_))
                             (_%K138277138292%_ _%path138295%_))))))
                  (_%r138314%_
                   (if _%current-src138212%_
                       (cons (_%make-import-spec-in138173%_
                              _%current-src138212%_
                              _%current-in138213%_)
                             _%r138214%_)
                       _%r138214%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp138209%_
                                                      _%rest138236%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi138270%_)
                                                                _%src-in138312%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi138270%_
                                    (cons _%src-in138312%_ '()))))
                    _%r138314%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in138237%_
                                                          'gx#module-context::t))
                                                       (let ((_%r138318%_
                                                              (if _%current-src138212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in138173%_
                                 _%current-src138212%_
                                 _%current-in138213%_)
                                _%r138214%_)
                          _%r138214%_)))
                 (_%lp138209%_
                  _%rest138236%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path138172%_ _%in138237%_))
                        _%r138318%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest138215138223%_))
                                       (let ((_%hd138220138323%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest138215138223%_)))
                                             (_%tl138221138325%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest138215138223%_))))
                                         (let* ((_%in138328%_
                                                 _%hd138220138323%_)
                                                (_%rest138330%_
                                                 _%tl138221138325%_))
                                           (_%K138219138320%_
                                            _%rest138330%_
                                            _%in138328%_)))
                                       (_%else138217138233%_)))))
                             _%tl138180138195%_)))
                        (_%g138175138185%_ _%g138176138188%_)))))
            (_%g138174138332%_ _%stx138168%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self137977%_ _%stx137978%_)
        (letrec* ((_%context-chain137980%_ (gxc#current-context-chain))
                  (_%make-import-path137981%_
                   (lambda (_%ctx138165%_)
                     (gxc#generate-meta-import-path
                      _%ctx138165%_
                      _%context-chain137980%_))))
          (let* ((_%g137983137993%_
                  (lambda (_%g137984137990%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137984137990%_))))
                 (_%g137982138162%_
                  (lambda (_%g137984137996%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137984137996%_))
                        (let ((_%e137986137998%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137984137996%_))))
                          (let ((_%hd137987138001%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137986137998%_)))
                                (_%tl137988138003%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137986137998%_))))
                            ((lambda (_%L138006%_)
                               (let _%lp138017%_ ((_%rest138019%_ _%L138006%_)
                                                  (_%r138020%_ '()))
                                 (let* ((_%rest138021138029%_ _%rest138019%_)
                                        (_%else138023138037%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r138020%_))))
                                        (_%K138025138150%_
                                         (lambda (_%rest138040%_ _%out138041%_)
                                           (let* ((_%out138042138055%_
                                                   _%out138041%_)
                                                  (_%E138045138059%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out138042138055%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K138049138129%_
                                                    (lambda (_%name138125%_
                                                             _%phi138126%_
                                                             _%key138127%_)
                                                      (_%lp138017%_
                                                       _%rest138040%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi138126%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key138127%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name138125%_)
                                             '()))))
                     _%r138020%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K138046138109%_
                                                    (lambda (_%phi138063%_
                                                             _%src138064%_)
                                                      (let* ((_%out138104%_
                                                              (if _%src138064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g138065138074%_
                                              (_%make-import-path137981%_
                                               _%src138064%_))
                                             (_%E138068138078%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g138065138074%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K138070138094%_
                                               (lambda (_%path138092%_)
                                                 _%path138092%_))
                                              (_%K138069138084%_
                                               (lambda (_%path138082%_)
                                                 (cons 'in: _%path138082%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g138065138074%_))
                                              (let ((_%tl138072138099%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g138065138074%_)))
                                                    (_%hd138071138097%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g138065138074%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl138072138099%_))
                                                    (let ((_%path138102%_
                                                           _%hd138071138097%_))
                                                      (_%K138070138094%_
                                                       _%path138102%_))
                                                    (let ((_%path138087%_
                                                           _%g138065138074%_))
                                                      (_%K138069138084%_
                                                       _%path138087%_))))
                                              (let ((_%path138087%_
                                                     _%g138065138074%_))
                                                (_%K138069138084%_
                                                 _%path138087%_)))))
                                      '()))
                          '#t))
                     (_%out138106%_
                      (if (fxzero? _%phi138063%_)
                          _%out138104%_
                          (cons 'phi:
                                (cons _%phi138063%_
                                      (cons _%out138104%_ '()))))))
                (_%lp138017%_
                 _%rest138040%_
                 (cons _%out138106%_ _%r138020%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match138044138122%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out138042138055%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e138047138112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out138042138055%_
                               '1
                               '#f
                               '#f)))
                           (_%e138048138117%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out138042138055%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src138115%_ _%e138047138112%_)
                            (_%phi138120%_ _%e138048138117%_))
                        (_%K138046138109%_ _%phi138120%_ _%src138115%_)))
                    (_%E138045138059%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out138042138055%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e138050138132%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out138042138055%_
                        '1
                        '#f
                        '#f)))
                    (_%e138051138135%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out138042138055%_
                        '2
                        '#f
                        '#f)))
                    (_%e138052138140%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out138042138055%_
                        '3
                        '#f
                        '#f)))
                    (_%e138053138145%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out138042138055%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key138138%_ _%e138051138135%_)
                     (_%phi138143%_ _%e138052138140%_)
                     (_%name138148%_ _%e138053138145%_))
                 (_%K138049138129%_
                  _%name138148%_
                  _%phi138143%_
                  _%key138138%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match138044138122%_))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest138021138029%_))
                                       (let ((_%hd138026138153%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest138021138029%_)))
                                             (_%tl138027138155%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest138021138029%_))))
                                         (let* ((_%out138158%_
                                                 _%hd138026138153%_)
                                                (_%rest138160%_
                                                 _%tl138027138155%_))
                                           (_%K138025138150%_
                                            _%rest138160%_
                                            _%out138158%_)))
                                       (_%else138023138037%_)))))
                             _%tl137988138003%_)))
                        (_%g137983137993%_ _%g137984137996%_)))))
            (_%g137982138162%_ _%stx137978%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self137938%_ _%stx137939%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self137938%_ 'state)))
        (let* ((_%g137941137951%_
                (lambda (_%g137942137948%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137942137948%_))))
               (_%g137940137974%_
                (lambda (_%g137942137954%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137942137954%_))
                      (let ((_%e137944137956%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137942137954%_))))
                        (let ((_%hd137945137959%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137944137956%_)))
                              (_%tl137946137961%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137944137956%_))))
                          ((lambda (_%L137964%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L137964%_)))
                           _%tl137946137961%_)))
                      (_%g137941137951%_ _%g137942137954%_)))))
          (_%g137940137974%_ _%stx137939%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self137809%_ _%stx137810%_)
        (letrec ((_%generate1137812%_
                  (lambda (_%id137933%_ _%eid137934%_)
                    (let ((_%eid137936%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid137934%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid137936%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx137810%_
                             _%eid137936%_)))
                      (cons (gxc#generate-runtime-identifier _%id137933%_)
                            (cons _%eid137936%_ '()))))))
          (let* ((_%g137814137842%_
                  (lambda (_%g137815137839%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137815137839%_))))
                 (_%g137813137930%_
                  (lambda (_%g137815137845%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137815137845%_))
                        (let ((_%e137818137847%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137815137845%_))))
                          (let ((_%hd137819137850%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137818137847%_)))
                                (_%tl137820137852%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137818137847%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl137820137852%_))
                                (let ((_g147608_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl137820137852%_
                                          '0))))
                                  (begin
                                    (let ((_g147609_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g147608_)
                                                 (##vector-length _g147608_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g147609_ 2)))
                                          (error "Context expects 2 values"
                                                 _g147609_)))
                                    (let ((_%target137821137855%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147608_ 0)))
                                          (_%tl137823137857%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147608_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl137823137857%_))
                                          (letrec ((_%loop137824137860%_
                                                    (lambda (_%hd137822137863%_
                                                             _%eid137828137865%_
                                                             _%id137829137867%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd137822137863%_))
                                                          (let ((_%e137825137870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd137822137863%_))))
                    (let ((_%lp-hd137826137873%_
                           (let ()
                             (declare (not safe))
                             (##car _%e137825137870%_)))
                          (_%lp-tl137827137875%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e137825137870%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd137826137873%_))
                          (let ((_%e137832137878%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd137826137873%_))))
                            (let ((_%hd137833137881%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e137832137878%_)))
                                  (_%tl137834137883%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e137832137878%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl137834137883%_))
                                  (let ((_%e137835137886%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl137834137883%_))))
                                    (let ((_%hd137836137889%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e137835137886%_)))
                                          (_%tl137837137891%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e137835137886%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl137837137891%_))
                                          (_%loop137824137860%_
                                           _%lp-tl137827137875%_
                                           (cons _%hd137836137889%_
                                                 _%eid137828137865%_)
                                           (cons _%hd137833137881%_
                                                 _%id137829137867%_))
                                          (_%g137814137842%_
                                           _%g137815137845%_))))
                                  (_%g137814137842%_ _%g137815137845%_))))
                          (_%g137814137842%_ _%g137815137845%_))))
                  (let ((_%eid137830137894%_ (reverse _%eid137828137865%_))
                        (_%id137831137896%_ (reverse _%id137829137867%_)))
                    ((lambda (_%L137899%_ _%L137900%_)
                       (cons '%#extern
                             (map _%generate1137812%_
                                  (let ((__tmp147610
                                         (lambda (_%g137915137918%_
                                                  _%g137916137920%_)
                                           (cons _%g137915137918%_
                                                 _%g137916137920%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp147610 '() _%L137900%_))
                                  (let ((__tmp147611
                                         (lambda (_%g137922137925%_
                                                  _%g137923137927%_)
                                           (cons _%g137922137925%_
                                                 _%g137923137927%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp147611 '() _%L137899%_)))))
                     _%eid137830137894%_
                     _%id137831137896%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop137824137860%_
                                             _%target137821137855%_
                                             '()
                                             '()))
                                          (_%g137814137842%_
                                           _%g137815137845%_)))))
                                (_%g137814137842%_ _%g137815137845%_))))
                        (_%g137814137842%_ _%g137815137845%_)))))
            (_%g137813137930%_ _%stx137810%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self137599%_ _%stx137600%_)
        (letrec ((_%generate1137602%_
                  (lambda (_%id137804%_)
                    (let ((_%eid137806%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id137804%_)))
                          (_%ident137807%_
                           (gxc#generate-runtime-identifier _%id137804%_)))
                      (cons '%#define-runtime
                            (cons _%ident137807%_ (cons _%eid137806%_ '()))))))
                 (_%generate*137603%_
                  (lambda (_%all137772%_)
                    (let* ((_%all137773137781%_ _%all137772%_)
                           (_%else137775137789%_
                            (lambda () (cons '%#begin _%all137772%_)))
                           (_%K137777137794%_
                            (lambda (_%one137792%_) _%one137792%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all137773137781%_))
                          (let ((_%hd137778137797%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all137773137781%_)))
                                (_%tl137779137799%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all137773137781%_))))
                            (let ((_%one137802%_ _%hd137778137797%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl137779137799%_))
                                  (_%K137777137794%_ _%one137802%_)
                                  (_%else137775137789%_))))
                          (_%else137775137789%_))))))
          (let* ((_%g137605137622%_
                  (lambda (_%g137606137619%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137606137619%_))))
                 (_%g137604137769%_
                  (lambda (_%g137606137625%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137606137625%_))
                        (let ((_%e137609137627%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137606137625%_))))
                          (let ((_%hd137610137630%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137609137627%_)))
                                (_%tl137611137632%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137609137627%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl137611137632%_))
                                (let ((_%e137612137635%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl137611137632%_))))
                                  (let ((_%hd137613137638%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137612137635%_)))
                                        (_%tl137614137640%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137612137635%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl137614137640%_))
                                        (let ((_%e137615137643%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl137614137640%_))))
                                          (let ((_%hd137616137646%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137615137643%_)))
                                                (_%tl137617137648%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137615137643%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137617137648%_))
                                                ((lambda (_%L137651%_
                                                          _%L137652%_)
                                                   (let _%lp137668%_ ((_%rest137670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L137652%_)
                              (_%r137671%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx147347147348%_
                                                             _%rest137670%_)
                                                            (_%g137676137693%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx147347147348%_)))))
               (let ((_%__kont147349147350%_
                      (lambda (_%L137756%_)
                        (_%lp137668%_ _%L137756%_ _%r137671%_)))
                     (_%__kont147351147352%_
                      (lambda (_%L137729%_ _%L137730%_)
                        (_%lp137668%_
                         _%L137729%_
                         (cons (_%generate1137602%_ _%L137730%_)
                               _%r137671%_))))
                     (_%__kont147353147354%_
                      (lambda (_%L137705%_)
                        (_%generate*137603%_
                         (let ((__tmp147612
                                (cons (_%generate1137602%_ _%L137705%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp147612 _%r137671%_)))))
                     (_%__kont147355147356%_
                      (lambda () (_%generate*137603%_ (reverse _%r137671%_)))))
                 (let ((_%g137674137716%_
                        (lambda ()
                          (let ((_%L137705%_ _%__stx147347147348%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L137705%_))
                                (_%__kont147353147354%_ _%L137705%_)
                                (_%__kont147355147356%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx147347147348%_))
                       (let ((_%e137679137745%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx147347147348%_))))
                         (let ((_%tl137681137750%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e137679137745%_)))
                               (_%hd137680137748%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e137679137745%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd137680137748%_))
                               (let ((_%e137682137753%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd137680137748%_))))
                                 (if (equal? _%e137682137753%_ '#f)
                                     (_%__kont147349147350%_
                                      _%tl137681137750%_)
                                     (_%__kont147351147352%_
                                      _%tl137681137750%_
                                      _%hd137680137748%_)))
                               (_%__kont147351147352%_
                                _%tl137681137750%_
                                _%hd137680137748%_))))
                       (let () (declare (not safe)) (_%g137674137716%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd137616137646%_
                                                 _%hd137613137638%_)
                                                (_%g137605137622%_
                                                 _%g137606137625%_))))
                                        (_%g137605137622%_
                                         _%g137606137625%_))))
                                (_%g137605137622%_ _%g137606137625%_))))
                        (_%g137605137622%_ _%g137606137625%_)))))
            (_%g137604137769%_ _%stx137600%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self137496%_ _%stx137497%_)
        (let* ((_%g137499137516%_
                (lambda (_%g137500137513%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137500137513%_))))
               (_%g137498137596%_
                (lambda (_%g137500137519%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137500137519%_))
                      (let ((_%e137503137521%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137500137519%_))))
                        (let ((_%hd137504137524%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137503137521%_)))
                              (_%tl137505137526%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137503137521%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137505137526%_))
                              (let ((_%e137506137529%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137505137526%_))))
                                (let ((_%hd137507137532%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137506137529%_)))
                                      (_%tl137508137534%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137506137529%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137508137534%_))
                                      (let ((_%e137509137537%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137508137534%_))))
                                        (let ((_%hd137510137540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137509137537%_)))
                                              (_%tl137511137542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137509137537%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137511137542%_))
                                              ((lambda (_%L137545%_
                                                        _%L137546%_)
                                                 (let* ((_%eid137561%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L137546%_)))
                                                        (_%phi137563%_
                                                         (let ((__tmp147613
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp147613 '1)))
                (_%block137565%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self137496%_ 'state))
                  _%phi137563%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g137568137575%_
                                                           (lambda (_%g137569137572%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g137569137572%_))))
                  (_%g137567137593%_
                   (lambda (_%g137569137578%_)
                     ((lambda (_%L137580%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self137496%_ 'state))
                         _%phi137563%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L137580%_ (cons _%L137545%_ '())))))
                      _%g137569137578%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g137567137593%_
                                                      _%eid137561%_))
                                                   (if _%block137565%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block137565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L137546%_)
                                             (cons _%eid137561%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L137546%_)
                           (cons _%eid137561%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137510137540%_
                                               _%hd137507137532%_)
                                              (_%g137499137516%_
                                               _%g137500137519%_))))
                                      (_%g137499137516%_ _%g137500137519%_))))
                              (_%g137499137516%_ _%g137500137519%_))))
                      (_%g137499137516%_ _%g137500137519%_)))))
          (_%g137498137596%_ _%stx137497%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self137428%_ _%stx137429%_)
        (let* ((_%g137431137448%_
                (lambda (_%g137432137445%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137432137445%_))))
               (_%g137430137493%_
                (lambda (_%g137432137451%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137432137451%_))
                      (let ((_%e137435137453%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137432137451%_))))
                        (let ((_%hd137436137456%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137435137453%_)))
                              (_%tl137437137458%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137435137453%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137437137458%_))
                              (let ((_%e137438137461%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137437137458%_))))
                                (let ((_%hd137439137464%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137438137461%_)))
                                      (_%tl137440137466%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137438137461%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137440137466%_))
                                      (let ((_%e137441137469%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137440137466%_))))
                                        (let ((_%hd137442137472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137441137469%_)))
                                              (_%tl137443137474%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137441137469%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137443137474%_))
                                              ((lambda (_%L137477%_
                                                        _%L137478%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L137478%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L137477%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137442137472%_
                                               _%hd137439137464%_)
                                              (_%g137431137448%_
                                               _%g137432137451%_))))
                                      (_%g137431137448%_ _%g137432137451%_))))
                              (_%g137431137448%_ _%g137432137451%_))))
                      (_%g137431137448%_ _%g137432137451%_)))))
          (_%g137430137493%_ _%stx137429%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self137425%_ _%stx137426%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self137425%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx137426%_)
        (gxc#generate-meta-define-values% _%self137425%_ _%stx137426%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self137422%_ _%stx137423%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self137422%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx137423%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp147615 (list)) (__tmp147614 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp147615
         '(src n open blocks)
         __tmp147614
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args137419%_
        (apply make-instance gxc#meta-state::t _%$args137419%_)))
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
      (lambda (_%self136764137403%_ _%ctx137405%_)
        (let* ((_%self137407%_ _%self136764137403%_)
               (_%self137409%_ _%self137407%_))
          (if (let ((__tmp147616
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self137409%_))))
                (declare (not safe))
                (##fx< '4 __tmp147616))
              (begin
                (let ((__tmp147617
                       (let ((__tmp147618
                              (##structure-ref
                               _%ctx137405%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp147618))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self137409%_
                   __tmp147617
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self137409%_ '1 '2 '#f '#f))
                (let ((__tmp147619
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self137409%_
                   __tmp147619
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self137409%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp147620
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self137409%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self137409%_
                       '4
                       __tmp147620))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp147622 (list)) (__tmp147621 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp147622
         '(ctx phi n code)
         __tmp147621
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args137278%_
        (apply make-instance gxc#meta-state-block::t _%$args137278%_)))
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
      (lambda (_%state137237%_ _%phi137238%_)
        (let* ((_%state137239137247%_ _%state137237%_)
               (_%E137241137251%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state137239137247%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K137242137260%_
                (lambda (_%open137254%_ _%n137255%_ _%src137256%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open137254%_ _%phi137238%_))
                      '#f
                      (let ((_%block-ref137258%_
                             (let ((__tmp147623 (number->string _%n137255%_)))
                               (declare (not safe))
                               (##string-append
                                _%src137256%_
                                '"~"
                                __tmp147623))))
                        (##structure-set!
                         _%state137237%_
                         (let () (declare (not safe)) (##fx+ _%n137255%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp147624
                               (let ((__tmp147625
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp147625
                                  _%phi137238%_
                                  _%n137255%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open137254%_ _%phi137238%_ __tmp147624))
                        _%block-ref137258%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state137239137247%_
                 'gxc#meta-state::t))
              (let* ((_%e137243137263%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state137239137247%_
                         '1
                         '#f
                         '#f)))
                     (_%src137266%_ _%e137243137263%_)
                     (_%e137244137268%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state137239137247%_
                         '2
                         '#f
                         '#f)))
                     (_%n137271%_ _%e137244137268%_)
                     (_%e137245137273%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state137239137247%_
                         '3
                         '#f
                         '#f)))
                     (_%open137276%_ _%e137245137273%_))
                (_%K137242137260%_ _%open137276%_ _%n137271%_ _%src137266%_))
              (_%E137241137251%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state137231%_ _%phi137232%_ _%stx137233%_)
        (let ((_%block137235%_
               (let ((__tmp147626
                      (##structure-ref
                       _%state137231%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp147626 _%phi137232%_))))
          (##structure-set!
           _%block137235%_
           (cons _%stx137233%_
                 (##structure-ref
                  _%block137235%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state137225%_)
        (##structure-set!
         _%state137225%_
         (let ((__tmp147629
                (lambda (_%_137227%_ _%block137228%_ _%r137229%_)
                  (cons _%block137228%_ _%r137229%_)))
               (__tmp147628
                (##structure-ref _%state137225%_ '4 gxc#meta-state::t '#f))
               (__tmp147627
                (##structure-ref _%state137225%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp147629 __tmp147628 __tmp147627))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state137225%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state137177%_)
        (gxc#meta-state-end-phi! _%state137177%_)
        (let ((__tmp147631
               (lambda (_%block137179%_ _%r137180%_)
                 (let* ((_%block137181137190%_ _%block137179%_)
                        (_%E137183137194%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block137181137190%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K137184137202%_
                         (lambda (_%code137197%_
                                  _%n137198%_
                                  _%phi137199%_
                                  _%ctx137200%_)
                           (if (null? _%code137197%_)
                               _%r137180%_
                               (cons (cons _%ctx137200%_
                                           (cons _%phi137199%_
                                                 (cons _%n137198%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code137197%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r137180%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block137181137190%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e137185137205%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block137181137190%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx137208%_ _%e137185137205%_)
                              (_%e137186137210%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block137181137190%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi137213%_ _%e137186137210%_)
                              (_%e137187137215%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block137181137190%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n137218%_ _%e137187137215%_)
                              (_%e137188137220%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block137181137190%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code137223%_ _%e137188137220%_))
                         (_%K137184137202%_
                          _%code137223%_
                          _%n137218%_
                          _%phi137213%_
                          _%ctx137208%_))
                       (_%E137183137194%_)))))
              (__tmp147630
               (##structure-ref _%state137177%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp147631 '() __tmp147630))))
    (define gxc#collect-expression-refs
      (lambda (_%stx137173%_)
        (let ((_%ht137175%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht137175%_ _%stx137173%_)
          _%ht137175%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self137116%_ _%stx137117%_)
        (let* ((_%g137119137132%_
                (lambda (_%g137120137129%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137120137129%_))))
               (_%g137118137170%_
                (lambda (_%g137120137135%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137120137135%_))
                      (let ((_%e137122137137%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137120137135%_))))
                        (let ((_%hd137123137140%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137122137137%_)))
                              (_%tl137124137142%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137122137137%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137124137142%_))
                              (let ((_%e137125137145%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137124137142%_))))
                                (let ((_%hd137126137148%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137125137145%_)))
                                      (_%tl137127137150%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137125137145%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl137127137150%_))
                                      ((lambda (_%L137153%_)
                                         (let* ((_%bind137165%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L137153%_)))
                                                (_%eid137167%_
                                                 (if _%bind137165%_
                                                     (##structure-ref
                                                      _%bind137165%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L137153%_))))
                                                (__tmp147632
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self137116%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp147632
                                            _%eid137167%_
                                            _%eid137167%_)))
                                       _%hd137126137148%_)
                                      (_%g137119137132%_ _%g137120137135%_))))
                              (_%g137119137132%_ _%g137120137135%_))))
                      (_%g137119137132%_ _%g137120137135%_)))))
          (_%g137118137170%_ _%stx137117%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self137043%_ _%stx137044%_)
        (let* ((_%g137046137063%_
                (lambda (_%g137047137060%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137047137060%_))))
               (_%g137045137113%_
                (lambda (_%g137047137066%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137047137066%_))
                      (let ((_%e137050137068%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137047137066%_))))
                        (let ((_%hd137051137071%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137050137068%_)))
                              (_%tl137052137073%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137050137068%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137052137073%_))
                              (let ((_%e137053137076%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137052137073%_))))
                                (let ((_%hd137054137079%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137053137076%_)))
                                      (_%tl137055137081%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137053137076%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137055137081%_))
                                      (let ((_%e137056137084%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137055137081%_))))
                                        (let ((_%hd137057137087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137056137084%_)))
                                              (_%tl137058137089%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137056137084%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137058137089%_))
                                              ((lambda (_%L137092%_
                                                        _%L137093%_)
                                                 (let* ((_%bind137108%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L137093%_)))
                                                        (_%eid137110%_
                                                         (if _%bind137108%_
                                                             (##structure-ref
                                                              _%bind137108%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L137093%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp147633
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self137043%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp147633
                                                      _%eid137110%_
                                                      _%eid137110%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self137043%_
                                                      _%L137092%_))))
                                               _%hd137057137087%_
                                               _%hd137054137079%_)
                                              (_%g137046137063%_
                                               _%g137047137066%_))))
                                      (_%g137046137063%_ _%g137047137066%_))))
                              (_%g137046137063%_ _%g137047137066%_))))
                      (_%g137046137063%_ _%g137047137066%_)))))
          (_%g137045137113%_ _%stx137044%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self137000%_ _%stx137001%_)
        (let* ((_%g137003137013%_
                (lambda (_%g137004137010%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137004137010%_))))
               (_%g137002137040%_
                (lambda (_%g137004137016%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137004137016%_))
                      (let ((_%e137006137018%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137004137016%_))))
                        (let ((_%hd137007137021%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137006137018%_)))
                              (_%tl137008137023%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137006137018%_))))
                          ((lambda (_%L137026%_)
                             (let ((__tmp147634
                                    (lambda (_%g137035137037%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self137000%_
                                         _%g137035137037%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp147634 _%L137026%_)))
                           _%tl137008137023%_)))
                      (_%g137003137013%_ _%g137004137016%_)))))
          (_%g137002137040%_ _%stx137001%_))))
    (define gxc#count-values-single%
      (lambda (_%self136997%_ _%stx136998%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self136863%_ _%stx136864%_)
        (let* ((_%__stx147377147378%_ _%stx136864%_)
               (_%g136867136896%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx147377147378%_)))))
          (let ((_%__kont147379147380%_
                 (lambda (_%L136964%_ _%L136965%_)
                   (length (let ((__tmp147635
                                  (lambda (_%g136986136989%_ _%g136987136991%_)
                                    (cons _%g136986136989%_
                                          _%g136987136991%_))))
                             (declare (not safe))
                             (__foldr1 __tmp147635 '() _%L136964%_)))))
                (_%__kont147383147384%_ (lambda () '#f)))
            (let ((_%__match147422147423%_
                   (lambda (_%e136871136908%_
                            _%hd136872136911%_
                            _%tl136873136913%_
                            _%e136874136916%_
                            _%hd136875136919%_
                            _%tl136876136921%_
                            _%e136877136924%_
                            _%hd136878136927%_
                            _%tl136879136929%_
                            _%e136880136932%_
                            _%hd136881136935%_
                            _%tl136882136937%_
                            _%__splice147381147382%_
                            _%target136883136940%_
                            _%tl136885136942%_)
                     (letrec ((_%loop136886136945%_
                               (lambda (_%hd136884136948%_
                                        _%rand136890136950%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd136884136948%_))
                                     (let ((_%e136887136953%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd136884136948%_))))
                                       (let ((_%lp-tl136889136958%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e136887136953%_)))
                                             (_%lp-hd136888136956%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e136887136953%_))))
                                         (_%loop136886136945%_
                                          _%lp-tl136889136958%_
                                          (cons _%lp-hd136888136956%_
                                                _%rand136890136950%_))))
                                     (let ((_%rand136891136961%_
                                            (reverse _%rand136890136950%_)))
                                       (let ((_%L136964%_ _%rand136891136961%_)
                                             (_%L136965%_ _%hd136881136935%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L136965%_
                                                'values))
                                             (_%__kont147379147380%_
                                              _%L136964%_
                                              _%L136965%_)
                                             (_%__kont147383147384%_))))))))
                       (_%loop136886136945%_ _%target136883136940%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx147377147378%_))
                  (let ((_%e136871136908%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx147377147378%_))))
                    (let ((_%tl136873136913%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e136871136908%_)))
                          (_%hd136872136911%_
                           (let ()
                             (declare (not safe))
                             (##car _%e136871136908%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl136873136913%_))
                          (let ((_%e136874136916%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl136873136913%_))))
                            (let ((_%tl136876136921%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e136874136916%_)))
                                  (_%hd136875136919%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e136874136916%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd136875136919%_))
                                  (let ((_%e136877136924%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd136875136919%_))))
                                    (let ((_%tl136879136929%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e136877136924%_)))
                                          (_%hd136878136927%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e136877136924%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd136878136927%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd136878136927%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl136879136929%_))
                                                  (let ((_%e136880136932%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl136879136929%_))))
                                                    (let ((_%tl136882136937%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e136880136932%_)))
                                                          (_%hd136881136935%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e136880136932%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl136882136937%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl136876136921%_))
                      (let ((_%__splice147381147382%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl136876136921%_
                                '0))))
                        (let ((_%tl136885136942%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice147381147382%_ '1)))
                              (_%target136883136940%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice147381147382%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl136885136942%_))
                              (_%__match147422147423%_
                               _%e136871136908%_
                               _%hd136872136911%_
                               _%tl136873136913%_
                               _%e136874136916%_
                               _%hd136875136919%_
                               _%tl136876136921%_
                               _%e136877136924%_
                               _%hd136878136927%_
                               _%tl136879136929%_
                               _%e136880136932%_
                               _%hd136881136935%_
                               _%tl136882136937%_
                               _%__splice147381147382%_
                               _%target136883136940%_
                               _%tl136885136942%_)
                              (_%__kont147383147384%_))))
                      (_%__kont147383147384%_))
                  (_%__kont147383147384%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont147383147384%_))
                                              (_%__kont147383147384%_))
                                          (_%__kont147383147384%_))))
                                  (_%__kont147383147384%_))))
                          (_%__kont147383147384%_))))
                  (_%__kont147383147384%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self136766%_ _%stx136767%_)
        (let* ((_%g136769136790%_
                (lambda (_%g136770136787%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136770136787%_))))
               (_%g136768136860%_
                (lambda (_%g136770136793%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136770136793%_))
                      (let ((_%e136774136795%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136770136793%_))))
                        (let ((_%hd136775136798%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136774136795%_)))
                              (_%tl136776136800%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136774136795%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136776136800%_))
                              (let ((_%e136777136803%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136776136800%_))))
                                (let ((_%hd136778136806%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136777136803%_)))
                                      (_%tl136779136808%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136777136803%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136779136808%_))
                                      (let ((_%e136780136811%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136779136808%_))))
                                        (let ((_%hd136781136814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136780136811%_)))
                                              (_%tl136782136816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136780136811%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136782136816%_))
                                              (let ((_%e136783136819%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136782136816%_))))
                                                (let ((_%hd136784136822%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136783136819%_)))
                                                      (_%tl136785136824%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136783136819%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl136785136824%_))
                                                      ((lambda (_%L136827%_
                                                                _%L136828%_
                                                                _%L136829%_)
                                                         (let ((_%c1136846136848%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self136766%_ _%L136828%_))))
                   (if _%c1136846136848%_
                       (let* ((_%c1136851%_ _%c1136846136848%_)
                              (_%c2136852136854%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self136766%_
                                  _%L136827%_))))
                         (if _%c2136852136854%_
                             (let ((_%c2136857%_ _%c2136852136854%_))
                               (if (fx= _%c1136851%_ _%c2136857%_)
                                   _%c1136851%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd136784136822%_
               _%hd136781136814%_
               _%hd136778136806%_)
              (_%g136769136790%_ _%g136770136793%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g136769136790%_
                                               _%g136770136793%_))))
                                      (_%g136769136790%_ _%g136770136793%_))))
                              (_%g136769136790%_ _%g136770136793%_))))
                      (_%g136769136790%_ _%g136770136793%_)))))
          (_%g136768136860%_ _%stx136767%_))))))
