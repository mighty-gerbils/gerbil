(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1784279017)
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
      (let ((__tmp215094 (list gxc#::void::t))
            (__tmp215093 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp215094
         '()
         __tmp215093
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args213708%_
        (apply make-instance gxc#::collect-bindings::t _%$args213708%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp215095
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
        (__make-atomic-promise __tmp215095)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx213700%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self213703%_
                (let ((__obj215069
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj215069))
               (__tmp215096
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self213703%_ _%stx213700%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215096
           gxc#current-compile-method
           _%self213703%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp215098 (list gxc#::void::t))
            (__tmp215097 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp215098
         '(modules)
         __tmp215097
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args213697%_
        (apply make-instance gxc#::lift-modules::t _%$args213697%_)))
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
      (let ((__tmp215099
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
        (__make-atomic-promise __tmp215099)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords213672%_ _%$%modules213669213673%_ _%stx213674%_)
        (let ((_%modules213677%_
               (if (eq? _%$%modules213669213673%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%$%modules213669213673%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self213679%_
                  (let ((__obj215071
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj215071
                       _%modules213677%_
                       '1
                       '#f
                       '#f))
                    __obj215071))
                 (__tmp215100
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213679%_ _%stx213674%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp215100
             gxc#current-compile-method
             _%self213679%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords213686%_ . _%args213687%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords213686%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213686%_
                  'modules:
                  absent-value))
               _%args213687%_)))
    (define gxc#apply-lift-modules
      (lambda _%$%args213670213693%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%$%args213670213693%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp215102 (list)) (__tmp215101 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp215102
         '()
         __tmp215101
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args213665%_
        (apply make-instance gxc#::find-runtime-code::t _%$args213665%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp215103
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
        (__make-atomic-promise __tmp215103)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx213657%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self213660%_
                (let ((__obj215073
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj215073))
               (__tmp215104
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self213660%_ _%stx213657%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215104
           gxc#current-compile-method
           _%self213660%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp215106 (list gxc#::false::t))
            (__tmp215105 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp215106
         '()
         __tmp215105
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args213654%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args213654%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp215107
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
        (__make-atomic-promise __tmp215107)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx213646%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self213649%_
                (let ((__obj215075
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj215075))
               (__tmp215108
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self213649%_ _%stx213646%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215108
           gxc#current-compile-method
           _%self213649%_))))
    (define gxc#::count-values::t
      (let ((__tmp215110 (list gxc#::false-expression::t))
            (__tmp215109 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp215110
         '()
         __tmp215109
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args213643%_
        (apply make-instance gxc#::count-values::t _%$args213643%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp215111
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
        (__make-atomic-promise __tmp215111)))
    (define gxc#apply-count-values
      (lambda (_%stx213635%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self213638%_
                (let ((__obj215077
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj215077))
               (__tmp215112
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self213638%_ _%stx213635%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215112
           gxc#current-compile-method
           _%self213638%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp215113 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp215113
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args213632%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args213632%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp215114
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
                  '%#define-runtime
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
        (__make-atomic-promise __tmp215114)))
    (define gxc#::generate-loader::t
      (let ((__tmp215116 (list gxc#::generate-runtime-empty::t))
            (__tmp215115 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp215116
         '()
         __tmp215115
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args213628%_
        (apply make-instance gxc#::generate-loader::t _%$args213628%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp215117
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
        (__make-atomic-promise __tmp215117)))
    (define gxc#apply-generate-loader
      (lambda (_%stx213620%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self213623%_
                (let ((__obj215080
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj215080))
               (__tmp215118
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self213623%_ _%stx213620%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215118
           gxc#current-compile-method
           _%self213623%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp215119 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp215119
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args213617%_
        (apply make-instance gxc#::generate-runtime::t _%$args213617%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp215120
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
        (__make-atomic-promise __tmp215120)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx213609%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self213612%_
                (let ((__obj215082
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj215082))
               (__tmp215121
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self213612%_ _%stx213609%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215121
           gxc#current-compile-method
           _%self213612%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp215123 (list gxc#::generate-runtime::t))
            (__tmp215122 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp215123
         '()
         __tmp215122
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args213606%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args213606%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp215124
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
        (__make-atomic-promise __tmp215124)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx213598%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self213601%_
                (let ((__obj215084
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj215084))
               (__tmp215125
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self213601%_ _%stx213598%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215125
           gxc#current-compile-method
           _%self213601%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp215126 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp215126
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args213595%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args213595%_)))
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
      (let ((__tmp215127
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
        (__make-atomic-promise __tmp215127)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords213570%_ _%$%table213567213571%_ _%stx213572%_)
        (let ((_%table213575%_
               (if (eq? _%$%table213567213571%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%$%table213567213571%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self213577%_
                  (let ((__obj215086
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj215086
                       _%table213575%_
                       '1
                       '#f
                       '#f))
                    __obj215086))
                 (__tmp215128
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213577%_ _%stx213572%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp215128
             gxc#current-compile-method
             _%self213577%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords213584%_ . _%args213585%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords213584%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213584%_
                  'table:
                  absent-value))
               _%args213585%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%$%args213568213591%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%$%args213568213591%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp215130 (list gxc#::void-expression::t))
            (__tmp215129 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp215130
         '(state)
         __tmp215129
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args213563%_
        (apply make-instance gxc#::generate-meta::t _%$args213563%_)))
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
      (let ((__tmp215131
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
                  '%#define-runtime
                  gxc#generate-meta-define-runtime%))
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
        (__make-atomic-promise __tmp215131)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords213538%_ _%$%state213535213539%_ _%stx213540%_)
        (let ((_%state213543%_
               (if (eq? _%$%state213535213539%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%$%state213535213539%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self213545%_
                  (let ((__obj215088
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj215088
                       _%state213543%_
                       '1
                       '#f
                       '#f))
                    __obj215088))
                 (__tmp215132
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213545%_ _%stx213540%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp215132
             gxc#current-compile-method
             _%self213545%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords213552%_ . _%args213553%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords213552%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213552%_
                  'state:
                  absent-value))
               _%args213553%_)))
    (define gxc#apply-generate-meta
      (lambda _%$%args213536213559%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%$%args213536213559%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp215134 (list)) (__tmp215133 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp215134
         '(state)
         __tmp215133
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args213531%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args213531%_)))
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
      (let ((__tmp215135
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
        (__make-atomic-promise __tmp215135)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords213506%_ _%$%state213503213507%_ _%stx213508%_)
        (let ((_%state213511%_
               (if (eq? _%$%state213503213507%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%$%state213503213507%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self213513%_
                  (let ((__obj215090
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj215090
                       _%state213511%_
                       '1
                       '#f
                       '#f))
                    __obj215090))
                 (__tmp215136
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213513%_ _%stx213508%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp215136
             gxc#current-compile-method
             _%self213513%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords213520%_ . _%args213521%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords213520%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213520%_
                  'state:
                  absent-value))
               _%args213521%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%$%args213504213527%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%$%args213504213527%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self213432%_ _%stx213433%_)
        (let* ((_%$%g213435213452%_
                (lambda (_%$%g213436213449%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213436213449%_))))
               (_%$%g213434213499%_
                (lambda (_%$%g213436213455%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213436213455%_))
                      (let ((_%$%e213439213457%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213436213455%_))))
                        (let ((_%$%hd213440213460%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213439213457%_)))
                              (_%$%tl213441213462%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213439213457%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl213441213462%_))
                              (let ((_%$%e213442213465%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl213441213462%_))))
                                (let ((_%$%hd213443213468%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213442213465%_)))
                                      (_%$%tl213444213470%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213442213465%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl213444213470%_))
                                      (let ((_%$%e213445213473%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl213444213470%_))))
                                        (let ((_%$%hd213446213476%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e213445213473%_)))
                                              (_%$%tl213447213478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e213445213473%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl213447213478%_))
                                              (let ((__tmp215137
                                                     (lambda (_%bind213497%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _%bind213497%_))
                                                           (gxc#add-module-binding!
                                                            _%bind213497%_
                                                            '#f)
                                                           '#!void))))
                                                (declare (not safe))
                                                (gx#stx-for-each1
                                                 __tmp215137
                                                 _%$%hd213443213468%_))
                                              (_%$%g213435213452%_
                                               _%$%g213436213455%_))))
                                      (_%$%g213435213452%_
                                       _%$%g213436213455%_))))
                              (_%$%g213435213452%_ _%$%g213436213455%_))))
                      (_%$%g213435213452%_ _%$%g213436213455%_)))))
          (_%$%g213434213499%_ _%stx213433%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self213364%_ _%stx213365%_)
        (let* ((_%$%g213367213384%_
                (lambda (_%$%g213368213381%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213368213381%_))))
               (_%$%g213366213429%_
                (lambda (_%$%g213368213387%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213368213387%_))
                      (let ((_%$%e213371213389%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213368213387%_))))
                        (let ((_%$%hd213372213392%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213371213389%_)))
                              (_%$%tl213373213394%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213371213389%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl213373213394%_))
                              (let ((_%$%e213374213397%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl213373213394%_))))
                                (let ((_%$%hd213375213400%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213374213397%_)))
                                      (_%$%tl213376213402%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213374213397%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl213376213402%_))
                                      (let ((_%$%e213377213405%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl213376213402%_))))
                                        (let ((_%$%hd213378213408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e213377213405%_)))
                                              (_%$%tl213379213410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e213377213405%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl213379213410%_))
                                              (gxc#add-module-binding!
                                               _%$%hd213375213400%_
                                               '#t)
                                              (_%$%g213367213384%_
                                               _%$%g213368213387%_))))
                                      (_%$%g213367213384%_
                                       _%$%g213368213387%_))))
                              (_%$%g213367213384%_ _%$%g213368213387%_))))
                      (_%$%g213367213384%_ _%$%g213368213387%_)))))
          (_%$%g213366213429%_ _%stx213365%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self213306%_ _%stx213307%_)
        (let* ((_%$%g213309213323%_
                (lambda (_%$%g213310213320%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213310213320%_))))
               (_%$%g213308213361%_
                (lambda (_%$%g213310213326%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213310213326%_))
                      (let ((_%$%e213313213328%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213310213326%_))))
                        (let ((_%$%hd213314213331%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213313213328%_)))
                              (_%$%tl213315213333%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213313213328%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl213315213333%_))
                              (let ((_%$%e213316213336%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl213315213333%_))))
                                (let ((_%$%hd213317213339%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213316213336%_)))
                                      (_%$%tl213318213341%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213316213336%_))))
                                  (let ((_%ctx213358%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-local-e__0
                                            _%$%hd213317213339%_))))
                                    (set-box!
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _%self213306%_ 'modules))
                                     (cons _%ctx213358%_
                                           (unbox (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _%self213306%_
                                                     'modules)))))
                                    (let ((__tmp215138
                                           (lambda ()
                                             (let ((__tmp215139
                                                    (##structure-ref
                                                     _%ctx213358%_
                                                     '11
                                                     gx#module-context::t
                                                     '#f)))
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self213306%_
                                                __tmp215139)))))
                                      (declare (not safe))
                                      (call-with-parameters__1
                                       __tmp215138
                                       gx#current-expander-context
                                       _%ctx213358%_)))))
                              (_%$%g213309213323%_ _%$%g213310213326%_))))
                      (_%$%g213309213323%_ _%$%g213310213326%_)))))
          (_%$%g213308213361%_ _%stx213307%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%$%decls213260213262%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%$%decls213260213262%_
              (let ((_%decls213264%_ _%$%decls213260213262%_))
                (let _%lp213266%_ ((_%rest213268%_ _%decls213264%_))
                  (let* ((_%$%rest213269213277%_ _%rest213268%_)
                         (_%$%else213271213285%_ (lambda () '#f))
                         (_%$%K213273213294%_
                          (lambda (_%decls213288%_ _%decl213289%_)
                            (if (equal? _%decl213289%_ '(not safe))
                                '#t
                                (if (equal? _%decl213289%_ '(safe))
                                    '#f
                                    (_%lp213266%_ _%decls213288%_))))))
                    (if (pair? _%$%rest213269213277%_)
                        (let ((_%$%hd213274213297%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest213269213277%_)))
                              (_%$%tl213275213299%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest213269213277%_))))
                          (let* ((_%decl213302%_ _%$%hd213274213297%_)
                                 (_%decls213304%_ _%$%tl213275213299%_))
                            (_%$%K213273213294%_
                             _%decls213304%_
                             _%decl213302%_)))
                        (_%$%else213271213285%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id213254%_ _%syntax?213255%_)
        (let ((_%eid213257%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id213254%_))
                '1
                gx#binding::t
                '#f))
              (_%ht213258%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid213257%_))
              '#!void
              (let ((__tmp215140
                     (let ((__tmp215141
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid213257%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp215141 _%syntax?213255%_))))
                (declare (not safe))
                (hash-put! _%ht213258%_ _%eid213257%_ __tmp215140))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self213251%_ _%stx213252%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self213098%_ _%stx213099%_)
        (letrec ((_%simplify213101%_
                  (lambda (_%body213149%_)
                    (let _%lp213151%_ ((_%rest213153%_ _%body213149%_)
                                       (_%r213154%_ '()))
                      (let* ((_%$%rest213155213163%_ _%rest213153%_)
                             (_%$%else213157213171%_
                              (lambda () (reverse _%r213154%_)))
                             (_%$%K213159213239%_
                              (lambda (_%rest213174%_ _%hd213175%_)
                                (let* ((_%$%hd213176213192%_ _%hd213175%_)
                                       (_%$%else213180213200%_
                                        (lambda ()
                                          (_%lp213151%_
                                           _%rest213174%_
                                           (cons _%hd213175%_ _%r213154%_)))))
                                  (let ((_%$%K213188213229%_
                                         (lambda (_%exprs213227%_)
                                           (_%lp213151%_
                                            (append _%exprs213227%_
                                                    _%rest213174%_)
                                            _%r213154%_)))
                                        (_%$%K213183213213%_
                                         (lambda ()
                                           (if (null? _%rest213174%_)
                                               (_%lp213151%_
                                                _%rest213174%_
                                                (cons _%hd213175%_
                                                      _%r213154%_))
                                               (_%lp213151%_
                                                _%rest213174%_
                                                _%r213154%_))))
                                        (_%$%K213182213205%_
                                         (lambda ()
                                           (if (null? _%rest213174%_)
                                               (_%lp213151%_
                                                _%rest213174%_
                                                (cons _%hd213175%_
                                                      _%r213154%_))
                                               (_%lp213151%_
                                                _%rest213174%_
                                                _%r213154%_)))))
                                    (let ((_%$%try-match213179213208%_
                                           (lambda ()
                                             (if (symbol? _%$%hd213176213192%_)
                                                 (_%$%K213182213205%_)
                                                 (_%$%else213180213200%_)))))
                                      (if (pair? _%$%hd213176213192%_)
                                          (let ((_%$%tl213190213234%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%hd213176213192%_)))
                                                (_%$%hd213189213232%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%hd213176213192%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd213189213232%_
                                                         'begin))
                                                (let ((_%exprs213237%_
                                                       _%$%tl213190213234%_))
                                                  (_%$%K213188213229%_
                                                   _%exprs213237%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd213189213232%_
                                                             'quote))
                                                    (if (pair? _%$%tl213190213234%_)
                                                        (let ((_%$%tl213187213221%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl213190213234%_))))
                  (if (null? _%$%tl213187213221%_)
                      (_%$%K213183213213%_)
                      (_%$%try-match213179213208%_)))
                (_%$%try-match213179213208%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%try-match213179213208%_))))
                                          (_%$%try-match213179213208%_))))))))
                        (if (pair? _%$%rest213155213163%_)
                            (let ((_%$%hd213160213242%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest213155213163%_)))
                                  (_%$%tl213161213244%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest213155213163%_))))
                              (let* ((_%hd213247%_ _%$%hd213160213242%_)
                                     (_%rest213249%_ _%$%tl213161213244%_))
                                (_%$%K213159213239%_
                                 _%rest213249%_
                                 _%hd213247%_)))
                            (_%$%else213157213171%_)))))))
          (let* ((_%$%g213103213113%_
                  (lambda (_%$%g213104213110%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g213104213110%_))))
                 (_%$%g213102213146%_
                  (lambda (_%$%g213104213116%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g213104213116%_))
                        (let ((_%$%e213106213118%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g213104213116%_))))
                          (let ((_%$%hd213107213121%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e213106213118%_)))
                                (_%$%tl213108213123%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e213106213118%_))))
                            (let* ((_%body213141%_
                                    (map (lambda (_%$%g213136213138%_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self213098%_
                                              _%$%g213136213138%_)))
                                         _%$%tl213108213123%_))
                                   (_%body213143%_
                                    (_%simplify213101%_ _%body213141%_)))
                              (if (let ((__tmp215142 (length _%body213143%_)))
                                    (declare (not safe))
                                    (##fx= __tmp215142 '1))
                                  (car _%body213143%_)
                                  (cons 'begin _%body213143%_)))))
                        (_%$%g213103213113%_ _%$%g213104213116%_)))))
            (_%$%g213102213146%_ _%stx213099%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self213059%_ _%stx213060%_)
        (let* ((_%$%g213062213072%_
                (lambda (_%$%g213063213069%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213063213069%_))))
               (_%$%g213061213095%_
                (lambda (_%$%g213063213075%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213063213075%_))
                      (let ((_%$%e213065213077%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213063213075%_))))
                        (let ((_%$%hd213066213080%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213065213077%_)))
                              (_%$%tl213067213082%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213065213077%_))))
                          (cons 'begin
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax->datum _%$%tl213067213082%_)))))
                      (_%$%g213062213072%_ _%$%g213063213075%_)))))
          (_%$%g213061213095%_ _%stx213060%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self212825%_ _%stx212826%_)
        (let* ((_%__stx213732213733%_ _%stx212826%_)
               (_%$%g212830212882%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx213732213733%_)))))
          (let ((_%__kont213734213735%_
                 (lambda (_%$%g212832213041%_ _%$%g212833213042%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self212825%_ _%$%g212832213041%_))))
                (_%__kont213736213737%_
                 (lambda (_%$%g212843212989%_
                          _%$%g212844212990%_
                          _%$%g212845212991%_)
                   (if (let ((__tmp215143
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%g212845212991%_))))
                         (declare (not safe))
                         (##memq __tmp215143 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self212825%_
                          _%$%g212843212989%_)))))
                (_%__kont213740213741%_
                 (lambda (_%$%g212867212911%_ _%$%g212868212912%_)
                   (let ((_%decls212927%_
                          (map gx#syntax->datum _%$%g212868212912%_)))
                     (let ((__tmp215145
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls212927%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self212825%_
                                                   _%$%g212867212911%_))
                                                '())))))
                           (__tmp215144
                            (append _%decls212927%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls)))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp215145
                        gxc#current-compile-decls
                        __tmp215144))))))
            (let* ((_%__match213787213788%_
                    (lambda (_%$%e212846212935%_
                             _%$%hd212847212938%_
                             _%$%tl212848212940%_
                             _%$%e212849212943%_
                             _%$%hd212850212946%_
                             _%$%tl212851212948%_
                             _%$%e212852212951%_
                             _%$%hd212853212954%_
                             _%$%tl212854212956%_
                             _%__splice213738213739%_
                             _%$%target212855212959%_
                             _%$%tl212857212961%_)
                      (letrec ((_%$%loop212858212964%_
                                (lambda (_%$%hd212856212967%_
                                         _%$%param212862212969%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd212856212967%_))
                                      (let ((_%$%e212859212971%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd212856212967%_))))
                                        (let ((_%$%lp-tl212861212976%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e212859212971%_)))
                                              (_%$%lp-hd212860212974%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e212859212971%_))))
                                          (_%$%loop212858212964%_
                                           _%$%lp-tl212861212976%_
                                           (cons _%$%lp-hd212860212974%_
                                                 _%$%param212862212969%_))))
                                      (let ((_%$%param212863212979%_
                                             (reverse _%$%param212862212969%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl212851212948%_))
                                            (let ((_%$%e212864212981%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl212851212948%_))))
                                              (let ((_%$%tl212866212986%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e212864212981%_)))
                                                    (_%$%hd212865212984%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e212864212981%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl212866212986%_))
                                                    (let ((_%$%g212843212989%_
                                                           _%$%hd212865212984%_)
                                                          (_%$%g212844212990%_
                                                           _%$%param212863212979%_)
                                                          (_%$%g212845212991%_
                                                           _%$%hd212853212954%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%$%g212845212991%_))
                       (not (let ((__tmp215146
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g212845212991%_))))
                              (declare (not safe))
                              (##memq __tmp215146 gxc#gambit-annotations))))
                  (_%__kont213736213737%_
                   _%$%g212843212989%_
                   _%$%g212844212990%_
                   _%$%g212845212991%_)
                  (_%__kont213740213741%_
                   _%$%hd212865212984%_
                   _%$%hd212850212946%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g212830212882%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g212830212882%_))))))))
                        (_%$%loop212858212964%_
                         _%$%target212855212959%_
                         '()))))
                   (_%__match213761213762%_
                    (lambda (_%$%e212834213017%_
                             _%$%hd212835213020%_
                             _%$%tl212836213022%_
                             _%$%e212837213025%_
                             _%$%hd212838213028%_
                             _%$%tl212839213030%_
                             _%$%e212840213033%_
                             _%$%hd212841213036%_
                             _%$%tl212842213038%_)
                      (let ((_%$%g212832213041%_ _%$%hd212841213036%_)
                            (_%$%g212833213042%_ _%$%hd212838213028%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%$%g212833213042%_))
                            (_%__kont213734213735%_
                             _%$%g212832213041%_
                             _%$%g212833213042%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd212838213028%_))
                                (let ((_%$%e212852212951%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd212838213028%_))))
                                  (let ((_%$%tl212854212956%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e212852212951%_)))
                                        (_%$%hd212853212954%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e212852212951%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl212854212956%_))
                                        (let ((_%__splice213738213739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl212854212956%_
                                                  '0))))
                                          (let ((_%$%tl212857212961%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice213738213739%_
                                                    '1)))
                                                (_%$%target212855212959%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice213738213739%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl212857212961%_))
                                                (_%__match213787213788%_
                                                 _%$%e212834213017%_
                                                 _%$%hd212835213020%_
                                                 _%$%tl212836213022%_
                                                 _%$%e212837213025%_
                                                 _%$%hd212838213028%_
                                                 _%$%tl212839213030%_
                                                 _%$%e212852212951%_
                                                 _%$%hd212853212954%_
                                                 _%$%tl212854212956%_
                                                 _%__splice213738213739%_
                                                 _%$%target212855212959%_
                                                 _%$%tl212857212961%_)
                                                (_%__kont213740213741%_
                                                 _%$%hd212841213036%_
                                                 _%$%hd212838213028%_))))
                                        (_%__kont213740213741%_
                                         _%$%hd212841213036%_
                                         _%$%hd212838213028%_))))
                                (_%__kont213740213741%_
                                 _%$%hd212841213036%_
                                 _%$%hd212838213028%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx213732213733%_))
                  (let ((_%$%e212834213017%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx213732213733%_))))
                    (let ((_%$%tl212836213022%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e212834213017%_)))
                          (_%$%hd212835213020%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e212834213017%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl212836213022%_))
                          (let ((_%$%e212837213025%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl212836213022%_))))
                            (let ((_%$%tl212839213030%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e212837213025%_)))
                                  (_%$%hd212838213028%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e212837213025%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl212839213030%_))
                                  (let ((_%$%e212840213033%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl212839213030%_))))
                                    (let ((_%$%tl212842213038%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e212840213033%_)))
                                          (_%$%hd212841213036%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e212840213033%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl212842213038%_))
                                          (_%__match213761213762%_
                                           _%$%e212834213017%_
                                           _%$%hd212835213020%_
                                           _%$%tl212836213022%_
                                           _%$%e212837213025%_
                                           _%$%hd212838213028%_
                                           _%$%tl212839213030%_
                                           _%$%e212840213033%_
                                           _%$%hd212841213036%_
                                           _%$%tl212842213038%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd212838213028%_))
                                              (let ((_%$%e212852212951%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd212838213028%_))))
                                                (let ((_%$%tl212854212956%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e212852212951%_)))
                                                      (_%$%hd212853212954%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e212852212951%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl212854212956%_))
                                                      (let ((_%__splice213738213739%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl212854212956%_
                        '0))))
                (let ((_%$%tl212857212961%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice213738213739%_ '1)))
                      (_%$%target212855212959%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice213738213739%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl212857212961%_))
                      (_%__match213787213788%_
                       _%$%e212834213017%_
                       _%$%hd212835213020%_
                       _%$%tl212836213022%_
                       _%$%e212837213025%_
                       _%$%hd212838213028%_
                       _%$%tl212839213030%_
                       _%$%e212852212951%_
                       _%$%hd212853212954%_
                       _%$%tl212854212956%_
                       _%__splice213738213739%_
                       _%$%target212855212959%_
                       _%$%tl212857212961%_)
                      (let () (declare (not safe)) (_%$%g212830212882%_)))))
              (let () (declare (not safe)) (_%$%g212830212882%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g212830212882%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd212838213028%_))
                                      (let ((_%$%e212852212951%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd212838213028%_))))
                                        (let ((_%$%tl212854212956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e212852212951%_)))
                                              (_%$%hd212853212954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e212852212951%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl212854212956%_))
                                              (let ((_%__splice213738213739%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl212854212956%_
                                                        '0))))
                                                (let ((_%$%tl212857212961%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice213738213739%_
                                                          '1)))
                                                      (_%$%target212855212959%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice213738213739%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl212857212961%_))
                                                      (_%__match213787213788%_
                                                       _%$%e212834213017%_
                                                       _%$%hd212835213020%_
                                                       _%$%tl212836213022%_
                                                       _%$%e212837213025%_
                                                       _%$%hd212838213028%_
                                                       _%$%tl212839213030%_
                                                       _%$%e212852212951%_
                                                       _%$%hd212853212954%_
                                                       _%$%tl212854212956%_
                                                       _%__splice213738213739%_
                                                       _%$%target212855212959%_
                                                       _%$%tl212857212961%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g212830212882%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g212830212882%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g212830212882%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g212830212882%_)))))
                  (let () (declare (not safe)) (_%$%g212830212882%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self212784%_ _%stx212785%_)
        (let* ((_%$%g212787212797%_
                (lambda (_%$%g212788212794%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g212788212794%_))))
               (_%$%g212786212822%_
                (lambda (_%$%g212788212800%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g212788212800%_))
                      (let ((_%$%e212790212802%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g212788212800%_))))
                        (let ((_%$%hd212791212805%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e212790212802%_)))
                              (_%$%tl212792212807%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e212790212802%_))))
                          (let ((_%decls212820%_
                                 (map gx#syntax->datum _%$%tl212792212807%_)))
                            (let ((__tmp215147
                                   (append _%decls212820%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#current-compile-decls)))))
                              (declare (not safe))
                              (gxc#current-compile-decls __tmp215147))
                            (cons 'declare _%decls212820%_))))
                      (_%$%g212787212797%_ _%$%g212788212800%_)))))
          (_%$%g212786212822%_ _%stx212785%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self212531%_ _%stx212532%_)
        (let* ((_%$%g212534212551%_
                (lambda (_%$%g212535212548%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g212535212548%_))))
               (_%$%g212533212781%_
                (lambda (_%$%g212535212554%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g212535212554%_))
                      (let ((_%$%e212538212556%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g212535212554%_))))
                        (let ((_%$%hd212539212559%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e212538212556%_)))
                              (_%$%tl212540212561%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e212538212556%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl212540212561%_))
                              (let ((_%$%e212541212564%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl212540212561%_))))
                                (let ((_%$%hd212542212567%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e212541212564%_)))
                                      (_%$%tl212543212569%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e212541212564%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl212543212569%_))
                                      (let ((_%$%e212544212572%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl212543212569%_))))
                                        (let ((_%$%hd212545212575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e212544212572%_)))
                                              (_%$%tl212546212577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e212544212572%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl212546212577%_))
                                              (let* ((_%__stx213840213841%_
                                                      _%$%hd212542212567%_)
                                                     (_%$%g212598212612%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx213840213841%_)))))
                                                (let ((_%__kont213842213843%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self212531%_
                                                            _%$%hd212545212575%_))))
                                                      (_%__kont213844213845%_
                                                       (lambda (_%$%g212604212744%_)
                                                         (let ((_%eid212753%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id
                           _%$%g212604212744%_))))
                   (let ((_%$%lambda-expr212754212756%_
                          (gxc#apply-find-lambda-expression
                           _%$%hd212545212575%_)))
                     (if _%$%lambda-expr212754212756%_
                         (let* ((_%lambda-expr212758%_
                                 _%$%lambda-expr212754212756%_)
                                (__tmp215148
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-names))))
                           (declare (not safe))
                           (hash-put!
                            __tmp215148
                            _%lambda-expr212758%_
                            _%eid212753%_))
                         '#f))
                   (cons 'define
                         (cons _%eid212753%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self212531%_
                                        _%$%hd212545212575%_))
                                     '()))))))
              (_%__kont213846213847%_
               (lambda ()
                 (let* ((_%tmp212619%_
                         (let ()
                           (declare (not safe))
                           (gxc#generate-runtime-temporary__% '#t)))
                        (_%body212728%_
                         (let _%lp212621%_ ((_%rest212623%_
                                             _%$%hd212542212567%_)
                                            (_%k212624%_ '0)
                                            (_%r212625%_ '()))
                           (let* ((_%__stx213810213811%_ _%rest212623%_)
                                  (_%$%g212630212647%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx213810213811%_)))))
                             (let ((_%__kont213812213813%_
                                    (lambda (_%$%g212632212715%_)
                                      (_%lp212621%_
                                       _%$%g212632212715%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k212624%_ '1))
                                       _%r212625%_)))
                                   (_%__kont213814213815%_
                                    (lambda (_%$%g212637212688%_
                                             _%$%g212638212689%_)
                                      (_%lp212621%_
                                       _%$%g212637212688%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k212624%_ '1))
                                       (cons (cons 'define
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%$%g212638212689%_))
                                                         (cons (gxc#generate-runtime-values-ref
                                                                _%tmp212619%_
                                                                _%k212624%_
                                                                _%$%g212637212688%_)
                                                               '())))
                                             _%r212625%_))))
                                   (_%__kont213816213817%_
                                    (lambda (_%$%g212642212659%_)
                                      (let ((__tmp215149
                                             (cons (cons 'define
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _%$%g212642212659%_))
                       (cons (gxc#generate-runtime-values->list
                              _%tmp212619%_
                              _%k212624%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         __tmp215149
                                         _%r212625%_))))
                                   (_%__kont213818213819%_
                                    (lambda () (reverse _%r212625%_))))
                               (let ((_%$%g212628212675%_
                                      (lambda ()
                                        (let ((_%$%g212642212659%_
                                               _%__stx213810213811%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%g212642212659%_))
                                              (_%__kont213816213817%_
                                               _%$%g212642212659%_)
                                              (_%__kont213818213819%_))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx213810213811%_))
                                     (let ((_%$%e212633212704%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx213810213811%_))))
                                       (let ((_%$%tl212635212709%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e212633212704%_)))
                                             (_%$%hd212634212707%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e212633212704%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%$%hd212634212707%_))
                                             (let ((_%$%e212636212712%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%hd212634212707%_))))
                                               (if (equal? _%$%e212636212712%_
                                                           '#f)
                                                   (_%__kont213812213813%_
                                                    _%$%tl212635212709%_)
                                                   (_%__kont213814213815%_
                                                    _%$%tl212635212709%_
                                                    _%$%hd212634212707%_)))
                                             (_%__kont213814213815%_
                                              _%$%tl212635212709%_
                                              _%$%hd212634212707%_))))
                                     (_%$%g212628212675%_))))))))
                   (cons 'begin
                         (cons (cons 'define
                                     (cons _%tmp212619%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self212531%_
                                                    _%$%hd212545212575%_))
                                                 '())))
                               (cons (gxc#generate-runtime-check-values
                                      _%tmp212619%_
                                      _%$%hd212542212567%_
                                      _%$%hd212545212575%_)
                                     _%body212728%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx213840213841%_))
                                                      (let ((_%$%e212600212765%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx213840213841%_))))
                (let ((_%$%tl212602212770%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e212600212765%_)))
                      (_%$%hd212601212768%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e212600212765%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%$%hd212601212768%_))
                      (let ((_%$%e212603212773%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd212601212768%_))))
                        (if (equal? _%$%e212603212773%_ '#f)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl212602212770%_))
                                (_%__kont213842213843%_)
                                (_%__kont213846213847%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl212602212770%_))
                                (_%__kont213844213845%_ _%$%hd212601212768%_)
                                (_%__kont213846213847%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl212602212770%_))
                          (_%__kont213844213845%_ _%$%hd212601212768%_)
                          (_%__kont213846213847%_)))))
              (_%__kont213846213847%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g212534212551%_
                                               _%$%g212535212554%_))))
                                      (_%$%g212534212551%_
                                       _%$%g212535212554%_))))
                              (_%$%g212534212551%_ _%$%g212535212554%_))))
                      (_%$%g212534212551%_ _%$%g212535212554%_)))))
          (_%$%g212533212781%_ _%stx212532%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals212506%_ _%hd212507%_ _%expr212508%_)
        (let ((_%$e212510%_ (gxc#apply-count-values _%expr212508%_)))
          (if _%$e212510%_
              (let ((_%len212515%_
                     (let ()
                       (declare (not safe))
                       (gx#stx-length _%hd212507%_)))
                    (_%cmp212516%_
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-list? _%hd212507%_))
                         fx=
                         fx>=)))
                (if (or (let () (declare (not safe)) (##fx= _%len212515%_ '0))
                        (_%cmp212516%_ _%$e212510%_ _%len212515%_))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Value count mismatch"
                       _%expr212508%_
                       _%hd212507%_))))
              (let* ((_%len212522%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd212507%_)))
                     (_%cmp212524%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd212507%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg212526%_
                      (let ((__tmp215151
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd212507%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp215150 (number->string _%len212522%_)))
                        (declare (not safe))
                        (##string-append __tmp215151 __tmp215150 '" values")))
                     (_%count212528%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd212507%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len212522%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count212528%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals212506%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp212524%_
                                (cons _%count212528%_
                                      (cons _%len212522%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp212524%_
                                                        (cons _%count212528%_
                                                              (cons _%len212522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg212526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count212528%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var212501%_)
        (letrec ((_%generate-inline212503%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var212501%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var212501%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline212503%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline212503%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var212494%_ _%i212495%_ _%rest212496%_)
        (letrec ((_%generate-inline212498%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i212495%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest212496%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var212494%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var212494%_
                                                      (cons '0 '())))
                                          (cons _%var212494%_ '()))))
                        (cons '##values-ref
                              (cons _%var212494%_ (cons _%i212495%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline212498%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline212498%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var212488%_ _%i212489%_)
        (if (let () (declare (not safe)) (##fx= _%i212489%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var212488%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var212488%_ '()))
                                  (cons (cons 'list (cons _%var212488%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var212488%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var212488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var212488%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i212489%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var212488%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var212488%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var212488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var212488%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var212488%_ '()))
                                (cons _%i212489%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var212488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i212489%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self212420%_ _%stx212421%_)
        (let* ((_%$%g212423212440%_
                (lambda (_%$%g212424212437%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g212424212437%_))))
               (_%$%g212422212485%_
                (lambda (_%$%g212424212443%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g212424212443%_))
                      (let ((_%$%e212427212445%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g212424212443%_))))
                        (let ((_%$%hd212428212448%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e212427212445%_)))
                              (_%$%tl212429212450%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e212427212445%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl212429212450%_))
                              (let ((_%$%e212430212453%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl212429212450%_))))
                                (let ((_%$%hd212431212456%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e212430212453%_)))
                                      (_%$%tl212432212458%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e212430212453%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl212432212458%_))
                                      (let ((_%$%e212433212461%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl212432212458%_))))
                                        (let ((_%$%hd212434212464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e212433212461%_)))
                                              (_%$%tl212435212466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e212433212461%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl212435212466%_))
                                              (gxc#generate-runtime-lambda-form
                                               _%self212420%_
                                               _%$%hd212431212456%_
                                               _%$%hd212434212464%_)
                                              (_%$%g212423212440%_
                                               _%$%g212424212443%_))))
                                      (_%$%g212423212440%_
                                       _%$%g212424212443%_))))
                              (_%$%g212423212440%_ _%$%g212424212443%_))))
                      (_%$%g212423212440%_ _%$%g212424212443%_)))))
          (_%$%g212422212485%_ _%stx212421%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self212379%_ _%hd212380%_ _%body212381%_)
        (let* ((_%hd212383%_ (gxc#generate-runtime-lambda-head _%hd212380%_))
               (_%body212385%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self212379%_ _%body212381%_)))
               (_%body212417%_
                (let* ((_%$%body212386212394%_ _%body212385%_)
                       (_%$%else212388212402%_
                        (lambda () (cons _%body212385%_ '())))
                       (_%$%K212390212407%_
                        (lambda (_%exprs212405%_) _%exprs212405%_)))
                  (if (pair? _%$%body212386212394%_)
                      (let ((_%$%hd212391212410%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%body212386212394%_)))
                            (_%$%tl212392212412%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%body212386212394%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%$%hd212391212410%_ 'begin))
                            (let ((_%exprs212415%_ _%$%tl212392212412%_))
                              (_%$%K212390212407%_ _%exprs212415%_))
                            (_%$%else212388212402%_)))
                      (_%$%else212388212402%_)))))
          (cons 'lambda (cons _%hd212383%_ _%body212417%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd212377%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd212377%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self210934%_ _%stx210935%_)
        (letrec ((_%dispatch-case?210937%_
                  (lambda (_%hd211615%_ _%body211616%_)
                    (let* ((_%form211618%_
                            (cons _%hd211615%_ (cons _%body211616%_ '())))
                           (_%__stx213872213873%_ _%form211618%_)
                           (_%$%g211623211780%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx213872213873%_)))))
                      (let ((_%__kont213874213875%_
                             (lambda (_%$%g211625212297%_
                                      _%$%g211626212298%_
                                      _%$%g211627212299%_)
                               '#t))
                            (_%__kont213880213881%_
                             (lambda (_%$%g211670212089%_
                                      _%$%g211671212090%_
                                      _%$%g211672212091%_
                                      _%$%g211673212092%_
                                      _%$%g211674212093%_
                                      _%$%g211675212094%_)
                               '#t))
                            (_%__kont213886213887%_
                             (lambda (_%$%g211736211888%_
                                      _%$%g211737211889%_
                                      _%$%g211738211890%_
                                      _%$%g211739211891%_)
                               '#t))
                            (_%__kont213888213889%_ (lambda () '#f)))
                        (let* ((_%__match214013214014%_
                                (lambda (_%$%e211740211792%_
                                         _%$%hd211741211795%_
                                         _%$%tl211742211797%_
                                         _%$%e211743211800%_
                                         _%$%hd211744211803%_
                                         _%$%tl211745211805%_
                                         _%$%e211746211808%_
                                         _%$%hd211747211811%_
                                         _%$%tl211748211813%_
                                         _%$%e211749211816%_
                                         _%$%hd211750211819%_
                                         _%$%tl211751211821%_
                                         _%$%e211752211824%_
                                         _%$%hd211753211827%_
                                         _%$%tl211754211829%_
                                         _%$%e211755211832%_
                                         _%$%hd211756211835%_
                                         _%$%tl211757211837%_
                                         _%$%e211758211840%_
                                         _%$%hd211759211843%_
                                         _%$%tl211760211845%_
                                         _%$%e211761211848%_
                                         _%$%hd211762211851%_
                                         _%$%tl211763211853%_
                                         _%$%e211764211856%_
                                         _%$%hd211765211859%_
                                         _%$%tl211766211861%_
                                         _%$%e211767211864%_
                                         _%$%hd211768211867%_
                                         _%$%tl211769211869%_
                                         _%$%e211770211872%_
                                         _%$%hd211771211875%_
                                         _%$%tl211772211877%_
                                         _%$%e211773211880%_
                                         _%$%hd211774211883%_
                                         _%$%tl211775211885%_)
                                  (let ((_%$%g211736211888%_
                                         _%$%hd211774211883%_)
                                        (_%$%g211737211889%_
                                         _%$%hd211765211859%_)
                                        (_%$%g211738211890%_
                                         _%$%hd211756211835%_)
                                        (_%$%g211739211891%_
                                         _%$%hd211741211795%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%g211739211891%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%$%g211738211890%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%$%g211739211891%_
                                                _%$%g211736211888%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%$%g211737211889%_
                                                     _%$%g211739211891%_))))
                                        (_%__kont213886213887%_
                                         _%$%g211736211888%_
                                         _%$%g211737211889%_
                                         _%$%g211738211890%_
                                         _%$%g211739211891%_)
                                        (_%__kont213888213889%_)))))
                               (_%__match213985213986%_
                                (lambda (_%$%e211740211792%_
                                         _%$%hd211741211795%_
                                         _%$%tl211742211797%_
                                         _%$%e211743211800%_
                                         _%$%hd211744211803%_
                                         _%$%tl211745211805%_
                                         _%$%e211746211808%_
                                         _%$%hd211747211811%_
                                         _%$%tl211748211813%_
                                         _%$%e211749211816%_
                                         _%$%hd211750211819%_
                                         _%$%tl211751211821%_
                                         _%$%e211752211824%_
                                         _%$%hd211753211827%_
                                         _%$%tl211754211829%_
                                         _%$%e211755211832%_
                                         _%$%hd211756211835%_
                                         _%$%tl211757211837%_
                                         _%$%e211758211840%_
                                         _%$%hd211759211843%_
                                         _%$%tl211760211845%_
                                         _%$%e211761211848%_
                                         _%$%hd211762211851%_
                                         _%$%tl211763211853%_
                                         _%$%e211764211856%_
                                         _%$%hd211765211859%_
                                         _%$%tl211766211861%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl211760211845%_))
                                      (let ((_%$%e211767211864%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl211760211845%_))))
                                        (let ((_%$%tl211769211869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e211767211864%_)))
                                              (_%$%hd211768211867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e211767211864%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd211768211867%_))
                                              (let ((_%$%e211770211872%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd211768211867%_))))
                                                (let ((_%$%tl211772211877%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e211770211872%_)))
                                                      (_%$%hd211771211875%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e211770211872%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd211771211875%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd211771211875%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl211772211877%_))
                      (let ((_%$%e211773211880%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl211772211877%_))))
                        (let ((_%$%tl211775211885%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e211773211880%_)))
                              (_%$%hd211774211883%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e211773211880%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl211775211885%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl211769211869%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl211745211805%_))
                                      (_%__match214013214014%_
                                       _%$%e211740211792%_
                                       _%$%hd211741211795%_
                                       _%$%tl211742211797%_
                                       _%$%e211743211800%_
                                       _%$%hd211744211803%_
                                       _%$%tl211745211805%_
                                       _%$%e211746211808%_
                                       _%$%hd211747211811%_
                                       _%$%tl211748211813%_
                                       _%$%e211749211816%_
                                       _%$%hd211750211819%_
                                       _%$%tl211751211821%_
                                       _%$%e211752211824%_
                                       _%$%hd211753211827%_
                                       _%$%tl211754211829%_
                                       _%$%e211755211832%_
                                       _%$%hd211756211835%_
                                       _%$%tl211757211837%_
                                       _%$%e211758211840%_
                                       _%$%hd211759211843%_
                                       _%$%tl211760211845%_
                                       _%$%e211761211848%_
                                       _%$%hd211762211851%_
                                       _%$%tl211763211853%_
                                       _%$%e211764211856%_
                                       _%$%hd211765211859%_
                                       _%$%tl211766211861%_
                                       _%$%e211767211864%_
                                       _%$%hd211768211867%_
                                       _%$%tl211769211869%_
                                       _%$%e211770211872%_
                                       _%$%hd211771211875%_
                                       _%$%tl211772211877%_
                                       _%$%e211773211880%_
                                       _%$%hd211774211883%_
                                       _%$%tl211775211885%_)
                                      (_%__kont213888213889%_))
                                  (_%__kont213888213889%_))
                              (_%__kont213888213889%_))))
                      (_%__kont213888213889%_))
                  (_%__kont213888213889%_))
              (_%__kont213888213889%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont213888213889%_))))
                                      (_%__kont213888213889%_))))
                               (_%__match213915213916%_
                                (lambda (_%$%e211676211933%_
                                         _%$%hd211677211936%_
                                         _%$%tl211678211938%_
                                         _%__splice213882213883%_
                                         _%$%target211679211941%_
                                         _%$%tl211681211943%_)
                                  (letrec ((_%$%loop211682211946%_
                                            (lambda (_%$%hd211680211949%_
                                                     _%$%arg211686211951%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd211680211949%_))
                                                  (let ((_%$%e211683211953%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd211680211949%_))))
                                                    (let ((_%$%lp-tl211685211958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211683211953%_)))
                                                          (_%$%lp-hd211684211956%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211683211953%_))))
                                                      (_%$%loop211682211946%_
                                                       _%$%lp-tl211685211958%_
                                                       (cons _%$%lp-hd211684211956%_
                                                             _%$%arg211686211951%_))))
                                                  (let ((_%$%arg211687211961%_
                                                         (reverse _%$%arg211686211951%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl211678211938%_))
                                                        (let ((_%$%e211688211963%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl211678211938%_))))
                  (let ((_%$%tl211690211968%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e211688211963%_)))
                        (_%$%hd211689211966%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e211688211963%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd211689211966%_))
                        (let ((_%$%e211691211971%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd211689211966%_))))
                          (let ((_%$%tl211693211976%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211691211971%_)))
                                (_%$%hd211692211974%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211691211971%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd211692211974%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd211692211974%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl211693211976%_))
                                        (let ((_%$%e211694211979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl211693211976%_))))
                                          (let ((_%$%tl211696211984%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e211694211979%_)))
                                                (_%$%hd211695211982%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e211694211979%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd211695211982%_))
                                                (let ((_%$%e211697211987%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd211695211982%_))))
                                                  (let ((_%$%tl211699211992%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e211697211987%_)))
                                                        (_%$%hd211698211990%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e211697211987%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd211698211990%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd211698211990%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl211699211992%_))
                        (let ((_%$%e211700211995%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl211699211992%_))))
                          (let ((_%$%tl211702212000%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211700211995%_)))
                                (_%$%hd211701211998%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211700211995%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl211702212000%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl211696211984%_))
                                    (let ((_%$%e211703212003%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl211696211984%_))))
                                      (let ((_%$%tl211705212008%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e211703212003%_)))
                                            (_%$%hd211704212006%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e211703212003%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd211704212006%_))
                                            (let ((_%$%e211706212011%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd211704212006%_))))
                                              (let ((_%$%tl211708212016%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e211706212011%_)))
                                                    (_%$%hd211707212014%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e211706212011%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd211707212014%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd211707212014%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl211708212016%_))
                                                            (let ((_%$%e211709212019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl211708212016%_))))
                      (let ((_%$%tl211711212024%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e211709212019%_)))
                            (_%$%hd211710212022%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e211709212019%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl211711212024%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl211705212008%_))
                                (if (let ((__tmp215152
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%$%tl211705212008%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp215152 '1))
                                    (let ((_%__splice213884213885%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl211705212008%_
                                              '1))))
                                      (let ((_%$%tl211714212029%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice213884213885%_
                                                '1)))
                                            (_%$%target211712212027%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice213884213885%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl211714212029%_))
                                            (let ((_%$%e211721212032%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl211714212029%_))))
                                              (let ((_%$%tl211723212037%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e211721212032%_)))
                                                    (_%$%hd211722212035%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e211721212032%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd211722212035%_))
                                                    (let ((_%$%e211724212040%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd211722212035%_))))
                                                      (let ((_%$%tl211726212045%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e211724212040%_)))
                    (_%$%hd211725212043%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e211724212040%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%$%hd211725212043%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%$%hd211725212043%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl211726212045%_))
                            (let ((_%$%e211727212048%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl211726212045%_))))
                              (let ((_%$%tl211729212053%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e211727212048%_)))
                                    (_%$%hd211728212051%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e211727212048%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl211729212053%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl211723212037%_))
                                        (letrec ((_%$%loop211715212056%_
                                                  (lambda (_%$%hd211713212059%_
                                                           _%$%xarg211719212061%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd211713212059%_))
                                                        (let ((_%$%e211716212063%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd211713212059%_))))
                  (let ((_%$%lp-tl211718212068%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e211716212063%_)))
                        (_%$%lp-hd211717212066%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e211716212063%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd211717212066%_))
                        (let ((_%$%e211730212071%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%lp-hd211717212066%_))))
                          (let ((_%$%tl211732212076%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211730212071%_)))
                                (_%$%hd211731212074%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211730212071%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd211731212074%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%$%hd211731212074%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl211732212076%_))
                                        (let ((_%$%e211733212079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl211732212076%_))))
                                          (let ((_%$%tl211735212084%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e211733212079%_)))
                                                (_%$%hd211734212082%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e211733212079%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl211735212084%_))
                                                (_%$%loop211715212056%_
                                                 _%$%lp-tl211718212068%_
                                                 (cons _%$%hd211734212082%_
                                                       _%$%xarg211719212061%_))
                                                (_%__match213985213986%_
                                                 _%$%e211676211933%_
                                                 _%$%hd211677211936%_
                                                 _%$%tl211678211938%_
                                                 _%$%e211688211963%_
                                                 _%$%hd211689211966%_
                                                 _%$%tl211690211968%_
                                                 _%$%e211691211971%_
                                                 _%$%hd211692211974%_
                                                 _%$%tl211693211976%_
                                                 _%$%e211694211979%_
                                                 _%$%hd211695211982%_
                                                 _%$%tl211696211984%_
                                                 _%$%e211697211987%_
                                                 _%$%hd211698211990%_
                                                 _%$%tl211699211992%_
                                                 _%$%e211700211995%_
                                                 _%$%hd211701211998%_
                                                 _%$%tl211702212000%_
                                                 _%$%e211703212003%_
                                                 _%$%hd211704212006%_
                                                 _%$%tl211705212008%_
                                                 _%$%e211706212011%_
                                                 _%$%hd211707212014%_
                                                 _%$%tl211708212016%_
                                                 _%$%e211709212019%_
                                                 _%$%hd211710212022%_
                                                 _%$%tl211711212024%_))))
                                        (_%__match213985213986%_
                                         _%$%e211676211933%_
                                         _%$%hd211677211936%_
                                         _%$%tl211678211938%_
                                         _%$%e211688211963%_
                                         _%$%hd211689211966%_
                                         _%$%tl211690211968%_
                                         _%$%e211691211971%_
                                         _%$%hd211692211974%_
                                         _%$%tl211693211976%_
                                         _%$%e211694211979%_
                                         _%$%hd211695211982%_
                                         _%$%tl211696211984%_
                                         _%$%e211697211987%_
                                         _%$%hd211698211990%_
                                         _%$%tl211699211992%_
                                         _%$%e211700211995%_
                                         _%$%hd211701211998%_
                                         _%$%tl211702212000%_
                                         _%$%e211703212003%_
                                         _%$%hd211704212006%_
                                         _%$%tl211705212008%_
                                         _%$%e211706212011%_
                                         _%$%hd211707212014%_
                                         _%$%tl211708212016%_
                                         _%$%e211709212019%_
                                         _%$%hd211710212022%_
                                         _%$%tl211711212024%_))
                                    (_%__match213985213986%_
                                     _%$%e211676211933%_
                                     _%$%hd211677211936%_
                                     _%$%tl211678211938%_
                                     _%$%e211688211963%_
                                     _%$%hd211689211966%_
                                     _%$%tl211690211968%_
                                     _%$%e211691211971%_
                                     _%$%hd211692211974%_
                                     _%$%tl211693211976%_
                                     _%$%e211694211979%_
                                     _%$%hd211695211982%_
                                     _%$%tl211696211984%_
                                     _%$%e211697211987%_
                                     _%$%hd211698211990%_
                                     _%$%tl211699211992%_
                                     _%$%e211700211995%_
                                     _%$%hd211701211998%_
                                     _%$%tl211702212000%_
                                     _%$%e211703212003%_
                                     _%$%hd211704212006%_
                                     _%$%tl211705212008%_
                                     _%$%e211706212011%_
                                     _%$%hd211707212014%_
                                     _%$%tl211708212016%_
                                     _%$%e211709212019%_
                                     _%$%hd211710212022%_
                                     _%$%tl211711212024%_))
                                (_%__match213985213986%_
                                 _%$%e211676211933%_
                                 _%$%hd211677211936%_
                                 _%$%tl211678211938%_
                                 _%$%e211688211963%_
                                 _%$%hd211689211966%_
                                 _%$%tl211690211968%_
                                 _%$%e211691211971%_
                                 _%$%hd211692211974%_
                                 _%$%tl211693211976%_
                                 _%$%e211694211979%_
                                 _%$%hd211695211982%_
                                 _%$%tl211696211984%_
                                 _%$%e211697211987%_
                                 _%$%hd211698211990%_
                                 _%$%tl211699211992%_
                                 _%$%e211700211995%_
                                 _%$%hd211701211998%_
                                 _%$%tl211702212000%_
                                 _%$%e211703212003%_
                                 _%$%hd211704212006%_
                                 _%$%tl211705212008%_
                                 _%$%e211706212011%_
                                 _%$%hd211707212014%_
                                 _%$%tl211708212016%_
                                 _%$%e211709212019%_
                                 _%$%hd211710212022%_
                                 _%$%tl211711212024%_))))
                        (_%__match213985213986%_
                         _%$%e211676211933%_
                         _%$%hd211677211936%_
                         _%$%tl211678211938%_
                         _%$%e211688211963%_
                         _%$%hd211689211966%_
                         _%$%tl211690211968%_
                         _%$%e211691211971%_
                         _%$%hd211692211974%_
                         _%$%tl211693211976%_
                         _%$%e211694211979%_
                         _%$%hd211695211982%_
                         _%$%tl211696211984%_
                         _%$%e211697211987%_
                         _%$%hd211698211990%_
                         _%$%tl211699211992%_
                         _%$%e211700211995%_
                         _%$%hd211701211998%_
                         _%$%tl211702212000%_
                         _%$%e211703212003%_
                         _%$%hd211704212006%_
                         _%$%tl211705212008%_
                         _%$%e211706212011%_
                         _%$%hd211707212014%_
                         _%$%tl211708212016%_
                         _%$%e211709212019%_
                         _%$%hd211710212022%_
                         _%$%tl211711212024%_))))
                (let ((_%$%xarg211720212087%_
                       (reverse _%$%xarg211719212061%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl211690211968%_))
                      (let ((_%$%g211670212089%_ _%$%hd211728212051%_)
                            (_%$%g211671212090%_ _%$%xarg211720212087%_)
                            (_%$%g211672212091%_ _%$%hd211710212022%_)
                            (_%$%g211673212092%_ _%$%hd211701211998%_)
                            (_%$%g211674212093%_ _%$%tl211681211943%_)
                            (_%$%g211675212094%_ _%$%arg211687211961%_))
                        (if (and (let ((__tmp215153
                                        (let ((__tmp215154
                                               (lambda (_%$%g212137212140%_
                                                        _%$%g212138212142%_)
                                                 (cons _%$%g212137212140%_
                                                       _%$%g212138212142%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp215154
                                           '()
                                           _%$%g211675212094%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp215153))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%g211674212093%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%$%g211673212092%_
                                    'apply))
                                 (let ((__tmp215157
                                        (length (let ((__tmp215158
                                                       (lambda (_%$%g212144212147%_
                                                                _%$%g212145212149%_)
                                                         (cons _%$%g212144212147%_
                                                               _%$%g212145212149%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp215158
                                                   '()
                                                   _%$%g211675212094%_))))
                                       (__tmp215155
                                        (length (let ((__tmp215156
                                                       (lambda (_%$%g212151212154%_
                                                                _%$%g212152212156%_)
                                                         (cons _%$%g212151212154%_
                                                               _%$%g212152212156%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp215156
                                                   '()
                                                   _%$%g211671212090%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp215157 __tmp215155))
                                 (let ((__tmp215161
                                        (let ((__tmp215162
                                               (lambda (_%$%g212158212161%_
                                                        _%$%g212159212163%_)
                                                 (cons _%$%g212158212161%_
                                                       _%$%g212159212163%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp215162
                                           '()
                                           _%$%g211675212094%_)))
                                       (__tmp215159
                                        (let ((__tmp215160
                                               (lambda (_%$%g212165212168%_
                                                        _%$%g212166212170%_)
                                                 (cons _%$%g212165212168%_
                                                       _%$%g212166212170%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp215160
                                           '()
                                           _%$%g211671212090%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp215161
                                    __tmp215159))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g211674212093%_
                                    _%$%g211670212089%_))
                                 (not (let ((__tmp215166
                                             (lambda (_%$%g212172212174%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%$%g212172212174%_
                                                  _%$%g211672212091%_))))
                                            (__tmp215163
                                             (let ((__tmp215165
                                                    (lambda (_%$%g212176212179%_
                                                             _%$%g212177212181%_)
                                                      (cons _%$%g212176212179%_
                                                            _%$%g212177212181%_)))
                                                   (__tmp215164
                                                    (cons _%$%g211674212093%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp215165
                                                __tmp215164
                                                _%$%g211675212094%_))))
                                        (declare (not safe))
                                        (__find __tmp215166 __tmp215163))))
                            (_%__kont213880213881%_
                             _%$%g211670212089%_
                             _%$%g211671212090%_
                             _%$%g211672212091%_
                             _%$%g211673212092%_
                             _%$%g211674212093%_
                             _%$%g211675212094%_)
                            (_%__match213985213986%_
                             _%$%e211676211933%_
                             _%$%hd211677211936%_
                             _%$%tl211678211938%_
                             _%$%e211688211963%_
                             _%$%hd211689211966%_
                             _%$%tl211690211968%_
                             _%$%e211691211971%_
                             _%$%hd211692211974%_
                             _%$%tl211693211976%_
                             _%$%e211694211979%_
                             _%$%hd211695211982%_
                             _%$%tl211696211984%_
                             _%$%e211697211987%_
                             _%$%hd211698211990%_
                             _%$%tl211699211992%_
                             _%$%e211700211995%_
                             _%$%hd211701211998%_
                             _%$%tl211702212000%_
                             _%$%e211703212003%_
                             _%$%hd211704212006%_
                             _%$%tl211705212008%_
                             _%$%e211706212011%_
                             _%$%hd211707212014%_
                             _%$%tl211708212016%_
                             _%$%e211709212019%_
                             _%$%hd211710212022%_
                             _%$%tl211711212024%_)))
                      (_%__match213985213986%_
                       _%$%e211676211933%_
                       _%$%hd211677211936%_
                       _%$%tl211678211938%_
                       _%$%e211688211963%_
                       _%$%hd211689211966%_
                       _%$%tl211690211968%_
                       _%$%e211691211971%_
                       _%$%hd211692211974%_
                       _%$%tl211693211976%_
                       _%$%e211694211979%_
                       _%$%hd211695211982%_
                       _%$%tl211696211984%_
                       _%$%e211697211987%_
                       _%$%hd211698211990%_
                       _%$%tl211699211992%_
                       _%$%e211700211995%_
                       _%$%hd211701211998%_
                       _%$%tl211702212000%_
                       _%$%e211703212003%_
                       _%$%hd211704212006%_
                       _%$%tl211705212008%_
                       _%$%e211706212011%_
                       _%$%hd211707212014%_
                       _%$%tl211708212016%_
                       _%$%e211709212019%_
                       _%$%hd211710212022%_
                       _%$%tl211711212024%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop211715212056%_
                                           _%$%target211712212027%_
                                           '()))
                                        (_%__match213985213986%_
                                         _%$%e211676211933%_
                                         _%$%hd211677211936%_
                                         _%$%tl211678211938%_
                                         _%$%e211688211963%_
                                         _%$%hd211689211966%_
                                         _%$%tl211690211968%_
                                         _%$%e211691211971%_
                                         _%$%hd211692211974%_
                                         _%$%tl211693211976%_
                                         _%$%e211694211979%_
                                         _%$%hd211695211982%_
                                         _%$%tl211696211984%_
                                         _%$%e211697211987%_
                                         _%$%hd211698211990%_
                                         _%$%tl211699211992%_
                                         _%$%e211700211995%_
                                         _%$%hd211701211998%_
                                         _%$%tl211702212000%_
                                         _%$%e211703212003%_
                                         _%$%hd211704212006%_
                                         _%$%tl211705212008%_
                                         _%$%e211706212011%_
                                         _%$%hd211707212014%_
                                         _%$%tl211708212016%_
                                         _%$%e211709212019%_
                                         _%$%hd211710212022%_
                                         _%$%tl211711212024%_))
                                    (_%__match213985213986%_
                                     _%$%e211676211933%_
                                     _%$%hd211677211936%_
                                     _%$%tl211678211938%_
                                     _%$%e211688211963%_
                                     _%$%hd211689211966%_
                                     _%$%tl211690211968%_
                                     _%$%e211691211971%_
                                     _%$%hd211692211974%_
                                     _%$%tl211693211976%_
                                     _%$%e211694211979%_
                                     _%$%hd211695211982%_
                                     _%$%tl211696211984%_
                                     _%$%e211697211987%_
                                     _%$%hd211698211990%_
                                     _%$%tl211699211992%_
                                     _%$%e211700211995%_
                                     _%$%hd211701211998%_
                                     _%$%tl211702212000%_
                                     _%$%e211703212003%_
                                     _%$%hd211704212006%_
                                     _%$%tl211705212008%_
                                     _%$%e211706212011%_
                                     _%$%hd211707212014%_
                                     _%$%tl211708212016%_
                                     _%$%e211709212019%_
                                     _%$%hd211710212022%_
                                     _%$%tl211711212024%_))))
                            (_%__match213985213986%_
                             _%$%e211676211933%_
                             _%$%hd211677211936%_
                             _%$%tl211678211938%_
                             _%$%e211688211963%_
                             _%$%hd211689211966%_
                             _%$%tl211690211968%_
                             _%$%e211691211971%_
                             _%$%hd211692211974%_
                             _%$%tl211693211976%_
                             _%$%e211694211979%_
                             _%$%hd211695211982%_
                             _%$%tl211696211984%_
                             _%$%e211697211987%_
                             _%$%hd211698211990%_
                             _%$%tl211699211992%_
                             _%$%e211700211995%_
                             _%$%hd211701211998%_
                             _%$%tl211702212000%_
                             _%$%e211703212003%_
                             _%$%hd211704212006%_
                             _%$%tl211705212008%_
                             _%$%e211706212011%_
                             _%$%hd211707212014%_
                             _%$%tl211708212016%_
                             _%$%e211709212019%_
                             _%$%hd211710212022%_
                             _%$%tl211711212024%_))
                        (_%__match213985213986%_
                         _%$%e211676211933%_
                         _%$%hd211677211936%_
                         _%$%tl211678211938%_
                         _%$%e211688211963%_
                         _%$%hd211689211966%_
                         _%$%tl211690211968%_
                         _%$%e211691211971%_
                         _%$%hd211692211974%_
                         _%$%tl211693211976%_
                         _%$%e211694211979%_
                         _%$%hd211695211982%_
                         _%$%tl211696211984%_
                         _%$%e211697211987%_
                         _%$%hd211698211990%_
                         _%$%tl211699211992%_
                         _%$%e211700211995%_
                         _%$%hd211701211998%_
                         _%$%tl211702212000%_
                         _%$%e211703212003%_
                         _%$%hd211704212006%_
                         _%$%tl211705212008%_
                         _%$%e211706212011%_
                         _%$%hd211707212014%_
                         _%$%tl211708212016%_
                         _%$%e211709212019%_
                         _%$%hd211710212022%_
                         _%$%tl211711212024%_))
                    (_%__match213985213986%_
                     _%$%e211676211933%_
                     _%$%hd211677211936%_
                     _%$%tl211678211938%_
                     _%$%e211688211963%_
                     _%$%hd211689211966%_
                     _%$%tl211690211968%_
                     _%$%e211691211971%_
                     _%$%hd211692211974%_
                     _%$%tl211693211976%_
                     _%$%e211694211979%_
                     _%$%hd211695211982%_
                     _%$%tl211696211984%_
                     _%$%e211697211987%_
                     _%$%hd211698211990%_
                     _%$%tl211699211992%_
                     _%$%e211700211995%_
                     _%$%hd211701211998%_
                     _%$%tl211702212000%_
                     _%$%e211703212003%_
                     _%$%hd211704212006%_
                     _%$%tl211705212008%_
                     _%$%e211706212011%_
                     _%$%hd211707212014%_
                     _%$%tl211708212016%_
                     _%$%e211709212019%_
                     _%$%hd211710212022%_
                     _%$%tl211711212024%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match213985213986%_
                                                     _%$%e211676211933%_
                                                     _%$%hd211677211936%_
                                                     _%$%tl211678211938%_
                                                     _%$%e211688211963%_
                                                     _%$%hd211689211966%_
                                                     _%$%tl211690211968%_
                                                     _%$%e211691211971%_
                                                     _%$%hd211692211974%_
                                                     _%$%tl211693211976%_
                                                     _%$%e211694211979%_
                                                     _%$%hd211695211982%_
                                                     _%$%tl211696211984%_
                                                     _%$%e211697211987%_
                                                     _%$%hd211698211990%_
                                                     _%$%tl211699211992%_
                                                     _%$%e211700211995%_
                                                     _%$%hd211701211998%_
                                                     _%$%tl211702212000%_
                                                     _%$%e211703212003%_
                                                     _%$%hd211704212006%_
                                                     _%$%tl211705212008%_
                                                     _%$%e211706212011%_
                                                     _%$%hd211707212014%_
                                                     _%$%tl211708212016%_
                                                     _%$%e211709212019%_
                                                     _%$%hd211710212022%_
                                                     _%$%tl211711212024%_))))
                                            (_%__match213985213986%_
                                             _%$%e211676211933%_
                                             _%$%hd211677211936%_
                                             _%$%tl211678211938%_
                                             _%$%e211688211963%_
                                             _%$%hd211689211966%_
                                             _%$%tl211690211968%_
                                             _%$%e211691211971%_
                                             _%$%hd211692211974%_
                                             _%$%tl211693211976%_
                                             _%$%e211694211979%_
                                             _%$%hd211695211982%_
                                             _%$%tl211696211984%_
                                             _%$%e211697211987%_
                                             _%$%hd211698211990%_
                                             _%$%tl211699211992%_
                                             _%$%e211700211995%_
                                             _%$%hd211701211998%_
                                             _%$%tl211702212000%_
                                             _%$%e211703212003%_
                                             _%$%hd211704212006%_
                                             _%$%tl211705212008%_
                                             _%$%e211706212011%_
                                             _%$%hd211707212014%_
                                             _%$%tl211708212016%_
                                             _%$%e211709212019%_
                                             _%$%hd211710212022%_
                                             _%$%tl211711212024%_))))
                                    (_%__match213985213986%_
                                     _%$%e211676211933%_
                                     _%$%hd211677211936%_
                                     _%$%tl211678211938%_
                                     _%$%e211688211963%_
                                     _%$%hd211689211966%_
                                     _%$%tl211690211968%_
                                     _%$%e211691211971%_
                                     _%$%hd211692211974%_
                                     _%$%tl211693211976%_
                                     _%$%e211694211979%_
                                     _%$%hd211695211982%_
                                     _%$%tl211696211984%_
                                     _%$%e211697211987%_
                                     _%$%hd211698211990%_
                                     _%$%tl211699211992%_
                                     _%$%e211700211995%_
                                     _%$%hd211701211998%_
                                     _%$%tl211702212000%_
                                     _%$%e211703212003%_
                                     _%$%hd211704212006%_
                                     _%$%tl211705212008%_
                                     _%$%e211706212011%_
                                     _%$%hd211707212014%_
                                     _%$%tl211708212016%_
                                     _%$%e211709212019%_
                                     _%$%hd211710212022%_
                                     _%$%tl211711212024%_))
                                (_%__match213985213986%_
                                 _%$%e211676211933%_
                                 _%$%hd211677211936%_
                                 _%$%tl211678211938%_
                                 _%$%e211688211963%_
                                 _%$%hd211689211966%_
                                 _%$%tl211690211968%_
                                 _%$%e211691211971%_
                                 _%$%hd211692211974%_
                                 _%$%tl211693211976%_
                                 _%$%e211694211979%_
                                 _%$%hd211695211982%_
                                 _%$%tl211696211984%_
                                 _%$%e211697211987%_
                                 _%$%hd211698211990%_
                                 _%$%tl211699211992%_
                                 _%$%e211700211995%_
                                 _%$%hd211701211998%_
                                 _%$%tl211702212000%_
                                 _%$%e211703212003%_
                                 _%$%hd211704212006%_
                                 _%$%tl211705212008%_
                                 _%$%e211706212011%_
                                 _%$%hd211707212014%_
                                 _%$%tl211708212016%_
                                 _%$%e211709212019%_
                                 _%$%hd211710212022%_
                                 _%$%tl211711212024%_))
                            (_%__kont213888213889%_))))
                    (_%__kont213888213889%_))
                (_%__kont213888213889%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont213888213889%_))))
                                            (_%__kont213888213889%_))))
                                    (_%__kont213888213889%_))
                                (_%__kont213888213889%_))))
                        (_%__kont213888213889%_))
                    (_%__kont213888213889%_))
                (_%__kont213888213889%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont213888213889%_))))
                                        (_%__kont213888213889%_))
                                    (_%__kont213888213889%_))
                                (_%__kont213888213889%_))))
                        (_%__kont213888213889%_))))
                (_%__kont213888213889%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop211682211946%_
                                     _%$%target211679211941%_
                                     '()))))
                               (_%__match213903213904%_
                                (lambda (_%$%e211628212189%_
                                         _%$%hd211629212192%_
                                         _%$%tl211630212194%_
                                         _%__splice213876213877%_
                                         _%$%target211631212197%_
                                         _%$%tl211633212199%_)
                                  (letrec ((_%$%loop211634212202%_
                                            (lambda (_%$%hd211632212205%_
                                                     _%$%arg211638212207%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd211632212205%_))
                                                  (let ((_%$%e211635212209%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd211632212205%_))))
                                                    (let ((_%$%lp-tl211637212214%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211635212209%_)))
                                                          (_%$%lp-hd211636212212%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211635212209%_))))
                                                      (_%$%loop211634212202%_
                                                       _%$%lp-tl211637212214%_
                                                       (cons _%$%lp-hd211636212212%_
                                                             _%$%arg211638212207%_))))
                                                  (let ((_%$%arg211639212217%_
                                                         (reverse _%$%arg211638212207%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl211630212194%_))
                                                        (let ((_%$%e211640212219%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl211630212194%_))))
                  (let ((_%$%tl211642212224%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e211640212219%_)))
                        (_%$%hd211641212222%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e211640212219%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd211641212222%_))
                        (let ((_%$%e211643212227%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd211641212222%_))))
                          (let ((_%$%tl211645212232%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211643212227%_)))
                                (_%$%hd211644212230%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211643212227%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd211644212230%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd211644212230%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl211645212232%_))
                                        (let ((_%$%e211646212235%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl211645212232%_))))
                                          (let ((_%$%tl211648212240%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e211646212235%_)))
                                                (_%$%hd211647212238%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e211646212235%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd211647212238%_))
                                                (let ((_%$%e211649212243%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd211647212238%_))))
                                                  (let ((_%$%tl211651212248%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e211649212243%_)))
                                                        (_%$%hd211650212246%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e211649212243%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd211650212246%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd211650212246%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl211651212248%_))
                        (let ((_%$%e211652212251%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl211651212248%_))))
                          (let ((_%$%tl211654212256%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211652212251%_)))
                                (_%$%hd211653212254%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211652212251%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl211654212256%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%$%tl211648212240%_))
                                    (let ((_%__splice213878213879%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl211648212240%_
                                              '0))))
                                      (let ((_%$%tl211657212261%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice213878213879%_
                                                '1)))
                                            (_%$%target211655212259%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice213878213879%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl211657212261%_))
                                            (letrec ((_%$%loop211658212264%_
                                                      (lambda (_%$%hd211656212267%_
                                                               _%$%xarg211662212269%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd211656212267%_))
                                                            (let ((_%$%e211659212271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd211656212267%_))))
                      (let ((_%$%lp-tl211661212276%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e211659212271%_)))
                            (_%$%lp-hd211660212274%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e211659212271%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%lp-hd211660212274%_))
                            (let ((_%$%e211664212279%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%lp-hd211660212274%_))))
                              (let ((_%$%tl211666212284%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e211664212279%_)))
                                    (_%$%hd211665212282%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e211664212279%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd211665212282%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%$%hd211665212282%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl211666212284%_))
                                            (let ((_%$%e211667212287%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl211666212284%_))))
                                              (let ((_%$%tl211669212292%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e211667212287%_)))
                                                    (_%$%hd211668212290%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e211667212287%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl211669212292%_))
                                                    (_%$%loop211658212264%_
                                                     _%$%lp-tl211661212276%_
                                                     (cons _%$%hd211668212290%_
                                                           _%$%xarg211662212269%_))
                                                    (_%__match213915213916%_
                                                     _%$%e211628212189%_
                                                     _%$%hd211629212192%_
                                                     _%$%tl211630212194%_
                                                     _%__splice213876213877%_
                                                     _%$%target211631212197%_
                                                     _%$%tl211633212199%_))))
                                            (_%__match213915213916%_
                                             _%$%e211628212189%_
                                             _%$%hd211629212192%_
                                             _%$%tl211630212194%_
                                             _%__splice213876213877%_
                                             _%$%target211631212197%_
                                             _%$%tl211633212199%_))
                                        (_%__match213915213916%_
                                         _%$%e211628212189%_
                                         _%$%hd211629212192%_
                                         _%$%tl211630212194%_
                                         _%__splice213876213877%_
                                         _%$%target211631212197%_
                                         _%$%tl211633212199%_))
                                    (_%__match213915213916%_
                                     _%$%e211628212189%_
                                     _%$%hd211629212192%_
                                     _%$%tl211630212194%_
                                     _%__splice213876213877%_
                                     _%$%target211631212197%_
                                     _%$%tl211633212199%_))))
                            (_%__match213915213916%_
                             _%$%e211628212189%_
                             _%$%hd211629212192%_
                             _%$%tl211630212194%_
                             _%__splice213876213877%_
                             _%$%target211631212197%_
                             _%$%tl211633212199%_))))
                    (let ((_%$%xarg211663212295%_
                           (reverse _%$%xarg211662212269%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl211642212224%_))
                          (let ((_%$%g211625212297%_ _%$%xarg211663212295%_)
                                (_%$%g211626212298%_ _%$%hd211653212254%_)
                                (_%$%g211627212299%_ _%$%arg211639212217%_))
                            (if (and (let ((__tmp215167
                                            (let ((__tmp215168
                                                   (lambda (_%$%g212327212330%_
                                                            _%$%g212328212332%_)
                                                     (cons _%$%g212327212330%_
                                                           _%$%g212328212332%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp215168
                                               '()
                                               _%$%g211627212299%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp215167))
                                     (let ((__tmp215171
                                            (length (let ((__tmp215172
                                                           (lambda (_%$%g212334212337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g212335212339%_)
                     (cons _%$%g212334212337%_ _%$%g212335212339%_))))
              (declare (not safe))
              (foldr__0 __tmp215172 '() _%$%g211627212299%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp215169
                                            (length (let ((__tmp215170
                                                           (lambda (_%$%g212341212344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g212342212346%_)
                     (cons _%$%g212341212344%_ _%$%g212342212346%_))))
              (declare (not safe))
              (foldr__0 __tmp215170 '() _%$%g211625212297%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp215171 __tmp215169))
                                     (let ((__tmp215175
                                            (let ((__tmp215176
                                                   (lambda (_%$%g212348212351%_
                                                            _%$%g212349212353%_)
                                                     (cons _%$%g212348212351%_
                                                           _%$%g212349212353%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp215176
                                               '()
                                               _%$%g211627212299%_)))
                                           (__tmp215173
                                            (let ((__tmp215174
                                                   (lambda (_%$%g212355212358%_
                                                            _%$%g212356212360%_)
                                                     (cons _%$%g212355212358%_
                                                           _%$%g212356212360%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp215174
                                               '()
                                               _%$%g211625212297%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp215175
                                        __tmp215173))
                                     (not (let ((__tmp215179
                                                 (lambda (_%$%g212362212364%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g212362212364%_
                                                      _%$%g211626212298%_))))
                                                (__tmp215177
                                                 (let ((__tmp215178
                                                        (lambda (_%$%g212366212369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g212367212371%_)
                  (cons _%$%g212366212369%_ _%$%g212367212371%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp215178
                                                    '()
                                                    _%$%g211627212299%_))))
                                            (declare (not safe))
                                            (__find __tmp215179 __tmp215177))))
                                (_%__kont213874213875%_
                                 _%$%g211625212297%_
                                 _%$%g211626212298%_
                                 _%$%g211627212299%_)
                                (_%__match213915213916%_
                                 _%$%e211628212189%_
                                 _%$%hd211629212192%_
                                 _%$%tl211630212194%_
                                 _%__splice213876213877%_
                                 _%$%target211631212197%_
                                 _%$%tl211633212199%_)))
                          (_%__match213915213916%_
                           _%$%e211628212189%_
                           _%$%hd211629212192%_
                           _%$%tl211630212194%_
                           _%__splice213876213877%_
                           _%$%target211631212197%_
                           _%$%tl211633212199%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop211658212264%_
                                               _%$%target211655212259%_
                                               '()))
                                            (_%__match213915213916%_
                                             _%$%e211628212189%_
                                             _%$%hd211629212192%_
                                             _%$%tl211630212194%_
                                             _%__splice213876213877%_
                                             _%$%target211631212197%_
                                             _%$%tl211633212199%_))))
                                    (_%__match213915213916%_
                                     _%$%e211628212189%_
                                     _%$%hd211629212192%_
                                     _%$%tl211630212194%_
                                     _%__splice213876213877%_
                                     _%$%target211631212197%_
                                     _%$%tl211633212199%_))
                                (_%__match213915213916%_
                                 _%$%e211628212189%_
                                 _%$%hd211629212192%_
                                 _%$%tl211630212194%_
                                 _%__splice213876213877%_
                                 _%$%target211631212197%_
                                 _%$%tl211633212199%_))))
                        (_%__match213915213916%_
                         _%$%e211628212189%_
                         _%$%hd211629212192%_
                         _%$%tl211630212194%_
                         _%__splice213876213877%_
                         _%$%target211631212197%_
                         _%$%tl211633212199%_))
                    (_%__match213915213916%_
                     _%$%e211628212189%_
                     _%$%hd211629212192%_
                     _%$%tl211630212194%_
                     _%__splice213876213877%_
                     _%$%target211631212197%_
                     _%$%tl211633212199%_))
                (_%__match213915213916%_
                 _%$%e211628212189%_
                 _%$%hd211629212192%_
                 _%$%tl211630212194%_
                 _%__splice213876213877%_
                 _%$%target211631212197%_
                 _%$%tl211633212199%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match213915213916%_
                                                 _%$%e211628212189%_
                                                 _%$%hd211629212192%_
                                                 _%$%tl211630212194%_
                                                 _%__splice213876213877%_
                                                 _%$%target211631212197%_
                                                 _%$%tl211633212199%_))))
                                        (_%__match213915213916%_
                                         _%$%e211628212189%_
                                         _%$%hd211629212192%_
                                         _%$%tl211630212194%_
                                         _%__splice213876213877%_
                                         _%$%target211631212197%_
                                         _%$%tl211633212199%_))
                                    (_%__match213915213916%_
                                     _%$%e211628212189%_
                                     _%$%hd211629212192%_
                                     _%$%tl211630212194%_
                                     _%__splice213876213877%_
                                     _%$%target211631212197%_
                                     _%$%tl211633212199%_))
                                (_%__match213915213916%_
                                 _%$%e211628212189%_
                                 _%$%hd211629212192%_
                                 _%$%tl211630212194%_
                                 _%__splice213876213877%_
                                 _%$%target211631212197%_
                                 _%$%tl211633212199%_))))
                        (_%__match213915213916%_
                         _%$%e211628212189%_
                         _%$%hd211629212192%_
                         _%$%tl211630212194%_
                         _%__splice213876213877%_
                         _%$%target211631212197%_
                         _%$%tl211633212199%_))))
                (_%__match213915213916%_
                 _%$%e211628212189%_
                 _%$%hd211629212192%_
                 _%$%tl211630212194%_
                 _%__splice213876213877%_
                 _%$%target211631212197%_
                 _%$%tl211633212199%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop211634212202%_
                                     _%$%target211631212197%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx213872213873%_))
                              (let ((_%$%e211628212189%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx213872213873%_))))
                                (let ((_%$%tl211630212194%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e211628212189%_)))
                                      (_%$%hd211629212192%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e211628212189%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd211629212192%_))
                                      (let ((_%__splice213876213877%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%hd211629212192%_
                                                '0))))
                                        (let ((_%$%tl211633212199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice213876213877%_
                                                  '1)))
                                              (_%$%target211631212197%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice213876213877%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl211633212199%_))
                                              (_%__match213903213904%_
                                               _%$%e211628212189%_
                                               _%$%hd211629212192%_
                                               _%$%tl211630212194%_
                                               _%__splice213876213877%_
                                               _%$%target211631212197%_
                                               _%$%tl211633212199%_)
                                              (_%__match213915213916%_
                                               _%$%e211628212189%_
                                               _%$%hd211629212192%_
                                               _%$%tl211630212194%_
                                               _%__splice213876213877%_
                                               _%$%target211631212197%_
                                               _%$%tl211633212199%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl211630212194%_))
                                          (let ((_%$%e211743211800%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl211630212194%_))))
                                            (let ((_%$%tl211745211805%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e211743211800%_)))
                                                  (_%$%hd211744211803%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e211743211800%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd211744211803%_))
                                                  (let ((_%$%e211746211808%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd211744211803%_))))
                                                    (let ((_%$%tl211748211813%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211746211808%_)))
                                                          (_%$%hd211747211811%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211746211808%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd211747211811%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%$%hd211747211811%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl211748211813%_))
                          (let ((_%$%e211749211816%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl211748211813%_))))
                            (let ((_%$%tl211751211821%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e211749211816%_)))
                                  (_%$%hd211750211819%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e211749211816%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd211750211819%_))
                                  (let ((_%$%e211752211824%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd211750211819%_))))
                                    (let ((_%$%tl211754211829%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e211752211824%_)))
                                          (_%$%hd211753211827%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e211752211824%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd211753211827%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd211753211827%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl211754211829%_))
                                                  (let ((_%$%e211755211832%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl211754211829%_))))
                                                    (let ((_%$%tl211757211837%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211755211832%_)))
                                                          (_%$%hd211756211835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211755211832%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl211757211837%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl211751211821%_))
                      (let ((_%$%e211758211840%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl211751211821%_))))
                        (let ((_%$%tl211760211845%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e211758211840%_)))
                              (_%$%hd211759211843%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e211758211840%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd211759211843%_))
                              (let ((_%$%e211761211848%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd211759211843%_))))
                                (let ((_%$%tl211763211853%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e211761211848%_)))
                                      (_%$%hd211762211851%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e211761211848%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd211762211851%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd211762211851%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl211763211853%_))
                                              (let ((_%$%e211764211856%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl211763211853%_))))
                                                (let ((_%$%tl211766211861%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e211764211856%_)))
                                                      (_%$%hd211765211859%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e211764211856%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl211766211861%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl211760211845%_))
                                                          (let ((_%$%e211767211864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl211760211845%_))))
                    (let ((_%$%tl211769211869%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e211767211864%_)))
                          (_%$%hd211768211867%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e211767211864%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd211768211867%_))
                          (let ((_%$%e211770211872%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd211768211867%_))))
                            (let ((_%$%tl211772211877%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e211770211872%_)))
                                  (_%$%hd211771211875%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e211770211872%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd211771211875%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#ref
                                         _%$%hd211771211875%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl211772211877%_))
                                          (let ((_%$%e211773211880%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl211772211877%_))))
                                            (let ((_%$%tl211775211885%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e211773211880%_)))
                                                  (_%$%hd211774211883%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e211773211880%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl211775211885%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl211769211869%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl211745211805%_))
                                                          (_%__match214013214014%_
                                                           _%$%e211628212189%_
                                                           _%$%hd211629212192%_
                                                           _%$%tl211630212194%_
                                                           _%$%e211743211800%_
                                                           _%$%hd211744211803%_
                                                           _%$%tl211745211805%_
                                                           _%$%e211746211808%_
                                                           _%$%hd211747211811%_
                                                           _%$%tl211748211813%_
                                                           _%$%e211749211816%_
                                                           _%$%hd211750211819%_
                                                           _%$%tl211751211821%_
                                                           _%$%e211752211824%_
                                                           _%$%hd211753211827%_
                                                           _%$%tl211754211829%_
                                                           _%$%e211755211832%_
                                                           _%$%hd211756211835%_
                                                           _%$%tl211757211837%_
                                                           _%$%e211758211840%_
                                                           _%$%hd211759211843%_
                                                           _%$%tl211760211845%_
                                                           _%$%e211761211848%_
                                                           _%$%hd211762211851%_
                                                           _%$%tl211763211853%_
                                                           _%$%e211764211856%_
                                                           _%$%hd211765211859%_
                                                           _%$%tl211766211861%_
                                                           _%$%e211767211864%_
                                                           _%$%hd211768211867%_
                                                           _%$%tl211769211869%_
                                                           _%$%e211770211872%_
                                                           _%$%hd211771211875%_
                                                           _%$%tl211772211877%_
                                                           _%$%e211773211880%_
                                                           _%$%hd211774211883%_
                                                           _%$%tl211775211885%_)
                                                          (_%__kont213888213889%_))
                                                      (_%__kont213888213889%_))
                                                  (_%__kont213888213889%_))))
                                          (_%__kont213888213889%_))
                                      (_%__kont213888213889%_))
                                  (_%__kont213888213889%_))))
                          (_%__kont213888213889%_))))
                  (_%__kont213888213889%_))
              (_%__kont213888213889%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont213888213889%_))
                                          (_%__kont213888213889%_))
                                      (_%__kont213888213889%_))))
                              (_%__kont213888213889%_))))
                      (_%__kont213888213889%_))
                  (_%__kont213888213889%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont213888213889%_))
                                              (_%__kont213888213889%_))
                                          (_%__kont213888213889%_))))
                                  (_%__kont213888213889%_))))
                          (_%__kont213888213889%_))
                      (_%__kont213888213889%_))
                  (_%__kont213888213889%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont213888213889%_))))
                                          (_%__kont213888213889%_)))))
                              (_%__kont213888213889%_)))))))
                 (_%dispatch-case-e210938%_
                  (lambda (_%hd211085%_ _%body211086%_)
                    (let* ((_%form211088%_
                            (cons _%hd211085%_ (cons _%body211086%_ '())))
                           (_%__stx214016214017%_ _%form211088%_)
                           (_%$%g211092211216%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx214016214017%_)))))
                      (let ((_%__kont214018214019%_
                             (lambda (_%$%g211094211581%_
                                      _%$%g211095211582%_
                                      _%$%g211096211583%_)
                               (let ((__tmp215180
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g211095211582%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self210934%_
                                  __tmp215180))))
                            (_%__kont214024214025%_
                             (lambda (_%$%g211139211433%_
                                      _%$%g211140211434%_
                                      _%$%g211141211435%_
                                      _%$%g211142211436%_)
                               (let ((__tmp215181
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g211139211433%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self210934%_
                                  __tmp215181))))
                            (_%__kont214028214029%_
                             (lambda (_%$%g211179211301%_
                                      _%$%g211180211302%_
                                      _%$%g211181211303%_)
                               (let ((__tmp215182
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g211179211301%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self210934%_
                                  __tmp215182)))))
                        (let* ((_%__match214125214126%_
                                (lambda (_%$%e211182211221%_
                                         _%$%hd211183211224%_
                                         _%$%tl211184211226%_
                                         _%$%e211185211229%_
                                         _%$%hd211186211232%_
                                         _%$%tl211187211234%_
                                         _%$%e211188211237%_
                                         _%$%hd211189211240%_
                                         _%$%tl211190211242%_
                                         _%$%e211191211245%_
                                         _%$%hd211192211248%_
                                         _%$%tl211193211250%_
                                         _%$%e211194211253%_
                                         _%$%hd211195211256%_
                                         _%$%tl211196211258%_
                                         _%$%e211197211261%_
                                         _%$%hd211198211264%_
                                         _%$%tl211199211266%_
                                         _%$%e211200211269%_
                                         _%$%hd211201211272%_
                                         _%$%tl211202211274%_
                                         _%$%e211203211277%_
                                         _%$%hd211204211280%_
                                         _%$%tl211205211282%_
                                         _%$%e211206211285%_
                                         _%$%hd211207211288%_
                                         _%$%tl211208211290%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl211202211274%_))
                                      (let ((_%$%e211209211293%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl211202211274%_))))
                                        (let ((_%$%tl211211211298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e211209211293%_)))
                                              (_%$%hd211210211296%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e211209211293%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl211211211298%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl211187211234%_))
                                                  (_%__kont214028214029%_
                                                   _%$%hd211207211288%_
                                                   _%$%hd211198211264%_
                                                   _%$%hd211183211224%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g211092211216%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g211092211216%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g211092211216%_)))))
                               (_%__match214055214056%_
                                (lambda (_%$%e211143211339%_
                                         _%$%hd211144211342%_
                                         _%$%tl211145211344%_
                                         _%__splice214026214027%_
                                         _%$%target211146211347%_
                                         _%$%tl211148211349%_)
                                  (letrec ((_%$%loop211149211352%_
                                            (lambda (_%$%hd211147211355%_
                                                     _%$%arg211153211357%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd211147211355%_))
                                                  (let ((_%$%e211150211359%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd211147211355%_))))
                                                    (let ((_%$%lp-tl211152211364%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211150211359%_)))
                                                          (_%$%lp-hd211151211362%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211150211359%_))))
                                                      (_%$%loop211149211352%_
                                                       _%$%lp-tl211152211364%_
                                                       (cons _%$%lp-hd211151211362%_
                                                             _%$%arg211153211357%_))))
                                                  (let ((_%$%arg211154211367%_
                                                         (reverse _%$%arg211153211357%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl211145211344%_))
                                                        (let ((_%$%e211155211369%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl211145211344%_))))
                  (let ((_%$%tl211157211374%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e211155211369%_)))
                        (_%$%hd211156211372%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e211155211369%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd211156211372%_))
                        (let ((_%$%e211158211377%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd211156211372%_))))
                          (let ((_%$%tl211160211382%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211158211377%_)))
                                (_%$%hd211159211380%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211158211377%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd211159211380%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd211159211380%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl211160211382%_))
                                        (let ((_%$%e211161211385%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl211160211382%_))))
                                          (let ((_%$%tl211163211390%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e211161211385%_)))
                                                (_%$%hd211162211388%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e211161211385%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd211162211388%_))
                                                (let ((_%$%e211164211393%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd211162211388%_))))
                                                  (let ((_%$%tl211166211398%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e211164211393%_)))
                                                        (_%$%hd211165211396%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e211164211393%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd211165211396%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd211165211396%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl211166211398%_))
                        (let ((_%$%e211167211401%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl211166211398%_))))
                          (let ((_%$%tl211169211406%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211167211401%_)))
                                (_%$%hd211168211404%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211167211401%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl211169211406%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl211163211390%_))
                                    (let ((_%$%e211170211409%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl211163211390%_))))
                                      (let ((_%$%tl211172211414%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e211170211409%_)))
                                            (_%$%hd211171211412%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e211170211409%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd211171211412%_))
                                            (let ((_%$%e211173211417%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd211171211412%_))))
                                              (let ((_%$%tl211175211422%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e211173211417%_)))
                                                    (_%$%hd211174211420%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e211173211417%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd211174211420%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd211174211420%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl211175211422%_))
                                                            (let ((_%$%e211176211425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl211175211422%_))))
                      (let ((_%$%tl211178211430%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e211176211425%_)))
                            (_%$%hd211177211428%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e211176211425%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl211178211430%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl211157211374%_))
                                (_%__kont214024214025%_
                                 _%$%hd211177211428%_
                                 _%$%hd211168211404%_
                                 _%$%tl211148211349%_
                                 _%$%arg211154211367%_)
                                (_%__match214125214126%_
                                 _%$%e211143211339%_
                                 _%$%hd211144211342%_
                                 _%$%tl211145211344%_
                                 _%$%e211155211369%_
                                 _%$%hd211156211372%_
                                 _%$%tl211157211374%_
                                 _%$%e211158211377%_
                                 _%$%hd211159211380%_
                                 _%$%tl211160211382%_
                                 _%$%e211161211385%_
                                 _%$%hd211162211388%_
                                 _%$%tl211163211390%_
                                 _%$%e211164211393%_
                                 _%$%hd211165211396%_
                                 _%$%tl211166211398%_
                                 _%$%e211167211401%_
                                 _%$%hd211168211404%_
                                 _%$%tl211169211406%_
                                 _%$%e211170211409%_
                                 _%$%hd211171211412%_
                                 _%$%tl211172211414%_
                                 _%$%e211173211417%_
                                 _%$%hd211174211420%_
                                 _%$%tl211175211422%_
                                 _%$%e211176211425%_
                                 _%$%hd211177211428%_
                                 _%$%tl211178211430%_))
                            (let ()
                              (declare (not safe))
                              (_%$%g211092211216%_)))))
                    (let () (declare (not safe)) (_%$%g211092211216%_)))
                (let () (declare (not safe)) (_%$%g211092211216%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g211092211216%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g211092211216%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g211092211216%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g211092211216%_)))))
                        (let () (declare (not safe)) (_%$%g211092211216%_)))
                    (let () (declare (not safe)) (_%$%g211092211216%_)))
                (let () (declare (not safe)) (_%$%g211092211216%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g211092211216%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g211092211216%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g211092211216%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g211092211216%_)))))
                        (let () (declare (not safe)) (_%$%g211092211216%_)))))
                (let () (declare (not safe)) (_%$%g211092211216%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop211149211352%_
                                     _%$%target211146211347%_
                                     '()))))
                               (_%__match214043214044%_
                                (lambda (_%$%e211097211473%_
                                         _%$%hd211098211476%_
                                         _%$%tl211099211478%_
                                         _%__splice214020214021%_
                                         _%$%target211100211481%_
                                         _%$%tl211102211483%_)
                                  (letrec ((_%$%loop211103211486%_
                                            (lambda (_%$%hd211101211489%_
                                                     _%$%arg211107211491%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd211101211489%_))
                                                  (let ((_%$%e211104211493%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd211101211489%_))))
                                                    (let ((_%$%lp-tl211106211498%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211104211493%_)))
                                                          (_%$%lp-hd211105211496%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211104211493%_))))
                                                      (_%$%loop211103211486%_
                                                       _%$%lp-tl211106211498%_
                                                       (cons _%$%lp-hd211105211496%_
                                                             _%$%arg211107211491%_))))
                                                  (let ((_%$%arg211108211501%_
                                                         (reverse _%$%arg211107211491%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl211099211478%_))
                                                        (let ((_%$%e211109211503%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl211099211478%_))))
                  (let ((_%$%tl211111211508%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e211109211503%_)))
                        (_%$%hd211110211506%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e211109211503%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd211110211506%_))
                        (let ((_%$%e211112211511%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd211110211506%_))))
                          (let ((_%$%tl211114211516%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211112211511%_)))
                                (_%$%hd211113211514%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211112211511%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd211113211514%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd211113211514%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl211114211516%_))
                                        (let ((_%$%e211115211519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl211114211516%_))))
                                          (let ((_%$%tl211117211524%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e211115211519%_)))
                                                (_%$%hd211116211522%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e211115211519%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd211116211522%_))
                                                (let ((_%$%e211118211527%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd211116211522%_))))
                                                  (let ((_%$%tl211120211532%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e211118211527%_)))
                                                        (_%$%hd211119211530%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e211118211527%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd211119211530%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd211119211530%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl211120211532%_))
                        (let ((_%$%e211121211535%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl211120211532%_))))
                          (let ((_%$%tl211123211540%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211121211535%_)))
                                (_%$%hd211122211538%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211121211535%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl211123211540%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%$%tl211117211524%_))
                                    (let ((_%__splice214022214023%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl211117211524%_
                                              '0))))
                                      (let ((_%$%tl211126211545%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214022214023%_
                                                '1)))
                                            (_%$%target211124211543%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214022214023%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl211126211545%_))
                                            (letrec ((_%$%loop211127211548%_
                                                      (lambda (_%$%hd211125211551%_
                                                               _%$%xarg211131211553%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd211125211551%_))
                                                            (let ((_%$%e211128211555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd211125211551%_))))
                      (let ((_%$%lp-tl211130211560%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e211128211555%_)))
                            (_%$%lp-hd211129211558%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e211128211555%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%lp-hd211129211558%_))
                            (let ((_%$%e211133211563%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%lp-hd211129211558%_))))
                              (let ((_%$%tl211135211568%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e211133211563%_)))
                                    (_%$%hd211134211566%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e211133211563%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd211134211566%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%$%hd211134211566%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl211135211568%_))
                                            (let ((_%$%e211136211571%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl211135211568%_))))
                                              (let ((_%$%tl211138211576%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e211136211571%_)))
                                                    (_%$%hd211137211574%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e211136211571%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl211138211576%_))
                                                    (_%$%loop211127211548%_
                                                     _%$%lp-tl211130211560%_
                                                     (cons _%$%hd211137211574%_
                                                           _%$%xarg211131211553%_))
                                                    (_%__match214055214056%_
                                                     _%$%e211097211473%_
                                                     _%$%hd211098211476%_
                                                     _%$%tl211099211478%_
                                                     _%__splice214020214021%_
                                                     _%$%target211100211481%_
                                                     _%$%tl211102211483%_))))
                                            (_%__match214055214056%_
                                             _%$%e211097211473%_
                                             _%$%hd211098211476%_
                                             _%$%tl211099211478%_
                                             _%__splice214020214021%_
                                             _%$%target211100211481%_
                                             _%$%tl211102211483%_))
                                        (_%__match214055214056%_
                                         _%$%e211097211473%_
                                         _%$%hd211098211476%_
                                         _%$%tl211099211478%_
                                         _%__splice214020214021%_
                                         _%$%target211100211481%_
                                         _%$%tl211102211483%_))
                                    (_%__match214055214056%_
                                     _%$%e211097211473%_
                                     _%$%hd211098211476%_
                                     _%$%tl211099211478%_
                                     _%__splice214020214021%_
                                     _%$%target211100211481%_
                                     _%$%tl211102211483%_))))
                            (_%__match214055214056%_
                             _%$%e211097211473%_
                             _%$%hd211098211476%_
                             _%$%tl211099211478%_
                             _%__splice214020214021%_
                             _%$%target211100211481%_
                             _%$%tl211102211483%_))))
                    (let ((_%$%xarg211132211579%_
                           (reverse _%$%xarg211131211553%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl211111211508%_))
                          (_%__kont214018214019%_
                           _%$%xarg211132211579%_
                           _%$%hd211122211538%_
                           _%$%arg211108211501%_)
                          (_%__match214055214056%_
                           _%$%e211097211473%_
                           _%$%hd211098211476%_
                           _%$%tl211099211478%_
                           _%__splice214020214021%_
                           _%$%target211100211481%_
                           _%$%tl211102211483%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop211127211548%_
                                               _%$%target211124211543%_
                                               '()))
                                            (_%__match214055214056%_
                                             _%$%e211097211473%_
                                             _%$%hd211098211476%_
                                             _%$%tl211099211478%_
                                             _%__splice214020214021%_
                                             _%$%target211100211481%_
                                             _%$%tl211102211483%_))))
                                    (_%__match214055214056%_
                                     _%$%e211097211473%_
                                     _%$%hd211098211476%_
                                     _%$%tl211099211478%_
                                     _%__splice214020214021%_
                                     _%$%target211100211481%_
                                     _%$%tl211102211483%_))
                                (_%__match214055214056%_
                                 _%$%e211097211473%_
                                 _%$%hd211098211476%_
                                 _%$%tl211099211478%_
                                 _%__splice214020214021%_
                                 _%$%target211100211481%_
                                 _%$%tl211102211483%_))))
                        (_%__match214055214056%_
                         _%$%e211097211473%_
                         _%$%hd211098211476%_
                         _%$%tl211099211478%_
                         _%__splice214020214021%_
                         _%$%target211100211481%_
                         _%$%tl211102211483%_))
                    (_%__match214055214056%_
                     _%$%e211097211473%_
                     _%$%hd211098211476%_
                     _%$%tl211099211478%_
                     _%__splice214020214021%_
                     _%$%target211100211481%_
                     _%$%tl211102211483%_))
                (_%__match214055214056%_
                 _%$%e211097211473%_
                 _%$%hd211098211476%_
                 _%$%tl211099211478%_
                 _%__splice214020214021%_
                 _%$%target211100211481%_
                 _%$%tl211102211483%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match214055214056%_
                                                 _%$%e211097211473%_
                                                 _%$%hd211098211476%_
                                                 _%$%tl211099211478%_
                                                 _%__splice214020214021%_
                                                 _%$%target211100211481%_
                                                 _%$%tl211102211483%_))))
                                        (_%__match214055214056%_
                                         _%$%e211097211473%_
                                         _%$%hd211098211476%_
                                         _%$%tl211099211478%_
                                         _%__splice214020214021%_
                                         _%$%target211100211481%_
                                         _%$%tl211102211483%_))
                                    (_%__match214055214056%_
                                     _%$%e211097211473%_
                                     _%$%hd211098211476%_
                                     _%$%tl211099211478%_
                                     _%__splice214020214021%_
                                     _%$%target211100211481%_
                                     _%$%tl211102211483%_))
                                (_%__match214055214056%_
                                 _%$%e211097211473%_
                                 _%$%hd211098211476%_
                                 _%$%tl211099211478%_
                                 _%__splice214020214021%_
                                 _%$%target211100211481%_
                                 _%$%tl211102211483%_))))
                        (_%__match214055214056%_
                         _%$%e211097211473%_
                         _%$%hd211098211476%_
                         _%$%tl211099211478%_
                         _%__splice214020214021%_
                         _%$%target211100211481%_
                         _%$%tl211102211483%_))))
                (_%__match214055214056%_
                 _%$%e211097211473%_
                 _%$%hd211098211476%_
                 _%$%tl211099211478%_
                 _%__splice214020214021%_
                 _%$%target211100211481%_
                 _%$%tl211102211483%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop211103211486%_
                                     _%$%target211100211481%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx214016214017%_))
                              (let ((_%$%e211097211473%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx214016214017%_))))
                                (let ((_%$%tl211099211478%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e211097211473%_)))
                                      (_%$%hd211098211476%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e211097211473%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd211098211476%_))
                                      (let ((_%__splice214020214021%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%hd211098211476%_
                                                '0))))
                                        (let ((_%$%tl211102211483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice214020214021%_
                                                  '1)))
                                              (_%$%target211100211481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice214020214021%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl211102211483%_))
                                              (_%__match214043214044%_
                                               _%$%e211097211473%_
                                               _%$%hd211098211476%_
                                               _%$%tl211099211478%_
                                               _%__splice214020214021%_
                                               _%$%target211100211481%_
                                               _%$%tl211102211483%_)
                                              (_%__match214055214056%_
                                               _%$%e211097211473%_
                                               _%$%hd211098211476%_
                                               _%$%tl211099211478%_
                                               _%__splice214020214021%_
                                               _%$%target211100211481%_
                                               _%$%tl211102211483%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl211099211478%_))
                                          (let ((_%$%e211185211229%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl211099211478%_))))
                                            (let ((_%$%tl211187211234%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e211185211229%_)))
                                                  (_%$%hd211186211232%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e211185211229%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd211186211232%_))
                                                  (let ((_%$%e211188211237%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd211186211232%_))))
                                                    (let ((_%$%tl211190211242%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211188211237%_)))
                                                          (_%$%hd211189211240%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211188211237%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd211189211240%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%$%hd211189211240%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl211190211242%_))
                          (let ((_%$%e211191211245%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl211190211242%_))))
                            (let ((_%$%tl211193211250%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e211191211245%_)))
                                  (_%$%hd211192211248%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e211191211245%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd211192211248%_))
                                  (let ((_%$%e211194211253%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd211192211248%_))))
                                    (let ((_%$%tl211196211258%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e211194211253%_)))
                                          (_%$%hd211195211256%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e211194211253%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd211195211256%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd211195211256%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl211196211258%_))
                                                  (let ((_%$%e211197211261%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl211196211258%_))))
                                                    (let ((_%$%tl211199211266%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211197211261%_)))
                                                          (_%$%hd211198211264%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211197211261%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl211199211266%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl211193211250%_))
                      (let ((_%$%e211200211269%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl211193211250%_))))
                        (let ((_%$%tl211202211274%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e211200211269%_)))
                              (_%$%hd211201211272%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e211200211269%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd211201211272%_))
                              (let ((_%$%e211203211277%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd211201211272%_))))
                                (let ((_%$%tl211205211282%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e211203211277%_)))
                                      (_%$%hd211204211280%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e211203211277%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd211204211280%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd211204211280%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl211205211282%_))
                                              (let ((_%$%e211206211285%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl211205211282%_))))
                                                (let ((_%$%tl211208211290%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e211206211285%_)))
                                                      (_%$%hd211207211288%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e211206211285%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl211208211290%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl211202211274%_))
                                                          (let ((_%$%e211209211293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl211202211274%_))))
                    (let ((_%$%tl211211211298%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e211209211293%_)))
                          (_%$%hd211210211296%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e211209211293%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl211211211298%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl211187211234%_))
                              (_%__kont214028214029%_
                               _%$%hd211207211288%_
                               _%$%hd211198211264%_
                               _%$%hd211098211476%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g211092211216%_)))
                          (let ()
                            (declare (not safe))
                            (_%$%g211092211216%_)))))
                  (let () (declare (not safe)) (_%$%g211092211216%_)))
              (let () (declare (not safe)) (_%$%g211092211216%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g211092211216%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g211092211216%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g211092211216%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g211092211216%_)))))
                      (let () (declare (not safe)) (_%$%g211092211216%_)))
                  (let () (declare (not safe)) (_%$%g211092211216%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g211092211216%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g211092211216%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g211092211216%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g211092211216%_)))))
                          (let () (declare (not safe)) (_%$%g211092211216%_)))
                      (let () (declare (not safe)) (_%$%g211092211216%_)))
                  (let () (declare (not safe)) (_%$%g211092211216%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g211092211216%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g211092211216%_))))))
                              (let ()
                                (declare (not safe))
                                (_%$%g211092211216%_))))))))
                 (_%generate1210939%_
                  (lambda (_%args211070%_
                           _%arglen211071%_
                           _%hd211072%_
                           _%body211073%_)
                    (let* ((_%len211075%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd211072%_)))
                           (_%condition211080%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd211072%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen211071%_
                                                (cons _%len211075%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen211071%_ (cons _%len211075%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len211075%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen211071%_
                                                    (cons _%len211075%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen211071%_ (cons _%len211075%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch211082%_
                            (if (_%dispatch-case?210937%_
                                 _%hd211072%_
                                 _%body211073%_)
                                (_%dispatch-case-e210938%_
                                 _%hd211072%_
                                 _%body211073%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self210934%_
                                 _%hd211072%_
                                 _%body211073%_))))
                      (cons _%condition211080%_
                            (cons (cons 'apply
                                        (cons _%dispatch211082%_
                                              (cons _%args211070%_ '())))
                                  '()))))))
          (let* ((_%$%g210941210969%_
                  (lambda (_%$%g210942210966%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g210942210966%_))))
                 (_%$%g210940211067%_
                  (lambda (_%$%g210942210972%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g210942210972%_))
                        (let ((_%$%e210945210974%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g210942210972%_))))
                          (let ((_%$%hd210946210977%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e210945210974%_)))
                                (_%$%tl210947210979%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e210945210974%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl210947210979%_))
                                (let ((_g215183_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%$%tl210947210979%_
                                          '0))))
                                  (begin
                                    (let ((_g215184_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g215183_)
                                                 (##values-length _g215183_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g215184_ 2)))
                                          (error "Context expects 2 values"
                                                 _g215184_)))
                                    (let ((_%$%target210948210982%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g215183_ 0)))
                                          (_%$%tl210950210984%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g215183_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl210950210984%_))
                                          (letrec ((_%$%loop210951210987%_
                                                    (lambda (_%$%hd210949210990%_
                                                             _%$%body210955210992%_
                                                             _%$%hd210956210993%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd210949210990%_))
                                                          (let ((_%$%e210952210995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd210949210990%_))))
                    (let ((_%$%lp-hd210953210998%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e210952210995%_)))
                          (_%$%lp-tl210954211000%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e210952210995%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%lp-hd210953210998%_))
                          (let ((_%$%e210959211003%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%lp-hd210953210998%_))))
                            (let ((_%$%hd210960211006%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e210959211003%_)))
                                  (_%$%tl210961211008%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e210959211003%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl210961211008%_))
                                  (let ((_%$%e210962211011%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl210961211008%_))))
                                    (let ((_%$%hd210963211014%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e210962211011%_)))
                                          (_%$%tl210964211016%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e210962211011%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl210964211016%_))
                                          (_%$%loop210951210987%_
                                           _%$%lp-tl210954211000%_
                                           (cons _%$%hd210963211014%_
                                                 _%$%body210955210992%_)
                                           (cons _%$%hd210960211006%_
                                                 _%$%hd210956210993%_))
                                          (_%$%g210941210969%_
                                           _%$%g210942210972%_))))
                                  (_%$%g210941210969%_ _%$%g210942210972%_))))
                          (_%$%g210941210969%_ _%$%g210942210972%_))))
                  (let ((_%$%body210957211019%_
                         (reverse _%$%body210955210992%_))
                        (_%$%hd210958211020%_ (reverse _%$%hd210956210993%_)))
                    (let ((_%args211042%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%arglen211043%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%name211044%_
                           (let ((_%$e211039%_
                                  (let ((__tmp215185
                                         (let ()
                                           (declare (not safe))
                                           (gxc#current-compile-runtime-names))))
                                    (declare (not safe))
                                    (hash-get __tmp215185 _%stx210935%_))))
                             (if _%$e211039%_
                                 _%$e211039%_
                                 ''case-lambda-dispatch))))
                      (cons 'lambda
                            (cons _%args211042%_
                                  (cons (cons 'let
                                              (cons (cons (cons _%arglen211043%_
                                                                (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '##length (cons _%args211042%_ '()))
                                  (cons 'let
                                        (cons '()
                                              (cons '(declare (not safe))
                                                    (cons (cons '##length
                                                                (cons _%args211042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'cond
                                                                (let ((__tmp215187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (map (lambda (_%$%g211045211048%_
                                             _%$%g211046211050%_)
                                      (_%generate1210939%_
                                       _%args211042%_
                                       _%arglen211043%_
                                       _%$%g211045211048%_
                                       _%$%g211046211050%_))
                                    (let ((__tmp215188
                                           (lambda (_%$%g211052211055%_
                                                    _%$%g211053211057%_)
                                             (cons _%$%g211052211055%_
                                                   _%$%g211053211057%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp215188
                                       '()
                                       _%$%hd210958211020%_))
                                    (let ((__tmp215189
                                           (lambda (_%$%g211059211062%_
                                                    _%$%g211060211064%_)
                                             (cons _%$%g211059211062%_
                                                   _%$%g211060211064%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp215189
                                       '()
                                       _%$%body210957211019%_))))
                              (__tmp215186
                               (cons (cons 'else
                                           (cons (cons '##raise-wrong-number-of-arguments-exception
                                                       (cons _%name211044%_
                                                             (cons _%args211042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())))
                          (declare (not safe))
                          (##append __tmp215187 __tmp215186)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop210951210987%_
                                             _%$%target210948210982%_
                                             '()
                                             '()))
                                          (_%$%g210941210969%_
                                           _%$%g210942210972%_)))))
                                (_%$%g210941210969%_ _%$%g210942210972%_))))
                        (_%$%g210941210969%_ _%$%g210942210972%_)))))
            (_%$%g210940211067%_ _%stx210935%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self210171%_ _%stx210172%_ _%compiled-body?210173%_)
        (letrec ((_%generate-simple210175%_
                  (lambda (_%hd210919%_ _%body210920%_)
                    (_%coalesce-boolean210176%_
                     (_%simplify-let210177%_
                      (gxc#generate-runtime-simple-let
                       _%self210171%_
                       'let
                       _%hd210919%_
                       _%body210920%_
                       _%compiled-body?210173%_)))))
                 (_%coalesce-boolean210176%_
                  (lambda (_%code210780%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%$%code210781210807%_ _%code210780%_)
                               (_%$%else210783210815%_
                                (lambda () _%code210780%_))
                               (_%$%K210785210852%_
                                (lambda (_%expr2210818%_
                                         _%expr1210819%_
                                         _%id210820%_)
                                  (let* ((_%$%expr2210821210829%_
                                          _%expr2210818%_)
                                         (_%$%else210823210837%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1210819%_
                                                        (cons _%expr2210818%_
                                                              '())))))
                                         (_%$%K210825210842%_
                                          (lambda (_%exprs210840%_)
                                            (cons 'or
                                                  (cons _%expr1210819%_
                                                        _%exprs210840%_)))))
                                    (if (pair? _%$%expr2210821210829%_)
                                        (let ((_%$%hd210826210845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%expr2210821210829%_)))
                                              (_%$%tl210827210847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%expr2210821210829%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%$%hd210826210845%_
                                                       'or))
                                              (let ((_%exprs210850%_
                                                     _%$%tl210827210847%_))
                                                (_%$%K210825210842%_
                                                 _%exprs210850%_))
                                              (_%$%else210823210837%_)))
                                        (_%$%else210823210837%_))))))
                          (if (pair? _%$%code210781210807%_)
                              (let ((_%$%hd210786210855%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%code210781210807%_)))
                                    (_%$%tl210787210857%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%code210781210807%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%$%hd210786210855%_ 'let))
                                    (if (pair? _%$%tl210787210857%_)
                                        (let ((_%$%hd210788210860%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%tl210787210857%_)))
                                              (_%$%tl210789210862%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%tl210787210857%_))))
                                          (if (pair? _%$%hd210788210860%_)
                                              (let ((_%$%hd210800210865%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%hd210788210860%_)))
                                                    (_%$%tl210801210867%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%hd210788210860%_))))
                                                (if (pair? _%$%hd210800210865%_)
                                                    (let ((_%$%hd210802210870%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%hd210800210865%_)))
                                                          (_%$%tl210803210872%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%hd210800210865%_))))
                                                      (let ((_%id210875%_
                                                             _%$%hd210802210870%_))
                                                        (if (pair? _%$%tl210803210872%_)
                                                            (let ((_%$%hd210804210877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%$%tl210803210872%_)))
                          (_%$%tl210805210879%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%tl210803210872%_))))
                      (let ((_%expr1210882%_ _%$%hd210804210877%_))
                        (if (null? _%$%tl210805210879%_)
                            (if (null? _%$%tl210801210867%_)
                                (if (pair? _%$%tl210789210862%_)
                                    (let ((_%$%hd210790210884%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl210789210862%_)))
                                          (_%$%tl210791210886%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl210789210862%_))))
                                      (if (pair? _%$%hd210790210884%_)
                                          (let ((_%$%hd210792210889%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%hd210790210884%_)))
                                                (_%$%tl210793210891%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%hd210790210884%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd210792210889%_
                                                         'if))
                                                (if (pair? _%$%tl210793210891%_)
                                                    (let ((_%$%hd210794210894%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%tl210793210891%_)))
                                                          (_%$%tl210795210896%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%tl210793210891%_))))
                                                      (if (eq? _%$%hd210794210894%_
                                                               _%id210875%_)
                                                          (if (pair? _%$%tl210795210896%_)
                                                              (let ((_%$%hd210796210903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##car _%$%tl210795210896%_)))
                            (_%$%tl210797210905%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%tl210795210896%_))))
                        (if (eq? _%$%hd210796210903%_ _%id210875%_)
                            (if (pair? _%$%tl210797210905%_)
                                (let ((_%$%hd210798210912%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl210797210905%_)))
                                      (_%$%tl210799210914%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl210797210905%_))))
                                  (let ((_%expr2210917%_ _%$%hd210798210912%_))
                                    (if (null? _%$%tl210799210914%_)
                                        (if (null? _%$%tl210791210886%_)
                                            (_%$%K210785210852%_
                                             _%expr2210917%_
                                             _%expr1210882%_
                                             _%id210875%_)
                                            (_%$%else210783210815%_))
                                        (_%$%else210783210815%_))))
                                (_%$%else210783210815%_))
                            (_%$%else210783210815%_)))
                      (_%$%else210783210815%_))
                  (_%$%else210783210815%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else210783210815%_))
                                                (_%$%else210783210815%_)))
                                          (_%$%else210783210815%_)))
                                    (_%$%else210783210815%_))
                                (_%$%else210783210815%_))
                            (_%$%else210783210815%_))))
                    (_%$%else210783210815%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else210783210815%_)))
                                              (_%$%else210783210815%_)))
                                        (_%$%else210783210815%_))
                                    (_%$%else210783210815%_)))
                              (_%$%else210783210815%_)))
                        _%code210780%_)))
                 (_%simplify-let210177%_
                  (lambda (_%code210479%_)
                    (let* ((_%$%code210480210552%_ _%code210479%_)
                           (_%$%else210485210560%_ (lambda () _%code210479%_)))
                      (let ((_%$%K210544210760%_
                             (lambda (_%expr210758%_) _%expr210758%_))
                            (_%$%K210527210706%_
                             (lambda (_%body210702%_
                                      _%expr210703%_
                                      _%id210704%_)
                               (cons 'let
                                     (cons (cons (cons _%id210704%_
                                                       (cons _%expr210703%_
                                                             '()))
                                                 '())
                                           _%body210702%_))))
                            (_%$%K210504210630%_
                             (lambda (_%body210624%_
                                      _%expr2210625%_
                                      _%id2210626%_
                                      _%expr1210627%_
                                      _%id1210628%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1210628%_
                                                       (cons _%expr1210627%_
                                                             '()))
                                                 (cons (cons _%id2210626%_
                                                             (cons _%expr2210625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body210624%_))))
                            (_%$%K210487210569%_
                             (lambda (_%body210564%_
                                      _%bind210565%_
                                      _%expr1210566%_
                                      _%id1210567%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1210567%_
                                                       (cons _%expr1210566%_
                                                             '()))
                                                 _%bind210565%_)
                                           _%body210564%_)))))
                        (if (pair? _%$%code210480210552%_)
                            (let ((_%$%tl210546210765%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%code210480210552%_)))
                                  (_%$%hd210545210763%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%code210480210552%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%$%hd210545210763%_ 'let))
                                  (if (pair? _%$%tl210546210765%_)
                                      (let ((_%$%tl210548210770%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%tl210546210765%_)))
                                            (_%$%hd210547210768%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%tl210546210765%_))))
                                        (if (null? _%$%hd210547210768%_)
                                            (if (pair? _%$%tl210548210770%_)
                                                (let ((_%$%tl210550210775%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%tl210548210770%_)))
                                                      (_%$%hd210549210773%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%tl210548210770%_))))
                                                  (if (null? _%$%tl210550210775%_)
                                                      (let ((_%expr210778%_
                                                             _%$%hd210549210773%_))
                                                        (_%$%K210544210760%_
                                                         _%expr210778%_))
                                                      (_%$%else210485210560%_)))
                                                (_%$%else210485210560%_))
                                            (if (pair? _%$%hd210547210768%_)
                                                (let ((_%$%tl210539210721%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd210547210768%_)))
                                                      (_%$%hd210538210719%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd210547210768%_))))
                                                  (if (pair? _%$%hd210538210719%_)
                                                      (let ((_%$%tl210541210726%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%hd210538210719%_)))
                    (_%$%hd210540210724%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%hd210538210719%_))))
                (if (pair? _%$%tl210541210726%_)
                    (let ((_%$%tl210543210733%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%tl210541210726%_)))
                          (_%$%hd210542210731%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%tl210541210726%_))))
                      (if (null? _%$%tl210543210733%_)
                          (if (null? _%$%tl210539210721%_)
                              (if (pair? _%$%tl210548210770%_)
                                  (let ((_%$%tl210533210740%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl210548210770%_)))
                                        (_%$%hd210532210738%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl210548210770%_))))
                                    (if (pair? _%$%hd210532210738%_)
                                        (let ((_%$%tl210535210745%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%hd210532210738%_)))
                                              (_%$%hd210534210743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%hd210532210738%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%$%hd210534210743%_
                                                       'let))
                                              (if (pair? _%$%tl210535210745%_)
                                                  (let ((_%$%tl210537210750%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl210535210745%_)))
                                                        (_%$%hd210536210748%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl210535210745%_))))
                                                    (if (null? _%$%hd210536210748%_)
                                                        (if (null? _%$%tl210533210740%_)
                                                            (let ((_%id210729%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%hd210540210724%_)
                          (_%expr210736%_ _%$%hd210542210731%_)
                          (_%body210753%_ _%$%tl210537210750%_))
                      (_%$%K210527210706%_
                       _%body210753%_
                       _%expr210736%_
                       _%id210729%_))
                    (_%$%else210485210560%_))
                (if (pair? _%$%hd210536210748%_)
                    (let ((_%$%tl210516210679%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%hd210536210748%_)))
                          (_%$%hd210515210677%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%hd210536210748%_))))
                      (if (pair? _%$%hd210515210677%_)
                          (let ((_%$%tl210518210684%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%hd210515210677%_)))
                                (_%$%hd210517210682%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%hd210515210677%_))))
                            (if (pair? _%$%tl210518210684%_)
                                (let ((_%$%tl210520210691%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl210518210684%_)))
                                      (_%$%hd210519210689%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl210518210684%_))))
                                  (if (null? _%$%tl210520210691%_)
                                      (if (null? _%$%tl210516210679%_)
                                          (if (null? _%$%tl210533210740%_)
                                              (let ((_%id1210653%_
                                                     _%$%hd210540210724%_)
                                                    (_%expr1210660%_
                                                     _%$%hd210542210731%_)
                                                    (_%id2210687%_
                                                     _%$%hd210517210682%_)
                                                    (_%expr2210694%_
                                                     _%$%hd210519210689%_)
                                                    (_%body210696%_
                                                     _%$%tl210537210750%_))
                                                (_%$%K210504210630%_
                                                 _%body210696%_
                                                 _%expr2210694%_
                                                 _%id2210687%_
                                                 _%expr1210660%_
                                                 _%id1210653%_))
                                              (_%$%else210485210560%_))
                                          (_%$%else210485210560%_))
                                      (_%$%else210485210560%_)))
                                (_%$%else210485210560%_)))
                          (_%$%else210485210560%_)))
                    (_%$%else210485210560%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%else210485210560%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%$%hd210534210743%_
                                                           'let*))
                                                  (if (pair? _%$%tl210535210745%_)
                                                      (let ((_%$%tl210497210613%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%tl210535210745%_)))
                    (_%$%hd210496210611%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%tl210535210745%_))))
                (if (null? _%$%tl210533210740%_)
                    (let ((_%id1210592%_ _%$%hd210540210724%_)
                          (_%expr1210599%_ _%$%hd210542210731%_)
                          (_%bind210616%_ _%$%hd210496210611%_)
                          (_%body210618%_ _%$%tl210497210613%_))
                      (_%$%K210487210569%_
                       _%body210618%_
                       _%bind210616%_
                       _%expr1210599%_
                       _%id1210592%_))
                    (_%$%else210485210560%_)))
              (_%$%else210485210560%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%else210485210560%_))))
                                        (_%$%else210485210560%_)))
                                  (_%$%else210485210560%_))
                              (_%$%else210485210560%_))
                          (_%$%else210485210560%_)))
                    (_%$%else210485210560%_)))
              (_%$%else210485210560%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%else210485210560%_))))
                                      (_%$%else210485210560%_))
                                  (_%$%else210485210560%_)))
                            (_%$%else210485210560%_))))))
                 (_%generate-values210178%_
                  (lambda (_%hd210292%_ _%body210293%_)
                    (let _%lp210295%_ ((_%rest210297%_ _%hd210292%_)
                                       (_%bind210298%_ '())
                                       (_%check210299%_ '())
                                       (_%post210300%_ '()))
                      (let* ((_%__stx214345214346%_ _%rest210297%_)
                             (_%$%g210303210314%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx214345214346%_)))))
                        (let ((_%__kont214347214348%_
                               (lambda (_%$%g210305210341%_
                                        _%$%g210306210342%_)
                                 (let* ((_%__stx214301214302%_
                                         _%$%g210306210342%_)
                                        (_%$%g210357210382%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx214301214302%_)))))
                                   (let ((_%__kont214303214304%_
                                          (lambda (_%$%g210359210455%_
                                                   _%$%g210360210456%_)
                                            (let ((_%eid210470%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%$%g210360210456%_)))
                                                  (_%expr210471%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self210171%_
                                                      _%$%g210359210455%_))))
                                              (_%lp210295%_
                                               _%$%g210305210341%_
                                               (cons (cons _%eid210470%_
                                                           (cons _%expr210471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind210298%_)
                                               _%check210299%_
                                               _%post210300%_))))
                                         (_%__kont214305214306%_
                                          (lambda (_%$%g210370210403%_
                                                   _%$%g210371210404%_)
                                            (let* ((_%vals210417%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values210419%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals210417%_
                                                     _%$%g210371210404%_
                                                     _%$%g210370210403%_))
                                                   (_%refs210421%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals210417%_
                                                     _%$%g210371210404%_))
                                                   (_%expr210423%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self210171%_
                                                       _%$%g210370210403%_))))
                                              (_%lp210295%_
                                               _%$%g210305210341%_
                                               (cons (cons _%vals210417%_
                                                           (cons _%expr210423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind210298%_)
                                               (cons _%check-values210419%_
                                                     _%check210299%_)
                                               (cons _%refs210421%_
                                                     _%post210300%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx214301214302%_))
                                         (let ((_%$%e210361210431%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx214301214302%_))))
                                           (let ((_%$%tl210363210436%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e210361210431%_)))
                                                 (_%$%hd210362210434%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e210361210431%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd210362210434%_))
                                                 (let ((_%$%e210364210439%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd210362210434%_))))
                                                   (let ((_%$%tl210366210444%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e210364210439%_)))
                                                         (_%$%hd210365210442%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e210364210439%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl210366210444%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl210363210436%_))
                     (let ((_%$%e210367210447%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl210363210436%_))))
                       (let ((_%$%tl210369210452%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e210367210447%_)))
                             (_%$%hd210368210450%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e210367210447%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl210369210452%_))
                             (_%__kont214303214304%_
                              _%$%hd210368210450%_
                              _%$%hd210365210442%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g210357210382%_)))))
                     (let () (declare (not safe)) (_%$%g210357210382%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl210363210436%_))
                     (let ((_%$%e210375210395%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl210363210436%_))))
                       (let ((_%$%tl210377210400%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e210375210395%_)))
                             (_%$%hd210376210398%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e210375210395%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl210377210400%_))
                             (_%__kont214305214306%_
                              _%$%hd210376210398%_
                              _%$%hd210362210434%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g210357210382%_)))))
                     (let () (declare (not safe)) (_%$%g210357210382%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl210363210436%_))
                                                     (let ((_%$%e210375210395%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl210363210436%_))))
                                                       (let ((_%$%tl210377210400%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e210375210395%_)))
                     (_%$%hd210376210398%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e210375210395%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl210377210400%_))
                     (_%__kont214305214306%_
                      _%$%hd210376210398%_
                      _%$%hd210362210434%_)
                     (let () (declare (not safe)) (_%$%g210357210382%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g210357210382%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%$%g210357210382%_)))))))
                              (_%__kont214349214350%_
                               (lambda ()
                                 (let* ((_%body210321%_
                                         (if _%compiled-body?210173%_
                                             _%body210293%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self210171%_
                                                _%body210293%_))))
                                        (_%body210323%_
                                         (_%generate-values-post210179%_
                                          _%post210300%_
                                          _%body210321%_))
                                        (_%body210325%_
                                         (_%generate-values-check210180%_
                                          _%check210299%_
                                          _%body210323%_)))
                                   (cons 'let
                                         (cons (reverse _%bind210298%_)
                                               (cons _%body210325%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx214345214346%_))
                              (let ((_%$%e210307210333%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx214345214346%_))))
                                (let ((_%$%tl210309210338%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210307210333%_)))
                                      (_%$%hd210308210336%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210307210333%_))))
                                  (_%__kont214347214348%_
                                   _%$%tl210309210338%_
                                   _%$%hd210308210336%_)))
                              (_%__kont214349214350%_)))))))
                 (_%generate-values-post210179%_
                  (lambda (_%post210251%_ _%body210252%_)
                    (let _%lp210254%_ ((_%rest210256%_ _%post210251%_)
                                       (_%body210257%_ _%body210252%_))
                      (let* ((_%$%rest210258210266%_ _%rest210256%_)
                             (_%$%else210260210274%_
                              (lambda () _%body210257%_))
                             (_%$%K210262210280%_
                              (lambda (_%rest210277%_ _%bind210278%_)
                                (_%lp210254%_
                                 _%rest210277%_
                                 (cons 'let
                                       (cons _%bind210278%_
                                             (cons _%body210257%_ '())))))))
                        (if (pair? _%$%rest210258210266%_)
                            (let ((_%$%hd210263210283%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest210258210266%_)))
                                  (_%$%tl210264210285%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest210258210266%_))))
                              (let* ((_%bind210288%_ _%$%hd210263210283%_)
                                     (_%rest210290%_ _%$%tl210264210285%_))
                                (_%$%K210262210280%_
                                 _%rest210290%_
                                 _%bind210288%_)))
                            (_%$%else210260210274%_))))))
                 (_%generate-values-check210180%_
                  (lambda (_%check210248%_ _%body210249%_)
                    (cons 'begin
                          (let ((__tmp215191 (reverse _%check210248%_))
                                (__tmp215190 (cons _%body210249%_ '())))
                            (declare (not safe))
                            (##append __tmp215191 __tmp215190))))))
          (let* ((_%$%g210182210199%_
                  (lambda (_%$%g210183210196%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g210183210196%_))))
                 (_%$%g210181210245%_
                  (lambda (_%$%g210183210202%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g210183210202%_))
                        (let ((_%$%e210186210204%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g210183210202%_))))
                          (let ((_%$%hd210187210207%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e210186210204%_)))
                                (_%$%tl210188210209%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e210186210204%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl210188210209%_))
                                (let ((_%$%e210189210212%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl210188210209%_))))
                                  (let ((_%$%hd210190210215%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e210189210212%_)))
                                        (_%$%tl210191210217%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e210189210212%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl210191210217%_))
                                        (let ((_%$%e210192210220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl210191210217%_))))
                                          (let ((_%$%hd210193210223%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e210192210220%_)))
                                                (_%$%tl210194210225%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e210192210220%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl210194210225%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd210190210215%_)
                                                    (_%generate-simple210175%_
                                                     _%$%hd210190210215%_
                                                     _%$%hd210193210223%_)
                                                    (_%generate-values210178%_
                                                     _%$%hd210190210215%_
                                                     _%$%hd210193210223%_))
                                                (_%$%g210182210199%_
                                                 _%$%g210183210202%_))))
                                        (_%$%g210182210199%_
                                         _%$%g210183210202%_))))
                                (_%$%g210182210199%_ _%$%g210183210202%_))))
                        (_%$%g210182210199%_ _%$%g210183210202%_)))))
            (_%$%g210181210245%_ _%stx210172%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self210925%_ _%stx210926%_)
        (let ((_%compiled-body?210928%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self210925%_
           _%stx210926%_
           _%compiled-body?210928%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g215192_
        (let ((_g215193_ (let () (declare (not safe)) (##length _g215192_))))
          (cond ((let () (declare (not safe)) (##fx= _g215193_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g215192_))
                ((let () (declare (not safe)) (##fx= _g215193_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g215192_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g215192_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals210065%_ _%hd210066%_)
        (let _%lp210068%_ ((_%rest210070%_ _%hd210066%_)
                           (_%k210071%_ '0)
                           (_%r210072%_ '()))
          (let* ((_%__stx214359214360%_ _%rest210070%_)
                 (_%$%g210077210094%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx214359214360%_)))))
            (let ((_%__kont214361214362%_
                   (lambda (_%$%g210079210157%_)
                     (_%lp210068%_
                      _%$%g210079210157%_
                      (let () (declare (not safe)) (##fx+ _%k210071%_ '1))
                      _%r210072%_)))
                  (_%__kont214363214364%_
                   (lambda (_%$%g210084210130%_ _%$%g210085210131%_)
                     (_%lp210068%_
                      _%$%g210084210130%_
                      (let () (declare (not safe)) (##fx+ _%k210071%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%$%g210085210131%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals210065%_
                                         _%k210071%_
                                         _%$%g210084210130%_)
                                        '()))
                            _%r210072%_))))
                  (_%__kont214365214366%_
                   (lambda (_%$%g210089210106%_)
                     (let ((__tmp215194
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%$%g210089210106%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals210065%_
                                               _%k210071%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp215194 _%r210072%_))))
                  (_%__kont214367214368%_ (lambda () (reverse _%r210072%_))))
              (let ((_%$%g210075210117%_
                     (lambda ()
                       (let ((_%$%g210089210106%_ _%__stx214359214360%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%g210089210106%_))
                             (_%__kont214365214366%_ _%$%g210089210106%_)
                             (_%__kont214367214368%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx214359214360%_))
                    (let ((_%$%e210080210146%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx214359214360%_))))
                      (let ((_%$%tl210082210151%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e210080210146%_)))
                            (_%$%hd210081210149%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e210080210146%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%$%hd210081210149%_))
                            (let ((_%$%e210083210154%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd210081210149%_))))
                              (if (equal? _%$%e210083210154%_ '#f)
                                  (_%__kont214361214362%_ _%$%tl210082210151%_)
                                  (_%__kont214363214364%_
                                   _%$%tl210082210151%_
                                   _%$%hd210081210149%_)))
                            (_%__kont214363214364%_
                             _%$%tl210082210151%_
                             _%$%hd210081210149%_))))
                    (let () (declare (not safe)) (_%$%g210075210117%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self209744%_ _%stx209745%_ _%compiled-body?209746%_)
        (letrec ((_%generate-simple209748%_
                  (lambda (_%hd210050%_ _%body210051%_)
                    (gxc#generate-runtime-simple-let
                     _%self209744%_
                     'letrec
                     _%hd210050%_
                     _%body210051%_
                     _%compiled-body?209746%_)))
                 (_%generate-values209749%_
                  (lambda (_%hd209829%_ _%body209830%_)
                    (let _%lp209832%_ ((_%rest209834%_ _%hd209829%_)
                                       (_%bind209835%_ '())
                                       (_%check209836%_ '())
                                       (_%post209837%_ '()))
                      (let* ((_%__stx214433214434%_ _%rest209834%_)
                             (_%$%g209840209851%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx214433214434%_)))))
                        (let ((_%__kont214435214436%_
                               (lambda (_%$%g209842209878%_
                                        _%$%g209843209879%_)
                                 (let* ((_%__stx214389214390%_
                                         _%$%g209843209879%_)
                                        (_%$%g209894209919%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx214389214390%_)))))
                                   (let ((_%__kont214391214392%_
                                          (lambda (_%$%g209896210026%_
                                                   _%$%g209897210027%_)
                                            (let ((_%eid210041%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%$%g209897210027%_)))
                                                  (_%expr210042%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self209744%_
                                                      _%$%g209896210026%_))))
                                              (_%lp209832%_
                                               _%$%g209842209878%_
                                               (cons (cons _%eid210041%_
                                                           (cons _%expr210042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind209835%_)
                                               _%check209836%_
                                               _%post209837%_))))
                                         (_%__kont214393214394%_
                                          (lambda (_%$%g209907209940%_
                                                   _%$%g209908209941%_)
                                            (let* ((_%vals209954%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values209956%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals209954%_
                                                     _%$%g209908209941%_
                                                     _%$%g209907209940%_))
                                                   (_%refs209958%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals209954%_
                                                     _%$%g209908209941%_))
                                                   (_%expr209960%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self209744%_
                                                       _%$%g209907209940%_))))
                                              (_%lp209832%_
                                               _%$%g209842209878%_
                                               (let ((__tmp215196
                                                      (cons (cons _%vals209954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr209960%_ '()))
                    _%bind209835%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp215195
                                                      (map (lambda (_%$%e209962209964%_)
                                                             (let* ((_%$%$%e209962209966209975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%e209962209964%_)
                            (_%$%E209968209979%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%$%$%e209962209966209975%_
                                        '([eid _])))
                               '#!void))
                            (_%$%K209969209984%_
                             (lambda (_%eid209982%_)
                               (cons _%eid209982%_ (cons '#!void '())))))
                       (if (pair? _%$%$%e209962209966209975%_)
                           (let ((_%$%hd209970209987%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$%e209962209966209975%_)))
                                 (_%$%tl209971209989%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$%e209962209966209975%_))))
                             (let ((_%eid209992%_ _%$%hd209970209987%_))
                               (if (pair? _%$%tl209971209989%_)
                                   (let ((_%$%tl209973209994%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%tl209971209989%_))))
                                     (if (null? _%$%tl209973209994%_)
                                         (_%$%K209969209984%_ _%eid209992%_)
                                         (_%$%E209968209979%_)))
                                   (_%$%E209968209979%_))))
                           (_%$%E209968209979%_))))
                   _%refs209958%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp215196
                                                  __tmp215195))
                                               (cons _%check-values209956%_
                                                     _%check209836%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs209958%_
                                                  _%post209837%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx214389214390%_))
                                         (let ((_%$%e209898210002%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx214389214390%_))))
                                           (let ((_%$%tl209900210007%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e209898210002%_)))
                                                 (_%$%hd209899210005%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e209898210002%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd209899210005%_))
                                                 (let ((_%$%e209901210010%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd209899210005%_))))
                                                   (let ((_%$%tl209903210015%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e209901210010%_)))
                                                         (_%$%hd209902210013%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e209901210010%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl209903210015%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl209900210007%_))
                     (let ((_%$%e209904210018%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl209900210007%_))))
                       (let ((_%$%tl209906210023%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e209904210018%_)))
                             (_%$%hd209905210021%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e209904210018%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl209906210023%_))
                             (_%__kont214391214392%_
                              _%$%hd209905210021%_
                              _%$%hd209902210013%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g209894209919%_)))))
                     (let () (declare (not safe)) (_%$%g209894209919%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl209900210007%_))
                     (let ((_%$%e209912209932%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl209900210007%_))))
                       (let ((_%$%tl209914209937%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e209912209932%_)))
                             (_%$%hd209913209935%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e209912209932%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl209914209937%_))
                             (_%__kont214393214394%_
                              _%$%hd209913209935%_
                              _%$%hd209899210005%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g209894209919%_)))))
                     (let () (declare (not safe)) (_%$%g209894209919%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl209900210007%_))
                                                     (let ((_%$%e209912209932%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl209900210007%_))))
                                                       (let ((_%$%tl209914209937%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e209912209932%_)))
                     (_%$%hd209913209935%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e209912209932%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl209914209937%_))
                     (_%__kont214393214394%_
                      _%$%hd209913209935%_
                      _%$%hd209899210005%_)
                     (let () (declare (not safe)) (_%$%g209894209919%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g209894209919%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%$%g209894209919%_)))))))
                              (_%__kont214437214438%_
                               (lambda ()
                                 (let* ((_%body209858%_
                                         (if _%compiled-body?209746%_
                                             _%body209830%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self209744%_
                                                _%body209830%_))))
                                        (_%body209860%_
                                         (_%generate-values-post209751%_
                                          _%post209837%_
                                          _%body209858%_))
                                        (_%body209862%_
                                         (_%generate-values-check209750%_
                                          _%check209836%_
                                          _%body209860%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind209835%_)
                                               (cons _%body209862%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx214433214434%_))
                              (let ((_%$%e209844209870%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx214433214434%_))))
                                (let ((_%$%tl209846209875%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e209844209870%_)))
                                      (_%$%hd209845209873%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e209844209870%_))))
                                  (_%__kont214435214436%_
                                   _%$%tl209846209875%_
                                   _%$%hd209845209873%_)))
                              (_%__kont214437214438%_)))))))
                 (_%generate-values-check209750%_
                  (lambda (_%check209826%_ _%body209827%_)
                    (cons 'begin
                          (let ((__tmp215198 (reverse _%check209826%_))
                                (__tmp215197 (cons _%body209827%_ '())))
                            (declare (not safe))
                            (##append __tmp215198 __tmp215197)))))
                 (_%generate-values-post209751%_
                  (lambda (_%post209819%_ _%body209820%_)
                    (cons 'begin
                          (let ((__tmp215200
                                 (let ((__tmp215202
                                        (lambda (_%$%g209821209823%_)
                                          (cons 'set! _%$%g209821209823%_)))
                                       (__tmp215201 (reverse _%post209819%_)))
                                   (declare (not safe))
                                   (##map __tmp215202 __tmp215201)))
                                (__tmp215199 (cons _%body209820%_ '())))
                            (declare (not safe))
                            (##append __tmp215200 __tmp215199))))))
          (let* ((_%$%g209753209770%_
                  (lambda (_%$%g209754209767%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g209754209767%_))))
                 (_%$%g209752209816%_
                  (lambda (_%$%g209754209773%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g209754209773%_))
                        (let ((_%$%e209757209775%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g209754209773%_))))
                          (let ((_%$%hd209758209778%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209757209775%_)))
                                (_%$%tl209759209780%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209757209775%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl209759209780%_))
                                (let ((_%$%e209760209783%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl209759209780%_))))
                                  (let ((_%$%hd209761209786%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e209760209783%_)))
                                        (_%$%tl209762209788%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e209760209783%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl209762209788%_))
                                        (let ((_%$%e209763209791%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl209762209788%_))))
                                          (let ((_%$%hd209764209794%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e209763209791%_)))
                                                (_%$%tl209765209796%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e209763209791%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl209765209796%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd209761209786%_)
                                                    (_%generate-simple209748%_
                                                     _%$%hd209761209786%_
                                                     _%$%hd209764209794%_)
                                                    (_%generate-values209749%_
                                                     _%$%hd209761209786%_
                                                     _%$%hd209764209794%_))
                                                (_%$%g209753209770%_
                                                 _%$%g209754209773%_))))
                                        (_%$%g209753209770%_
                                         _%$%g209754209773%_))))
                                (_%$%g209753209770%_ _%$%g209754209773%_))))
                        (_%$%g209753209770%_ _%$%g209754209773%_)))))
            (_%$%g209752209816%_ _%stx209745%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self210056%_ _%stx210057%_)
        (let ((_%compiled-body?210059%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self210056%_
           _%stx210057%_
           _%compiled-body?210059%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g215203_
        (let ((_g215204_ (let () (declare (not safe)) (##length _g215203_))))
          (cond ((let () (declare (not safe)) (##fx= _g215204_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g215203_))
                ((let () (declare (not safe)) (##fx= _g215204_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g215203_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g215203_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self209325%_ _%stx209326%_)
        (letrec ((_%generate-values209328%_
                  (lambda (_%hd209571%_ _%body209572%_)
                    (let _%lp209574%_ ((_%rest209576%_ _%hd209571%_)
                                       (_%bind209577%_ '()))
                      (let* ((_%$%rest209578209586%_ _%rest209576%_)
                             (_%$%else209580209597%_
                              (lambda ()
                                (let ((_%bind209594%_ (reverse _%bind209577%_))
                                      (_%body209595%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self209325%_
                                          _%body209572%_))))
                                  (cons 'letrec*
                                        (cons _%bind209594%_
                                              (cons _%body209595%_ '()))))))
                             (_%$%K209582209731%_
                              (lambda (_%rest209600%_ _%hd-bind209601%_)
                                (let* ((_%__stx214447214448%_
                                        _%hd-bind209601%_)
                                       (_%$%g209604209629%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx214447214448%_)))))
                                  (let ((_%__kont214449214450%_
                                         (lambda (_%$%g209606209710%_
                                                  _%$%g209607209711%_)
                                           (let ((_%eid209725%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%$%g209607209711%_)))
                                                 (_%expr209726%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self209325%_
                                                     _%$%g209606209710%_))))
                                             (_%lp209574%_
                                              _%rest209600%_
                                              (cons (cons _%eid209725%_
                                                          (cons _%expr209726%_
                                                                '()))
                                                    _%bind209577%_)))))
                                        (_%__kont214451214452%_
                                         (lambda (_%$%g209617209650%_
                                                  _%$%g209618209651%_)
                                           (let* ((_%vals209670%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp209672%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values209674%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp209672%_
                                                    _%$%g209618209651%_
                                                    _%$%g209617209650%_))
                                                  (_%refs209676%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals209670%_
                                                    _%$%g209618209651%_))
                                                  (_%expr209678%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self209325%_
                                                      _%$%g209617209650%_))))
                                             (_%lp209574%_
                                              _%rest209600%_
                                              (let ((__tmp215205
                                                     (cons (cons _%vals209670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp209672%_
                                                       (cons _%expr209678%_
                                                             '()))
                                                 '())
                                           (cons _%check-values209674%_
                                                 (cons _%tmp209672%_ '()))))
                               '()))
                   _%bind209577%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp215205
                                                 _%refs209676%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx214447214448%_))
                                        (let ((_%$%e209608209686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx214447214448%_))))
                                          (let ((_%$%tl209610209691%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e209608209686%_)))
                                                (_%$%hd209609209689%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e209608209686%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd209609209689%_))
                                                (let ((_%$%e209611209694%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd209609209689%_))))
                                                  (let ((_%$%tl209613209699%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e209611209694%_)))
                                                        (_%$%hd209612209697%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e209611209694%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl209613209699%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl209610209691%_))
                                                            (let ((_%$%e209614209702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl209610209691%_))))
                      (let ((_%$%tl209616209707%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e209614209702%_)))
                            (_%$%hd209615209705%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e209614209702%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl209616209707%_))
                            (_%__kont214449214450%_
                             _%$%hd209615209705%_
                             _%$%hd209612209697%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g209604209629%_)))))
                    (let () (declare (not safe)) (_%$%g209604209629%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl209610209691%_))
                    (let ((_%$%e209622209642%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl209610209691%_))))
                      (let ((_%$%tl209624209647%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e209622209642%_)))
                            (_%$%hd209623209645%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e209622209642%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl209624209647%_))
                            (_%__kont214451214452%_
                             _%$%hd209623209645%_
                             _%$%hd209609209689%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g209604209629%_)))))
                    (let () (declare (not safe)) (_%$%g209604209629%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl209610209691%_))
                                                    (let ((_%$%e209622209642%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl209610209691%_))))
                                                      (let ((_%$%tl209624209647%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e209622209642%_)))
                    (_%$%hd209623209645%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e209622209642%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl209624209647%_))
                    (_%__kont214451214452%_
                     _%$%hd209623209645%_
                     _%$%hd209609209689%_)
                    (let () (declare (not safe)) (_%$%g209604209629%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g209604209629%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g209604209629%_))))))))
                        (if (pair? _%$%rest209578209586%_)
                            (let ((_%$%hd209583209734%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest209578209586%_)))
                                  (_%$%tl209584209736%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest209578209586%_))))
                              (let* ((_%hd-bind209739%_ _%$%hd209583209734%_)
                                     (_%rest209741%_ _%$%tl209584209736%_))
                                (_%$%K209582209731%_
                                 _%rest209741%_
                                 _%hd-bind209739%_)))
                            (_%$%else209580209597%_))))))
                 (_%generate-letrec?209329%_
                  (lambda (_%hd209461%_)
                    (let _%lp209463%_ ((_%rest209465%_ _%hd209461%_))
                      (let* ((_%$%rest209466209474%_ _%rest209465%_)
                             (_%$%else209468209482%_ (lambda () '#t))
                             (_%$%K209470209559%_
                              (lambda (_%rest209485%_ _%hd-bind209486%_)
                                (let* ((_%$%g209488209505%_
                                        (lambda (_%$%g209489209502%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g209489209502%_))))
                                       (_%$%g209487209556%_
                                        (lambda (_%$%g209489209508%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%g209489209508%_))
                                              (let ((_%$%e209492209510%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%g209489209508%_))))
                                                (let ((_%$%hd209493209513%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e209492209510%_)))
                                                      (_%$%tl209494209515%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e209492209510%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%hd209493209513%_))
                                                      (let ((_%$%e209495209518%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%hd209493209513%_))))
                (let ((_%$%hd209496209521%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e209495209518%_)))
                      (_%$%tl209497209523%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e209495209518%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl209497209523%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl209494209515%_))
                          (let ((_%$%e209498209526%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl209494209515%_))))
                            (let ((_%$%hd209499209529%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e209498209526%_)))
                                  (_%$%tl209500209531%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e209498209526%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl209500209531%_))
                                  (if (_%is-lambda-expr?209330%_
                                       _%$%hd209499209529%_)
                                      (_%lp209463%_ _%rest209485%_)
                                      '#f)
                                  (_%$%g209488209505%_ _%$%g209489209508%_))))
                          (_%$%g209488209505%_ _%$%g209489209508%_))
                      (_%$%g209488209505%_ _%$%g209489209508%_))))
              (_%$%g209488209505%_ _%$%g209489209508%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g209488209505%_
                                               _%$%g209489209508%_)))))
                                  (_%$%g209487209556%_ _%hd-bind209486%_)))))
                        (if (pair? _%$%rest209466209474%_)
                            (let ((_%$%hd209471209562%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest209466209474%_)))
                                  (_%$%tl209472209564%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest209466209474%_))))
                              (let* ((_%hd-bind209567%_ _%$%hd209471209562%_)
                                     (_%rest209569%_ _%$%tl209472209564%_))
                                (_%$%K209470209559%_
                                 _%rest209569%_
                                 _%hd-bind209567%_)))
                            (_%$%else209468209482%_))))))
                 (_%is-lambda-expr?209330%_
                  (lambda (_%expr209398%_)
                    (let* ((_%__stx214491214492%_ _%expr209398%_)
                           (_%$%g209401209415%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx214491214492%_)))))
                      (let ((_%__kont214493214494%_
                             (lambda (_%$%g209403209443%_ _%$%g209404209444%_)
                               '#t))
                            (_%__kont214495214496%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx214491214492%_))
                            (let ((_%$%e209405209427%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx214491214492%_))))
                              (let ((_%$%tl209407209432%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e209405209427%_)))
                                    (_%$%hd209406209430%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e209405209427%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd209406209430%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%$%hd209406209430%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl209407209432%_))
                                            (let ((_%$%e209408209435%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl209407209432%_))))
                                              (let ((_%$%tl209410209440%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e209408209435%_)))
                                                    (_%$%hd209409209438%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e209408209435%_))))
                                                (_%__kont214493214494%_
                                                 _%$%tl209410209440%_
                                                 _%$%hd209409209438%_)))
                                            (_%__kont214495214496%_))
                                        (_%__kont214495214496%_))
                                    (_%__kont214495214496%_))))
                            (_%__kont214495214496%_)))))))
          (let* ((_%$%g209332209349%_
                  (lambda (_%$%g209333209346%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g209333209346%_))))
                 (_%$%g209331209395%_
                  (lambda (_%$%g209333209352%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g209333209352%_))
                        (let ((_%$%e209336209354%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g209333209352%_))))
                          (let ((_%$%hd209337209357%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209336209354%_)))
                                (_%$%tl209338209359%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209336209354%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl209338209359%_))
                                (let ((_%$%e209339209362%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl209338209359%_))))
                                  (let ((_%$%hd209340209365%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e209339209362%_)))
                                        (_%$%tl209341209367%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e209339209362%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl209341209367%_))
                                        (let ((_%$%e209342209370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl209341209367%_))))
                                          (let ((_%$%hd209343209373%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e209342209370%_)))
                                                (_%$%tl209344209375%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e209342209370%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl209344209375%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd209340209365%_)
                                                    (if (_%generate-letrec?209329%_
                                                         _%$%hd209340209365%_)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self209325%_
                                                         'letrec
                                                         _%$%hd209340209365%_
                                                         _%$%hd209343209373%_
                                                         '#f)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self209325%_
                                                         'letrec*
                                                         _%$%hd209340209365%_
                                                         _%$%hd209343209373%_
                                                         '#f))
                                                    (_%generate-values209328%_
                                                     _%$%hd209340209365%_
                                                     _%$%hd209343209373%_))
                                                (_%$%g209332209349%_
                                                 _%$%g209333209352%_))))
                                        (_%$%g209332209349%_
                                         _%$%g209333209352%_))))
                                (_%$%g209332209349%_ _%$%g209333209352%_))))
                        (_%$%g209332209349%_ _%$%g209333209352%_)))))
            (_%$%g209331209395%_ _%stx209326%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd209262%_)
        (let _%lp209264%_ ((_%rest209266%_ _%hd209262%_))
          (let* ((_%$%rest209267209283%_ _%rest209266%_)
                 (_%$%else209270209291%_ (lambda () '#f)))
            (let ((_%$%K209273209304%_
                   (lambda (_%rest209302%_) (_%lp209264%_ _%rest209302%_)))
                  (_%$%K209272209296%_ (lambda () '#t)))
              (let ((_%$%try-match209269209299%_
                     (lambda ()
                       (if (null? _%$%rest209267209283%_)
                           (_%$%K209272209296%_)
                           (_%$%else209270209291%_)))))
                (if (pair? _%$%rest209267209283%_)
                    (let ((_%$%tl209275209309%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest209267209283%_)))
                          (_%$%hd209274209307%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest209267209283%_))))
                      (if (pair? _%$%hd209274209307%_)
                          (let ((_%$%tl209277209314%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%hd209274209307%_)))
                                (_%$%hd209276209312%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%hd209274209307%_))))
                            (if (pair? _%$%hd209276209312%_)
                                (let ((_%$%tl209281209317%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd209276209312%_))))
                                  (if (null? _%$%tl209281209317%_)
                                      (if (pair? _%$%tl209277209314%_)
                                          (let ((_%$%tl209279209320%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl209277209314%_))))
                                            (if (null? _%$%tl209279209320%_)
                                                (let ((_%rest209323%_
                                                       _%$%tl209275209309%_))
                                                  (_%lp209264%_
                                                   _%rest209323%_))
                                                (_%$%else209270209291%_)))
                                          (_%$%else209270209291%_))
                                      (_%$%else209270209291%_)))
                                (_%$%else209270209291%_)))
                          (_%$%else209270209291%_)))
                    (_%$%try-match209269209299%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self209174%_
               _%form209175%_
               _%hd209176%_
               _%body209177%_
               _%compiled-body?209178%_)
        (letrec ((_%generate1209180%_
                  (lambda (_%bind209219%_)
                    (let* ((_%$%bind209220209231%_ _%bind209219%_)
                           (_%$%E209222209234%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%$%bind209220209231%_
                                       '([[id] expr])))
                              '#!void))
                           (_%$%K209223209240%_
                            (lambda (_%expr209237%_ _%id209238%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id209238%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self209174%_
                                             _%expr209237%_))
                                          '())))))
                      (if (pair? _%$%bind209220209231%_)
                          (let ((_%$%hd209224209243%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%bind209220209231%_)))
                                (_%$%tl209225209245%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%bind209220209231%_))))
                            (if (pair? _%$%hd209224209243%_)
                                (let ((_%$%hd209228209248%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%hd209224209243%_)))
                                      (_%$%tl209229209250%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd209224209243%_))))
                                  (let ((_%id209253%_ _%$%hd209228209248%_))
                                    (if (null? _%$%tl209229209250%_)
                                        (if (pair? _%$%tl209225209245%_)
                                            (let ((_%$%hd209226209255%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl209225209245%_)))
                                                  (_%$%tl209227209257%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl209225209245%_))))
                                              (let ((_%expr209260%_
                                                     _%$%hd209226209255%_))
                                                (if (null? _%$%tl209227209257%_)
                                                    (_%$%K209223209240%_
                                                     _%expr209260%_
                                                     _%id209253%_)
                                                    (_%$%E209222209234%_))))
                                            (_%$%E209222209234%_))
                                        (_%$%E209222209234%_))))
                                (_%$%E209222209234%_)))
                          (_%$%E209222209234%_))))))
          (let* ((_%bind209182%_ (map _%generate1209180%_ _%hd209176%_))
                 (_%body209184%_
                  (if _%compiled-body?209178%_
                      _%body209177%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self209174%_ _%body209177%_))))
                 (_%body209216%_
                  (let* ((_%$%body209185209193%_ _%body209184%_)
                         (_%$%else209187209201%_
                          (lambda () (cons _%body209184%_ '())))
                         (_%$%K209189209206%_
                          (lambda (_%exprs209204%_) _%exprs209204%_)))
                    (if (pair? _%$%body209185209193%_)
                        (let ((_%$%hd209190209209%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%body209185209193%_)))
                              (_%$%tl209191209211%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%body209185209193%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%$%hd209190209209%_ 'begin))
                              (let ((_%exprs209214%_ _%$%tl209191209211%_))
                                (_%$%K209189209206%_ _%exprs209214%_))
                              (_%$%else209187209201%_)))
                        (_%$%else209187209201%_)))))
            (cons _%form209175%_ (cons _%bind209182%_ _%body209216%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self209074%_ _%stx209075%_)
        (letrec ((_%generate1209077%_
                  (lambda (_%datum209129%_)
                    (if (or (null? _%datum209129%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum209129%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum209129%_))
                            (eof-object? _%datum209129%_))
                        _%datum209129%_
                        (if (uninterned-symbol? _%datum209129%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum209129%_
                               '#t))
                            (if (pair? _%datum209129%_)
                                (cons (_%generate1209077%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum209129%_)))
                                      (_%generate1209077%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum209129%_))))
                                (if (box? _%datum209129%_)
                                    (box (_%generate1209077%_
                                          (unbox _%datum209129%_)))
                                    (if (vector? _%datum209129%_)
                                        (vector-map
                                         _%generate1209077%_
                                         _%datum209129%_)
                                        (if (or (s8vector? _%datum209129%_)
                                                (u8vector? _%datum209129%_)
                                                (s16vector? _%datum209129%_)
                                                (u16vector? _%datum209129%_)
                                                (s32vector? _%datum209129%_)
                                                (u32vector? _%datum209129%_)
                                                (s64vector? _%datum209129%_)
                                                (u64vector? _%datum209129%_)
                                                (f32vector? _%datum209129%_)
                                                (f64vector? _%datum209129%_))
                                            _%datum209129%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx209075%_)))))))))))
          (let* ((_%$%g209079209092%_
                  (lambda (_%$%g209080209089%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g209080209089%_))))
                 (_%$%g209078209126%_
                  (lambda (_%$%g209080209095%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g209080209095%_))
                        (let ((_%$%e209082209097%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g209080209095%_))))
                          (let ((_%$%hd209083209100%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209082209097%_)))
                                (_%$%tl209084209102%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209082209097%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl209084209102%_))
                                (let ((_%$%e209085209105%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl209084209102%_))))
                                  (let ((_%$%hd209086209108%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e209085209105%_)))
                                        (_%$%tl209087209110%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e209085209105%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl209087209110%_))
                                        (cons 'quote
                                              (cons (_%generate1209077%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd209086209108%_)))
                                                    '()))
                                        (_%$%g209079209092%_
                                         _%$%g209080209095%_))))
                                (_%$%g209079209092%_ _%$%g209080209095%_))))
                        (_%$%g209079209092%_ _%$%g209080209095%_)))))
            (_%$%g209078209126%_ _%stx209075%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self208521%_ _%stx208522%_)
        (letrec ((_%compile-call208524%_
                  (lambda (_%rator208811%_ _%rands208812%_)
                    (let ((_%rator208818%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self208521%_
                              _%rator208811%_)))
                          (_%rands208819%_
                           (map (lambda (_%$%g208813208815%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self208521%_
                                     _%$%g208813208815%_)))
                                _%rands208812%_)))
                      (let* ((_%__stx214538214539%_ _%rator208818%_)
                             (_%$%g208822208874%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx214538214539%_)))))
                        (let ((_%__kont214540214541%_
                               (lambda (_%$%g208824208994%_
                                        _%$%g208825208995%_
                                        _%$%g208826208996%_
                                        _%$%g208827208997%_)
                                 (if (let ((__tmp215208
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands208819%_)))
                                           (__tmp215206
                                            (length (let ((__tmp215207
                                                           (lambda (_%$%g209033209036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g209034209038%_)
                     (cons _%$%g209033209036%_ _%$%g209034209038%_))))
              (declare (not safe))
              (foldr__0 __tmp215207 '() _%$%g208826208996%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp215208 __tmp215206))
                                     (let* ((_%id209041%_ _%$%g208827208997%_)
                                            (_%args209050%_
                                             (let ((__tmp215209
                                                    (lambda (_%$%g209042209045%_
                                                             _%$%g209043209047%_)
                                                      (cons _%$%g209042209045%_
                                                            _%$%g209043209047%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp215209
                                                '()
                                                _%$%g208826208996%_)))
                                            (_%body209059%_
                                             (let ((__tmp215210
                                                    (lambda (_%$%g209051209054%_
                                                             _%$%g209052209056%_)
                                                      (cons _%$%g209051209054%_
                                                            _%$%g209052209056%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp215210
                                                '()
                                                _%$%g208825208995%_)))
                                            (_%init209061%_
                                             (map list
                                                  _%args209050%_
                                                  _%rands208819%_)))
                                       (cons 'let
                                             (cons _%id209041%_
                                                   (cons _%init209061%_
                                                         _%body209059%_))))
                                     (let ((__tmp215211
                                            (let ((__tmp215212
                                                   (lambda (_%$%g209063209066%_
                                                            _%$%g209064209068%_)
                                                     (cons _%$%g209063209066%_
                                                           _%$%g209064209068%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp215212
                                               '()
                                               _%$%g208826208996%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx208522%_
                                        __tmp215211
                                        _%rands208819%_)))))
                              (_%__kont214546214547%_
                               (lambda ()
                                 (cons _%rator208818%_ _%rands208819%_))))
                          (let ((_%__match214605214606%_
                                 (lambda (_%$%e208828208886%_
                                          _%$%hd208829208889%_
                                          _%$%tl208830208891%_
                                          _%$%e208831208894%_
                                          _%$%hd208832208897%_
                                          _%$%tl208833208899%_
                                          _%$%e208834208902%_
                                          _%$%hd208835208905%_
                                          _%$%tl208836208907%_
                                          _%$%e208837208910%_
                                          _%$%hd208838208913%_
                                          _%$%tl208839208915%_
                                          _%$%e208840208918%_
                                          _%$%hd208841208921%_
                                          _%$%tl208842208923%_
                                          _%$%e208843208926%_
                                          _%$%hd208844208929%_
                                          _%$%tl208845208931%_
                                          _%$%e208846208934%_
                                          _%$%hd208847208937%_
                                          _%$%tl208848208939%_
                                          _%__splice214542214543%_
                                          _%$%target208849208942%_
                                          _%$%tl208851208944%_)
                                   (letrec ((_%$%loop208852208947%_
                                             (lambda (_%$%hd208850208950%_
                                                      _%$%arg208856208952%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%hd208850208950%_))
                                                   (let ((_%$%e208853208954%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd208850208950%_))))
                                                     (let ((_%$%lp-tl208855208959%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e208853208954%_)))
                                                           (_%$%lp-hd208854208957%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e208853208954%_))))
                                                       (_%$%loop208852208947%_
                                                        _%$%lp-tl208855208959%_
                                                        (cons _%$%lp-hd208854208957%_
                                                              _%$%arg208856208952%_))))
                                                   (let ((_%$%arg208857208962%_
                                                          (reverse _%$%arg208856208952%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%$%tl208848208939%_))
                                                         (let ((_%__splice214544214545%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%$%tl208848208939%_
                           '0))))
                   (let ((_%$%tl208860208966%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice214544214545%_ '1)))
                         (_%$%target208858208964%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice214544214545%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl208860208966%_))
                         (letrec ((_%$%loop208861208969%_
                                   (lambda (_%$%hd208859208972%_
                                            _%$%body208865208974%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd208859208972%_))
                                         (let ((_%$%e208862208976%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd208859208972%_))))
                                           (let ((_%$%lp-tl208864208981%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e208862208976%_)))
                                                 (_%$%lp-hd208863208979%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e208862208976%_))))
                                             (_%$%loop208861208969%_
                                              _%$%lp-tl208864208981%_
                                              (cons _%$%lp-hd208863208979%_
                                                    _%$%body208865208974%_))))
                                         (let ((_%$%body208866208984%_
                                                (reverse _%$%body208865208974%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl208842208923%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl208836208907%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl208833208899%_))
                                                       (let ((_%$%e208867208986%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl208833208899%_))))
                 (let ((_%$%tl208869208991%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e208867208986%_)))
                       (_%$%hd208868208989%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e208867208986%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl208869208991%_))
                       (let ((_%$%g208824208994%_ _%$%hd208868208989%_)
                             (_%$%g208825208995%_ _%$%body208866208984%_)
                             (_%$%g208826208996%_ _%$%arg208857208962%_)
                             (_%$%g208827208997%_ _%$%hd208838208913%_))
                         (if (eq? _%$%g208827208997%_ _%$%g208824208994%_)
                             (_%__kont214540214541%_
                              _%$%g208824208994%_
                              _%$%g208825208995%_
                              _%$%g208826208996%_
                              _%$%g208827208997%_)
                             (_%__kont214546214547%_)))
                       (_%__kont214546214547%_))))
               (_%__kont214546214547%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont214546214547%_))
                                               (_%__kont214546214547%_)))))))
                           (_%$%loop208861208969%_
                            _%$%target208858208964%_
                            '()))
                         (_%__kont214546214547%_))))
                 (_%__kont214546214547%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%loop208852208947%_
                                      _%$%target208849208942%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx214538214539%_))
                                (let ((_%$%e208828208886%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx214538214539%_))))
                                  (let ((_%$%tl208830208891%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e208828208886%_)))
                                        (_%$%hd208829208889%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e208828208886%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd208829208889%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%$%hd208829208889%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl208830208891%_))
                                                (let ((_%$%e208831208894%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl208830208891%_))))
                                                  (let ((_%$%tl208833208899%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e208831208894%_)))
                                                        (_%$%hd208832208897%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e208831208894%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd208832208897%_))
                                                        (let ((_%$%e208834208902%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd208832208897%_))))
                  (let ((_%$%tl208836208907%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e208834208902%_)))
                        (_%$%hd208835208905%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e208834208902%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd208835208905%_))
                        (let ((_%$%e208837208910%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd208835208905%_))))
                          (let ((_%$%tl208839208915%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208837208910%_)))
                                (_%$%hd208838208913%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208837208910%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl208839208915%_))
                                (let ((_%$%e208840208918%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl208839208915%_))))
                                  (let ((_%$%tl208842208923%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e208840208918%_)))
                                        (_%$%hd208841208921%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e208840208918%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd208841208921%_))
                                        (let ((_%$%e208843208926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd208841208921%_))))
                                          (let ((_%$%tl208845208931%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e208843208926%_)))
                                                (_%$%hd208844208929%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e208843208926%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd208844208929%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%$%hd208844208929%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl208845208931%_))
                                                        (let ((_%$%e208846208934%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl208845208931%_))))
                  (let ((_%$%tl208848208939%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e208846208934%_)))
                        (_%$%hd208847208937%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e208846208934%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%$%hd208847208937%_))
                        (let ((_%__splice214542214543%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%$%hd208847208937%_
                                  '0))))
                          (let ((_%$%tl208851208944%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice214542214543%_ '1)))
                                (_%$%target208849208942%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice214542214543%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl208851208944%_))
                                (_%__match214605214606%_
                                 _%$%e208828208886%_
                                 _%$%hd208829208889%_
                                 _%$%tl208830208891%_
                                 _%$%e208831208894%_
                                 _%$%hd208832208897%_
                                 _%$%tl208833208899%_
                                 _%$%e208834208902%_
                                 _%$%hd208835208905%_
                                 _%$%tl208836208907%_
                                 _%$%e208837208910%_
                                 _%$%hd208838208913%_
                                 _%$%tl208839208915%_
                                 _%$%e208840208918%_
                                 _%$%hd208841208921%_
                                 _%$%tl208842208923%_
                                 _%$%e208843208926%_
                                 _%$%hd208844208929%_
                                 _%$%tl208845208931%_
                                 _%$%e208846208934%_
                                 _%$%hd208847208937%_
                                 _%$%tl208848208939%_
                                 _%__splice214542214543%_
                                 _%$%target208849208942%_
                                 _%$%tl208851208944%_)
                                (_%__kont214546214547%_))))
                        (_%__kont214546214547%_))))
                (_%__kont214546214547%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont214546214547%_))
                                                (_%__kont214546214547%_))))
                                        (_%__kont214546214547%_))))
                                (_%__kont214546214547%_))))
                        (_%__kont214546214547%_))))
                (_%__kont214546214547%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont214546214547%_))
                                            (_%__kont214546214547%_))
                                        (_%__kont214546214547%_))))
                                (_%__kont214546214547%_)))))))))
          (let* ((_%$%g208526208549%_
                  (lambda (_%$%g208527208546%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g208527208546%_))))
                 (_%$%g208525208808%_
                  (lambda (_%$%g208527208552%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g208527208552%_))
                        (let ((_%$%e208530208554%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g208527208552%_))))
                          (let ((_%$%hd208531208557%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208530208554%_)))
                                (_%$%tl208532208559%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208530208554%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl208532208559%_))
                                (let ((_%$%e208533208562%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl208532208559%_))))
                                  (let ((_%$%hd208534208565%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e208533208562%_)))
                                        (_%$%tl208535208567%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e208533208562%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl208535208567%_))
                                        (let ((_g215213_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%$%tl208535208567%_
                                                  '0))))
                                          (begin
                                            (let ((_g215214_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g215213_)
                                                         (##values-length
                                                          _g215213_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g215214_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g215214_)))
                                            (let ((_%$%target208536208570%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g215213_
                                                      0)))
                                                  (_%$%tl208538208572%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g215213_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl208538208572%_))
                                                  (letrec ((_%$%loop208539208575%_
                                                            (lambda (_%$%hd208537208578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%rand208543208580%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd208537208578%_))
                          (let ((_%$%e208540208582%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd208537208578%_))))
                            (let ((_%$%lp-hd208541208585%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e208540208582%_)))
                                  (_%$%lp-tl208542208587%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e208540208582%_))))
                              (_%$%loop208539208575%_
                               _%$%lp-tl208542208587%_
                               (cons _%$%lp-hd208541208585%_
                                     _%$%rand208543208580%_))))
                          (let ((_%$%rand208544208590%_
                                 (reverse _%$%rand208543208580%_)))
                            (if (gxc#current-compile-decls-unsafe?)
                                (_%compile-call208524%_
                                 _%$%hd208534208565%_
                                 (let ((__tmp215215
                                        (lambda (_%$%g208610208613%_
                                                 _%$%g208611208615%_)
                                          (cons _%$%g208610208613%_
                                                _%$%g208611208615%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp215215
                                    '()
                                    _%$%rand208544208590%_)))
                                (let* ((_%__stx214654214655%_
                                        _%$%hd208534208565%_)
                                       (_%$%g208619208631%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx214654214655%_)))))
                                  (let ((_%__kont214656214657%_
                                         (lambda ()
                                           (let ((_%f208668%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self208521%_
                                                     _%$%hd208534208565%_))))
                                             (if (and (let ((__tmp215216
                                                             (symbol->string
                                                              _%f208668%_)))
                                                        (declare (not safe))
                                                        (##string-prefix?
                                                         '"##"
                                                         __tmp215216))
                                                      (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##memq _%f208668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let _%lp208670%_ ((_%rest208673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (reverse (let ((__tmp215218
                                             (lambda (_%$%g208790208793%_
                                                      _%$%g208791208795%_)
                                               (cons _%$%g208790208793%_
                                                     _%$%g208791208795%_))))
                                        (declare (not safe))
                                        (foldr__0
                                         __tmp215218
                                         '()
                                         _%$%rand208544208590%_))))
                            (_%bind208675%_ '())
                            (_%args208676%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%$%rest208677208685%_
                                                           _%rest208673%_)
                                                          (_%$%else208679208693%_
                                                           (lambda ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bind208675%_
                                 (cons '(declare (not safe))
                                       (cons (cons _%f208668%_ _%args208676%_)
                                             '()))))))
                  (_%$%K208681208779%_
                   (lambda (_%rest208696%_ _%e208697%_)
                     (let* ((_%__stx214608214609%_ _%e208697%_)
                            (_%$%g208702208720%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%__stx214608214609%_)))))
                       (let ((_%__kont214610214611%_
                              (lambda ()
                                (_%lp208670%_
                                 _%rest208696%_
                                 _%bind208675%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e208697%_))
                                       _%args208676%_))))
                             (_%__kont214612214613%_
                              (lambda ()
                                (_%lp208670%_
                                 _%rest208696%_
                                 _%bind208675%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e208697%_))
                                       _%args208676%_))))
                             (_%__kont214614214615%_
                              (lambda ()
                                (let ((_%tmp208727%_
                                       (let ((__tmp215217
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__tmp))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp215217))))
                                  (_%lp208670%_
                                   _%rest208696%_
                                   (cons (cons _%tmp208727%_
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _%e208697%_))
                                                     '()))
                                         _%bind208675%_)
                                   (cons _%tmp208727%_ _%args208676%_))))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%__stx214608214609%_))
                             (let ((_%$%e208704208758%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%__stx214608214609%_))))
                               (let ((_%$%tl208706208763%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e208704208758%_)))
                                     (_%$%hd208705208761%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e208704208758%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#identifier? _%$%hd208705208761%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-eq?
                                            '%#ref
                                            _%$%hd208705208761%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl208706208763%_))
                                             (let ((_%$%e208707208766%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl208706208763%_))))
                                               (let ((_%$%tl208709208771%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e208707208766%_)))
                                                     (_%$%hd208708208769%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e208707208766%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl208709208771%_))
                                                     (_%__kont214610214611%_)
                                                     (_%__kont214614214615%_))))
                                             (_%__kont214614214615%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#quote
                                                _%$%hd208705208761%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl208706208763%_))
                                                 (let ((_%$%e208713208743%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl208706208763%_))))
                                                   (let ((_%$%tl208715208748%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e208713208743%_)))
                                                         (_%$%hd208714208746%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e208713208743%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl208715208748%_))
                                                         (_%__kont214612214613%_)
                                                         (_%__kont214614214615%_))))
                                                 (_%__kont214614214615%_))
                                             (_%__kont214614214615%_)))
                                     (_%__kont214614214615%_))))
                             (_%__kont214614214615%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (pair? _%$%rest208677208685%_)
                                                         (let ((_%$%hd208682208782%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%rest208677208685%_)))
                       (_%$%tl208683208784%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%rest208677208685%_))))
                   (let* ((_%e208787%_ _%$%hd208682208782%_)
                          (_%rest208789%_ _%$%tl208683208784%_))
                     (_%$%K208681208779%_ _%rest208789%_ _%e208787%_)))
                 (_%$%else208679208693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%compile-call208524%_
                                                  _%$%hd208534208565%_
                                                  (let ((__tmp215219
                                                         (lambda (_%$%g208797208800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g208798208802%_)
                   (cons _%$%g208797208800%_ _%$%g208798208802%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp215219
                                                     '()
                                                     _%$%rand208544208590%_)))))))
                                        (_%__kont214658214659%_
                                         (lambda ()
                                           (_%compile-call208524%_
                                            _%$%hd208534208565%_
                                            (let ((__tmp215220
                                                   (lambda (_%$%g208637208640%_
                                                            _%$%g208638208642%_)
                                                     (cons _%$%g208637208640%_
                                                           _%$%g208638208642%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp215220
                                               '()
                                               _%$%rand208544208590%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx214654214655%_))
                                        (let ((_%$%e208621208650%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx214654214655%_))))
                                          (let ((_%$%tl208623208655%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e208621208650%_)))
                                                (_%$%hd208622208653%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e208621208650%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd208622208653%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%$%hd208622208653%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl208623208655%_))
                                                        (let ((_%$%e208624208658%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl208623208655%_))))
                  (let ((_%$%tl208626208663%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e208624208658%_)))
                        (_%$%hd208625208661%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e208624208658%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl208626208663%_))
                        (_%__kont214656214657%_)
                        (_%__kont214658214659%_))))
                (_%__kont214658214659%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont214658214659%_))
                                                (_%__kont214658214659%_))))
                                        (_%__kont214658214659%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop208539208575%_
                                                     _%$%target208536208570%_
                                                     '()))
                                                  (_%$%g208526208549%_
                                                   _%$%g208527208552%_)))))
                                        (_%$%g208526208549%_
                                         _%$%g208527208552%_))))
                                (_%$%g208526208549%_ _%$%g208527208552%_))))
                        (_%$%g208526208549%_ _%$%g208527208552%_)))))
            (_%$%g208525208808%_ _%stx208522%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self208266%_ _%stx208267%_)
        (let* ((_%__stx214726214727%_ _%stx208267%_)
               (_%$%g208270208299%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx214726214727%_)))))
          (let ((_%__kont214728214729%_
                 (lambda (_%$%g208272208365%_ _%$%g208273208366%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self208266%_
                        _%stx208267%_)
                       (let ((_%f208388%_
                              (let ((__tmp215221
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%$%g208273208366%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self208266%_
                                 __tmp215221))))
                         (let _%lp208390%_ ((_%rest208393%_
                                             (reverse (let ((__tmp215223
                                                             (lambda (_%$%g208510208513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g208511208515%_)
                       (cons _%$%g208510208513%_ _%$%g208511208515%_))))
                (declare (not safe))
                (foldr__0 __tmp215223 '() _%$%g208272208365%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind208395%_ '())
                                            (_%args208396%_ '()))
                           (let* ((_%$%rest208397208405%_ _%rest208393%_)
                                  (_%$%else208399208413%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind208395%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f208388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args208396%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%K208401208499%_
                                   (lambda (_%rest208416%_ _%e208417%_)
                                     (let* ((_%__stx214680214681%_ _%e208417%_)
                                            (_%$%g208422208440%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx214680214681%_)))))
                                       (let ((_%__kont214682214683%_
                                              (lambda ()
                                                (_%lp208390%_
                                                 _%rest208416%_
                                                 _%bind208395%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e208417%_))
                                                       _%args208396%_))))
                                             (_%__kont214684214685%_
                                              (lambda ()
                                                (_%lp208390%_
                                                 _%rest208416%_
                                                 _%bind208395%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e208417%_))
                                                       _%args208396%_))))
                                             (_%__kont214686214687%_
                                              (lambda ()
                                                (let ((_%tmp208447%_
                                                       (let ((__tmp215222
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp215222))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp208390%_
                                                   _%rest208416%_
                                                   (cons (cons _%tmp208447%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e208417%_))
                             '()))
                 _%bind208395%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp208447%_
                                                         _%args208396%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx214680214681%_))
                                             (let ((_%$%e208424208478%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx214680214681%_))))
                                               (let ((_%$%tl208426208483%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e208424208478%_)))
                                                     (_%$%hd208425208481%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e208424208478%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%$%hd208425208481%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%$%hd208425208481%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl208426208483%_))
                     (let ((_%$%e208427208486%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl208426208483%_))))
                       (let ((_%$%tl208429208491%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e208427208486%_)))
                             (_%$%hd208428208489%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e208427208486%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl208429208491%_))
                             (_%__kont214682214683%_)
                             (_%__kont214686214687%_))))
                     (_%__kont214686214687%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%$%hd208425208481%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl208426208483%_))
                         (let ((_%$%e208433208463%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl208426208483%_))))
                           (let ((_%$%tl208435208468%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e208433208463%_)))
                                 (_%$%hd208434208466%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e208433208463%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl208435208468%_))
                                 (_%__kont214684214685%_)
                                 (_%__kont214686214687%_))))
                         (_%__kont214686214687%_))
                     (_%__kont214686214687%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont214686214687%_))))
                                             (_%__kont214686214687%_)))))))
                             (if (pair? _%$%rest208397208405%_)
                                 (let ((_%$%hd208402208502%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%rest208397208405%_)))
                                       (_%$%tl208403208504%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest208397208405%_))))
                                   (let* ((_%e208507%_ _%$%hd208402208502%_)
                                          (_%rest208509%_
                                           _%$%tl208403208504%_))
                                     (_%$%K208401208499%_
                                      _%rest208509%_
                                      _%e208507%_)))
                                 (_%$%else208399208413%_))))))))
                (_%__kont214732214733%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self208266%_ _%stx208267%_))))
            (let ((_%__match214771214772%_
                   (lambda (_%$%e208274208311%_
                            _%$%hd208275208314%_
                            _%$%tl208276208316%_
                            _%$%e208277208319%_
                            _%$%hd208278208322%_
                            _%$%tl208279208324%_
                            _%$%e208280208327%_
                            _%$%hd208281208330%_
                            _%$%tl208282208332%_
                            _%$%e208283208335%_
                            _%$%hd208284208338%_
                            _%$%tl208285208340%_
                            _%__splice214730214731%_
                            _%$%target208286208343%_
                            _%$%tl208288208345%_)
                     (letrec ((_%$%loop208289208348%_
                               (lambda (_%$%hd208287208351%_
                                        _%$%rand208293208353%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd208287208351%_))
                                     (let ((_%$%e208290208355%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd208287208351%_))))
                                       (let ((_%$%lp-tl208292208360%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e208290208355%_)))
                                             (_%$%lp-hd208291208358%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e208290208355%_))))
                                         (_%$%loop208289208348%_
                                          _%$%lp-tl208292208360%_
                                          (cons _%$%lp-hd208291208358%_
                                                _%$%rand208293208353%_))))
                                     (let ((_%$%rand208294208363%_
                                            (reverse _%$%rand208293208353%_)))
                                       (_%__kont214728214729%_
                                        _%$%rand208294208363%_
                                        _%$%hd208284208338%_))))))
                       (_%$%loop208289208348%_
                        _%$%target208286208343%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx214726214727%_))
                  (let ((_%$%e208274208311%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx214726214727%_))))
                    (let ((_%$%tl208276208316%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e208274208311%_)))
                          (_%$%hd208275208314%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e208274208311%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl208276208316%_))
                          (let ((_%$%e208277208319%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl208276208316%_))))
                            (let ((_%$%tl208279208324%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e208277208319%_)))
                                  (_%$%hd208278208322%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e208277208319%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd208278208322%_))
                                  (let ((_%$%e208280208327%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd208278208322%_))))
                                    (let ((_%$%tl208282208332%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e208280208327%_)))
                                          (_%$%hd208281208330%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e208280208327%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd208281208330%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd208281208330%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl208282208332%_))
                                                  (let ((_%$%e208283208335%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl208282208332%_))))
                                                    (let ((_%$%tl208285208340%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208283208335%_)))
                                                          (_%$%hd208284208338%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208283208335%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl208285208340%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl208279208324%_))
                      (let ((_%__splice214730214731%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl208279208324%_
                                '0))))
                        (let ((_%$%tl208288208345%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice214730214731%_ '1)))
                              (_%$%target208286208343%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice214730214731%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl208288208345%_))
                              (_%__match214771214772%_
                               _%$%e208274208311%_
                               _%$%hd208275208314%_
                               _%$%tl208276208316%_
                               _%$%e208277208319%_
                               _%$%hd208278208322%_
                               _%$%tl208279208324%_
                               _%$%e208280208327%_
                               _%$%hd208281208330%_
                               _%$%tl208282208332%_
                               _%$%e208283208335%_
                               _%$%hd208284208338%_
                               _%$%tl208285208340%_
                               _%__splice214730214731%_
                               _%$%target208286208343%_
                               _%$%tl208288208345%_)
                              (_%__kont214732214733%_))))
                      (_%__kont214732214733%_))
                  (_%__kont214732214733%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont214732214733%_))
                                              (_%__kont214732214733%_))
                                          (_%__kont214732214733%_))))
                                  (_%__kont214732214733%_))))
                          (_%__kont214732214733%_))))
                  (_%__kont214732214733%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self208078%_ _%stx208079%_)
        (letrec ((_%simplify208081%_
                  (lambda (_%code208166%_)
                    (let* ((_%$%code208167208185%_ _%code208166%_)
                           (_%$%else208169208193%_ (lambda () _%code208166%_))
                           (_%$%K208171208229%_
                            (lambda (_%expr208196%_ _%test208197%_)
                              (let* ((_%$%expr208198208206%_ _%expr208196%_)
                                     (_%$%else208200208214%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test208197%_
                                                    (cons _%expr208196%_
                                                          '())))))
                                     (_%$%K208202208219%_
                                      (lambda (_%exprs208217%_)
                                        (cons 'and
                                              (cons _%test208197%_
                                                    _%exprs208217%_)))))
                                (if (pair? _%$%expr208198208206%_)
                                    (let ((_%$%hd208203208222%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%expr208198208206%_)))
                                          (_%$%tl208204208224%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%expr208198208206%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%$%hd208203208222%_ 'and))
                                          (let ((_%exprs208227%_
                                                 _%$%tl208204208224%_))
                                            (_%$%K208202208219%_
                                             _%exprs208227%_))
                                          (_%$%else208200208214%_)))
                                    (_%$%else208200208214%_))))))
                      (if (pair? _%$%code208167208185%_)
                          (let ((_%$%hd208172208232%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%code208167208185%_)))
                                (_%$%tl208173208234%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%code208167208185%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%$%hd208172208232%_ 'if))
                                (if (pair? _%$%tl208173208234%_)
                                    (let ((_%$%hd208174208237%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl208173208234%_)))
                                          (_%$%tl208175208239%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl208173208234%_))))
                                      (let ((_%test208242%_
                                             _%$%hd208174208237%_))
                                        (if (pair? _%$%tl208175208239%_)
                                            (let ((_%$%hd208176208244%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl208175208239%_)))
                                                  (_%$%tl208177208246%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl208175208239%_))))
                                              (let ((_%expr208249%_
                                                     _%$%hd208176208244%_))
                                                (if (pair? _%$%tl208177208246%_)
                                                    (let ((_%$%hd208178208251%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%tl208177208246%_)))
                                                          (_%$%tl208179208253%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%tl208177208246%_))))
                                                      (if (pair? _%$%hd208178208251%_)
                                                          (let ((_%$%hd208180208256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%hd208178208251%_)))
                        (_%$%tl208181208258%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%hd208178208251%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%$%hd208180208256%_ 'quote))
                        (if (pair? _%$%tl208181208258%_)
                            (let ((_%$%hd208182208261%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%tl208181208258%_)))
                                  (_%$%tl208183208263%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%tl208181208258%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%$%hd208182208261%_ '#f))
                                  (if (null? _%$%tl208183208263%_)
                                      (if (null? _%$%tl208179208253%_)
                                          (_%$%K208171208229%_
                                           _%expr208249%_
                                           _%test208242%_)
                                          (_%$%else208169208193%_))
                                      (_%$%else208169208193%_))
                                  (_%$%else208169208193%_)))
                            (_%$%else208169208193%_))
                        (_%$%else208169208193%_)))
                  (_%$%else208169208193%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else208169208193%_))))
                                            (_%$%else208169208193%_))))
                                    (_%$%else208169208193%_))
                                (_%$%else208169208193%_)))
                          (_%$%else208169208193%_))))))
          (let* ((_%$%g208083208104%_
                  (lambda (_%$%g208084208101%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g208084208101%_))))
                 (_%$%g208082208163%_
                  (lambda (_%$%g208084208107%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g208084208107%_))
                        (let ((_%$%e208088208109%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g208084208107%_))))
                          (let ((_%$%hd208089208112%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208088208109%_)))
                                (_%$%tl208090208114%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208088208109%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl208090208114%_))
                                (let ((_%$%e208091208117%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl208090208114%_))))
                                  (let ((_%$%hd208092208120%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e208091208117%_)))
                                        (_%$%tl208093208122%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e208091208117%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl208093208122%_))
                                        (let ((_%$%e208094208125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl208093208122%_))))
                                          (let ((_%$%hd208095208128%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e208094208125%_)))
                                                (_%$%tl208096208130%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e208094208125%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl208096208130%_))
                                                (let ((_%$%e208097208133%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl208096208130%_))))
                                                  (let ((_%$%hd208098208136%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e208097208133%_)))
                                                        (_%$%tl208099208138%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e208097208133%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl208099208138%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#current-compile-boolean-context))
                                                            (_%simplify208081%_
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self208078%_
                                    _%$%hd208092208120%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self208078%_
                                          _%$%hd208095208128%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self208078%_
                                                _%$%hd208098208136%_))
                                             '())))))
                    (cons 'if
                          (cons (let ((__tmp215224
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self208078%_
                                            _%$%hd208092208120%_)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp215224
                                   gxc#current-compile-boolean-context
                                   '#t))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self208078%_
                                         _%$%hd208095208128%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self208078%_
                                               _%$%hd208098208136%_))
                                            '())))))
                (_%$%g208083208104%_ _%$%g208084208107%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g208083208104%_
                                                 _%$%g208084208107%_))))
                                        (_%$%g208083208104%_
                                         _%$%g208084208107%_))))
                                (_%$%g208083208104%_ _%$%g208084208107%_))))
                        (_%$%g208083208104%_ _%$%g208084208107%_)))))
            (_%$%g208082208163%_ _%stx208079%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self208026%_ _%stx208027%_)
        (let* ((_%$%g208029208042%_
                (lambda (_%$%g208030208039%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208030208039%_))))
               (_%$%g208028208075%_
                (lambda (_%$%g208030208045%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208030208045%_))
                      (let ((_%$%e208032208047%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208030208045%_))))
                        (let ((_%$%hd208033208050%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208032208047%_)))
                              (_%$%tl208034208052%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208032208047%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208034208052%_))
                              (let ((_%$%e208035208055%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208034208052%_))))
                                (let ((_%$%hd208036208058%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208035208055%_)))
                                      (_%$%tl208037208060%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208035208055%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl208037208060%_))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-binding-id
                                         _%$%hd208036208058%_))
                                      (_%$%g208029208042%_
                                       _%$%g208030208045%_))))
                              (_%$%g208029208042%_ _%$%g208030208045%_))))
                      (_%$%g208029208042%_ _%$%g208030208045%_)))))
          (_%$%g208028208075%_ _%stx208027%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self207958%_ _%stx207959%_)
        (let* ((_%$%g207961207978%_
                (lambda (_%$%g207962207975%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207962207975%_))))
               (_%$%g207960208023%_
                (lambda (_%$%g207962207981%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207962207981%_))
                      (let ((_%$%e207965207983%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207962207981%_))))
                        (let ((_%$%hd207966207986%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207965207983%_)))
                              (_%$%tl207967207988%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207965207983%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207967207988%_))
                              (let ((_%$%e207968207991%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207967207988%_))))
                                (let ((_%$%hd207969207994%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207968207991%_)))
                                      (_%$%tl207970207996%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207968207991%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207970207996%_))
                                      (let ((_%$%e207971207999%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207970207996%_))))
                                        (let ((_%$%hd207972208002%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207971207999%_)))
                                              (_%$%tl207973208004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207971207999%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl207973208004%_))
                                              (cons 'set!
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-binding-id
                                                             _%$%hd207969207994%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self207958%_
                           _%$%hd207972208002%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207961207978%_
                                               _%$%g207962207981%_))))
                                      (_%$%g207961207978%_
                                       _%$%g207962207981%_))))
                              (_%$%g207961207978%_ _%$%g207962207981%_))))
                      (_%$%g207961207978%_ _%$%g207962207981%_)))))
          (_%$%g207960208023%_ _%stx207959%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self207769%_ _%stx207770%_)
        (let* ((_%$%g207772207789%_
                (lambda (_%$%g207773207786%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207773207786%_))))
               (_%$%g207771207955%_
                (lambda (_%$%g207773207792%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207773207792%_))
                      (let ((_%$%e207776207794%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207773207792%_))))
                        (let ((_%$%hd207777207797%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207776207794%_)))
                              (_%$%tl207778207799%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207776207794%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207778207799%_))
                              (let ((_%$%e207779207802%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207778207799%_))))
                                (let ((_%$%hd207780207805%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207779207802%_)))
                                      (_%$%tl207781207807%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207779207802%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207781207807%_))
                                      (let ((_%$%e207782207810%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207781207807%_))))
                                        (let ((_%$%hd207783207813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207782207810%_)))
                                              (_%$%tl207784207815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207782207810%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl207784207815%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self207769%_ _%$%hd207783207813%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self207769%_
                               _%$%hd207780207805%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp207834%_ ((_%rest207837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%hd207780207805%_
                                    (cons _%$%hd207783207813%_ '())))
                             (_%bind207839%_ '())
                             (_%args207840%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%rest207841207849%_
                                                            _%rest207837%_)
                                                           (_%$%else207843207857%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind207839%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-instance-of?
                                                    _%args207840%_)
                                              '()))))))
                   (_%$%K207845207943%_
                    (lambda (_%rest207860%_ _%e207861%_)
                      (let* ((_%__stx214774214775%_ _%e207861%_)
                             (_%$%g207866207884%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx214774214775%_)))))
                        (let ((_%__kont214776214777%_
                               (lambda ()
                                 (_%lp207834%_
                                  _%rest207860%_
                                  _%bind207839%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e207861%_))
                                        _%args207840%_))))
                              (_%__kont214778214779%_
                               (lambda ()
                                 (_%lp207834%_
                                  _%rest207860%_
                                  _%bind207839%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e207861%_))
                                        _%args207840%_))))
                              (_%__kont214780214781%_
                               (lambda ()
                                 (let ((_%tmp207891%_
                                        (let ((__tmp215225
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp215225))))
                                   (_%lp207834%_
                                    _%rest207860%_
                                    (cons (cons _%tmp207891%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e207861%_))
                                                      '()))
                                          _%bind207839%_)
                                    (cons _%tmp207891%_ _%args207840%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx214774214775%_))
                              (let ((_%$%e207868207922%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx214774214775%_))))
                                (let ((_%$%tl207870207927%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207868207922%_)))
                                      (_%$%hd207869207925%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207868207922%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd207869207925%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd207869207925%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207870207927%_))
                                              (let ((_%$%e207871207930%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207870207927%_))))
                                                (let ((_%$%tl207873207935%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207871207930%_)))
                                                      (_%$%hd207872207933%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207871207930%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl207873207935%_))
                                                      (_%__kont214776214777%_)
                                                      (_%__kont214780214781%_))))
                                              (_%__kont214780214781%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%$%hd207869207925%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl207870207927%_))
                                                  (let ((_%$%e207877207907%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl207870207927%_))))
                                                    (let ((_%$%tl207879207912%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e207877207907%_)))
                                                          (_%$%hd207878207910%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e207877207907%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl207879207912%_))
                                                          (_%__kont214778214779%_)
                                                          (_%__kont214780214781%_))))
                                                  (_%__kont214780214781%_))
                                              (_%__kont214780214781%_)))
                                      (_%__kont214780214781%_))))
                              (_%__kont214780214781%_)))))))
              (if (pair? _%$%rest207841207849%_)
                  (let ((_%$%hd207846207946%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest207841207849%_)))
                        (_%$%tl207847207948%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest207841207849%_))))
                    (let* ((_%e207951%_ _%$%hd207846207946%_)
                           (_%rest207953%_ _%$%tl207847207948%_))
                      (_%$%K207845207943%_ _%rest207953%_ _%e207951%_)))
                  (_%$%else207843207857%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207772207789%_
                                               _%$%g207773207792%_))))
                                      (_%$%g207772207789%_
                                       _%$%g207773207792%_))))
                              (_%$%g207772207789%_ _%$%g207773207792%_))))
                      (_%$%g207772207789%_ _%$%g207773207792%_)))))
          (_%$%g207771207955%_ _%stx207770%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self207580%_ _%stx207581%_)
        (let* ((_%$%g207583207600%_
                (lambda (_%$%g207584207597%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207584207597%_))))
               (_%$%g207582207766%_
                (lambda (_%$%g207584207603%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207584207603%_))
                      (let ((_%$%e207587207605%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207584207603%_))))
                        (let ((_%$%hd207588207608%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207587207605%_)))
                              (_%$%tl207589207610%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207587207605%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207589207610%_))
                              (let ((_%$%e207590207613%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207589207610%_))))
                                (let ((_%$%hd207591207616%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207590207613%_)))
                                      (_%$%tl207592207618%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207590207613%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207592207618%_))
                                      (let ((_%$%e207593207621%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207592207618%_))))
                                        (let ((_%$%hd207594207624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207593207621%_)))
                                              (_%$%tl207595207626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207593207621%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl207595207626%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-direct-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self207580%_ _%$%hd207594207624%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self207580%_
                               _%$%hd207591207616%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp207645%_ ((_%rest207648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%hd207591207616%_
                                    (cons _%$%hd207594207624%_ '())))
                             (_%bind207650%_ '())
                             (_%args207651%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%rest207652207660%_
                                                            _%rest207648%_)
                                                           (_%$%else207654207668%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind207650%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-direct-instance-of?
                                                    _%args207651%_)
                                              '()))))))
                   (_%$%K207656207754%_
                    (lambda (_%rest207671%_ _%e207672%_)
                      (let* ((_%__stx214820214821%_ _%e207672%_)
                             (_%$%g207677207695%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx214820214821%_)))))
                        (let ((_%__kont214822214823%_
                               (lambda ()
                                 (_%lp207645%_
                                  _%rest207671%_
                                  _%bind207650%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e207672%_))
                                        _%args207651%_))))
                              (_%__kont214824214825%_
                               (lambda ()
                                 (_%lp207645%_
                                  _%rest207671%_
                                  _%bind207650%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e207672%_))
                                        _%args207651%_))))
                              (_%__kont214826214827%_
                               (lambda ()
                                 (let ((_%tmp207702%_
                                        (let ((__tmp215226
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp215226))))
                                   (_%lp207645%_
                                    _%rest207671%_
                                    (cons (cons _%tmp207702%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e207672%_))
                                                      '()))
                                          _%bind207650%_)
                                    (cons _%tmp207702%_ _%args207651%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx214820214821%_))
                              (let ((_%$%e207679207733%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx214820214821%_))))
                                (let ((_%$%tl207681207738%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207679207733%_)))
                                      (_%$%hd207680207736%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207679207733%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd207680207736%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd207680207736%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207681207738%_))
                                              (let ((_%$%e207682207741%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207681207738%_))))
                                                (let ((_%$%tl207684207746%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207682207741%_)))
                                                      (_%$%hd207683207744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207682207741%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl207684207746%_))
                                                      (_%__kont214822214823%_)
                                                      (_%__kont214826214827%_))))
                                              (_%__kont214826214827%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%$%hd207680207736%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl207681207738%_))
                                                  (let ((_%$%e207688207718%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl207681207738%_))))
                                                    (let ((_%$%tl207690207723%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e207688207718%_)))
                                                          (_%$%hd207689207721%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e207688207718%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl207690207723%_))
                                                          (_%__kont214824214825%_)
                                                          (_%__kont214826214827%_))))
                                                  (_%__kont214826214827%_))
                                              (_%__kont214826214827%_)))
                                      (_%__kont214826214827%_))))
                              (_%__kont214826214827%_)))))))
              (if (pair? _%$%rest207652207660%_)
                  (let ((_%$%hd207657207757%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest207652207660%_)))
                        (_%$%tl207658207759%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest207652207660%_))))
                    (let* ((_%e207762%_ _%$%hd207657207757%_)
                           (_%rest207764%_ _%$%tl207658207759%_))
                      (_%$%K207656207754%_ _%rest207764%_ _%e207762%_)))
                  (_%$%else207654207668%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207583207600%_
                                               _%$%g207584207603%_))))
                                      (_%$%g207583207600%_
                                       _%$%g207584207603%_))))
                              (_%$%g207583207600%_ _%$%g207584207603%_))))
                      (_%$%g207583207600%_ _%$%g207584207603%_)))))
          (_%$%g207582207766%_ _%stx207581%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self207496%_ _%stx207497%_)
        (let* ((_%$%g207499207520%_
                (lambda (_%$%g207500207517%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207500207517%_))))
               (_%$%g207498207577%_
                (lambda (_%$%g207500207523%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207500207523%_))
                      (let ((_%$%e207504207525%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207500207523%_))))
                        (let ((_%$%hd207505207528%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207504207525%_)))
                              (_%$%tl207506207530%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207504207525%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207506207530%_))
                              (let ((_%$%e207507207533%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207506207530%_))))
                                (let ((_%$%hd207508207536%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207507207533%_)))
                                      (_%$%tl207509207538%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207507207533%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207509207538%_))
                                      (let ((_%$%e207510207541%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207509207538%_))))
                                        (let ((_%$%hd207511207544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207510207541%_)))
                                              (_%$%tl207512207546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207510207541%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207512207546%_))
                                              (let ((_%$%e207513207549%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207512207546%_))))
                                                (let ((_%$%hd207514207552%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207513207549%_)))
                                                      (_%$%tl207515207554%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207513207549%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl207515207554%_))
                                                      (cons '##structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self207496%_
                             _%$%hd207514207552%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self207496%_
                                   _%$%hd207511207544%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self207496%_
                                         _%$%hd207508207536%_))
                                      (cons ''#f '())))))
              (_%$%g207499207520%_ _%$%g207500207523%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207499207520%_
                                               _%$%g207500207523%_))))
                                      (_%$%g207499207520%_
                                       _%$%g207500207523%_))))
                              (_%$%g207499207520%_ _%$%g207500207523%_))))
                      (_%$%g207499207520%_ _%$%g207500207523%_)))))
          (_%$%g207498207577%_ _%stx207497%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self207396%_ _%stx207397%_)
        (let* ((_%$%g207399207424%_
                (lambda (_%$%g207400207421%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207400207421%_))))
               (_%$%g207398207493%_
                (lambda (_%$%g207400207427%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207400207427%_))
                      (let ((_%$%e207405207429%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207400207427%_))))
                        (let ((_%$%hd207406207432%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207405207429%_)))
                              (_%$%tl207407207434%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207405207429%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207407207434%_))
                              (let ((_%$%e207408207437%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207407207434%_))))
                                (let ((_%$%hd207409207440%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207408207437%_)))
                                      (_%$%tl207410207442%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207408207437%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207410207442%_))
                                      (let ((_%$%e207411207445%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207410207442%_))))
                                        (let ((_%$%hd207412207448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207411207445%_)))
                                              (_%$%tl207413207450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207411207445%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207413207450%_))
                                              (let ((_%$%e207414207453%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207413207450%_))))
                                                (let ((_%$%hd207415207456%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207414207453%_)))
                                                      (_%$%tl207416207458%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207414207453%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl207416207458%_))
                                                      (let ((_%$%e207417207461%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl207416207458%_))))
                (let ((_%$%hd207418207464%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e207417207461%_)))
                      (_%$%tl207419207466%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e207417207461%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl207419207466%_))
                      (cons '##structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self207396%_
                                     _%$%hd207415207456%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self207396%_
                                           _%$%hd207418207464%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self207396%_
                                                 _%$%hd207412207448%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self207396%_
                                                       _%$%hd207409207440%_))
                                                    (cons ''#f '()))))))
                      (_%$%g207399207424%_ _%$%g207400207427%_))))
              (_%$%g207399207424%_ _%$%g207400207427%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207399207424%_
                                               _%$%g207400207427%_))))
                                      (_%$%g207399207424%_
                                       _%$%g207400207427%_))))
                              (_%$%g207399207424%_ _%$%g207400207427%_))))
                      (_%$%g207399207424%_ _%$%g207400207427%_)))))
          (_%$%g207398207493%_ _%stx207397%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self207312%_ _%stx207313%_)
        (let* ((_%$%g207315207336%_
                (lambda (_%$%g207316207333%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207316207333%_))))
               (_%$%g207314207393%_
                (lambda (_%$%g207316207339%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207316207339%_))
                      (let ((_%$%e207320207341%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207316207339%_))))
                        (let ((_%$%hd207321207344%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207320207341%_)))
                              (_%$%tl207322207346%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207320207341%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207322207346%_))
                              (let ((_%$%e207323207349%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207322207346%_))))
                                (let ((_%$%hd207324207352%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207323207349%_)))
                                      (_%$%tl207325207354%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207323207349%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207325207354%_))
                                      (let ((_%$%e207326207357%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207325207354%_))))
                                        (let ((_%$%hd207327207360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207326207357%_)))
                                              (_%$%tl207328207362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207326207357%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207328207362%_))
                                              (let ((_%$%e207329207365%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207328207362%_))))
                                                (let ((_%$%hd207330207368%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207329207365%_)))
                                                      (_%$%tl207331207370%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207329207365%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl207331207370%_))
                                                      (cons '##direct-structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self207312%_
                             _%$%hd207330207368%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self207312%_
                                   _%$%hd207327207360%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self207312%_
                                         _%$%hd207324207352%_))
                                      (cons ''#f '())))))
              (_%$%g207315207336%_ _%$%g207316207339%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207315207336%_
                                               _%$%g207316207339%_))))
                                      (_%$%g207315207336%_
                                       _%$%g207316207339%_))))
                              (_%$%g207315207336%_ _%$%g207316207339%_))))
                      (_%$%g207315207336%_ _%$%g207316207339%_)))))
          (_%$%g207314207393%_ _%stx207313%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self207212%_ _%stx207213%_)
        (let* ((_%$%g207215207240%_
                (lambda (_%$%g207216207237%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207216207237%_))))
               (_%$%g207214207309%_
                (lambda (_%$%g207216207243%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207216207243%_))
                      (let ((_%$%e207221207245%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207216207243%_))))
                        (let ((_%$%hd207222207248%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207221207245%_)))
                              (_%$%tl207223207250%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207221207245%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207223207250%_))
                              (let ((_%$%e207224207253%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207223207250%_))))
                                (let ((_%$%hd207225207256%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207224207253%_)))
                                      (_%$%tl207226207258%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207224207253%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207226207258%_))
                                      (let ((_%$%e207227207261%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207226207258%_))))
                                        (let ((_%$%hd207228207264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207227207261%_)))
                                              (_%$%tl207229207266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207227207261%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207229207266%_))
                                              (let ((_%$%e207230207269%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207229207266%_))))
                                                (let ((_%$%hd207231207272%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207230207269%_)))
                                                      (_%$%tl207232207274%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207230207269%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl207232207274%_))
                                                      (let ((_%$%e207233207277%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl207232207274%_))))
                (let ((_%$%hd207234207280%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e207233207277%_)))
                      (_%$%tl207235207282%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e207233207277%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl207235207282%_))
                      (cons '##direct-structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self207212%_
                                     _%$%hd207231207272%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self207212%_
                                           _%$%hd207234207280%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self207212%_
                                                 _%$%hd207228207264%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self207212%_
                                                       _%$%hd207225207256%_))
                                                    (cons ''#f '()))))))
                      (_%$%g207215207240%_ _%$%g207216207243%_))))
              (_%$%g207215207240%_ _%$%g207216207243%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207215207240%_
                                               _%$%g207216207243%_))))
                                      (_%$%g207215207240%_
                                       _%$%g207216207243%_))))
                              (_%$%g207215207240%_ _%$%g207216207243%_))))
                      (_%$%g207215207240%_ _%$%g207216207243%_)))))
          (_%$%g207214207309%_ _%stx207213%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self207007%_ _%stx207008%_)
        (let* ((_%$%g207010207031%_
                (lambda (_%$%g207011207028%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207011207028%_))))
               (_%$%g207009207209%_
                (lambda (_%$%g207011207034%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207011207034%_))
                      (let ((_%$%e207015207036%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207011207034%_))))
                        (let ((_%$%hd207016207039%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207015207036%_)))
                              (_%$%tl207017207041%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207015207036%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207017207041%_))
                              (let ((_%$%e207018207044%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207017207041%_))))
                                (let ((_%$%hd207019207047%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207018207044%_)))
                                      (_%$%tl207020207049%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207018207044%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207020207049%_))
                                      (let ((_%$%e207021207052%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207020207049%_))))
                                        (let ((_%$%hd207022207055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207021207052%_)))
                                              (_%$%tl207023207057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207021207052%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207023207057%_))
                                              (let ((_%$%e207024207060%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207023207057%_))))
                                                (let ((_%$%hd207025207063%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207024207060%_)))
                                                      (_%$%tl207026207065%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207024207060%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl207026207065%_))
                                                      (if (gxc#current-compile-decls-unsafe?)
                                                          (cons '##unchecked-structure-ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self207007%_
                                 _%$%hd207025207063%_))
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self207007%_
                                       _%$%hd207022207055%_))
                                    (cons ''#f (cons ''#f '())))))
                  (let _%lp207088%_ ((_%rest207091%_
                                      (cons _%$%hd207022207055%_
                                            (cons _%$%hd207025207063%_ '())))
                                     (_%bind207093%_ '())
                                     (_%args207094%_ '()))
                    (let* ((_%$%rest207095207103%_ _%rest207091%_)
                           (_%$%else207097207111%_
                            (lambda ()
                              (cons 'let
                                    (cons _%bind207093%_
                                          (cons '(declare (not safe))
                                                (cons (cons '##unchecked-structure-ref
                                                            (let ((__tmp215227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons ''#f (cons ''#f '()))))
                      (declare (not safe))
                      (##append _%args207094%_ __tmp215227)))
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (_%$%K207099207197%_
                            (lambda (_%rest207114%_ _%e207115%_)
                              (let* ((_%__stx214866214867%_ _%e207115%_)
                                     (_%$%g207120207138%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx214866214867%_)))))
                                (let ((_%__kont214868214869%_
                                       (lambda ()
                                         (_%lp207088%_
                                          _%rest207114%_
                                          _%bind207093%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e207115%_))
                                                _%args207094%_))))
                                      (_%__kont214870214871%_
                                       (lambda ()
                                         (_%lp207088%_
                                          _%rest207114%_
                                          _%bind207093%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e207115%_))
                                                _%args207094%_))))
                                      (_%__kont214872214873%_
                                       (lambda ()
                                         (let ((_%tmp207145%_
                                                (let ((__tmp215228
                                                       (let ()
                                                         (declare (not safe))
                                                         (##gensym '__tmp))))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp215228))))
                                           (_%lp207088%_
                                            _%rest207114%_
                                            (cons (cons _%tmp207145%_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _%e207115%_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind207093%_)
                                            (cons _%tmp207145%_
                                                  _%args207094%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx214866214867%_))
                                      (let ((_%$%e207122207176%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx214866214867%_))))
                                        (let ((_%$%tl207124207181%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207122207176%_)))
                                              (_%$%hd207123207179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207122207176%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%hd207123207179%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%$%hd207123207179%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl207124207181%_))
                                                      (let ((_%$%e207125207184%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl207124207181%_))))
                (let ((_%$%tl207127207189%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e207125207184%_)))
                      (_%$%hd207126207187%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e207125207184%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl207127207189%_))
                      (_%__kont214868214869%_)
                      (_%__kont214872214873%_))))
              (_%__kont214872214873%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _%$%hd207123207179%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl207124207181%_))
                                                          (let ((_%$%e207131207161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl207124207181%_))))
                    (let ((_%$%tl207133207166%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e207131207161%_)))
                          (_%$%hd207132207164%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e207131207161%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl207133207166%_))
                          (_%__kont214870214871%_)
                          (_%__kont214872214873%_))))
                  (_%__kont214872214873%_))
              (_%__kont214872214873%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont214872214873%_))))
                                      (_%__kont214872214873%_)))))))
                      (if (pair? _%$%rest207095207103%_)
                          (let ((_%$%hd207100207200%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%rest207095207103%_)))
                                (_%$%tl207101207202%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%rest207095207103%_))))
                            (let* ((_%e207205%_ _%$%hd207100207200%_)
                                   (_%rest207207%_ _%$%tl207101207202%_))
                              (_%$%K207099207197%_
                               _%rest207207%_
                               _%e207205%_)))
                          (_%$%else207097207111%_)))))
              (_%$%g207010207031%_ _%$%g207011207034%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207010207031%_
                                               _%$%g207011207034%_))))
                                      (_%$%g207010207031%_
                                       _%$%g207011207034%_))))
                              (_%$%g207010207031%_ _%$%g207011207034%_))))
                      (_%$%g207010207031%_ _%$%g207011207034%_)))))
          (_%$%g207009207209%_ _%stx207008%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self206786%_ _%stx206787%_)
        (let* ((_%$%g206789206814%_
                (lambda (_%$%g206790206811%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206790206811%_))))
               (_%$%g206788207004%_
                (lambda (_%$%g206790206817%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206790206817%_))
                      (let ((_%$%e206795206819%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206790206817%_))))
                        (let ((_%$%hd206796206822%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206795206819%_)))
                              (_%$%tl206797206824%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206795206819%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206797206824%_))
                              (let ((_%$%e206798206827%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206797206824%_))))
                                (let ((_%$%hd206799206830%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206798206827%_)))
                                      (_%$%tl206800206832%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206798206827%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl206800206832%_))
                                      (let ((_%$%e206801206835%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl206800206832%_))))
                                        (let ((_%$%hd206802206838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e206801206835%_)))
                                              (_%$%tl206803206840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e206801206835%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl206803206840%_))
                                              (let ((_%$%e206804206843%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl206803206840%_))))
                                                (let ((_%$%hd206805206846%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e206804206843%_)))
                                                      (_%$%tl206806206848%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e206804206843%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl206806206848%_))
                                                      (let ((_%$%e206807206851%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl206806206848%_))))
                (let ((_%$%hd206808206854%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e206807206851%_)))
                      (_%$%tl206809206856%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e206807206851%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl206809206856%_))
                      (if (gxc#current-compile-decls-unsafe?)
                          (cons '##unchecked-structure-set!
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self206786%_
                                         _%$%hd206805206846%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self206786%_
                                               _%$%hd206808206854%_))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self206786%_
                                                     _%$%hd206802206838%_))
                                                  (cons ''#f
                                                        (cons ''#f '()))))))
                          (let _%lp206883%_ ((_%rest206886%_
                                              (cons _%$%hd206802206838%_
                                                    (cons _%$%hd206808206854%_
                                                          (cons _%$%hd206805206846%_
                                                                '()))))
                                             (_%bind206888%_ '())
                                             (_%args206889%_ '()))
                            (let* ((_%$%rest206890206898%_ _%rest206886%_)
                                   (_%$%else206892206906%_
                                    (lambda ()
                                      (cons 'let
                                            (cons _%bind206888%_
                                                  (cons '(declare (not safe))
                                                        (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp215229 (cons ''#f (cons ''#f '()))))
                              (declare (not safe))
                              (##append _%args206889%_ __tmp215229)))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%$%K206894206992%_
                                    (lambda (_%rest206909%_ _%e206910%_)
                                      (let* ((_%__stx214912214913%_
                                              _%e206910%_)
                                             (_%$%g206915206933%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%__stx214912214913%_)))))
                                        (let ((_%__kont214914214915%_
                                               (lambda ()
                                                 (_%lp206883%_
                                                  _%rest206909%_
                                                  _%bind206888%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e206910%_))
                                                        _%args206889%_))))
                                              (_%__kont214916214917%_
                                               (lambda ()
                                                 (_%lp206883%_
                                                  _%rest206909%_
                                                  _%bind206888%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e206910%_))
                                                        _%args206889%_))))
                                              (_%__kont214918214919%_
                                               (lambda ()
                                                 (let ((_%tmp206940%_
                                                        (let ((__tmp215230
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##gensym '__tmp))))
                  (declare (not safe))
                  (make-symbol__0 __tmp215230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%lp206883%_
                                                    _%rest206909%_
                                                    (cons (cons _%tmp206940%_
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__0 _%e206910%_))
                              '()))
                  _%bind206888%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%tmp206940%_
                                                          _%args206889%_))))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%__stx214912214913%_))
                                              (let ((_%$%e206917206971%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%__stx214912214913%_))))
                                                (let ((_%$%tl206919206976%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e206917206971%_)))
                                                      (_%$%hd206918206974%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e206917206971%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd206918206974%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd206918206974%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl206919206976%_))
                      (let ((_%$%e206920206979%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl206919206976%_))))
                        (let ((_%$%tl206922206984%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206920206979%_)))
                              (_%$%hd206921206982%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206920206979%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl206922206984%_))
                              (_%__kont214914214915%_)
                              (_%__kont214918214919%_))))
                      (_%__kont214918214919%_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-eq? '%#quote _%$%hd206918206974%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl206919206976%_))
                          (let ((_%$%e206926206956%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl206919206976%_))))
                            (let ((_%$%tl206928206961%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e206926206956%_)))
                                  (_%$%hd206927206959%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e206926206956%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl206928206961%_))
                                  (_%__kont214916214917%_)
                                  (_%__kont214918214919%_))))
                          (_%__kont214918214919%_))
                      (_%__kont214918214919%_)))
              (_%__kont214918214919%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont214918214919%_)))))))
                              (if (pair? _%$%rest206890206898%_)
                                  (let ((_%$%hd206895206995%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%rest206890206898%_)))
                                        (_%$%tl206896206997%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%rest206890206898%_))))
                                    (let* ((_%e207000%_ _%$%hd206895206995%_)
                                           (_%rest207002%_
                                            _%$%tl206896206997%_))
                                      (_%$%K206894206992%_
                                       _%rest207002%_
                                       _%e207000%_)))
                                  (_%$%else206892206906%_)))))
                      (_%$%g206789206814%_ _%$%g206790206817%_))))
              (_%$%g206789206814%_ _%$%g206790206817%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g206789206814%_
                                               _%$%g206790206817%_))))
                                      (_%$%g206789206814%_
                                       _%$%g206790206817%_))))
                              (_%$%g206789206814%_ _%$%g206790206817%_))))
                      (_%$%g206789206814%_ _%$%g206790206817%_)))))
          (_%$%g206788207004%_ _%stx206787%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self206625%_ _%stx206626%_)
        (letrec ((_%import-set-template206628%_
                  (lambda (_%in206731%_ _%phi206732%_)
                    (let ((_%iphi206734%_
                           (fx+ _%phi206732%_
                                (##direct-structure-ref
                                 _%in206731%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports206735%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in206731%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp206737%_ ((_%rest206739%_ _%imports206735%_)
                                         (_%r206740%_ '()))
                        (let* ((_%$%rest206741206749%_ _%rest206739%_)
                               (_%$%else206743206757%_ (lambda () _%r206740%_))
                               (_%$%K206745206774%_
                                (lambda (_%rest206760%_ _%in206761%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in206761%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi206734%_))
                                          (_%lp206737%_
                                           _%rest206760%_
                                           (cons _%in206761%_ _%r206740%_))
                                          (_%lp206737%_
                                           _%rest206760%_
                                           _%r206740%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in206761%_
                                             'gx#module-import::t))
                                          (let ((_%iphi206765%_
                                                 (fx+ _%phi206732%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in206761%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi206765%_))
                                                (_%lp206737%_
                                                 _%rest206760%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in206761%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r206740%_))
                                                (_%lp206737%_
                                                 _%rest206760%_
                                                 _%r206740%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in206761%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi206768%_
                                                     (fx+ _%iphi206734%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in206761%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi206768%_))
                                                    (_%lp206737%_
                                                     _%rest206760%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in206761%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r206740%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi206768%_))
                                                        (_%lp206737%_
                                                         _%rest206760%_
                                                         (let ((__tmp215231
                                                                (_%import-set-template206628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in206761%_
                         _%iphi206734%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r206740%_ __tmp215231)))
                (_%lp206737%_ _%rest206760%_ _%r206740%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp206737%_
                                               _%rest206760%_
                                               _%r206740%_)))))))
                          (if (pair? _%$%rest206741206749%_)
                              (let ((_%$%hd206746206777%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest206741206749%_)))
                                    (_%$%tl206747206779%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest206741206749%_))))
                                (let* ((_%in206782%_ _%$%hd206746206777%_)
                                       (_%rest206784%_ _%$%tl206747206779%_))
                                  (_%$%K206745206774%_
                                   _%rest206784%_
                                   _%in206782%_)))
                              (_%$%else206743206757%_))))))))
          (let* ((_%$%g206630206640%_
                  (lambda (_%$%g206631206637%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206631206637%_))))
                 (_%$%g206629206728%_
                  (lambda (_%$%g206631206643%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206631206643%_))
                        (let ((_%$%e206633206645%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206631206643%_))))
                          (let ((_%$%hd206634206648%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206633206645%_)))
                                (_%$%tl206635206650%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206633206645%_))))
                            (let ((_%ht206664%_
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq))))
                              (let _%lp206666%_ ((_%rest206668%_
                                                  _%$%tl206635206650%_)
                                                 (_%loads206669%_ '()))
                                (letrec ((_%K206671%_
                                          (lambda (_%ctx206721%_
                                                   _%rest206722%_)
                                            (let ((_%id206724%_
                                                   (##structure-ref
                                                    _%ctx206721%_
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__hash-get
                                                     _%ht206664%_
                                                     _%id206724%_))
                                                  (_%lp206666%_
                                                   _%rest206722%_
                                                   _%loads206669%_)
                                                  (let ((_%rt206726%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#module-id->path-string
                                                            _%id206724%_))))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht206664%_
                                                       _%id206724%_
                                                       _%rt206726%_))
                                                    (_%lp206666%_
                                                     _%rest206722%_
                                                     (cons _%rt206726%_
                                                           _%loads206669%_))))))))
                                  (let* ((_%$%rest206672206680%_
                                          _%rest206668%_)
                                         (_%$%else206674206692%_
                                          (lambda ()
                                            (cons 'begin
                                                  (let ((__tmp215233
                                                         (lambda (_%$%g206687206689%_)
                                                           (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g206687206689%_)))
                (__tmp215232 (reverse _%loads206669%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (##map __tmp215233
                                                           __tmp215232)))))
                                         (_%$%K206676206709%_
                                          (lambda (_%rest206695%_ _%in206696%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%in206696%_
                                                   'gx#module-context::t))
                                                (_%K206671%_
                                                 _%in206696%_
                                                 _%rest206695%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       _%in206696%_
                                                       'gx#module-import::t))
                                                    (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%in206696%_
                            '3
                            '#f
                            '#f)))
                (_%K206671%_
                 (##direct-structure-ref
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%in206696%_ '1 '#f '#f))
                  '1
                  gx#module-export::t
                  '#f)
                 _%rest206695%_)
                (_%lp206666%_ _%rest206695%_ _%loads206669%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           _%in206696%_
                                                           'gx#import-set::t))
                                                        (let ((_%phi206701%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%in206696%_ '2 '#f '#f))))
                  (if (fxzero? _%phi206701%_)
                      (_%K206671%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%in206696%_ '1 '#f '#f))
                       _%rest206695%_)
                      (if (fxpositive? _%phi206701%_)
                          (let ((_%deps206705%_
                                 (_%import-set-template206628%_
                                  _%in206696%_
                                  '0)))
                            (_%lp206666%_
                             (let ()
                               (declare (not safe))
                               (foldl__0 cons _%rest206695%_ _%deps206705%_))
                             _%loads206669%_))
                          (_%lp206666%_ _%rest206695%_ _%loads206669%_))))
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"Unexpected import"
                   _%stx206626%_
                   _%in206696%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%$%rest206672206680%_)
                                        (let ((_%$%hd206677206712%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%rest206672206680%_)))
                                              (_%$%tl206678206714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%rest206672206680%_))))
                                          (let* ((_%in206717%_
                                                  _%$%hd206677206712%_)
                                                 (_%rest206719%_
                                                  _%$%tl206678206714%_))
                                            (_%$%K206676206709%_
                                             _%rest206719%_
                                             _%in206717%_)))
                                        (_%$%else206674206692%_))))))))
                        (_%$%g206630206640%_ _%$%g206631206643%_)))))
            (_%$%g206629206728%_ _%stx206626%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self206439%_ _%stx206440%_)
        (letrec ((_%add-lift!206442%_
                  (lambda (_%expr206623%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr206623%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote206443%_
                  (lambda (_%id206620%_ _%marks206621%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id206620%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks206621%_
                                                        '()))))))))
                 (_%generate-simple206444%_
                  (lambda (_%stxq206615%_)
                    (let ((_%gid206617%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid206618%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq206615%_))))
                      (_%add-lift!206442%_
                       (cons 'define
                             (cons _%gid206617%_
                                   (cons (_%generate-syntax-quote206443%_
                                          _%qid206618%_
                                          ''())
                                         '()))))
                      (let ((__tmp215234
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp215234 _%stxq206615%_ _%gid206617%_))
                      _%gid206617%_)))
                 (_%generate-serialized206445%_
                  (lambda (_%stxq206605%_ _%marks206606%_)
                    (let* ((_%mark-refs206608%_
                            (map _%generate-mark206446%_ _%marks206606%_))
                           (_%gid206610%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid206612%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq206605%_))))
                      (_%add-lift!206442%_
                       (cons 'define
                             (cons _%gid206610%_
                                   (cons (_%generate-syntax-quote206443%_
                                          _%qid206612%_
                                          (cons 'list _%mark-refs206608%_))
                                         '()))))
                      (let ((__tmp215235
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp215235 _%stxq206605%_ _%gid206610%_))
                      _%gid206610%_)))
                 (_%generate-mark206446%_
                  (lambda (_%mark206590%_)
                    (let ((_%$e206592%_
                           (let ((__tmp215236
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp215236 _%mark206590%_))))
                      (if _%$e206592%_
                          _%$e206592%_
                          (let* ((_%gid206596%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr206598%_
                                  (_%serialize-mark206447%_ _%mark206590%_))
                                 (_%ctx206600%_
                                  (let ((__tmp215237
                                         (##structure-ref
                                          _%mark206590%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp215237)))
                                 (_%ctx-ref206602%_
                                  (if (eq? _%ctx206600%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref206448%_
                                                               _%ctx206600%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp215238
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp215238
                               _%mark206590%_
                               _%gid206596%_))
                            (_%add-lift!206442%_
                             (cons 'define
                                   (cons _%gid206596%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr206598%_ '()))
                   (cons _%ctx-ref206602%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid206596%_)))))
                 (_%serialize-mark206447%_
                  (lambda (_%mark206538%_)
                    (letrec ((_%quote-e206540%_
                              (lambda (_%sym206588%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym206588%_))
                                    _%sym206588%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym206588%_))))))
                      (let* ((_%$%mark206541206550%_ _%mark206538%_)
                             (_%$%E206543206553%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%$%mark206541206550%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%$%K206544206565%_
                              (lambda (_%trace206556%_
                                       _%phi206557%_
                                       _%ctx206558%_
                                       _%subst206559%_)
                                (let ((_%subs206561%_
                                       (if _%subst206559%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst206559%_))
                                           '())))
                                  (cons _%phi206557%_
                                        (let ((__tmp215239
                                               (lambda (_%pair206563%_)
                                                 (cons (_%quote-e206540%_
                                                        (car _%pair206563%_))
                                                       (_%quote-e206540%_
                                                        (cdr _%pair206563%_))))))
                                          (declare (not safe))
                                          (##map __tmp215239
                                                 _%subs206561%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%$%mark206541206550%_
                               'gx#expander-mark::t))
                            (let* ((_%$%e206545206568%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark206541206550%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst206571%_ _%$%e206545206568%_)
                                   (_%$%e206546206573%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark206541206550%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx206576%_ _%$%e206546206573%_)
                                   (_%$%e206547206578%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark206541206550%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi206581%_ _%$%e206547206578%_)
                                   (_%$%e206548206583%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark206541206550%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace206586%_ _%$%e206548206583%_))
                              (_%$%K206544206565%_
                               _%trace206586%_
                               _%phi206581%_
                               _%ctx206576%_
                               _%subst206571%_))
                            (_%$%E206543206553%_))))))
                 (_%context-ref206448%_
                  (lambda (_%ctx206525%_)
                    (if (let ((__tmp215240
                               (##structure-ref
                                _%ctx206525%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp215240
                           'gx#module-context::t))
                        (let ((_%ctx-ref206527%_
                               (_%context-ref-nested206450%_ _%ctx206525%_))
                              (_%ctx-origin206528%_
                               (_%context-ref-origin206449%_ _%ctx206525%_))
                              (_%origin206529%_
                               (_%context-ref-origin206449%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin206529%_ _%ctx-origin206528%_)
                              (let ((_%ref206531%_
                                     (_%context-ref-nested206450%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp206533%_ ((_%ref206535%_
                                                    (cdr _%ref206531%_))
                                                   (_%ctx-ref206536%_
                                                    (cdr _%ctx-ref206527%_)))
                                  (if (and (pair? _%ref206535%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref206535%_))
                                                (car _%ctx-ref206536%_)))
                                      (_%lp206533%_
                                       (cdr _%ref206535%_)
                                       (cdr _%ctx-ref206536%_))
                                      (cons '#f _%ctx-ref206536%_))))
                              _%ctx-ref206527%_))
                        (let ((__tmp215241
                               (##structure-ref
                                _%ctx206525%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp215241)))))
                 (_%context-ref-origin206449%_
                  (lambda (_%ctx206517%_)
                    (let _%lp206519%_ ((_%ctx206521%_ _%ctx206517%_))
                      (let ((_%super206523%_
                             (##structure-ref
                              _%ctx206521%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super206523%_
                               'gx#module-context::t))
                            (_%lp206519%_ _%super206523%_)
                            _%ctx206521%_)))))
                 (_%context-ref-nested206450%_
                  (lambda (_%ctx206508%_)
                    (let _%lp206510%_ ((_%ctx206512%_ _%ctx206508%_)
                                       (_%r206513%_ '()))
                      (let ((_%super206515%_
                             (##structure-ref
                              _%ctx206512%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super206515%_
                               'gx#module-context::t))
                            (_%lp206510%_
                             _%super206515%_
                             (cons (car (##structure-ref
                                         _%ctx206512%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r206513%_))
                            (cons (let ((__tmp215242
                                         (##structure-ref
                                          _%ctx206512%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp215242))
                                  _%r206513%_)))))))
          (let* ((_%$%g206452206465%_
                  (lambda (_%$%g206453206462%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206453206462%_))))
                 (_%$%g206451206505%_
                  (lambda (_%$%g206453206468%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206453206468%_))
                        (let ((_%$%e206455206470%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206453206468%_))))
                          (let ((_%$%hd206456206473%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206455206470%_)))
                                (_%$%tl206457206475%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206455206470%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl206457206475%_))
                                (let ((_%$%e206458206478%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl206457206475%_))))
                                  (let ((_%$%hd206459206481%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e206458206478%_)))
                                        (_%$%tl206460206483%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e206458206478%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl206460206483%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd206459206481%_))
                                            (let ((_%$e206499%_
                                                   (let ((__tmp215243
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-identifiers))))
                                                     (declare (not safe))
                                                     (hash-get
                                                      __tmp215243
                                                      _%$%hd206459206481%_))))
                                              (if _%$e206499%_
                                                  _%$e206499%_
                                                  (let ((_%marks206503%_
                                                         (##direct-structure-ref
                                                          _%$%hd206459206481%_
                                                          '4
                                                          gx#syntax-quote::t
                                                          '#f)))
                                                    (if (null? _%marks206503%_)
                                                        (_%generate-simple206444%_
                                                         _%$%hd206459206481%_)
                                                        (_%generate-serialized206445%_
                                                         _%$%hd206459206481%_
                                                         _%marks206503%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot quote non-identifier syntax"
                                               _%$%hd206459206481%_)))
                                        (_%$%g206452206465%_
                                         _%$%g206453206468%_))))
                                (_%$%g206452206465%_ _%$%g206453206468%_))))
                        (_%$%g206452206465%_ _%$%g206453206468%_)))))
            (_%$%g206451206505%_ _%stx206440%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self206371%_ _%stx206372%_)
        (let* ((_%$%g206374206391%_
                (lambda (_%$%g206375206388%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206375206388%_))))
               (_%$%g206373206436%_
                (lambda (_%$%g206375206394%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206375206394%_))
                      (let ((_%$%e206378206396%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206375206394%_))))
                        (let ((_%$%hd206379206399%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206378206396%_)))
                              (_%$%tl206380206401%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206378206396%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206380206401%_))
                              (let ((_%$%e206381206404%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206380206401%_))))
                                (let ((_%$%hd206382206407%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206381206404%_)))
                                      (_%$%tl206383206409%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206381206404%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl206383206409%_))
                                      (let ((_%$%e206384206412%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl206383206409%_))))
                                        (let ((_%$%hd206385206415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e206384206412%_)))
                                              (_%$%tl206386206417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e206384206412%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl206386206417%_))
                                              (cons 'define
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd206382206407%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self206371%_
                           _%$%hd206385206415%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g206374206391%_
                                               _%$%g206375206394%_))))
                                      (_%$%g206374206391%_
                                       _%$%g206375206394%_))))
                              (_%$%g206374206391%_ _%$%g206375206394%_))))
                      (_%$%g206374206391%_ _%$%g206375206394%_)))))
          (_%$%g206373206436%_ _%stx206372%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self206320%_ _%stx206321%_)
        (let* ((_%$%g206323206333%_
                (lambda (_%$%g206324206330%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206324206330%_))))
               (_%$%g206322206368%_
                (lambda (_%$%g206324206336%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206324206336%_))
                      (let ((_%$%e206326206338%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206324206336%_))))
                        (let ((_%$%hd206327206341%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206326206338%_)))
                              (_%$%tl206328206343%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206326206338%_))))
                          (let* ((_%c-body206360%_
                                  (map (lambda (_%$%g206355206357%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self206320%_
                                            _%$%g206355206357%_)))
                                       _%$%tl206328206343%_))
                                 (_%c-body206365%_
                                  (let ((__tmp215244
                                         (lambda (_%$obj206362%_)
                                           (not (eq? _%$obj206362%_
                                                     '#!void)))))
                                    (declare (not safe))
                                    (##filter __tmp215244 _%c-body206360%_))))
                            (cons '%#begin _%c-body206365%_))))
                      (_%$%g206323206333%_ _%$%g206324206336%_)))))
          (_%$%g206322206368%_ _%stx206321%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self206225%_ _%stx206226%_)
        (let* ((_%$%g206228206238%_
                (lambda (_%$%g206229206235%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206229206235%_))))
               (_%$%g206227206317%_
                (lambda (_%$%g206229206241%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206229206241%_))
                      (let ((_%$%e206231206243%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206229206241%_))))
                        (let ((_%$%hd206232206246%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206231206243%_)))
                              (_%$%tl206233206248%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206231206243%_))))
                          (let* ((_%phi206261%_
                                  (let ((__tmp215245
                                         (let ()
                                           (declare (not safe))
                                           (gx#current-expander-phi))))
                                    (declare (not safe))
                                    (##fx+ __tmp215245 '1)))
                                 (_%block206263%_
                                  (gxc#meta-state-begin-phi!
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self206225%_ 'state))
                                   _%phi206261%_))
                                 (_%compiled206266%_
                                  (let ((__tmp215246
                                         (lambda ()
                                           (gxc#apply-generate-meta-phi__%
                                            '#f
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _%self206225%_
                                               'state))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     '%#begin))
                                                  _%$%tl206233206248%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp215246
                                     gx#current-expander-phi
                                     _%phi206261%_)))
                                 (_%$%g206269206279%_
                                  (lambda (_%$%g206270206276%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g206270206276%_))))
                                 (_%$%g206268206314%_
                                  (lambda (_%$%g206270206282%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%g206270206282%_))
                                        (let ((_%$%e206272206284%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%g206270206282%_))))
                                          (let ((_%$%hd206273206287%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e206272206284%_)))
                                                (_%$%tl206274206289%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e206272206284%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd206273206287%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#begin
                                                       _%$%hd206273206287%_))
                                                    (let ((_%c-body206309%_
                                                           (filter (lambda (_%$obj206306%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (eq? _%$obj206306%_ '#!void)))
                           _%$%tl206274206289%_)))
              (if _%block206263%_
                  (cons '%#begin-syntax
                        (cons (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%block206263%_
                                                            '()))
                                                '())))
                              _%c-body206309%_))
                  (if (null? _%c-body206309%_)
                      '#!void
                      (cons '%#begin-syntax _%c-body206309%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g206269206279%_
                                                     _%$%g206270206282%_))
                                                (_%$%g206269206279%_
                                                 _%$%g206270206282%_))))
                                        (_%$%g206269206279%_
                                         _%$%g206270206282%_)))))
                            (_%$%g206268206314%_ _%compiled206266%_))))
                      (_%$%g206228206238%_ _%$%g206229206241%_)))))
          (_%$%g206227206317%_ _%stx206226%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self206156%_ _%stx206157%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self206156%_ 'state)))
        (let* ((_%$%g206159206173%_
                (lambda (_%$%g206160206170%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206160206170%_))))
               (_%$%g206158206222%_
                (lambda (_%$%g206160206176%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206160206176%_))
                      (let ((_%$%e206163206178%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206160206176%_))))
                        (let ((_%$%hd206164206181%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206163206178%_)))
                              (_%$%tl206165206183%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206163206178%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206165206183%_))
                              (let ((_%$%e206166206186%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206165206183%_))))
                                (let ((_%$%hd206167206189%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206166206186%_)))
                                      (_%$%tl206168206191%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206166206186%_))))
                                  (let ((_%key206208%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-identifier-key
                                            _%$%hd206167206189%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (interned-symbol? _%key206208%_))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Cannot compile module with uninterned id"
                                           _%stx206157%_
                                           _%$%hd206167206189%_
                                           _%key206208%_)))
                                    (let* ((_%ctx206210%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%$%hd206167206189%_)))
                                           (_%code206213%_
                                            (let ((__tmp215247
                                                   (lambda ()
                                                     (let ((__tmp215248
                                                            (##structure-ref
                                                             _%ctx206210%_
                                                             '11
                                                             gx#module-context::t
                                                             '#f)))
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self206156%_
                                                        __tmp215248)))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp215247
                                               gx#current-expander-context
                                               _%ctx206210%_)))
                                           (_%rt206215%_
                                            (let ((__tmp215249
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#current-compile-runtime-sections))))
                                              (declare (not safe))
                                              (hash-get
                                               __tmp215249
                                               _%ctx206210%_)))
                                           (_%loader206217%_
                                            (if _%rt206215%_
                                                (cons (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'load-module '()))
                          (cons (cons '%#quote (cons _%rt206215%_ '())) '())))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                           (_%modid206219%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd206167206189%_))))
                                      (gxc#meta-state-end-phi!
                                       (let ()
                                         (declare (not safe))
                                         (slot-ref__0 _%self206156%_ 'state)))
                                      (cons '%#module
                                            (cons _%modid206219%_
                                                  (cons _%code206213%_
                                                        _%loader206217%_)))))))
                              (_%$%g206159206173%_ _%$%g206160206176%_))))
                      (_%$%g206159206173%_ _%$%g206160206176%_)))))
          (_%$%g206158206222%_ _%stx206157%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx206143%_ _%context-chain206144%_)
        (let _%lp206146%_ ((_%ctx206148%_ _%ctx206143%_) (_%path206149%_ '()))
          (let ((_%super206151%_
                 (##structure-ref _%ctx206148%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super206151%_ _%context-chain206144%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx206148%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path206149%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super206151%_
                       'gx#module-context::t))
                    (_%lp206146%_
                     _%super206151%_
                     (cons (car (##structure-ref
                                 _%ctx206148%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path206149%_))
                    (cons (let ((__tmp215250
                                 (##structure-ref
                                  _%ctx206148%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp215250))
                          _%path206149%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp206136%_ ((_%ctx206138%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r206139%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx206138%_ 'gx#module-context::t))
              (_%lp206136%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx206138%_ '3 '#f '#f))
               (cons _%ctx206138%_ _%r206139%_))
              _%r206139%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self205901%_ _%stx205902%_)
        (letrec* ((_%context-chain205904%_ (gxc#current-context-chain))
                  (_%make-import-spec205905%_
                   (lambda (_%in206073%_)
                     (let* ((_%$%in206074206086%_ _%in206073%_)
                            (_%$%E206076206089%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%$%in206074206086%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%$%K206077206099%_
                             (lambda (_%phi206092%_
                                      _%name206093%_
                                      _%src-name206094%_
                                      _%src-phi206095%_
                                      _%src-key206096%_
                                      _%src-ctx206097%_)
                               (cons _%phi206092%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name206093%_))
                                           (cons _%src-phi206095%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name206094%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%$%in206074206086%_
                              'gx#module-import::t))
                           (let ((_%$%e206078206102%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%$%in206074206086%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%$%e206078206102%_
                                    'gx#module-export::t))
                                 (let* ((_%$%e206081206105%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e206078206102%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx206108%_ _%$%e206081206105%_)
                                        (_%$%e206082206110%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e206078206102%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key206113%_ _%$%e206082206110%_)
                                        (_%$%e206083206115%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e206078206102%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi206118%_ _%$%e206083206115%_)
                                        (_%$%e206084206120%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e206078206102%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name206123%_
                                         _%$%e206084206120%_)
                                        (_%$%e206079206125%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%in206074206086%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name206128%_ _%$%e206079206125%_)
                                        (_%$%e206080206130%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%in206074206086%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi206133%_ _%$%e206080206130%_))
                                   (_%$%K206077206099%_
                                    _%phi206133%_
                                    _%name206128%_
                                    _%src-name206123%_
                                    _%src-phi206118%_
                                    _%src-key206113%_
                                    _%src-ctx206108%_))
                                 (_%$%E206076206089%_)))
                           (_%$%E206076206089%_)))))
                  (_%make-import-path205906%_
                   (lambda (_%ctx206071%_)
                     (gxc#generate-meta-import-path
                      _%ctx206071%_
                      _%context-chain205904%_)))
                  (_%make-import-spec-in205907%_
                   (lambda (_%ctx206068%_ _%in206069%_)
                     (cons 'spec:
                           (cons (_%make-import-path205906%_ _%ctx206068%_)
                                 (reverse _%in206069%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self205901%_ 'state)))
          (let* ((_%$%g205909205919%_
                  (lambda (_%$%g205910205916%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g205910205916%_))))
                 (_%$%g205908206065%_
                  (lambda (_%$%g205910205922%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g205910205922%_))
                        (let ((_%$%e205912205924%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g205910205922%_))))
                          (let ((_%$%hd205913205927%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e205912205924%_)))
                                (_%$%tl205914205929%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e205912205924%_))))
                            (let _%lp205943%_ ((_%rest205945%_
                                                _%$%tl205914205929%_)
                                               (_%current-src205946%_ '#f)
                                               (_%current-in205947%_ '())
                                               (_%r205948%_ '()))
                              (let* ((_%$%rest205949205957%_ _%rest205945%_)
                                     (_%$%else205951205967%_
                                      (lambda ()
                                        (let ((_%r205965%_
                                               (if _%current-src205946%_
                                                   (cons (_%make-import-spec-in205907%_
                                                          _%current-src205946%_
                                                          _%current-in205947%_)
                                                         _%r205948%_)
                                                   _%r205948%_)))
                                          (cons '%#import
                                                (reverse _%r205965%_)))))
                                     (_%$%K205953206053%_
                                      (lambda (_%rest205970%_ _%in205971%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               _%in205971%_
                                               'gx#module-import::t))
                                            (let* ((_%$%in205973205980%_
                                                    _%in205971%_)
                                                   (_%$%E205975205983%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"No clause matching"
                                                               _%$%in205973205980%_
                                                               '((module-import
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (module-export src-ctx)))))
              '#!void))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%K205976205991%_
                                                    (lambda (_%src-ctx205986%_)
                                                      (if (eq? _%current-src205946%_
                                                               _%src-ctx205986%_)
                                                          (_%lp205943%_
                                                           _%rest205970%_
                                                           _%current-src205946%_
                                                           (cons (_%make-import-spec205905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in205971%_)
                         _%current-in205947%_)
                   _%r205948%_)
                  (if _%current-src205946%_
                      (_%lp205943%_
                       _%rest205970%_
                       _%src-ctx205986%_
                       (cons (_%make-import-spec205905%_ _%in205971%_) '())
                       (cons (_%make-import-spec-in205907%_
                              _%current-src205946%_
                              _%current-in205947%_)
                             _%r205948%_))
                      (_%lp205943%_
                       _%rest205970%_
                       _%src-ctx205986%_
                       (cons (_%make-import-spec205905%_ _%in205971%_) '())
                       _%r205948%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%e205977205994%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%$%in205973205980%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%$%e205977205994%_
                                                     'gx#module-export::t))
                                                  (let* ((_%$%e205978205997%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%e205977205994%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%src-ctx206000%_
                                                          _%$%e205978205997%_))
                                                    (_%$%K205976205991%_
                                                     _%src-ctx206000%_))
                                                  (_%$%E205975205983%_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   _%in205971%_
                                                   'gx#import-set::t))
                                                (let* ((_%phi206003%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in205971%_
                                                           '2
                                                           '#f
                                                           '#f)))
                                                       (_%src206005%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in205971%_
                                                           '1
                                                           '#f
                                                           '#f)))
                                                       (_%src-in206045%_
                                                        (let* ((_%$%g206006206015%_
                                                                (_%make-import-path205906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%src206005%_))
                       (_%$%E206009206019%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%$%g206006206015%_
                                   '([path])
                                   '(path)))
                          '#!void)))
                  (let ((_%$%K206011206035%_
                         (lambda (_%path206033%_) _%path206033%_))
                        (_%$%K206010206025%_
                         (lambda (_%path206023%_) (cons 'in: _%path206023%_))))
                    (if (pair? _%$%g206006206015%_)
                        (let ((_%$%tl206013206040%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%g206006206015%_)))
                              (_%$%hd206012206038%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%g206006206015%_))))
                          (if (null? _%$%tl206013206040%_)
                              (let ((_%path206043%_ _%$%hd206012206038%_))
                                (_%$%K206011206035%_ _%path206043%_))
                              (let ((_%path206028%_ _%$%g206006206015%_))
                                (_%$%K206010206025%_ _%path206028%_))))
                        (let ((_%path206028%_ _%$%g206006206015%_))
                          (_%$%K206010206025%_ _%path206028%_))))))
               (_%r206047%_
                (if _%current-src205946%_
                    (cons (_%make-import-spec-in205907%_
                           _%current-src205946%_
                           _%current-in205947%_)
                          _%r205948%_)
                    _%r205948%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp205943%_
                                                   _%rest205970%_
                                                   '#f
                                                   '()
                                                   (cons (if (fxzero? _%phi206003%_)
                                                             _%src-in206045%_
                                                             (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi206003%_ (cons _%src-in206045%_ '()))))
                 _%r206047%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-instance-of?
                                                       _%in205971%_
                                                       'gx#module-context::t))
                                                    (let ((_%r206051%_
                                                           (if _%current-src205946%_
                                                               (cons (_%make-import-spec-in205907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%current-src205946%_
                              _%current-in205947%_)
                             _%r205948%_)
                       _%r205948%_)))
              (_%lp205943%_
               _%rest205970%_
               '#f
               '()
               (cons (cons 'runtime: (_%make-import-path205906%_ _%in205971%_))
                     _%r206051%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#!void))))))
                                (if (pair? _%$%rest205949205957%_)
                                    (let ((_%$%hd205954206056%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest205949205957%_)))
                                          (_%$%tl205955206058%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest205949205957%_))))
                                      (let* ((_%in206061%_
                                              _%$%hd205954206056%_)
                                             (_%rest206063%_
                                              _%$%tl205955206058%_))
                                        (_%$%K205953206053%_
                                         _%rest206063%_
                                         _%in206061%_)))
                                    (_%$%else205951205967%_))))))
                        (_%$%g205909205919%_ _%$%g205910205922%_)))))
            (_%$%g205908206065%_ _%stx205902%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self205711%_ _%stx205712%_)
        (letrec* ((_%context-chain205714%_ (gxc#current-context-chain))
                  (_%make-import-path205715%_
                   (lambda (_%ctx205899%_)
                     (gxc#generate-meta-import-path
                      _%ctx205899%_
                      _%context-chain205714%_))))
          (let* ((_%$%g205717205727%_
                  (lambda (_%$%g205718205724%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g205718205724%_))))
                 (_%$%g205716205896%_
                  (lambda (_%$%g205718205730%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g205718205730%_))
                        (let ((_%$%e205720205732%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g205718205730%_))))
                          (let ((_%$%hd205721205735%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e205720205732%_)))
                                (_%$%tl205722205737%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e205720205732%_))))
                            (let _%lp205751%_ ((_%rest205753%_
                                                _%$%tl205722205737%_)
                                               (_%r205754%_ '()))
                              (let* ((_%$%rest205755205763%_ _%rest205753%_)
                                     (_%$%else205757205771%_
                                      (lambda ()
                                        (cons '%#export
                                              (reverse _%r205754%_))))
                                     (_%$%K205759205884%_
                                      (lambda (_%rest205774%_ _%out205775%_)
                                        (let* ((_%$%out205776205789%_
                                                _%out205775%_)
                                               (_%$%E205779205793%_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _%$%out205776205789%_
                                                           '((module-export
                                                              _
                                                              key
                                                              phi
                                                              name))
                                                           '((export-set
                                                              src
                                                              phi))))
                                                  '#!void)))
                                          (let ((_%$%K205783205863%_
                                                 (lambda (_%name205859%_
                                                          _%phi205860%_
                                                          _%key205861%_)
                                                   (_%lp205751%_
                                                    _%rest205774%_
                                                    (cons (cons 'spec:
                                                                (cons _%phi205860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-identifier-key
                                       _%key205861%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier-key
                                             _%name205859%_))
                                          '()))))
                  _%r205754%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%K205780205843%_
                                                 (lambda (_%phi205797%_
                                                          _%src205798%_)
                                                   (let* ((_%out205838%_
                                                           (if _%src205798%_
                                                               (cons 'import:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let* ((_%$%g205799205808%_
                                           (_%make-import-path205715%_
                                            _%src205798%_))
                                          (_%$%E205802205812%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (error '"No clause matching"
                                                      _%$%g205799205808%_
                                                      '([path])
                                                      '(path)))
                                             '#!void)))
                                     (let ((_%$%K205804205828%_
                                            (lambda (_%path205826%_)
                                              _%path205826%_))
                                           (_%$%K205803205818%_
                                            (lambda (_%path205816%_)
                                              (cons 'in: _%path205816%_))))
                                       (if (pair? _%$%g205799205808%_)
                                           (let ((_%$%tl205806205833%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%g205799205808%_)))
                                                 (_%$%hd205805205831%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%g205799205808%_))))
                                             (if (null? _%$%tl205806205833%_)
                                                 (let ((_%path205836%_
                                                        _%$%hd205805205831%_))
                                                   (_%$%K205804205828%_
                                                    _%path205836%_))
                                                 (let ((_%path205821%_
                                                        _%$%g205799205808%_))
                                                   (_%$%K205803205818%_
                                                    _%path205821%_))))
                                           (let ((_%path205821%_
                                                  _%$%g205799205808%_))
                                             (_%$%K205803205818%_
                                              _%path205821%_)))))
                                   '()))
                       '#t))
                  (_%out205840%_
                   (if (fxzero? _%phi205797%_)
                       _%out205838%_
                       (cons 'phi:
                             (cons _%phi205797%_ (cons _%out205838%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp205751%_
                                                      _%rest205774%_
                                                      (cons _%out205840%_
                                                            _%r205754%_))))))
                                            (let ((_%$%try-match205778205856%_
                                                   (lambda ()
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            _%$%out205776205789%_
                                                            'gx#export-set::t))
                                                         (let* ((_%$%e205781205846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%$%out205776205789%_
                            '1
                            '#f
                            '#f)))
                        (_%$%e205782205851%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%$%out205776205789%_
                            '2
                            '#f
                            '#f))))
                   (let ((_%src205849%_ _%$%e205781205846%_)
                         (_%phi205854%_ _%$%e205782205851%_))
                     (_%$%K205780205843%_ _%phi205854%_ _%src205849%_)))
                 (_%$%E205779205793%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%$%out205776205789%_
                                                     'gx#module-export::t))
                                                  (let* ((_%$%e205784205866%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out205776205789%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%$%e205785205869%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out205776205789%_
                                                             '2
                                                             '#f
                                                             '#f)))
                                                         (_%$%e205786205874%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out205776205789%_
                                                             '3
                                                             '#f
                                                             '#f)))
                                                         (_%$%e205787205879%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out205776205789%_
                                                             '4
                                                             '#f
                                                             '#f))))
                                                    (let ((_%key205872%_
                                                           _%$%e205785205869%_)
                                                          (_%phi205877%_
                                                           _%$%e205786205874%_)
                                                          (_%name205882%_
                                                           _%$%e205787205879%_))
                                                      (_%$%K205783205863%_
                                                       _%name205882%_
                                                       _%phi205877%_
                                                       _%key205872%_)))
                                                  (_%$%try-match205778205856%_))))))))
                                (if (pair? _%$%rest205755205763%_)
                                    (let ((_%$%hd205760205887%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest205755205763%_)))
                                          (_%$%tl205761205889%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest205755205763%_))))
                                      (let* ((_%out205892%_
                                              _%$%hd205760205887%_)
                                             (_%rest205894%_
                                              _%$%tl205761205889%_))
                                        (_%$%K205759205884%_
                                         _%rest205894%_
                                         _%out205892%_)))
                                    (_%$%else205757205771%_))))))
                        (_%$%g205717205727%_ _%$%g205718205730%_)))))
            (_%$%g205716205896%_ _%stx205712%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self205672%_ _%stx205673%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self205672%_ 'state)))
        (let* ((_%$%g205675205685%_
                (lambda (_%$%g205676205682%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205676205682%_))))
               (_%$%g205674205708%_
                (lambda (_%$%g205676205688%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205676205688%_))
                      (let ((_%$%e205678205690%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205676205688%_))))
                        (let ((_%$%hd205679205693%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205678205690%_)))
                              (_%$%tl205680205695%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205678205690%_))))
                          (cons '%#provide
                                (map gxc#generate-runtime-identifier
                                     _%$%tl205680205695%_))))
                      (_%$%g205675205685%_ _%$%g205676205688%_)))))
          (_%$%g205674205708%_ _%stx205673%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self205547%_ _%stx205548%_)
        (letrec ((_%generate1205550%_
                  (lambda (_%id205667%_ _%eid205668%_)
                    (let ((_%eid205670%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid205668%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid205670%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx205548%_
                             _%eid205670%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id205667%_))
                            (cons _%eid205670%_ '()))))))
          (let* ((_%$%g205552205580%_
                  (lambda (_%$%g205553205577%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g205553205577%_))))
                 (_%$%g205551205664%_
                  (lambda (_%$%g205553205583%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g205553205583%_))
                        (let ((_%$%e205556205585%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g205553205583%_))))
                          (let ((_%$%hd205557205588%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e205556205585%_)))
                                (_%$%tl205558205590%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e205556205585%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl205558205590%_))
                                (let ((_g215251_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%$%tl205558205590%_
                                          '0))))
                                  (begin
                                    (let ((_g215252_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g215251_)
                                                 (##values-length _g215251_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g215252_ 2)))
                                          (error "Context expects 2 values"
                                                 _g215252_)))
                                    (let ((_%$%target205559205593%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g215251_ 0)))
                                          (_%$%tl205561205595%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g215251_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl205561205595%_))
                                          (letrec ((_%$%loop205562205598%_
                                                    (lambda (_%$%hd205560205601%_
                                                             _%$%eid205566205603%_
                                                             _%$%id205567205604%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd205560205601%_))
                                                          (let ((_%$%e205563205606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd205560205601%_))))
                    (let ((_%$%lp-hd205564205609%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e205563205606%_)))
                          (_%$%lp-tl205565205611%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e205563205606%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%lp-hd205564205609%_))
                          (let ((_%$%e205570205614%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%lp-hd205564205609%_))))
                            (let ((_%$%hd205571205617%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e205570205614%_)))
                                  (_%$%tl205572205619%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e205570205614%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl205572205619%_))
                                  (let ((_%$%e205573205622%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl205572205619%_))))
                                    (let ((_%$%hd205574205625%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e205573205622%_)))
                                          (_%$%tl205575205627%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e205573205622%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl205575205627%_))
                                          (_%$%loop205562205598%_
                                           _%$%lp-tl205565205611%_
                                           (cons _%$%hd205574205625%_
                                                 _%$%eid205566205603%_)
                                           (cons _%$%hd205571205617%_
                                                 _%$%id205567205604%_))
                                          (_%$%g205552205580%_
                                           _%$%g205553205583%_))))
                                  (_%$%g205552205580%_ _%$%g205553205583%_))))
                          (_%$%g205552205580%_ _%$%g205553205583%_))))
                  (let ((_%$%eid205568205630%_ (reverse _%$%eid205566205603%_))
                        (_%$%id205569205631%_ (reverse _%$%id205567205604%_)))
                    (cons '%#extern
                          (map _%generate1205550%_
                               (let ((__tmp215253
                                      (lambda (_%$%g205649205652%_
                                               _%$%g205650205654%_)
                                        (cons _%$%g205649205652%_
                                              _%$%g205650205654%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp215253
                                  '()
                                  _%$%id205569205631%_))
                               (let ((__tmp215254
                                      (lambda (_%$%g205656205659%_
                                               _%$%g205657205661%_)
                                        (cons _%$%g205656205659%_
                                              _%$%g205657205661%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp215254
                                  '()
                                  _%$%eid205568205630%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop205562205598%_
                                             _%$%target205559205593%_
                                             '()
                                             '()))
                                          (_%$%g205552205580%_
                                           _%$%g205553205583%_)))))
                                (_%$%g205552205580%_ _%$%g205553205583%_))))
                        (_%$%g205552205580%_ _%$%g205553205583%_)))))
            (_%$%g205551205664%_ _%stx205548%_)))))
    (define gxc#generate-meta-define-runtime%
      (lambda (_%self205475%_ _%stx205476%_)
        (let* ((_%$%g205478205495%_
                (lambda (_%$%g205479205492%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205479205492%_))))
               (_%$%g205477205544%_
                (lambda (_%$%g205479205498%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205479205498%_))
                      (let ((_%$%e205482205500%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205479205498%_))))
                        (let ((_%$%hd205483205503%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205482205500%_)))
                              (_%$%tl205484205505%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205482205500%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205484205505%_))
                              (let ((_%$%e205485205508%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205484205505%_))))
                                (let ((_%$%hd205486205511%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205485205508%_)))
                                      (_%$%tl205487205513%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205485205508%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205487205513%_))
                                      (let ((_%$%e205488205516%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205487205513%_))))
                                        (let ((_%$%hd205489205519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205488205516%_)))
                                              (_%$%tl205490205521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205488205516%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205490205521%_))
                                              (let ((_%ident205540%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#generate-runtime-identifier
                                                        _%$%hd205486205511%_)))
                                                    (_%eid205541%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd205489205519%_)))
                                                    (_%props205542%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier-properties
                                                        _%$%hd205486205511%_))))
                                                (cons '%#define-runtime
                                                      (cons _%ident205540%_
                                                            (cons _%eid205541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%props205542%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g205478205495%_
                                               _%$%g205479205498%_))))
                                      (_%$%g205478205495%_
                                       _%$%g205479205498%_))))
                              (_%$%g205478205495%_ _%$%g205479205498%_))))
                      (_%$%g205478205495%_ _%$%g205479205498%_)))))
          (_%$%g205477205544%_ _%stx205476%_))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self205264%_ _%stx205265%_)
        (letrec ((_%generate1205267%_
                  (lambda (_%id205469%_)
                    (let ((_%eid205471%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id205469%_)))
                          (_%ident205472%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id205469%_)))
                          (_%props205473%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id205469%_))))
                      (cons '%#define-runtime
                            (cons _%ident205472%_
                                  (cons _%eid205471%_ _%props205473%_))))))
                 (_%generate*205268%_
                  (lambda (_%all205437%_)
                    (let* ((_%$%all205438205446%_ _%all205437%_)
                           (_%$%else205440205454%_
                            (lambda () (cons '%#begin _%all205437%_)))
                           (_%$%K205442205459%_
                            (lambda (_%one205457%_) _%one205457%_)))
                      (if (pair? _%$%all205438205446%_)
                          (let ((_%$%hd205443205462%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%all205438205446%_)))
                                (_%$%tl205444205464%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%all205438205446%_))))
                            (let ((_%one205467%_ _%$%hd205443205462%_))
                              (if (null? _%$%tl205444205464%_)
                                  (_%$%K205442205459%_ _%one205467%_)
                                  (_%$%else205440205454%_))))
                          (_%$%else205440205454%_))))))
          (let* ((_%$%g205270205287%_
                  (lambda (_%$%g205271205284%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g205271205284%_))))
                 (_%$%g205269205434%_
                  (lambda (_%$%g205271205290%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g205271205290%_))
                        (let ((_%$%e205274205292%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g205271205290%_))))
                          (let ((_%$%hd205275205295%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e205274205292%_)))
                                (_%$%tl205276205297%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e205274205292%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl205276205297%_))
                                (let ((_%$%e205277205300%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl205276205297%_))))
                                  (let ((_%$%hd205278205303%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e205277205300%_)))
                                        (_%$%tl205279205305%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e205277205300%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl205279205305%_))
                                        (let ((_%$%e205280205308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl205279205305%_))))
                                          (let ((_%$%hd205281205311%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e205280205308%_)))
                                                (_%$%tl205282205313%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e205280205308%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl205282205313%_))
                                                (let _%lp205333%_ ((_%rest205335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd205278205303%_)
                           (_%r205336%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%__stx214991214992%_
                                                          _%rest205335%_)
                                                         (_%$%g205341205358%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx214991214992%_)))))
                                                    (let ((_%__kont214993214994%_
                                                           (lambda (_%$%g205343205421%_)
                                                             (_%lp205333%_
                                                              _%$%g205343205421%_
                                                              _%r205336%_)))
                                                          (_%__kont214995214996%_
                                                           (lambda (_%$%g205348205394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g205349205395%_)
                     (_%lp205333%_
                      _%$%g205348205394%_
                      (cons (_%generate1205267%_ _%$%g205349205395%_)
                            _%r205336%_))))
                  (_%__kont214997214998%_
                   (lambda (_%$%g205353205370%_)
                     (_%generate*205268%_
                      (let ((__tmp215255
                             (cons (_%generate1205267%_ _%$%g205353205370%_)
                                   '())))
                        (declare (not safe))
                        (foldl__0 cons __tmp215255 _%r205336%_)))))
                  (_%__kont214999215000%_
                   (lambda () (_%generate*205268%_ (reverse! _%r205336%_)))))
              (let ((_%$%g205339205381%_
                     (lambda ()
                       (let ((_%$%g205353205370%_ _%__stx214991214992%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%g205353205370%_))
                             (_%__kont214997214998%_ _%$%g205353205370%_)
                             (_%__kont214999215000%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx214991214992%_))
                    (let ((_%$%e205344205410%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx214991214992%_))))
                      (let ((_%$%tl205346205415%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e205344205410%_)))
                            (_%$%hd205345205413%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e205344205410%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%$%hd205345205413%_))
                            (let ((_%$%e205347205418%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd205345205413%_))))
                              (if (equal? _%$%e205347205418%_ '#f)
                                  (_%__kont214993214994%_ _%$%tl205346205415%_)
                                  (_%__kont214995214996%_
                                   _%$%tl205346205415%_
                                   _%$%hd205345205413%_)))
                            (_%__kont214995214996%_
                             _%$%tl205346205415%_
                             _%$%hd205345205413%_))))
                    (_%$%g205339205381%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g205270205287%_
                                                 _%$%g205271205290%_))))
                                        (_%$%g205270205287%_
                                         _%$%g205271205290%_))))
                                (_%$%g205270205287%_ _%$%g205271205290%_))))
                        (_%$%g205270205287%_ _%$%g205271205290%_)))))
            (_%$%g205269205434%_ _%stx205265%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self205161%_ _%stx205162%_)
        (let* ((_%$%g205164205181%_
                (lambda (_%$%g205165205178%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205165205178%_))))
               (_%$%g205163205261%_
                (lambda (_%$%g205165205184%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205165205184%_))
                      (let ((_%$%e205168205186%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205165205184%_))))
                        (let ((_%$%hd205169205189%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205168205186%_)))
                              (_%$%tl205170205191%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205168205186%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205170205191%_))
                              (let ((_%$%e205171205194%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205170205191%_))))
                                (let ((_%$%hd205172205197%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205171205194%_)))
                                      (_%$%tl205173205199%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205171205194%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205173205199%_))
                                      (let ((_%$%e205174205202%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205173205199%_))))
                                        (let ((_%$%hd205175205205%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205174205202%_)))
                                              (_%$%tl205176205207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205174205202%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205176205207%_))
                                              (let* ((_%eid205226%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#generate-runtime-binding-id
                                                         _%$%hd205172205197%_)))
                                                     (_%phi205228%_
                                                      (let ((__tmp215256
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#current-expander-phi))))
                (declare (not safe))
                (##fx+ __tmp215256 '1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%block205230%_
                                                      (gxc#meta-state-begin-phi!
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self205161%_
                                                          'state))
                                                       _%phi205228%_)))
                                                (let* ((_%$%g205233205240%_
                                                        (lambda (_%$%g205234205237%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g205234205237%_))))
                                                       (_%$%g205232205258%_
                                                        (lambda (_%$%g205234205243%_)
                                                          (gxc#meta-state-add-phi!
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self205161%_
                                                              'state))
                                                           _%phi205228%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#define-runtime))
                         (cons _%$%g205234205243%_
                               (cons _%$%hd205175205205%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g205232205258%_
                                                   _%eid205226%_))
                                                (if _%block205230%_
                                                    (cons '%#begin
                                                          (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block205230%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons '%#define-syntax
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier
                                             _%$%hd205172205197%_))
                                          (cons _%eid205226%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons '%#define-syntax
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier
                           _%$%hd205172205197%_))
                        (cons _%eid205226%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g205164205181%_
                                               _%$%g205165205184%_))))
                                      (_%$%g205164205181%_
                                       _%$%g205165205184%_))))
                              (_%$%g205164205181%_ _%$%g205165205184%_))))
                      (_%$%g205164205181%_ _%$%g205165205184%_)))))
          (_%$%g205163205261%_ _%stx205162%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self205093%_ _%stx205094%_)
        (let* ((_%$%g205096205113%_
                (lambda (_%$%g205097205110%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205097205110%_))))
               (_%$%g205095205158%_
                (lambda (_%$%g205097205116%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205097205116%_))
                      (let ((_%$%e205100205118%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205097205116%_))))
                        (let ((_%$%hd205101205121%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205100205118%_)))
                              (_%$%tl205102205123%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205100205118%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205102205123%_))
                              (let ((_%$%e205103205126%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205102205123%_))))
                                (let ((_%$%hd205104205129%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205103205126%_)))
                                      (_%$%tl205105205131%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205103205126%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205105205131%_))
                                      (let ((_%$%e205106205134%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205105205131%_))))
                                        (let ((_%$%hd205107205137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205106205134%_)))
                                              (_%$%tl205108205139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205106205134%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205108205139%_))
                                              (cons '%#define-alias
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-identifier
                                                             _%$%hd205104205129%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier
                           _%$%hd205107205137%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g205096205113%_
                                               _%$%g205097205116%_))))
                                      (_%$%g205096205113%_
                                       _%$%g205097205116%_))))
                              (_%$%g205096205113%_ _%$%g205097205116%_))))
                      (_%$%g205096205113%_ _%$%g205097205116%_)))))
          (_%$%g205095205158%_ _%stx205094%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self205090%_ _%stx205091%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self205090%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx205091%_)
        (gxc#generate-meta-define-values% _%self205090%_ _%stx205091%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self205087%_ _%stx205088%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self205087%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx205088%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp215258 (list)) (__tmp215257 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp215258
         '(src n open blocks)
         __tmp215257
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args205084%_
        (apply make-instance gxc#meta-state::t _%$args205084%_)))
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
      (lambda (_%self205070%_ _%ctx205071%_)
        (let ((_%self205074%_ _%self205070%_))
          (if (let ((__tmp215259
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self205074%_))))
                (declare (not safe))
                (##fx< '4 __tmp215259))
              (begin
                (let ((__tmp215260
                       (let ((__tmp215261
                              (##structure-ref
                               _%ctx205071%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp215261))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self205074%_
                   __tmp215260
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self205074%_ '1 '2 '#f '#f))
                (let ((__tmp215262
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self205074%_
                   __tmp215262
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self205074%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp215263
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self205074%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self205074%_
                       '4
                       __tmp215263))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp215265 (list)) (__tmp215264 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp215265
         '(ctx phi n code)
         __tmp215264
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args204945%_
        (apply make-instance gxc#meta-state-block::t _%$args204945%_)))
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
      (lambda (_%state204905%_ _%phi204906%_)
        (let* ((_%$%state204907204915%_ _%state204905%_)
               (_%$%E204909204918%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%state204907204915%_
                           '((meta-state src n open))))
                  '#!void))
               (_%$%K204910204927%_
                (lambda (_%open204921%_ _%n204922%_ _%src204923%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open204921%_ _%phi204906%_))
                      '#f
                      (let ((_%block-ref204925%_
                             (let ((__tmp215266 (number->string _%n204922%_)))
                               (declare (not safe))
                               (##string-append
                                _%src204923%_
                                '"~"
                                __tmp215266))))
                        (##structure-set!
                         _%state204905%_
                         (let () (declare (not safe)) (##fx+ _%n204922%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp215267
                               (let ((__tmp215268
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp215268
                                  _%phi204906%_
                                  _%n204922%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open204921%_ _%phi204906%_ __tmp215267))
                        _%block-ref204925%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%$%state204907204915%_
                 'gxc#meta-state::t))
              (let* ((_%$%e204911204930%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state204907204915%_
                         '1
                         '#f
                         '#f)))
                     (_%src204933%_ _%$%e204911204930%_)
                     (_%$%e204912204935%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state204907204915%_
                         '2
                         '#f
                         '#f)))
                     (_%n204938%_ _%$%e204912204935%_)
                     (_%$%e204913204940%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state204907204915%_
                         '3
                         '#f
                         '#f)))
                     (_%open204943%_ _%$%e204913204940%_))
                (_%$%K204910204927%_ _%open204943%_ _%n204938%_ _%src204933%_))
              (_%$%E204909204918%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state204899%_ _%phi204900%_ _%stx204901%_)
        (let ((_%block204903%_
               (let ((__tmp215269
                      (##structure-ref
                       _%state204899%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp215269 _%phi204900%_))))
          (##structure-set!
           _%block204903%_
           (cons _%stx204901%_
                 (##structure-ref
                  _%block204903%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state204893%_)
        (##structure-set!
         _%state204893%_
         (let ((__tmp215272
                (lambda (_%_204895%_ _%block204896%_ _%r204897%_)
                  (cons _%block204896%_ _%r204897%_)))
               (__tmp215271
                (##structure-ref _%state204893%_ '4 gxc#meta-state::t '#f))
               (__tmp215270
                (##structure-ref _%state204893%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp215272 __tmp215271 __tmp215270))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state204893%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state204846%_)
        (gxc#meta-state-end-phi! _%state204846%_)
        (let ((__tmp215274
               (lambda (_%block204848%_ _%r204849%_)
                 (let* ((_%$%block204850204859%_ _%block204848%_)
                        (_%$%E204852204862%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%$%block204850204859%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%$%K204853204870%_
                         (lambda (_%code204865%_
                                  _%n204866%_
                                  _%phi204867%_
                                  _%ctx204868%_)
                           (if (null? _%code204865%_)
                               _%r204849%_
                               (cons (cons _%ctx204868%_
                                           (cons _%phi204867%_
                                                 (cons _%n204866%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code204865%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r204849%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%$%block204850204859%_
                          'gxc#meta-state-block::t))
                       (let* ((_%$%e204854204873%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block204850204859%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx204876%_ _%$%e204854204873%_)
                              (_%$%e204855204878%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block204850204859%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi204881%_ _%$%e204855204878%_)
                              (_%$%e204856204883%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block204850204859%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n204886%_ _%$%e204856204883%_)
                              (_%$%e204857204888%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block204850204859%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code204891%_ _%$%e204857204888%_))
                         (_%$%K204853204870%_
                          _%code204891%_
                          _%n204886%_
                          _%phi204881%_
                          _%ctx204876%_))
                       (_%$%E204852204862%_)))))
              (__tmp215273
               (##structure-ref _%state204846%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp215274 '() __tmp215273))))
    (define gxc#collect-expression-refs
      (lambda (_%stx204842%_)
        (let ((_%ht204844%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht204844%_ _%stx204842%_)
          _%ht204844%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self204785%_ _%stx204786%_)
        (let* ((_%$%g204788204801%_
                (lambda (_%$%g204789204798%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204789204798%_))))
               (_%$%g204787204839%_
                (lambda (_%$%g204789204804%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204789204804%_))
                      (let ((_%$%e204791204806%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204789204804%_))))
                        (let ((_%$%hd204792204809%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204791204806%_)))
                              (_%$%tl204793204811%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204791204806%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204793204811%_))
                              (let ((_%$%e204794204814%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204793204811%_))))
                                (let ((_%$%hd204795204817%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204794204814%_)))
                                      (_%$%tl204796204819%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204794204814%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl204796204819%_))
                                      (let* ((_%bind204834%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#resolve-identifier__0
                                                 _%$%hd204795204817%_)))
                                             (_%eid204836%_
                                              (if _%bind204834%_
                                                  (##structure-ref
                                                   _%bind204834%_
                                                   '1
                                                   gx#binding::t
                                                   '#f)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd204795204817%_))))
                                             (__tmp215275
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self204785%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-put!
                                         __tmp215275
                                         _%eid204836%_
                                         _%eid204836%_))
                                      (_%$%g204788204801%_
                                       _%$%g204789204804%_))))
                              (_%$%g204788204801%_ _%$%g204789204804%_))))
                      (_%$%g204788204801%_ _%$%g204789204804%_)))))
          (_%$%g204787204839%_ _%stx204786%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self204712%_ _%stx204713%_)
        (let* ((_%$%g204715204732%_
                (lambda (_%$%g204716204729%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204716204729%_))))
               (_%$%g204714204782%_
                (lambda (_%$%g204716204735%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204716204735%_))
                      (let ((_%$%e204719204737%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204716204735%_))))
                        (let ((_%$%hd204720204740%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204719204737%_)))
                              (_%$%tl204721204742%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204719204737%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204721204742%_))
                              (let ((_%$%e204722204745%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204721204742%_))))
                                (let ((_%$%hd204723204748%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204722204745%_)))
                                      (_%$%tl204724204750%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204722204745%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204724204750%_))
                                      (let ((_%$%e204725204753%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204724204750%_))))
                                        (let ((_%$%hd204726204756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204725204753%_)))
                                              (_%$%tl204727204758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204725204753%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl204727204758%_))
                                              (let* ((_%bind204777%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#resolve-identifier__0
                                                         _%$%hd204723204748%_)))
                                                     (_%eid204779%_
                                                      (if _%bind204777%_
                                                          (##structure-ref
                                                           _%bind204777%_
                                                           '1
                                                           gx#binding::t
                                                           '#f)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd204723204748%_)))))
                                                (let ((__tmp215276
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self204712%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp215276
                                                   _%eid204779%_
                                                   _%eid204779%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self204712%_
                                                   _%$%hd204726204756%_)))
                                              (_%$%g204715204732%_
                                               _%$%g204716204735%_))))
                                      (_%$%g204715204732%_
                                       _%$%g204716204735%_))))
                              (_%$%g204715204732%_ _%$%g204716204735%_))))
                      (_%$%g204715204732%_ _%$%g204716204735%_)))))
          (_%$%g204714204782%_ _%stx204713%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self204669%_ _%stx204670%_)
        (let* ((_%$%g204672204682%_
                (lambda (_%$%g204673204679%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204673204679%_))))
               (_%$%g204671204709%_
                (lambda (_%$%g204673204685%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204673204685%_))
                      (let ((_%$%e204675204687%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204673204685%_))))
                        (let ((_%$%hd204676204690%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204675204687%_)))
                              (_%$%tl204677204692%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204675204687%_))))
                          (let ((__tmp215277
                                 (lambda (_%$%g204704204706%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self204669%_
                                      _%$%g204704204706%_)))))
                            (declare (not safe))
                            (ormap__0 __tmp215277 _%$%tl204677204692%_))))
                      (_%$%g204672204682%_ _%$%g204673204685%_)))))
          (_%$%g204671204709%_ _%stx204670%_))))
    (define gxc#count-values-single%
      (lambda (_%self204666%_ _%stx204667%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self204534%_ _%stx204535%_)
        (let* ((_%__stx215021215022%_ _%stx204535%_)
               (_%$%g204538204567%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx215021215022%_)))))
          (let ((_%__kont215023215024%_
                 (lambda (_%$%g204540204633%_ _%$%g204541204634%_)
                   (length (let ((__tmp215278
                                  (lambda (_%$%g204655204658%_
                                           _%$%g204656204660%_)
                                    (cons _%$%g204655204658%_
                                          _%$%g204656204660%_))))
                             (declare (not safe))
                             (foldr__0 __tmp215278 '() _%$%g204540204633%_)))))
                (_%__kont215027215028%_ (lambda () '#f)))
            (let ((_%__match215066215067%_
                   (lambda (_%$%e204542204579%_
                            _%$%hd204543204582%_
                            _%$%tl204544204584%_
                            _%$%e204545204587%_
                            _%$%hd204546204590%_
                            _%$%tl204547204592%_
                            _%$%e204548204595%_
                            _%$%hd204549204598%_
                            _%$%tl204550204600%_
                            _%$%e204551204603%_
                            _%$%hd204552204606%_
                            _%$%tl204553204608%_
                            _%__splice215025215026%_
                            _%$%target204554204611%_
                            _%$%tl204556204613%_)
                     (letrec ((_%$%loop204557204616%_
                               (lambda (_%$%hd204555204619%_
                                        _%$%rand204561204621%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd204555204619%_))
                                     (let ((_%$%e204558204623%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd204555204619%_))))
                                       (let ((_%$%lp-tl204560204628%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e204558204623%_)))
                                             (_%$%lp-hd204559204626%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e204558204623%_))))
                                         (_%$%loop204557204616%_
                                          _%$%lp-tl204560204628%_
                                          (cons _%$%lp-hd204559204626%_
                                                _%$%rand204561204621%_))))
                                     (let ((_%$%rand204562204631%_
                                            (reverse _%$%rand204561204621%_)))
                                       (let ((_%$%g204540204633%_
                                              _%$%rand204562204631%_)
                                             (_%$%g204541204634%_
                                              _%$%hd204552204606%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%$%g204541204634%_
                                                'values))
                                             (_%__kont215023215024%_
                                              _%$%g204540204633%_
                                              _%$%g204541204634%_)
                                             (_%__kont215027215028%_))))))))
                       (_%$%loop204557204616%_
                        _%$%target204554204611%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx215021215022%_))
                  (let ((_%$%e204542204579%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx215021215022%_))))
                    (let ((_%$%tl204544204584%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e204542204579%_)))
                          (_%$%hd204543204582%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e204542204579%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl204544204584%_))
                          (let ((_%$%e204545204587%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl204544204584%_))))
                            (let ((_%$%tl204547204592%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e204545204587%_)))
                                  (_%$%hd204546204590%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e204545204587%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd204546204590%_))
                                  (let ((_%$%e204548204595%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd204546204590%_))))
                                    (let ((_%$%tl204550204600%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e204548204595%_)))
                                          (_%$%hd204549204598%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e204548204595%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd204549204598%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd204549204598%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl204550204600%_))
                                                  (let ((_%$%e204551204603%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl204550204600%_))))
                                                    (let ((_%$%tl204553204608%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e204551204603%_)))
                                                          (_%$%hd204552204606%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e204551204603%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl204553204608%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl204547204592%_))
                      (let ((_%__splice215025215026%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl204547204592%_
                                '0))))
                        (let ((_%$%tl204556204613%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice215025215026%_ '1)))
                              (_%$%target204554204611%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice215025215026%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl204556204613%_))
                              (_%__match215066215067%_
                               _%$%e204542204579%_
                               _%$%hd204543204582%_
                               _%$%tl204544204584%_
                               _%$%e204545204587%_
                               _%$%hd204546204590%_
                               _%$%tl204547204592%_
                               _%$%e204548204595%_
                               _%$%hd204549204598%_
                               _%$%tl204550204600%_
                               _%$%e204551204603%_
                               _%$%hd204552204606%_
                               _%$%tl204553204608%_
                               _%__splice215025215026%_
                               _%$%target204554204611%_
                               _%$%tl204556204613%_)
                              (_%__kont215027215028%_))))
                      (_%__kont215027215028%_))
                  (_%__kont215027215028%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont215027215028%_))
                                              (_%__kont215027215028%_))
                                          (_%__kont215027215028%_))))
                                  (_%__kont215027215028%_))))
                          (_%__kont215027215028%_))))
                  (_%__kont215027215028%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self204439%_ _%stx204440%_)
        (let* ((_%$%g204442204463%_
                (lambda (_%$%g204443204460%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204443204460%_))))
               (_%$%g204441204531%_
                (lambda (_%$%g204443204466%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204443204466%_))
                      (let ((_%$%e204447204468%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204443204466%_))))
                        (let ((_%$%hd204448204471%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204447204468%_)))
                              (_%$%tl204449204473%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204447204468%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204449204473%_))
                              (let ((_%$%e204450204476%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204449204473%_))))
                                (let ((_%$%hd204451204479%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204450204476%_)))
                                      (_%$%tl204452204481%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204450204476%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204452204481%_))
                                      (let ((_%$%e204453204484%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204452204481%_))))
                                        (let ((_%$%hd204454204487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204453204484%_)))
                                              (_%$%tl204455204489%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204453204484%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl204455204489%_))
                                              (let ((_%$%e204456204492%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl204455204489%_))))
                                                (let ((_%$%hd204457204495%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e204456204492%_)))
                                                      (_%$%tl204458204497%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e204456204492%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl204458204497%_))
                                                      (let ((_%$%c1204519204521%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1
                        _%self204439%_
                        _%$%hd204454204487%_))))
                (if _%$%c1204519204521%_
                    (let* ((_%c1204523%_ _%$%c1204519204521%_)
                           (_%$%c2204524204526%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self204439%_
                               _%$%hd204457204495%_))))
                      (if _%$%c2204524204526%_
                          (let ((_%c2204528%_ _%$%c2204524204526%_))
                            (if (fx= _%c1204523%_ _%c2204528%_)
                                _%c1204523%_
                                '#f))
                          '#f))
                    '#f))
              (_%$%g204442204463%_ _%$%g204443204466%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g204442204463%_
                                               _%$%g204443204466%_))))
                                      (_%$%g204442204463%_
                                       _%$%g204443204466%_))))
                              (_%$%g204442204463%_ _%$%g204443204466%_))))
                      (_%$%g204442204463%_ _%$%g204443204466%_)))))
          (_%$%g204441204531%_ _%stx204440%_))))))
