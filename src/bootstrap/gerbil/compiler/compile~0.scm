(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1712262514)
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
        (letrec ((_%hash-e144318%_
                  (lambda (_%id144320%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id144320%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e144318%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp145711 (list gxc#::void::t))
            (__tmp145710 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp145711
         '()
         __tmp145710
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args144314%_
        (apply make-instance gxc#::collect-bindings::t _%$args144314%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp145712
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
        (__make-promise __tmp145712)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx144306%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self144309%_
                (let ((__obj145686
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj145686))
               (__tmp145713
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144309%_ _%stx144306%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145713
           gxc#current-compile-method
           _%self144309%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp145715 (list gxc#::void::t))
            (__tmp145714 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp145715
         '(modules)
         __tmp145714
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args144303%_
        (apply make-instance gxc#::lift-modules::t _%$args144303%_)))
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
      (let ((__tmp145716
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
        (__make-promise __tmp145716)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords144277%_ _%modules144274144278%_ _%stx144280%_)
        (let ((_%modules144283%_
               (if (eq? _%modules144274144278%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules144274144278%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self144285%_
                  (let ((__obj145688
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145688
                       _%modules144283%_
                       '1
                       '#f
                       '#f))
                    __obj145688))
                 (__tmp145717
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144285%_ _%stx144280%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145717
             gxc#current-compile-method
             _%self144285%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords144292%_ . _%args144293%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords144292%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144292%_
                  'modules:
                  absent-value))
               _%args144293%_)))
    (define gxc#apply-lift-modules
      (lambda _%args144275144299%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args144275144299%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp145719 (list)) (__tmp145718 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp145719
         '()
         __tmp145718
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args144270%_
        (apply make-instance gxc#::find-runtime-code::t _%$args144270%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp145720
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
        (__make-promise __tmp145720)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx144262%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self144265%_
                (let ((__obj145690
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj145690))
               (__tmp145721
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144265%_ _%stx144262%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145721
           gxc#current-compile-method
           _%self144265%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp145723 (list gxc#::false::t))
            (__tmp145722 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp145723
         '()
         __tmp145722
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args144259%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args144259%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp145724
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
        (__make-promise __tmp145724)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx144251%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self144254%_
                (let ((__obj145692
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj145692))
               (__tmp145725
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144254%_ _%stx144251%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145725
           gxc#current-compile-method
           _%self144254%_))))
    (define gxc#::count-values::t
      (let ((__tmp145727 (list gxc#::false-expression::t))
            (__tmp145726 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp145727
         '()
         __tmp145726
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args144248%_
        (apply make-instance gxc#::count-values::t _%$args144248%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp145728
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
        (__make-promise __tmp145728)))
    (define gxc#apply-count-values
      (lambda (_%stx144240%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self144243%_
                (let ((__obj145694
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj145694))
               (__tmp145729
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144243%_ _%stx144240%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145729
           gxc#current-compile-method
           _%self144243%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp145730 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp145730
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args144237%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args144237%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp145731
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
        (__make-promise __tmp145731)))
    (define gxc#::generate-loader::t
      (let ((__tmp145733 (list gxc#::generate-runtime-empty::t))
            (__tmp145732 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp145733
         '()
         __tmp145732
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args144233%_
        (apply make-instance gxc#::generate-loader::t _%$args144233%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp145734
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
        (__make-promise __tmp145734)))
    (define gxc#apply-generate-loader
      (lambda (_%stx144225%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self144228%_
                (let ((__obj145697
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj145697))
               (__tmp145735
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144228%_ _%stx144225%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145735
           gxc#current-compile-method
           _%self144228%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp145736 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp145736
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args144222%_
        (apply make-instance gxc#::generate-runtime::t _%$args144222%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp145737
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
        (__make-promise __tmp145737)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx144214%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self144217%_
                (let ((__obj145699
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj145699))
               (__tmp145738
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144217%_ _%stx144214%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145738
           gxc#current-compile-method
           _%self144217%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp145740 (list gxc#::generate-runtime::t))
            (__tmp145739 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp145740
         '()
         __tmp145739
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args144211%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args144211%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp145741
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
        (__make-promise __tmp145741)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx144203%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self144206%_
                (let ((__obj145701
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj145701))
               (__tmp145742
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144206%_ _%stx144203%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145742
           gxc#current-compile-method
           _%self144206%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp145743 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp145743
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args144200%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args144200%_)))
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
      (let ((__tmp145744
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
        (__make-promise __tmp145744)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords144174%_ _%table144171144175%_ _%stx144177%_)
        (let ((_%table144180%_
               (if (eq? _%table144171144175%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table144171144175%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self144182%_
                  (let ((__obj145703
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145703
                       _%table144180%_
                       '1
                       '#f
                       '#f))
                    __obj145703))
                 (__tmp145745
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144182%_ _%stx144177%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145745
             gxc#current-compile-method
             _%self144182%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords144189%_ . _%args144190%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords144189%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144189%_
                  'table:
                  absent-value))
               _%args144190%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args144172144196%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args144172144196%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp145747 (list gxc#::void-expression::t))
            (__tmp145746 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp145747
         '(state)
         __tmp145746
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args144167%_
        (apply make-instance gxc#::generate-meta::t _%$args144167%_)))
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
      (let ((__tmp145748
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
        (__make-promise __tmp145748)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords144141%_ _%state144138144142%_ _%stx144144%_)
        (let ((_%state144147%_
               (if (eq? _%state144138144142%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state144138144142%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self144149%_
                  (let ((__obj145705
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145705
                       _%state144147%_
                       '1
                       '#f
                       '#f))
                    __obj145705))
                 (__tmp145749
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144149%_ _%stx144144%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145749
             gxc#current-compile-method
             _%self144149%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords144156%_ . _%args144157%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords144156%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144156%_
                  'state:
                  absent-value))
               _%args144157%_)))
    (define gxc#apply-generate-meta
      (lambda _%args144139144163%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args144139144163%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp145751 (list)) (__tmp145750 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp145751
         '(state)
         __tmp145750
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args144134%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args144134%_)))
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
      (let ((__tmp145752
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
        (__make-promise __tmp145752)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords144108%_ _%state144105144109%_ _%stx144111%_)
        (let ((_%state144114%_
               (if (eq? _%state144105144109%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state144105144109%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self144116%_
                  (let ((__obj145707
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145707
                       _%state144114%_
                       '1
                       '#f
                       '#f))
                    __obj145707))
                 (__tmp145753
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144116%_ _%stx144111%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145753
             gxc#current-compile-method
             _%self144116%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords144123%_ . _%args144124%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords144123%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144123%_
                  'state:
                  absent-value))
               _%args144124%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args144106144130%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args144106144130%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self144034%_ _%stx144035%_)
        (let* ((_%g144037144054%_
                (lambda (_%g144038144051%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144038144051%_))))
               (_%g144036144101%_
                (lambda (_%g144038144057%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144038144057%_))
                      (let ((_%e144043144059%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144038144057%_))))
                        (let ((_%hd144042144062%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144043144059%_)))
                              (_%tl144041144064%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144043144059%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144041144064%_))
                              (let ((_%e144046144067%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144041144064%_))))
                                (let ((_%hd144045144070%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144046144067%_)))
                                      (_%tl144044144072%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144046144067%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144044144072%_))
                                      (let ((_%e144049144075%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144044144072%_))))
                                        (let ((_%hd144048144078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144049144075%_)))
                                              (_%tl144047144080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144049144075%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144047144080%_))
                                              ((lambda (_%L144083%_
                                                        _%L144084%_)
                                                 (let ((__tmp145754
                                                        (lambda (_%bind144099%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind144099%_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _%bind144099%_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp145754
                                                    _%L144084%_)))
                                               _%hd144048144078%_
                                               _%hd144045144070%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g144037144054%_
                                                 _%g144038144057%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g144037144054%_
                                         _%g144038144057%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g144037144054%_ _%g144038144057%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g144037144054%_ _%g144038144057%_))))))
          (declare (not safe))
          (_%g144036144101%_ _%stx144035%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self143966%_ _%stx143967%_)
        (let* ((_%g143969143986%_
                (lambda (_%g143970143983%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143970143983%_))))
               (_%g143968144031%_
                (lambda (_%g143970143989%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143970143989%_))
                      (let ((_%e143975143991%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143970143989%_))))
                        (let ((_%hd143974143994%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143975143991%_)))
                              (_%tl143973143996%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143975143991%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143973143996%_))
                              (let ((_%e143978143999%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143973143996%_))))
                                (let ((_%hd143977144002%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143978143999%_)))
                                      (_%tl143976144004%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143978143999%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143976144004%_))
                                      (let ((_%e143981144007%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143976144004%_))))
                                        (let ((_%hd143980144010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143981144007%_)))
                                              (_%tl143979144012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143981144007%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143979144012%_))
                                              ((lambda (_%L144015%_
                                                        _%L144016%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _%L144016%_
                                                    '#t)))
                                               _%hd143980144010%_
                                               _%hd143977144002%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g143969143986%_
                                                 _%g143970143989%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143969143986%_
                                         _%g143970143989%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143969143986%_ _%g143970143989%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143969143986%_ _%g143970143989%_))))))
          (declare (not safe))
          (_%g143968144031%_ _%stx143967%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self143908%_ _%stx143909%_)
        (let* ((_%g143911143925%_
                (lambda (_%g143912143922%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143912143922%_))))
               (_%g143910143963%_
                (lambda (_%g143912143928%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143912143928%_))
                      (let ((_%e143917143930%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143912143928%_))))
                        (let ((_%hd143916143933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143917143930%_)))
                              (_%tl143915143935%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143917143930%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143915143935%_))
                              (let ((_%e143920143938%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143915143935%_))))
                                (let ((_%hd143919143941%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143920143938%_)))
                                      (_%tl143918143943%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143920143938%_))))
                                  ((lambda (_%L143946%_ _%L143947%_)
                                     (let ((_%ctx143960%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L143947%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self143908%_
                                           'modules))
                                        (cons _%ctx143960%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self143908%_
                                                        'modules)))))
                                       (let ((__tmp145755
                                              (lambda ()
                                                (let ((__tmp145756
                                                       (##structure-ref
                                                        _%ctx143960%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143908%_
                                                   __tmp145756)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp145755
                                          gx#current-expander-context
                                          _%ctx143960%_))))
                                   _%tl143918143943%_
                                   _%hd143919143941%_)))
                              (let ()
                                (declare (not safe))
                                (_%g143911143925%_ _%g143912143928%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143911143925%_ _%g143912143928%_))))))
          (declare (not safe))
          (_%g143910143963%_ _%stx143909%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls143861143863%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls143861143863%_
              (let ((_%decls143866%_ _%decls143861143863%_))
                (let _%lp143868%_ ((_%rest143870%_ _%decls143866%_))
                  (let* ((_%rest143871143879%_ _%rest143870%_)
                         (_%else143873143887%_ (lambda () '#f))
                         (_%K143875143896%_
                          (lambda (_%decls143890%_ _%decl143891%_)
                            (if (equal? _%decl143891%_ '(not safe))
                                (let () '#t)
                                (if (equal? _%decl143891%_ '(safe))
                                    (let () '#f)
                                    (let ()
                                      (declare (not safe))
                                      (_%lp143868%_ _%decls143890%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest143871143879%_))
                        (let ((_%hd143876143899%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest143871143879%_)))
                              (_%tl143877143901%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest143871143879%_))))
                          (let* ((_%decl143904%_ _%hd143876143899%_)
                                 (_%decls143906%_ _%tl143877143901%_))
                            (declare (not safe))
                            (_%K143875143896%_
                             _%decls143906%_
                             _%decl143904%_)))
                        (let ()
                          (declare (not safe))
                          (_%else143873143887%_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id143855%_ _%syntax?143856%_)
        (let ((_%eid143858%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id143855%_))
                '1
                gx#binding::t
                '#f))
              (_%ht143859%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid143858%_))
              '#!void
              (let ((__tmp145757
                     (let ((__tmp145758
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid143858%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp145758 _%syntax?143856%_))))
                (declare (not safe))
                (hash-put! _%ht143859%_ _%eid143858%_ __tmp145757))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id143853%_)
        (let ((__tmp145759
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _%id143853%_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp145759))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key143808%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key143808%_))
            (let () _%key143808%_)
            (if (uninterned-symbol? _%key143808%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key143808%_))
                (let ()
                  (let* ((_%key143812143819%_ _%key143808%_)
                         (_%E143814143823%_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _%key143812143819%_
                                     '([eid . mark])))
                            '#!void))
                         (_%K143815143841%_
                          (lambda (_%mark143826%_ _%eid143827%_)
                            (let ((_%$e143829%_
                                   (##structure-ref
                                    _%mark143826%_
                                    '1
                                    gx#expander-mark::t
                                    '#f)))
                              (if _%$e143829%_
                                  ((lambda (_%ht143832%_)
                                     (let ((_%$e143834%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-get
                                               _%ht143832%_
                                               _%eid143827%_))))
                                       (if _%$e143834%_
                                           ((lambda (_%id143837%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (interned-symbol?
                                                     _%id143837%_))
                                                  _%id143837%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _%id143837%_))))
                                            _%$e143834%_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%eid143827%_)))))
                                   _%$e143829%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-identifier-key
                                     _%eid143827%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%key143812143819%_))
                        (let ((_%hd143816143844%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%key143812143819%_)))
                              (_%tl143817143846%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%key143812143819%_))))
                          (let* ((_%eid143849%_ _%hd143816143844%_)
                                 (_%mark143851%_ _%tl143817143846%_))
                            (declare (not safe))
                            (_%K143815143841%_ _%mark143851%_ _%eid143849%_)))
                        (let ()
                          (declare (not safe))
                          (_%E143814143823%_)))))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self143805%_ _%stx143806%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self143652%_ _%stx143653%_)
        (letrec ((_%simplify143655%_
                  (lambda (_%body143703%_)
                    (let _%lp143705%_ ((_%rest143707%_ _%body143703%_)
                                       (_%r143708%_ '()))
                      (let* ((_%rest143709143717%_ _%rest143707%_)
                             (_%else143711143725%_
                              (lambda () (reverse _%r143708%_)))
                             (_%K143713143793%_
                              (lambda (_%rest143728%_ _%hd143729%_)
                                (let* ((_%hd143730143746%_ _%hd143729%_)
                                       (_%else143734143754%_
                                        (lambda ()
                                          (let ((__tmp145760
                                                 (cons _%hd143729%_
                                                       _%r143708%_)))
                                            (declare (not safe))
                                            (_%lp143705%_
                                             _%rest143728%_
                                             __tmp145760)))))
                                  (let ((_%K143742143783%_
                                         (lambda (_%exprs143781%_)
                                           (let ((__tmp145761
                                                  (let ()
                                                    (declare (not safe))
                                                    (__foldr1
                                                     cons
                                                     _%rest143728%_
                                                     _%exprs143781%_))))
                                             (declare (not safe))
                                             (_%lp143705%_
                                              __tmp145761
                                              _%r143708%_))))
                                        (_%K143737143767%_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _%rest143728%_))
                                               (let ((__tmp145762
                                                      (cons _%hd143729%_
                                                            _%r143708%_)))
                                                 (declare (not safe))
                                                 (_%lp143705%_
                                                  _%rest143728%_
                                                  __tmp145762))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp143705%_
                                                  _%rest143728%_
                                                  _%r143708%_)))))
                                        (_%K143736143759%_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _%rest143728%_))
                                               (let ((__tmp145763
                                                      (cons _%hd143729%_
                                                            _%r143708%_)))
                                                 (declare (not safe))
                                                 (_%lp143705%_
                                                  _%rest143728%_
                                                  __tmp145763))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp143705%_
                                                  _%rest143728%_
                                                  _%r143708%_))))))
                                    (let ((_%try-match143733143762%_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _%hd143730143746%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%K143736143759%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%else143734143754%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd143730143746%_))
                                          (let ((_%tl143744143788%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd143730143746%_)))
                                                (_%hd143743143786%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd143730143746%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd143743143786%_
                                                         'begin))
                                                (let ((_%exprs143791%_
                                                       _%tl143744143788%_))
                                                  (declare (not safe))
                                                  (_%K143742143783%_
                                                   _%exprs143791%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd143743143786%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl143744143788%_))
                                                        (let ((_%tl143741143775%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl143744143788%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl143741143775%_))
                      (let () (declare (not safe)) (_%K143737143767%_))
                      (let ()
                        (declare (not safe))
                        (_%try-match143733143762%_))))
                (let () (declare (not safe)) (_%try-match143733143762%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%try-match143733143762%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%try-match143733143762%_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest143709143717%_))
                            (let ((_%hd143714143796%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest143709143717%_)))
                                  (_%tl143715143798%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest143709143717%_))))
                              (let* ((_%hd143801%_ _%hd143714143796%_)
                                     (_%rest143803%_ _%tl143715143798%_))
                                (declare (not safe))
                                (_%K143713143793%_
                                 _%rest143803%_
                                 _%hd143801%_)))
                            (let ()
                              (declare (not safe))
                              (_%else143711143725%_))))))))
          (let* ((_%g143657143667%_
                  (lambda (_%g143658143664%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143658143664%_))))
                 (_%g143656143700%_
                  (lambda (_%g143658143670%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143658143670%_))
                        (let ((_%e143662143672%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143658143670%_))))
                          (let ((_%hd143661143675%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143662143672%_)))
                                (_%tl143660143677%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143662143672%_))))
                            ((lambda (_%L143680%_)
                               (let* ((_%body143695%_
                                       (map (lambda (_%g143690143692%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self143652%_
                                                 _%g143690143692%_)))
                                            _%L143680%_))
                                      (_%body143697%_
                                       (let ()
                                         (declare (not safe))
                                         (_%simplify143655%_ _%body143695%_))))
                                 (if (let ((__tmp145764
                                            (length _%body143697%_)))
                                       (declare (not safe))
                                       (##fx= __tmp145764 '1))
                                     (car _%body143697%_)
                                     (cons 'begin _%body143697%_))))
                             _%tl143660143677%_)))
                        (let ()
                          (declare (not safe))
                          (_%g143657143667%_ _%g143658143670%_))))))
            (declare (not safe))
            (_%g143656143700%_ _%stx143653%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self143613%_ _%stx143614%_)
        (let* ((_%g143616143626%_
                (lambda (_%g143617143623%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143617143623%_))))
               (_%g143615143649%_
                (lambda (_%g143617143629%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143617143629%_))
                      (let ((_%e143621143631%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143617143629%_))))
                        (let ((_%hd143620143634%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143621143631%_)))
                              (_%tl143619143636%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143621143631%_))))
                          ((lambda (_%L143639%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L143639%_))))
                           _%tl143619143636%_)))
                      (let ()
                        (declare (not safe))
                        (_%g143616143626%_ _%g143617143629%_))))))
          (declare (not safe))
          (_%g143615143649%_ _%stx143614%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self143377%_ _%stx143378%_)
        (let* ((_%__stx144343144344%_ _%stx143378%_)
               (_%g143382143434%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144343144344%_)))))
          (let ((_%__kont144345144346%_
                 (lambda (_%L143595%_ _%L143596%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self143377%_ _%L143595%_))))
                (_%__kont144347144348%_
                 (lambda (_%L143543%_ _%L143544%_ _%L143545%_)
                   (if (let ((__tmp145765
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L143545%_))))
                         (declare (not safe))
                         (##memq __tmp145765 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self143377%_ _%L143543%_)))))
                (_%__kont144351144352%_
                 (lambda (_%L143463%_ _%L143464%_)
                   (let ((_%decls143479%_ (map gx#syntax->datum _%L143464%_)))
                     (let ((__tmp145768
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls143479%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143377%_
                                                   _%L143463%_))
                                                '())))))
                           (__tmp145766
                            (let ((__tmp145767
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp145767 _%decls143479%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp145768
                        gxc#current-compile-decls
                        __tmp145766))))))
            (let* ((_%__match144398144399%_
                    (lambda (_%e143400143487%_
                             _%hd143399143490%_
                             _%tl143398143492%_
                             _%e143403143495%_
                             _%hd143402143498%_
                             _%tl143401143500%_
                             _%e143406143503%_
                             _%hd143405143506%_
                             _%tl143404143508%_
                             _%__splice144349144350%_
                             _%target143407143511%_
                             _%tl143409143513%_)
                      (letrec ((_%loop143410143516%_
                                (lambda (_%hd143408143519%_
                                         _%param143414143521%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd143408143519%_))
                                      (let ((_%e143411143524%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd143408143519%_))))
                                        (let ((_%lp-tl143413143529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143411143524%_)))
                                              (_%lp-hd143412143527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143411143524%_))))
                                          (let ((__tmp145769
                                                 (cons _%lp-hd143412143527%_
                                                       _%param143414143521%_)))
                                            (declare (not safe))
                                            (_%loop143410143516%_
                                             _%lp-tl143413143529%_
                                             __tmp145769))))
                                      (let ((_%param143415143532%_
                                             (reverse _%param143414143521%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143401143500%_))
                                            (let ((_%e143418143535%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143401143500%_))))
                                              (let ((_%tl143416143540%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143418143535%_)))
                                                    (_%hd143417143538%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143418143535%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl143416143540%_))
                                                    (let ((_%L143543%_
                                                           _%hd143417143538%_)
                                                          (_%L143544%_
                                                           _%param143415143532%_)
                                                          (_%L143545%_
                                                           _%hd143405143506%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L143545%_))
                       (let ((__tmp145770
                              (let ((__tmp145771
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L143545%_))))
                                (declare (not safe))
                                (##memq __tmp145771 gxc#gambit-annotations))))
                         (declare (not safe))
                         (not __tmp145770)))
                  (_%__kont144347144348%_ _%L143543%_ _%L143544%_ _%L143545%_)
                  (_%__kont144351144352%_
                   _%hd143417143538%_
                   _%hd143402143498%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g143382143434%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g143382143434%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop143410143516%_ _%target143407143511%_ '())))))
                   (_%__match144372144373%_
                    (lambda (_%e143388143571%_
                             _%hd143387143574%_
                             _%tl143386143576%_
                             _%e143391143579%_
                             _%hd143390143582%_
                             _%tl143389143584%_
                             _%e143394143587%_
                             _%hd143393143590%_
                             _%tl143392143592%_)
                      (let ((_%L143595%_ _%hd143393143590%_)
                            (_%L143596%_ _%hd143390143582%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L143596%_))
                            (_%__kont144345144346%_ _%L143595%_ _%L143596%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd143390143582%_))
                                (let ((_%e143406143503%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd143390143582%_))))
                                  (let ((_%tl143404143508%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143406143503%_)))
                                        (_%hd143405143506%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143406143503%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl143404143508%_))
                                        (let ((_%__splice144349144350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl143404143508%_
                                                  '0))))
                                          (let ((_%tl143409143513%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice144349144350%_
                                                    '1)))
                                                (_%target143407143511%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice144349144350%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143409143513%_))
                                                (_%__match144398144399%_
                                                 _%e143388143571%_
                                                 _%hd143387143574%_
                                                 _%tl143386143576%_
                                                 _%e143391143579%_
                                                 _%hd143390143582%_
                                                 _%tl143389143584%_
                                                 _%e143406143503%_
                                                 _%hd143405143506%_
                                                 _%tl143404143508%_
                                                 _%__splice144349144350%_
                                                 _%target143407143511%_
                                                 _%tl143409143513%_)
                                                (_%__kont144351144352%_
                                                 _%hd143393143590%_
                                                 _%hd143390143582%_))))
                                        (_%__kont144351144352%_
                                         _%hd143393143590%_
                                         _%hd143390143582%_))))
                                (_%__kont144351144352%_
                                 _%hd143393143590%_
                                 _%hd143390143582%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144343144344%_))
                  (let ((_%e143388143571%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144343144344%_))))
                    (let ((_%tl143386143576%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143388143571%_)))
                          (_%hd143387143574%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143388143571%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143386143576%_))
                          (let ((_%e143391143579%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143386143576%_))))
                            (let ((_%tl143389143584%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143391143579%_)))
                                  (_%hd143390143582%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143391143579%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl143389143584%_))
                                  (let ((_%e143394143587%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl143389143584%_))))
                                    (let ((_%tl143392143592%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143394143587%_)))
                                          (_%hd143393143590%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143394143587%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl143392143592%_))
                                          (_%__match144372144373%_
                                           _%e143388143571%_
                                           _%hd143387143574%_
                                           _%tl143386143576%_
                                           _%e143391143579%_
                                           _%hd143390143582%_
                                           _%tl143389143584%_
                                           _%e143394143587%_
                                           _%hd143393143590%_
                                           _%tl143392143592%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd143390143582%_))
                                              (let ((_%e143406143503%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd143390143582%_))))
                                                (let ((_%tl143404143508%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143406143503%_)))
                                                      (_%hd143405143506%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143406143503%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl143404143508%_))
                                                      (let ((_%__splice144349144350%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl143404143508%_ '0))))
                (let ((_%tl143409143513%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice144349144350%_ '1)))
                      (_%target143407143511%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice144349144350%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl143409143513%_))
                      (_%__match144398144399%_
                       _%e143388143571%_
                       _%hd143387143574%_
                       _%tl143386143576%_
                       _%e143391143579%_
                       _%hd143390143582%_
                       _%tl143389143584%_
                       _%e143406143503%_
                       _%hd143405143506%_
                       _%tl143404143508%_
                       _%__splice144349144350%_
                       _%target143407143511%_
                       _%tl143409143513%_)
                      (let () (declare (not safe)) (_%g143382143434%_)))))
              (let () (declare (not safe)) (_%g143382143434%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g143382143434%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd143390143582%_))
                                      (let ((_%e143406143503%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd143390143582%_))))
                                        (let ((_%tl143404143508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143406143503%_)))
                                              (_%hd143405143506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143406143503%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl143404143508%_))
                                              (let ((_%__splice144349144350%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl143404143508%_
                                                        '0))))
                                                (let ((_%tl143409143513%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice144349144350%_
                                                          '1)))
                                                      (_%target143407143511%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice144349144350%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143409143513%_))
                                                      (_%__match144398144399%_
                                                       _%e143388143571%_
                                                       _%hd143387143574%_
                                                       _%tl143386143576%_
                                                       _%e143391143579%_
                                                       _%hd143390143582%_
                                                       _%tl143389143584%_
                                                       _%e143406143503%_
                                                       _%hd143405143506%_
                                                       _%tl143404143508%_
                                                       _%__splice144349144350%_
                                                       _%target143407143511%_
                                                       _%tl143409143513%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g143382143434%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g143382143434%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143382143434%_))))))
                          (let () (declare (not safe)) (_%g143382143434%_)))))
                  (let () (declare (not safe)) (_%g143382143434%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self143336%_ _%stx143337%_)
        (let* ((_%g143339143349%_
                (lambda (_%g143340143346%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143340143346%_))))
               (_%g143338143374%_
                (lambda (_%g143340143352%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143340143352%_))
                      (let ((_%e143344143354%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143340143352%_))))
                        (let ((_%hd143343143357%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143344143354%_)))
                              (_%tl143342143359%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143344143354%_))))
                          ((lambda (_%L143362%_)
                             (let ((_%decls143372%_
                                    (map gx#syntax->datum _%L143362%_)))
                               (let ((__tmp145772
                                      (let ((__tmp145773
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp145773
                                         _%decls143372%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp145772))
                               (cons 'declare _%decls143372%_)))
                           _%tl143342143359%_)))
                      (let ()
                        (declare (not safe))
                        (_%g143339143349%_ _%g143340143352%_))))))
          (declare (not safe))
          (_%g143338143374%_ _%stx143337%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self143082%_ _%stx143083%_)
        (let* ((_%g143085143102%_
                (lambda (_%g143086143099%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143086143099%_))))
               (_%g143084143333%_
                (lambda (_%g143086143105%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143086143105%_))
                      (let ((_%e143091143107%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143086143105%_))))
                        (let ((_%hd143090143110%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143091143107%_)))
                              (_%tl143089143112%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143091143107%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143089143112%_))
                              (let ((_%e143094143115%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143089143112%_))))
                                (let ((_%hd143093143118%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143094143115%_)))
                                      (_%tl143092143120%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143094143115%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143092143120%_))
                                      (let ((_%e143097143123%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143092143120%_))))
                                        (let ((_%hd143096143126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143097143123%_)))
                                              (_%tl143095143128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143097143123%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143095143128%_))
                                              ((lambda (_%L143131%_
                                                        _%L143132%_)
                                                 (let* ((_%__stx144451144452%_
                                                         _%L143132%_)
                                                        (_%g143149143163%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx144451144452%_)))))
                                                   (let ((_%__kont144453144454%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self143082%_
                                                               _%L143131%_))))
                                                         (_%__kont144455144456%_
                                                          (lambda (_%L143295%_)
                                                            (let ((_%eid143304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L143295%_))))
                      (let ((_%lambda-expr143305143307%_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression
                                _%L143131%_))))
                        (if _%lambda-expr143305143307%_
                            (let* ((_%lambda-expr143310%_
                                    _%lambda-expr143305143307%_)
                                   (__tmp145774
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp145774
                               _%lambda-expr143310%_
                               _%eid143304%_))
                            '#f))
                      (cons 'define
                            (cons _%eid143304%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self143082%_
                                           _%L143131%_))
                                        '()))))))
                 (_%__kont144457144458%_
                  (lambda ()
                    (let* ((_%tmp143170%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body143279%_
                            (let _%lp143172%_ ((_%rest143174%_ _%L143132%_)
                                               (_%k143175%_ '0)
                                               (_%r143176%_ '()))
                              (let* ((_%__stx144421144422%_ _%rest143174%_)
                                     (_%g143181143198%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx144421144422%_)))))
                                (let ((_%__kont144423144424%_
                                       (lambda (_%L143266%_)
                                         (let ((__tmp145775
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%k143175%_ '1))))
                                           (declare (not safe))
                                           (_%lp143172%_
                                            _%L143266%_
                                            __tmp145775
                                            _%r143176%_))))
                                      (_%__kont144425144426%_
                                       (lambda (_%L143239%_ _%L143240%_)
                                         (let ((__tmp145777
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%k143175%_ '1)))
                                               (__tmp145776
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L143240%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-values-ref
                                   _%tmp143170%_
                                   _%k143175%_
                                   _%L143239%_))
                                '())))
              _%r143176%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%lp143172%_
                                            _%L143239%_
                                            __tmp145777
                                            __tmp145776))))
                                      (_%__kont144427144428%_
                                       (lambda (_%L143210%_)
                                         (let ((__tmp145778
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L143210%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-values->list
                                   _%tmp143170%_
                                   _%k143175%_))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp145778
                                            _%r143176%_))))
                                      (_%__kont144429144430%_
                                       (lambda () (reverse _%r143176%_))))
                                  (let ((_%g143179143226%_
                                         (lambda ()
                                           (let ((_%L143210%_
                                                  _%__stx144421144422%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L143210%_))
                                                 (_%__kont144427144428%_
                                                  _%L143210%_)
                                                 (_%__kont144429144430%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx144421144422%_))
                                        (let ((_%e143186143255%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx144421144422%_))))
                                          (let ((_%tl143184143260%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143186143255%_)))
                                                (_%hd143185143258%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143186143255%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd143185143258%_))
                                                (let ((_%e143187143263%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143185143258%_))))
                                                  (if (equal? _%e143187143263%_
                                                              '#f)
                                                      (_%__kont144423144424%_
                                                       _%tl143184143260%_)
                                                      (_%__kont144425144426%_
                                                       _%tl143184143260%_
                                                       _%hd143185143258%_)))
                                                (_%__kont144425144426%_
                                                 _%tl143184143260%_
                                                 _%hd143185143258%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g143179143226%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp143170%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self143082%_
                                                       _%L143131%_))
                                                    '())))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-check-values
                                           _%tmp143170%_
                                           _%L143132%_
                                           _%L143131%_))
                                        _%body143279%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx144451144452%_))
                                                         (let ((_%e143153143317%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx144451144452%_))))
                   (let ((_%tl143151143322%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e143153143317%_)))
                         (_%hd143152143320%_
                          (let ()
                            (declare (not safe))
                            (##car _%e143153143317%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd143152143320%_))
                         (let ((_%e143154143325%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd143152143320%_))))
                           (if (equal? _%e143154143325%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl143151143322%_))
                                   (_%__kont144453144454%_)
                                   (_%__kont144457144458%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl143151143322%_))
                                   (_%__kont144455144456%_ _%hd143152143320%_)
                                   (_%__kont144457144458%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143151143322%_))
                             (_%__kont144455144456%_ _%hd143152143320%_)
                             (_%__kont144457144458%_)))))
                 (_%__kont144457144458%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd143096143126%_
                                               _%hd143093143118%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g143085143102%_
                                                 _%g143086143105%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143085143102%_
                                         _%g143086143105%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143085143102%_ _%g143086143105%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143085143102%_ _%g143086143105%_))))))
          (declare (not safe))
          (_%g143084143333%_ _%stx143083%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals143057%_ _%hd143058%_ _%expr143059%_)
        (let ((_%$e143061%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _%expr143059%_))))
          (if _%$e143061%_
              ((lambda (_%count143064%_)
                 (let ((_%len143066%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd143058%_)))
                       (_%cmp143067%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd143058%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len143066%_ '0))
                           (_%cmp143067%_ _%count143064%_ _%len143066%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr143059%_
                          _%hd143058%_)))))
               _%$e143061%_)
              (let ()
                (let* ((_%len143073%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd143058%_)))
                       (_%cmp143075%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd143058%_))
                            '##fx=
                            '##fx>=))
                       (_%errmsg143077%_
                        (let ((__tmp145780
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-list? _%hd143058%_))
                                   '"Context expects "
                                   '"Context expects at least "))
                              (__tmp145779 (number->string _%len143073%_)))
                          (declare (not safe))
                          (##string-append
                           __tmp145780
                           __tmp145779
                           '" values")))
                       (_%count143079%_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-temporary__0))))
                  (if (and (let ((__tmp145781
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-list? _%hd143058%_))))
                             (declare (not safe))
                             (not __tmp145781))
                           (let ()
                             (declare (not safe))
                             (##fx= _%len143073%_ '0)))
                      '#!void
                      (cons 'let
                            (cons (cons (cons _%count143079%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-values-count
                                                       _%vals143057%_))
                                                    '()))
                                        '())
                                  (cons (cons 'if
                                              (cons (cons 'not
                                                          (cons (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#current-compile-decls-unsafe?))
                            (cons _%cmp143075%_
                                  (cons _%count143079%_
                                        (cons _%len143073%_ '())))
                            (cons 'let
                                  (cons '()
                                        (cons '(declare (not safe))
                                              (cons (cons _%cmp143075%_
                                                          (cons _%count143079%_
                                                                (cons _%len143073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'error
                                                                (cons _%errmsg143077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%count143079%_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var143052%_)
        (letrec ((_%generate-inline143054%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var143052%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var143052%_ '()))
                                      (cons '1 '())))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_%generate-inline143054%_))
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (let ()
                                        (declare (not safe))
                                        (_%generate-inline143054%_))
                                      '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var143045%_ _%i143046%_ _%rest143047%_)
        (letrec ((_%generate-inline143049%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i143046%_ '0))
                             (let ((__tmp145782
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%rest143047%_))))
                               (declare (not safe))
                               (not __tmp145782)))
                        (cons 'if
                              (cons (cons '##values? (cons _%var143045%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var143045%_
                                                      (cons '0 '())))
                                          (cons _%var143045%_ '()))))
                        (cons '##vector-ref
                              (cons _%var143045%_ (cons _%i143046%_ '())))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_%generate-inline143049%_))
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (let ()
                                        (declare (not safe))
                                        (_%generate-inline143049%_))
                                      '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var143039%_ _%i143040%_)
        (if (let () (declare (not safe)) (##fx= _%i143040%_ '0))
            (let ()
              (if (let ()
                    (declare (not safe))
                    (gxc#current-compile-decls-unsafe?))
                  (cons 'if
                        (cons (cons '##values? (cons _%var143039%_ '()))
                              (cons (cons '##vector->list
                                          (cons _%var143039%_ '()))
                                    (cons (cons 'list (cons _%var143039%_ '()))
                                          '()))))
                  (cons 'let
                        (cons '()
                              (cons '(declare (not safe))
                                    (cons (cons 'if
                                                (cons (cons '##values?
                                                            (cons _%var143039%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '##vector->list (cons _%var143039%_ '()))
                    (cons (cons 'list (cons _%var143039%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))))
            (if (let () (declare (not safe)) (##fx= _%i143040%_ '1))
                (let ()
                  (if (let ()
                        (declare (not safe))
                        (gxc#current-compile-decls-unsafe?))
                      (cons 'if
                            (cons (cons '##values? (cons _%var143039%_ '()))
                                  (cons (cons '##cdr
                                              (cons (cons '##vector->list
                                                          (cons _%var143039%_
                                                                '()))
                                                    '()))
                                        (cons ''() '()))))
                      (cons 'let
                            (cons '()
                                  (cons '(declare (not safe))
                                        (cons (cons 'if
                                                    (cons (cons '##values?
                                                                (cons _%var143039%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '##cdr
                              (cons (cons '##vector->list
                                          (cons _%var143039%_ '()))
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
                                        (cons _%var143039%_ '()))
                                  (cons _%i143040%_ '())))
                      (cons 'let
                            (cons '()
                                  (cons '(declare (not safe))
                                        (cons (cons '##list-tail
                                                    (cons (cons '##vector->list
                                                                (cons _%var143039%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons _%i143040%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self142971%_ _%stx142972%_)
        (let* ((_%g142974142991%_
                (lambda (_%g142975142988%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142975142988%_))))
               (_%g142973143036%_
                (lambda (_%g142975142994%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142975142994%_))
                      (let ((_%e142980142996%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142975142994%_))))
                        (let ((_%hd142979142999%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142980142996%_)))
                              (_%tl142978143001%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142980142996%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142978143001%_))
                              (let ((_%e142983143004%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142978143001%_))))
                                (let ((_%hd142982143007%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142983143004%_)))
                                      (_%tl142981143009%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142983143004%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142981143009%_))
                                      (let ((_%e142986143012%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142981143009%_))))
                                        (let ((_%hd142985143015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142986143012%_)))
                                              (_%tl142984143017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142986143012%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142984143017%_))
                                              ((lambda (_%L143020%_
                                                        _%L143021%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _%self142971%_
                                                    _%L143021%_
                                                    _%L143020%_)))
                                               _%hd142985143015%_
                                               _%hd142982143007%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g142974142991%_
                                                 _%g142975142994%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142974142991%_
                                         _%g142975142994%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g142974142991%_ _%g142975142994%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g142974142991%_ _%g142975142994%_))))))
          (declare (not safe))
          (_%g142973143036%_ _%stx142972%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self142930%_ _%hd142931%_ _%body142932%_)
        (let* ((_%hd142934%_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _%hd142931%_)))
               (_%body142936%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self142930%_ _%body142932%_)))
               (_%body142968%_
                (let* ((_%body142937142945%_ _%body142936%_)
                       (_%else142939142953%_
                        (lambda () (cons _%body142936%_ '())))
                       (_%K142941142958%_
                        (lambda (_%exprs142956%_) _%exprs142956%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body142937142945%_))
                      (let ((_%hd142942142961%_
                             (let ()
                               (declare (not safe))
                               (##car _%body142937142945%_)))
                            (_%tl142943142963%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body142937142945%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd142942142961%_ 'begin))
                            (let ((_%exprs142966%_ _%tl142943142963%_))
                              (declare (not safe))
                              (_%K142941142958%_ _%exprs142966%_))
                            (let ()
                              (declare (not safe))
                              (_%else142939142953%_))))
                      (let () (declare (not safe)) (_%else142939142953%_))))))
          (cons 'lambda (cons _%hd142934%_ _%body142968%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd142928%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd142928%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self141467%_ _%stx141468%_)
        (letrec ((_%dispatch-case?141470%_
                  (lambda (_%hd142158%_ _%body142159%_)
                    (let* ((_%form142161%_
                            (cons _%hd142158%_ (cons _%body142159%_ '())))
                           (_%__stx144483144484%_ _%form142161%_)
                           (_%g142166142323%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144483144484%_)))))
                      (let ((_%__kont144485144486%_
                             (lambda (_%L142848%_ _%L142849%_ _%L142850%_)
                               '#t))
                            (_%__kont144491144492%_
                             (lambda (_%L142636%_
                                      _%L142637%_
                                      _%L142638%_
                                      _%L142639%_
                                      _%L142640%_
                                      _%L142641%_)
                               '#t))
                            (_%__kont144497144498%_
                             (lambda (_%L142431%_
                                      _%L142432%_
                                      _%L142433%_
                                      _%L142434%_)
                               '#t))
                            (_%__kont144499144500%_ (lambda () '#f)))
                        (let* ((_%__match144624144625%_
                                (lambda (_%e142285142335%_
                                         _%hd142284142338%_
                                         _%tl142283142340%_
                                         _%e142288142343%_
                                         _%hd142287142346%_
                                         _%tl142286142348%_
                                         _%e142291142351%_
                                         _%hd142290142354%_
                                         _%tl142289142356%_
                                         _%e142294142359%_
                                         _%hd142293142362%_
                                         _%tl142292142364%_
                                         _%e142297142367%_
                                         _%hd142296142370%_
                                         _%tl142295142372%_
                                         _%e142300142375%_
                                         _%hd142299142378%_
                                         _%tl142298142380%_
                                         _%e142303142383%_
                                         _%hd142302142386%_
                                         _%tl142301142388%_
                                         _%e142306142391%_
                                         _%hd142305142394%_
                                         _%tl142304142396%_
                                         _%e142309142399%_
                                         _%hd142308142402%_
                                         _%tl142307142404%_
                                         _%e142312142407%_
                                         _%hd142311142410%_
                                         _%tl142310142412%_
                                         _%e142315142415%_
                                         _%hd142314142418%_
                                         _%tl142313142420%_
                                         _%e142318142423%_
                                         _%hd142317142426%_
                                         _%tl142316142428%_)
                                  (let ((_%L142431%_ _%hd142317142426%_)
                                        (_%L142432%_ _%hd142308142402%_)
                                        (_%L142433%_ _%hd142299142378%_)
                                        (_%L142434%_ _%hd142284142338%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L142434%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L142433%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L142434%_
                                                _%L142431%_))
                                             (let ((__tmp145783
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _%L142432%_
                                                       _%L142434%_))))
                                               (declare (not safe))
                                               (not __tmp145783)))
                                        (_%__kont144497144498%_
                                         _%L142431%_
                                         _%L142432%_
                                         _%L142433%_
                                         _%L142434%_)
                                        (_%__kont144499144500%_)))))
                               (_%__match144596144597%_
                                (lambda (_%e142285142335%_
                                         _%hd142284142338%_
                                         _%tl142283142340%_
                                         _%e142288142343%_
                                         _%hd142287142346%_
                                         _%tl142286142348%_
                                         _%e142291142351%_
                                         _%hd142290142354%_
                                         _%tl142289142356%_
                                         _%e142294142359%_
                                         _%hd142293142362%_
                                         _%tl142292142364%_
                                         _%e142297142367%_
                                         _%hd142296142370%_
                                         _%tl142295142372%_
                                         _%e142300142375%_
                                         _%hd142299142378%_
                                         _%tl142298142380%_
                                         _%e142303142383%_
                                         _%hd142302142386%_
                                         _%tl142301142388%_
                                         _%e142306142391%_
                                         _%hd142305142394%_
                                         _%tl142304142396%_
                                         _%e142309142399%_
                                         _%hd142308142402%_
                                         _%tl142307142404%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142301142388%_))
                                      (let ((_%e142312142407%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142301142388%_))))
                                        (let ((_%tl142310142412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142312142407%_)))
                                              (_%hd142311142410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142312142407%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd142311142410%_))
                                              (let ((_%e142315142415%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd142311142410%_))))
                                                (let ((_%tl142313142420%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142315142415%_)))
                                                      (_%hd142314142418%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142315142415%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd142314142418%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd142314142418%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl142313142420%_))
                      (let ((_%e142318142423%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl142313142420%_))))
                        (let ((_%tl142316142428%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142318142423%_)))
                              (_%hd142317142426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142318142423%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl142316142428%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl142310142412%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl142286142348%_))
                                      (_%__match144624144625%_
                                       _%e142285142335%_
                                       _%hd142284142338%_
                                       _%tl142283142340%_
                                       _%e142288142343%_
                                       _%hd142287142346%_
                                       _%tl142286142348%_
                                       _%e142291142351%_
                                       _%hd142290142354%_
                                       _%tl142289142356%_
                                       _%e142294142359%_
                                       _%hd142293142362%_
                                       _%tl142292142364%_
                                       _%e142297142367%_
                                       _%hd142296142370%_
                                       _%tl142295142372%_
                                       _%e142300142375%_
                                       _%hd142299142378%_
                                       _%tl142298142380%_
                                       _%e142303142383%_
                                       _%hd142302142386%_
                                       _%tl142301142388%_
                                       _%e142306142391%_
                                       _%hd142305142394%_
                                       _%tl142304142396%_
                                       _%e142309142399%_
                                       _%hd142308142402%_
                                       _%tl142307142404%_
                                       _%e142312142407%_
                                       _%hd142311142410%_
                                       _%tl142310142412%_
                                       _%e142315142415%_
                                       _%hd142314142418%_
                                       _%tl142313142420%_
                                       _%e142318142423%_
                                       _%hd142317142426%_
                                       _%tl142316142428%_)
                                      (_%__kont144499144500%_))
                                  (_%__kont144499144500%_))
                              (_%__kont144499144500%_))))
                      (_%__kont144499144500%_))
                  (_%__kont144499144500%_))
              (_%__kont144499144500%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont144499144500%_))))
                                      (_%__kont144499144500%_))))
                               (_%__match144526144527%_
                                (lambda (_%e142221142476%_
                                         _%hd142220142479%_
                                         _%tl142219142481%_
                                         _%__splice144493144494%_
                                         _%target142222142484%_
                                         _%tl142224142486%_)
                                  (letrec ((_%loop142225142489%_
                                            (lambda (_%hd142223142492%_
                                                     _%arg142229142494%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142223142492%_))
                                                  (let ((_%e142226142497%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142223142492%_))))
                                                    (let ((_%lp-tl142228142502%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142226142497%_)))
                                                          (_%lp-hd142227142500%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142226142497%_))))
                                                      (let ((__tmp145784
                                                             (cons _%lp-hd142227142500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg142229142494%_)))
                (declare (not safe))
                (_%loop142225142489%_ _%lp-tl142228142502%_ __tmp145784))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg142230142505%_
                                                         (reverse _%arg142229142494%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142219142481%_))
                                                        (let ((_%e142233142508%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142219142481%_))))
                  (let ((_%tl142231142513%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142233142508%_)))
                        (_%hd142232142511%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142233142508%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142232142511%_))
                        (let ((_%e142236142516%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142232142511%_))))
                          (let ((_%tl142234142521%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142236142516%_)))
                                (_%hd142235142519%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142236142516%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142235142519%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd142235142519%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142234142521%_))
                                        (let ((_%e142239142524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142234142521%_))))
                                          (let ((_%tl142237142529%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142239142524%_)))
                                                (_%hd142238142527%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142239142524%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd142238142527%_))
                                                (let ((_%e142242142532%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142238142527%_))))
                                                  (let ((_%tl142240142537%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142242142532%_)))
                                                        (_%hd142241142535%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142242142532%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd142241142535%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd142241142535%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl142240142537%_))
                        (let ((_%e142245142540%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl142240142537%_))))
                          (let ((_%tl142243142545%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142245142540%_)))
                                (_%hd142244142543%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142245142540%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142243142545%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl142237142529%_))
                                    (let ((_%e142248142548%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl142237142529%_))))
                                      (let ((_%tl142246142553%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e142248142548%_)))
                                            (_%hd142247142551%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e142248142548%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd142247142551%_))
                                            (let ((_%e142251142556%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd142247142551%_))))
                                              (let ((_%tl142249142561%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142251142556%_)))
                                                    (_%hd142250142559%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142251142556%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd142250142559%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd142250142559%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl142249142561%_))
                                                            (let ((_%e142254142564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl142249142561%_))))
                      (let ((_%tl142252142569%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142254142564%_)))
                            (_%hd142253142567%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142254142564%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl142252142569%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl142246142553%_))
                                (if (let ((__tmp145785
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl142246142553%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp145785 '1))
                                    (let ((_%__splice144495144496%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl142246142553%_
                                              '1))))
                                      (let ((_%tl142257142574%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144495144496%_
                                                '1)))
                                            (_%target142255142572%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144495144496%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142257142574%_))
                                            (let ((_%e142266142577%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142257142574%_))))
                                              (let ((_%tl142264142582%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142266142577%_)))
                                                    (_%hd142265142580%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142266142577%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd142265142580%_))
                                                    (let ((_%e142269142585%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd142265142580%_))))
                                                      (let ((_%tl142267142590%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e142269142585%_)))
                    (_%hd142268142588%_
                     (let () (declare (not safe)) (##car _%e142269142585%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd142268142588%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd142268142588%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl142267142590%_))
                            (let ((_%e142272142593%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl142267142590%_))))
                              (let ((_%tl142270142598%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e142272142593%_)))
                                    (_%hd142271142596%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e142272142593%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl142270142598%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl142264142582%_))
                                        (letrec ((_%loop142258142601%_
                                                  (lambda (_%hd142256142604%_
                                                           _%xarg142262142606%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd142256142604%_))
                                                        (let ((_%e142259142609%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd142256142604%_))))
                  (let ((_%lp-tl142261142614%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142259142609%_)))
                        (_%lp-hd142260142612%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142259142609%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd142260142612%_))
                        (let ((_%e142275142617%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd142260142612%_))))
                          (let ((_%tl142273142622%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142275142617%_)))
                                (_%hd142274142620%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142275142617%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142274142620%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd142274142620%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142273142622%_))
                                        (let ((_%e142278142625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142273142622%_))))
                                          (let ((_%tl142276142630%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142278142625%_)))
                                                (_%hd142277142628%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142278142625%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142276142630%_))
                                                (let ((__tmp145786
                                                       (cons _%hd142277142628%_
                                                             _%xarg142262142606%_)))
                                                  (declare (not safe))
                                                  (_%loop142258142601%_
                                                   _%lp-tl142261142614%_
                                                   __tmp145786))
                                                (_%__match144596144597%_
                                                 _%e142221142476%_
                                                 _%hd142220142479%_
                                                 _%tl142219142481%_
                                                 _%e142233142508%_
                                                 _%hd142232142511%_
                                                 _%tl142231142513%_
                                                 _%e142236142516%_
                                                 _%hd142235142519%_
                                                 _%tl142234142521%_
                                                 _%e142239142524%_
                                                 _%hd142238142527%_
                                                 _%tl142237142529%_
                                                 _%e142242142532%_
                                                 _%hd142241142535%_
                                                 _%tl142240142537%_
                                                 _%e142245142540%_
                                                 _%hd142244142543%_
                                                 _%tl142243142545%_
                                                 _%e142248142548%_
                                                 _%hd142247142551%_
                                                 _%tl142246142553%_
                                                 _%e142251142556%_
                                                 _%hd142250142559%_
                                                 _%tl142249142561%_
                                                 _%e142254142564%_
                                                 _%hd142253142567%_
                                                 _%tl142252142569%_))))
                                        (_%__match144596144597%_
                                         _%e142221142476%_
                                         _%hd142220142479%_
                                         _%tl142219142481%_
                                         _%e142233142508%_
                                         _%hd142232142511%_
                                         _%tl142231142513%_
                                         _%e142236142516%_
                                         _%hd142235142519%_
                                         _%tl142234142521%_
                                         _%e142239142524%_
                                         _%hd142238142527%_
                                         _%tl142237142529%_
                                         _%e142242142532%_
                                         _%hd142241142535%_
                                         _%tl142240142537%_
                                         _%e142245142540%_
                                         _%hd142244142543%_
                                         _%tl142243142545%_
                                         _%e142248142548%_
                                         _%hd142247142551%_
                                         _%tl142246142553%_
                                         _%e142251142556%_
                                         _%hd142250142559%_
                                         _%tl142249142561%_
                                         _%e142254142564%_
                                         _%hd142253142567%_
                                         _%tl142252142569%_))
                                    (_%__match144596144597%_
                                     _%e142221142476%_
                                     _%hd142220142479%_
                                     _%tl142219142481%_
                                     _%e142233142508%_
                                     _%hd142232142511%_
                                     _%tl142231142513%_
                                     _%e142236142516%_
                                     _%hd142235142519%_
                                     _%tl142234142521%_
                                     _%e142239142524%_
                                     _%hd142238142527%_
                                     _%tl142237142529%_
                                     _%e142242142532%_
                                     _%hd142241142535%_
                                     _%tl142240142537%_
                                     _%e142245142540%_
                                     _%hd142244142543%_
                                     _%tl142243142545%_
                                     _%e142248142548%_
                                     _%hd142247142551%_
                                     _%tl142246142553%_
                                     _%e142251142556%_
                                     _%hd142250142559%_
                                     _%tl142249142561%_
                                     _%e142254142564%_
                                     _%hd142253142567%_
                                     _%tl142252142569%_))
                                (_%__match144596144597%_
                                 _%e142221142476%_
                                 _%hd142220142479%_
                                 _%tl142219142481%_
                                 _%e142233142508%_
                                 _%hd142232142511%_
                                 _%tl142231142513%_
                                 _%e142236142516%_
                                 _%hd142235142519%_
                                 _%tl142234142521%_
                                 _%e142239142524%_
                                 _%hd142238142527%_
                                 _%tl142237142529%_
                                 _%e142242142532%_
                                 _%hd142241142535%_
                                 _%tl142240142537%_
                                 _%e142245142540%_
                                 _%hd142244142543%_
                                 _%tl142243142545%_
                                 _%e142248142548%_
                                 _%hd142247142551%_
                                 _%tl142246142553%_
                                 _%e142251142556%_
                                 _%hd142250142559%_
                                 _%tl142249142561%_
                                 _%e142254142564%_
                                 _%hd142253142567%_
                                 _%tl142252142569%_))))
                        (_%__match144596144597%_
                         _%e142221142476%_
                         _%hd142220142479%_
                         _%tl142219142481%_
                         _%e142233142508%_
                         _%hd142232142511%_
                         _%tl142231142513%_
                         _%e142236142516%_
                         _%hd142235142519%_
                         _%tl142234142521%_
                         _%e142239142524%_
                         _%hd142238142527%_
                         _%tl142237142529%_
                         _%e142242142532%_
                         _%hd142241142535%_
                         _%tl142240142537%_
                         _%e142245142540%_
                         _%hd142244142543%_
                         _%tl142243142545%_
                         _%e142248142548%_
                         _%hd142247142551%_
                         _%tl142246142553%_
                         _%e142251142556%_
                         _%hd142250142559%_
                         _%tl142249142561%_
                         _%e142254142564%_
                         _%hd142253142567%_
                         _%tl142252142569%_))))
                (let ((_%xarg142263142633%_ (reverse _%xarg142262142606%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142231142513%_))
                      (let ((_%L142636%_ _%hd142271142596%_)
                            (_%L142637%_ _%xarg142263142633%_)
                            (_%L142638%_ _%hd142253142567%_)
                            (_%L142639%_ _%hd142244142543%_)
                            (_%L142640%_ _%tl142224142486%_)
                            (_%L142641%_ _%arg142230142505%_))
                        (if (and (let ((__tmp145787
                                        (let ((__tmp145788
                                               (lambda (_%g142684142687%_
                                                        _%g142685142689%_)
                                                 (cons _%g142684142687%_
                                                       _%g142685142689%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145788
                                           '()
                                           _%L142641%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp145787))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L142640%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L142639%_
                                    'apply))
                                 (let ((__tmp145791
                                        (length (let ((__tmp145792
                                                       (lambda (_%g142691142694%_
                                                                _%g142692142696%_)
                                                         (cons _%g142691142694%_
                                                               _%g142692142696%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145792
                                                   '()
                                                   _%L142641%_))))
                                       (__tmp145789
                                        (length (let ((__tmp145790
                                                       (lambda (_%g142698142701%_
                                                                _%g142699142703%_)
                                                         (cons _%g142698142701%_
                                                               _%g142699142703%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145790
                                                   '()
                                                   _%L142637%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp145791 __tmp145789))
                                 (let ((__tmp145795
                                        (let ((__tmp145796
                                               (lambda (_%g142705142708%_
                                                        _%g142706142710%_)
                                                 (cons _%g142705142708%_
                                                       _%g142706142710%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145796
                                           '()
                                           _%L142641%_)))
                                       (__tmp145793
                                        (let ((__tmp145794
                                               (lambda (_%g142712142715%_
                                                        _%g142713142717%_)
                                                 (cons _%g142712142715%_
                                                       _%g142713142717%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145794
                                           '()
                                           _%L142637%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp145795
                                    __tmp145793))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L142640%_
                                    _%L142636%_))
                                 (let ((__tmp145797
                                        (let ((__tmp145801
                                               (lambda (_%g142719142721%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _%g142719142721%_
                                                    _%L142638%_))))
                                              (__tmp145798
                                               (let ((__tmp145800
                                                      (lambda (_%g142723142726%_
                                                               _%g142724142728%_)
                                                        (cons _%g142723142726%_
                                                              _%g142724142728%_)))
                                                     (__tmp145799
                                                      (cons _%L142640%_ '())))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp145800
                                                  __tmp145799
                                                  _%L142641%_))))
                                          (declare (not safe))
                                          (__find __tmp145801 __tmp145798))))
                                   (declare (not safe))
                                   (not __tmp145797)))
                            (_%__kont144491144492%_
                             _%L142636%_
                             _%L142637%_
                             _%L142638%_
                             _%L142639%_
                             _%L142640%_
                             _%L142641%_)
                            (_%__match144596144597%_
                             _%e142221142476%_
                             _%hd142220142479%_
                             _%tl142219142481%_
                             _%e142233142508%_
                             _%hd142232142511%_
                             _%tl142231142513%_
                             _%e142236142516%_
                             _%hd142235142519%_
                             _%tl142234142521%_
                             _%e142239142524%_
                             _%hd142238142527%_
                             _%tl142237142529%_
                             _%e142242142532%_
                             _%hd142241142535%_
                             _%tl142240142537%_
                             _%e142245142540%_
                             _%hd142244142543%_
                             _%tl142243142545%_
                             _%e142248142548%_
                             _%hd142247142551%_
                             _%tl142246142553%_
                             _%e142251142556%_
                             _%hd142250142559%_
                             _%tl142249142561%_
                             _%e142254142564%_
                             _%hd142253142567%_
                             _%tl142252142569%_)))
                      (_%__match144596144597%_
                       _%e142221142476%_
                       _%hd142220142479%_
                       _%tl142219142481%_
                       _%e142233142508%_
                       _%hd142232142511%_
                       _%tl142231142513%_
                       _%e142236142516%_
                       _%hd142235142519%_
                       _%tl142234142521%_
                       _%e142239142524%_
                       _%hd142238142527%_
                       _%tl142237142529%_
                       _%e142242142532%_
                       _%hd142241142535%_
                       _%tl142240142537%_
                       _%e142245142540%_
                       _%hd142244142543%_
                       _%tl142243142545%_
                       _%e142248142548%_
                       _%hd142247142551%_
                       _%tl142246142553%_
                       _%e142251142556%_
                       _%hd142250142559%_
                       _%tl142249142561%_
                       _%e142254142564%_
                       _%hd142253142567%_
                       _%tl142252142569%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop142258142601%_
                                             _%target142255142572%_
                                             '())))
                                        (_%__match144596144597%_
                                         _%e142221142476%_
                                         _%hd142220142479%_
                                         _%tl142219142481%_
                                         _%e142233142508%_
                                         _%hd142232142511%_
                                         _%tl142231142513%_
                                         _%e142236142516%_
                                         _%hd142235142519%_
                                         _%tl142234142521%_
                                         _%e142239142524%_
                                         _%hd142238142527%_
                                         _%tl142237142529%_
                                         _%e142242142532%_
                                         _%hd142241142535%_
                                         _%tl142240142537%_
                                         _%e142245142540%_
                                         _%hd142244142543%_
                                         _%tl142243142545%_
                                         _%e142248142548%_
                                         _%hd142247142551%_
                                         _%tl142246142553%_
                                         _%e142251142556%_
                                         _%hd142250142559%_
                                         _%tl142249142561%_
                                         _%e142254142564%_
                                         _%hd142253142567%_
                                         _%tl142252142569%_))
                                    (_%__match144596144597%_
                                     _%e142221142476%_
                                     _%hd142220142479%_
                                     _%tl142219142481%_
                                     _%e142233142508%_
                                     _%hd142232142511%_
                                     _%tl142231142513%_
                                     _%e142236142516%_
                                     _%hd142235142519%_
                                     _%tl142234142521%_
                                     _%e142239142524%_
                                     _%hd142238142527%_
                                     _%tl142237142529%_
                                     _%e142242142532%_
                                     _%hd142241142535%_
                                     _%tl142240142537%_
                                     _%e142245142540%_
                                     _%hd142244142543%_
                                     _%tl142243142545%_
                                     _%e142248142548%_
                                     _%hd142247142551%_
                                     _%tl142246142553%_
                                     _%e142251142556%_
                                     _%hd142250142559%_
                                     _%tl142249142561%_
                                     _%e142254142564%_
                                     _%hd142253142567%_
                                     _%tl142252142569%_))))
                            (_%__match144596144597%_
                             _%e142221142476%_
                             _%hd142220142479%_
                             _%tl142219142481%_
                             _%e142233142508%_
                             _%hd142232142511%_
                             _%tl142231142513%_
                             _%e142236142516%_
                             _%hd142235142519%_
                             _%tl142234142521%_
                             _%e142239142524%_
                             _%hd142238142527%_
                             _%tl142237142529%_
                             _%e142242142532%_
                             _%hd142241142535%_
                             _%tl142240142537%_
                             _%e142245142540%_
                             _%hd142244142543%_
                             _%tl142243142545%_
                             _%e142248142548%_
                             _%hd142247142551%_
                             _%tl142246142553%_
                             _%e142251142556%_
                             _%hd142250142559%_
                             _%tl142249142561%_
                             _%e142254142564%_
                             _%hd142253142567%_
                             _%tl142252142569%_))
                        (_%__match144596144597%_
                         _%e142221142476%_
                         _%hd142220142479%_
                         _%tl142219142481%_
                         _%e142233142508%_
                         _%hd142232142511%_
                         _%tl142231142513%_
                         _%e142236142516%_
                         _%hd142235142519%_
                         _%tl142234142521%_
                         _%e142239142524%_
                         _%hd142238142527%_
                         _%tl142237142529%_
                         _%e142242142532%_
                         _%hd142241142535%_
                         _%tl142240142537%_
                         _%e142245142540%_
                         _%hd142244142543%_
                         _%tl142243142545%_
                         _%e142248142548%_
                         _%hd142247142551%_
                         _%tl142246142553%_
                         _%e142251142556%_
                         _%hd142250142559%_
                         _%tl142249142561%_
                         _%e142254142564%_
                         _%hd142253142567%_
                         _%tl142252142569%_))
                    (_%__match144596144597%_
                     _%e142221142476%_
                     _%hd142220142479%_
                     _%tl142219142481%_
                     _%e142233142508%_
                     _%hd142232142511%_
                     _%tl142231142513%_
                     _%e142236142516%_
                     _%hd142235142519%_
                     _%tl142234142521%_
                     _%e142239142524%_
                     _%hd142238142527%_
                     _%tl142237142529%_
                     _%e142242142532%_
                     _%hd142241142535%_
                     _%tl142240142537%_
                     _%e142245142540%_
                     _%hd142244142543%_
                     _%tl142243142545%_
                     _%e142248142548%_
                     _%hd142247142551%_
                     _%tl142246142553%_
                     _%e142251142556%_
                     _%hd142250142559%_
                     _%tl142249142561%_
                     _%e142254142564%_
                     _%hd142253142567%_
                     _%tl142252142569%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144596144597%_
                                                     _%e142221142476%_
                                                     _%hd142220142479%_
                                                     _%tl142219142481%_
                                                     _%e142233142508%_
                                                     _%hd142232142511%_
                                                     _%tl142231142513%_
                                                     _%e142236142516%_
                                                     _%hd142235142519%_
                                                     _%tl142234142521%_
                                                     _%e142239142524%_
                                                     _%hd142238142527%_
                                                     _%tl142237142529%_
                                                     _%e142242142532%_
                                                     _%hd142241142535%_
                                                     _%tl142240142537%_
                                                     _%e142245142540%_
                                                     _%hd142244142543%_
                                                     _%tl142243142545%_
                                                     _%e142248142548%_
                                                     _%hd142247142551%_
                                                     _%tl142246142553%_
                                                     _%e142251142556%_
                                                     _%hd142250142559%_
                                                     _%tl142249142561%_
                                                     _%e142254142564%_
                                                     _%hd142253142567%_
                                                     _%tl142252142569%_))))
                                            (_%__match144596144597%_
                                             _%e142221142476%_
                                             _%hd142220142479%_
                                             _%tl142219142481%_
                                             _%e142233142508%_
                                             _%hd142232142511%_
                                             _%tl142231142513%_
                                             _%e142236142516%_
                                             _%hd142235142519%_
                                             _%tl142234142521%_
                                             _%e142239142524%_
                                             _%hd142238142527%_
                                             _%tl142237142529%_
                                             _%e142242142532%_
                                             _%hd142241142535%_
                                             _%tl142240142537%_
                                             _%e142245142540%_
                                             _%hd142244142543%_
                                             _%tl142243142545%_
                                             _%e142248142548%_
                                             _%hd142247142551%_
                                             _%tl142246142553%_
                                             _%e142251142556%_
                                             _%hd142250142559%_
                                             _%tl142249142561%_
                                             _%e142254142564%_
                                             _%hd142253142567%_
                                             _%tl142252142569%_))))
                                    (_%__match144596144597%_
                                     _%e142221142476%_
                                     _%hd142220142479%_
                                     _%tl142219142481%_
                                     _%e142233142508%_
                                     _%hd142232142511%_
                                     _%tl142231142513%_
                                     _%e142236142516%_
                                     _%hd142235142519%_
                                     _%tl142234142521%_
                                     _%e142239142524%_
                                     _%hd142238142527%_
                                     _%tl142237142529%_
                                     _%e142242142532%_
                                     _%hd142241142535%_
                                     _%tl142240142537%_
                                     _%e142245142540%_
                                     _%hd142244142543%_
                                     _%tl142243142545%_
                                     _%e142248142548%_
                                     _%hd142247142551%_
                                     _%tl142246142553%_
                                     _%e142251142556%_
                                     _%hd142250142559%_
                                     _%tl142249142561%_
                                     _%e142254142564%_
                                     _%hd142253142567%_
                                     _%tl142252142569%_))
                                (_%__match144596144597%_
                                 _%e142221142476%_
                                 _%hd142220142479%_
                                 _%tl142219142481%_
                                 _%e142233142508%_
                                 _%hd142232142511%_
                                 _%tl142231142513%_
                                 _%e142236142516%_
                                 _%hd142235142519%_
                                 _%tl142234142521%_
                                 _%e142239142524%_
                                 _%hd142238142527%_
                                 _%tl142237142529%_
                                 _%e142242142532%_
                                 _%hd142241142535%_
                                 _%tl142240142537%_
                                 _%e142245142540%_
                                 _%hd142244142543%_
                                 _%tl142243142545%_
                                 _%e142248142548%_
                                 _%hd142247142551%_
                                 _%tl142246142553%_
                                 _%e142251142556%_
                                 _%hd142250142559%_
                                 _%tl142249142561%_
                                 _%e142254142564%_
                                 _%hd142253142567%_
                                 _%tl142252142569%_))
                            (_%__kont144499144500%_))))
                    (_%__kont144499144500%_))
                (_%__kont144499144500%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144499144500%_))))
                                            (_%__kont144499144500%_))))
                                    (_%__kont144499144500%_))
                                (_%__kont144499144500%_))))
                        (_%__kont144499144500%_))
                    (_%__kont144499144500%_))
                (_%__kont144499144500%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont144499144500%_))))
                                        (_%__kont144499144500%_))
                                    (_%__kont144499144500%_))
                                (_%__kont144499144500%_))))
                        (_%__kont144499144500%_))))
                (_%__kont144499144500%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop142225142489%_
                                       _%target142222142484%_
                                       '())))))
                               (_%__match144514144515%_
                                (lambda (_%e142173142736%_
                                         _%hd142172142739%_
                                         _%tl142171142741%_
                                         _%__splice144487144488%_
                                         _%target142174142744%_
                                         _%tl142176142746%_)
                                  (letrec ((_%loop142177142749%_
                                            (lambda (_%hd142175142752%_
                                                     _%arg142181142754%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142175142752%_))
                                                  (let ((_%e142178142757%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142175142752%_))))
                                                    (let ((_%lp-tl142180142762%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142178142757%_)))
                                                          (_%lp-hd142179142760%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142178142757%_))))
                                                      (let ((__tmp145802
                                                             (cons _%lp-hd142179142760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg142181142754%_)))
                (declare (not safe))
                (_%loop142177142749%_ _%lp-tl142180142762%_ __tmp145802))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg142182142765%_
                                                         (reverse _%arg142181142754%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142171142741%_))
                                                        (let ((_%e142185142768%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142171142741%_))))
                  (let ((_%tl142183142773%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142185142768%_)))
                        (_%hd142184142771%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142185142768%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142184142771%_))
                        (let ((_%e142188142776%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142184142771%_))))
                          (let ((_%tl142186142781%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142188142776%_)))
                                (_%hd142187142779%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142188142776%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142187142779%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd142187142779%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142186142781%_))
                                        (let ((_%e142191142784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142186142781%_))))
                                          (let ((_%tl142189142789%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142191142784%_)))
                                                (_%hd142190142787%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142191142784%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd142190142787%_))
                                                (let ((_%e142194142792%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142190142787%_))))
                                                  (let ((_%tl142192142797%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142194142792%_)))
                                                        (_%hd142193142795%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142194142792%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd142193142795%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd142193142795%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl142192142797%_))
                        (let ((_%e142197142800%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl142192142797%_))))
                          (let ((_%tl142195142805%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142197142800%_)))
                                (_%hd142196142803%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142197142800%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142195142805%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl142189142789%_))
                                    (let ((_%__splice144489144490%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl142189142789%_
                                              '0))))
                                      (let ((_%tl142200142810%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144489144490%_
                                                '1)))
                                            (_%target142198142808%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144489144490%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl142200142810%_))
                                            (letrec ((_%loop142201142813%_
                                                      (lambda (_%hd142199142816%_
                                                               _%xarg142205142818%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd142199142816%_))
                                                            (let ((_%e142202142821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd142199142816%_))))
                      (let ((_%lp-tl142204142826%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142202142821%_)))
                            (_%lp-hd142203142824%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142202142821%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd142203142824%_))
                            (let ((_%e142209142829%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd142203142824%_))))
                              (let ((_%tl142207142834%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e142209142829%_)))
                                    (_%hd142208142832%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e142209142829%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd142208142832%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd142208142832%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142207142834%_))
                                            (let ((_%e142212142837%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142207142834%_))))
                                              (let ((_%tl142210142842%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142212142837%_)))
                                                    (_%hd142211142840%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142212142837%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl142210142842%_))
                                                    (let ((__tmp145803
                                                           (cons _%hd142211142840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xarg142205142818%_)))
              (declare (not safe))
              (_%loop142201142813%_ _%lp-tl142204142826%_ __tmp145803))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144526144527%_
                                                     _%e142173142736%_
                                                     _%hd142172142739%_
                                                     _%tl142171142741%_
                                                     _%__splice144487144488%_
                                                     _%target142174142744%_
                                                     _%tl142176142746%_))))
                                            (_%__match144526144527%_
                                             _%e142173142736%_
                                             _%hd142172142739%_
                                             _%tl142171142741%_
                                             _%__splice144487144488%_
                                             _%target142174142744%_
                                             _%tl142176142746%_))
                                        (_%__match144526144527%_
                                         _%e142173142736%_
                                         _%hd142172142739%_
                                         _%tl142171142741%_
                                         _%__splice144487144488%_
                                         _%target142174142744%_
                                         _%tl142176142746%_))
                                    (_%__match144526144527%_
                                     _%e142173142736%_
                                     _%hd142172142739%_
                                     _%tl142171142741%_
                                     _%__splice144487144488%_
                                     _%target142174142744%_
                                     _%tl142176142746%_))))
                            (_%__match144526144527%_
                             _%e142173142736%_
                             _%hd142172142739%_
                             _%tl142171142741%_
                             _%__splice144487144488%_
                             _%target142174142744%_
                             _%tl142176142746%_))))
                    (let ((_%xarg142206142845%_
                           (reverse _%xarg142205142818%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl142183142773%_))
                          (let ((_%L142848%_ _%xarg142206142845%_)
                                (_%L142849%_ _%hd142196142803%_)
                                (_%L142850%_ _%arg142182142765%_))
                            (if (and (let ((__tmp145804
                                            (let ((__tmp145805
                                                   (lambda (_%g142878142881%_
                                                            _%g142879142883%_)
                                                     (cons _%g142878142881%_
                                                           _%g142879142883%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145805
                                               '()
                                               _%L142850%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp145804))
                                     (let ((__tmp145808
                                            (length (let ((__tmp145809
                                                           (lambda (_%g142885142888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142886142890%_)
                     (cons _%g142885142888%_ _%g142886142890%_))))
              (declare (not safe))
              (__foldr1 __tmp145809 '() _%L142850%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp145806
                                            (length (let ((__tmp145807
                                                           (lambda (_%g142892142895%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142893142897%_)
                     (cons _%g142892142895%_ _%g142893142897%_))))
              (declare (not safe))
              (__foldr1 __tmp145807 '() _%L142848%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145808 __tmp145806))
                                     (let ((__tmp145812
                                            (let ((__tmp145813
                                                   (lambda (_%g142899142902%_
                                                            _%g142900142904%_)
                                                     (cons _%g142899142902%_
                                                           _%g142900142904%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145813
                                               '()
                                               _%L142850%_)))
                                           (__tmp145810
                                            (let ((__tmp145811
                                                   (lambda (_%g142906142909%_
                                                            _%g142907142911%_)
                                                     (cons _%g142906142909%_
                                                           _%g142907142911%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145811
                                               '()
                                               _%L142848%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp145812
                                        __tmp145810))
                                     (let ((__tmp145814
                                            (let ((__tmp145817
                                                   (lambda (_%g142913142915%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g142913142915%_
                                                        _%L142849%_))))
                                                  (__tmp145815
                                                   (let ((__tmp145816
                                                          (lambda (_%g142917142920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g142918142922%_)
                    (cons _%g142917142920%_ _%g142918142922%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp145816
                                                      '()
                                                      _%L142850%_))))
                                              (declare (not safe))
                                              (__find __tmp145817
                                                      __tmp145815))))
                                       (declare (not safe))
                                       (not __tmp145814)))
                                (_%__kont144485144486%_
                                 _%L142848%_
                                 _%L142849%_
                                 _%L142850%_)
                                (_%__match144526144527%_
                                 _%e142173142736%_
                                 _%hd142172142739%_
                                 _%tl142171142741%_
                                 _%__splice144487144488%_
                                 _%target142174142744%_
                                 _%tl142176142746%_)))
                          (_%__match144526144527%_
                           _%e142173142736%_
                           _%hd142172142739%_
                           _%tl142171142741%_
                           _%__splice144487144488%_
                           _%target142174142744%_
                           _%tl142176142746%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop142201142813%_
                                                 _%target142198142808%_
                                                 '())))
                                            (_%__match144526144527%_
                                             _%e142173142736%_
                                             _%hd142172142739%_
                                             _%tl142171142741%_
                                             _%__splice144487144488%_
                                             _%target142174142744%_
                                             _%tl142176142746%_))))
                                    (_%__match144526144527%_
                                     _%e142173142736%_
                                     _%hd142172142739%_
                                     _%tl142171142741%_
                                     _%__splice144487144488%_
                                     _%target142174142744%_
                                     _%tl142176142746%_))
                                (_%__match144526144527%_
                                 _%e142173142736%_
                                 _%hd142172142739%_
                                 _%tl142171142741%_
                                 _%__splice144487144488%_
                                 _%target142174142744%_
                                 _%tl142176142746%_))))
                        (_%__match144526144527%_
                         _%e142173142736%_
                         _%hd142172142739%_
                         _%tl142171142741%_
                         _%__splice144487144488%_
                         _%target142174142744%_
                         _%tl142176142746%_))
                    (_%__match144526144527%_
                     _%e142173142736%_
                     _%hd142172142739%_
                     _%tl142171142741%_
                     _%__splice144487144488%_
                     _%target142174142744%_
                     _%tl142176142746%_))
                (_%__match144526144527%_
                 _%e142173142736%_
                 _%hd142172142739%_
                 _%tl142171142741%_
                 _%__splice144487144488%_
                 _%target142174142744%_
                 _%tl142176142746%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match144526144527%_
                                                 _%e142173142736%_
                                                 _%hd142172142739%_
                                                 _%tl142171142741%_
                                                 _%__splice144487144488%_
                                                 _%target142174142744%_
                                                 _%tl142176142746%_))))
                                        (_%__match144526144527%_
                                         _%e142173142736%_
                                         _%hd142172142739%_
                                         _%tl142171142741%_
                                         _%__splice144487144488%_
                                         _%target142174142744%_
                                         _%tl142176142746%_))
                                    (_%__match144526144527%_
                                     _%e142173142736%_
                                     _%hd142172142739%_
                                     _%tl142171142741%_
                                     _%__splice144487144488%_
                                     _%target142174142744%_
                                     _%tl142176142746%_))
                                (_%__match144526144527%_
                                 _%e142173142736%_
                                 _%hd142172142739%_
                                 _%tl142171142741%_
                                 _%__splice144487144488%_
                                 _%target142174142744%_
                                 _%tl142176142746%_))))
                        (_%__match144526144527%_
                         _%e142173142736%_
                         _%hd142172142739%_
                         _%tl142171142741%_
                         _%__splice144487144488%_
                         _%target142174142744%_
                         _%tl142176142746%_))))
                (_%__match144526144527%_
                 _%e142173142736%_
                 _%hd142172142739%_
                 _%tl142171142741%_
                 _%__splice144487144488%_
                 _%target142174142744%_
                 _%tl142176142746%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop142177142749%_
                                       _%target142174142744%_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144483144484%_))
                              (let ((_%e142173142736%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144483144484%_))))
                                (let ((_%tl142171142741%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142173142736%_)))
                                      (_%hd142172142739%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142173142736%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd142172142739%_))
                                      (let ((_%__splice144487144488%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd142172142739%_
                                                '0))))
                                        (let ((_%tl142176142746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144487144488%_
                                                  '1)))
                                              (_%target142174142744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144487144488%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142176142746%_))
                                              (_%__match144514144515%_
                                               _%e142173142736%_
                                               _%hd142172142739%_
                                               _%tl142171142741%_
                                               _%__splice144487144488%_
                                               _%target142174142744%_
                                               _%tl142176142746%_)
                                              (_%__match144526144527%_
                                               _%e142173142736%_
                                               _%hd142172142739%_
                                               _%tl142171142741%_
                                               _%__splice144487144488%_
                                               _%target142174142744%_
                                               _%tl142176142746%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl142171142741%_))
                                          (let ((_%e142288142343%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl142171142741%_))))
                                            (let ((_%tl142286142348%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e142288142343%_)))
                                                  (_%hd142287142346%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e142288142343%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142287142346%_))
                                                  (let ((_%e142291142351%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142287142346%_))))
                                                    (let ((_%tl142289142356%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142291142351%_)))
                                                          (_%hd142290142354%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142291142351%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd142290142354%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd142290142354%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142289142356%_))
                          (let ((_%e142294142359%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142289142356%_))))
                            (let ((_%tl142292142364%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142294142359%_)))
                                  (_%hd142293142362%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142294142359%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd142293142362%_))
                                  (let ((_%e142297142367%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd142293142362%_))))
                                    (let ((_%tl142295142372%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142297142367%_)))
                                          (_%hd142296142370%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142297142367%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd142296142370%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd142296142370%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl142295142372%_))
                                                  (let ((_%e142300142375%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl142295142372%_))))
                                                    (let ((_%tl142298142380%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142300142375%_)))
                                                          (_%hd142299142378%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142300142375%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl142298142380%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl142292142364%_))
                      (let ((_%e142303142383%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl142292142364%_))))
                        (let ((_%tl142301142388%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142303142383%_)))
                              (_%hd142302142386%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142303142383%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd142302142386%_))
                              (let ((_%e142306142391%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd142302142386%_))))
                                (let ((_%tl142304142396%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142306142391%_)))
                                      (_%hd142305142394%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142306142391%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd142305142394%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd142305142394%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142304142396%_))
                                              (let ((_%e142309142399%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142304142396%_))))
                                                (let ((_%tl142307142404%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142309142399%_)))
                                                      (_%hd142308142402%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142309142399%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142307142404%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl142301142388%_))
                                                          (let ((_%e142312142407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl142301142388%_))))
                    (let ((_%tl142310142412%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142312142407%_)))
                          (_%hd142311142410%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142312142407%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd142311142410%_))
                          (let ((_%e142315142415%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd142311142410%_))))
                            (let ((_%tl142313142420%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142315142415%_)))
                                  (_%hd142314142418%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142315142415%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd142314142418%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd142314142418%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl142313142420%_))
                                          (let ((_%e142318142423%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl142313142420%_))))
                                            (let ((_%tl142316142428%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e142318142423%_)))
                                                  (_%hd142317142426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e142318142423%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl142316142428%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142310142412%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl142286142348%_))
                                                          (_%__match144624144625%_
                                                           _%e142173142736%_
                                                           _%hd142172142739%_
                                                           _%tl142171142741%_
                                                           _%e142288142343%_
                                                           _%hd142287142346%_
                                                           _%tl142286142348%_
                                                           _%e142291142351%_
                                                           _%hd142290142354%_
                                                           _%tl142289142356%_
                                                           _%e142294142359%_
                                                           _%hd142293142362%_
                                                           _%tl142292142364%_
                                                           _%e142297142367%_
                                                           _%hd142296142370%_
                                                           _%tl142295142372%_
                                                           _%e142300142375%_
                                                           _%hd142299142378%_
                                                           _%tl142298142380%_
                                                           _%e142303142383%_
                                                           _%hd142302142386%_
                                                           _%tl142301142388%_
                                                           _%e142306142391%_
                                                           _%hd142305142394%_
                                                           _%tl142304142396%_
                                                           _%e142309142399%_
                                                           _%hd142308142402%_
                                                           _%tl142307142404%_
                                                           _%e142312142407%_
                                                           _%hd142311142410%_
                                                           _%tl142310142412%_
                                                           _%e142315142415%_
                                                           _%hd142314142418%_
                                                           _%tl142313142420%_
                                                           _%e142318142423%_
                                                           _%hd142317142426%_
                                                           _%tl142316142428%_)
                                                          (_%__kont144499144500%_))
                                                      (_%__kont144499144500%_))
                                                  (_%__kont144499144500%_))))
                                          (_%__kont144499144500%_))
                                      (_%__kont144499144500%_))
                                  (_%__kont144499144500%_))))
                          (_%__kont144499144500%_))))
                  (_%__kont144499144500%_))
              (_%__kont144499144500%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont144499144500%_))
                                          (_%__kont144499144500%_))
                                      (_%__kont144499144500%_))))
                              (_%__kont144499144500%_))))
                      (_%__kont144499144500%_))
                  (_%__kont144499144500%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144499144500%_))
                                              (_%__kont144499144500%_))
                                          (_%__kont144499144500%_))))
                                  (_%__kont144499144500%_))))
                          (_%__kont144499144500%_))
                      (_%__kont144499144500%_))
                  (_%__kont144499144500%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144499144500%_))))
                                          (_%__kont144499144500%_)))))
                              (_%__kont144499144500%_)))))))
                 (_%dispatch-case-e141471%_
                  (lambda (_%hd141622%_ _%body141623%_)
                    (let* ((_%form141625%_
                            (cons _%hd141622%_ (cons _%body141623%_ '())))
                           (_%__stx144627144628%_ _%form141625%_)
                           (_%g141629141753%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144627144628%_)))))
                      (let ((_%__kont144629144630%_
                             (lambda (_%L142124%_ _%L142125%_ _%L142126%_)
                               (let ((__tmp145818
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L142125%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self141467%_
                                  __tmp145818))))
                            (_%__kont144635144636%_
                             (lambda (_%L141972%_
                                      _%L141973%_
                                      _%L141974%_
                                      _%L141975%_)
                               (let ((__tmp145819
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141972%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self141467%_
                                  __tmp145819))))
                            (_%__kont144639144640%_
                             (lambda (_%L141838%_ _%L141839%_ _%L141840%_)
                               (let ((__tmp145820
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141838%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self141467%_
                                  __tmp145820)))))
                        (let* ((_%__match144736144737%_
                                (lambda (_%e141721141758%_
                                         _%hd141720141761%_
                                         _%tl141719141763%_
                                         _%e141724141766%_
                                         _%hd141723141769%_
                                         _%tl141722141771%_
                                         _%e141727141774%_
                                         _%hd141726141777%_
                                         _%tl141725141779%_
                                         _%e141730141782%_
                                         _%hd141729141785%_
                                         _%tl141728141787%_
                                         _%e141733141790%_
                                         _%hd141732141793%_
                                         _%tl141731141795%_
                                         _%e141736141798%_
                                         _%hd141735141801%_
                                         _%tl141734141803%_
                                         _%e141739141806%_
                                         _%hd141738141809%_
                                         _%tl141737141811%_
                                         _%e141742141814%_
                                         _%hd141741141817%_
                                         _%tl141740141819%_
                                         _%e141745141822%_
                                         _%hd141744141825%_
                                         _%tl141743141827%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141737141811%_))
                                      (let ((_%e141748141830%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141737141811%_))))
                                        (let ((_%tl141746141835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141748141830%_)))
                                              (_%hd141747141833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141748141830%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141746141835%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl141722141771%_))
                                                  (_%__kont144639144640%_
                                                   _%hd141744141825%_
                                                   _%hd141735141801%_
                                                   _%hd141720141761%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141629141753%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g141629141753%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g141629141753%_)))))
                               (_%__match144666144667%_
                                (lambda (_%e141682141876%_
                                         _%hd141681141879%_
                                         _%tl141680141881%_
                                         _%__splice144637144638%_
                                         _%target141683141884%_
                                         _%tl141685141886%_)
                                  (letrec ((_%loop141686141889%_
                                            (lambda (_%hd141684141892%_
                                                     _%arg141690141894%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141684141892%_))
                                                  (let ((_%e141687141897%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141684141892%_))))
                                                    (let ((_%lp-tl141689141902%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141687141897%_)))
                                                          (_%lp-hd141688141900%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141687141897%_))))
                                                      (let ((__tmp145821
                                                             (cons _%lp-hd141688141900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141690141894%_)))
                (declare (not safe))
                (_%loop141686141889%_ _%lp-tl141689141902%_ __tmp145821))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141691141905%_
                                                         (reverse _%arg141690141894%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141680141881%_))
                                                        (let ((_%e141694141908%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141680141881%_))))
                  (let ((_%tl141692141913%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141694141908%_)))
                        (_%hd141693141911%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141694141908%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141693141911%_))
                        (let ((_%e141697141916%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141693141911%_))))
                          (let ((_%tl141695141921%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141697141916%_)))
                                (_%hd141696141919%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141697141916%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141696141919%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141696141919%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141695141921%_))
                                        (let ((_%e141700141924%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141695141921%_))))
                                          (let ((_%tl141698141929%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141700141924%_)))
                                                (_%hd141699141927%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141700141924%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141699141927%_))
                                                (let ((_%e141703141932%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141699141927%_))))
                                                  (let ((_%tl141701141937%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141703141932%_)))
                                                        (_%hd141702141935%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141703141932%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141702141935%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141702141935%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141701141937%_))
                        (let ((_%e141706141940%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141701141937%_))))
                          (let ((_%tl141704141945%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141706141940%_)))
                                (_%hd141705141943%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141706141940%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141704141945%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl141698141929%_))
                                    (let ((_%e141709141948%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl141698141929%_))))
                                      (let ((_%tl141707141953%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e141709141948%_)))
                                            (_%hd141708141951%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e141709141948%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd141708141951%_))
                                            (let ((_%e141712141956%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd141708141951%_))))
                                              (let ((_%tl141710141961%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141712141956%_)))
                                                    (_%hd141711141959%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141712141956%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd141711141959%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd141711141959%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141710141961%_))
                                                            (let ((_%e141715141964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141710141961%_))))
                      (let ((_%tl141713141969%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141715141964%_)))
                            (_%hd141714141967%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141715141964%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141713141969%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141692141913%_))
                                (_%__kont144635144636%_
                                 _%hd141714141967%_
                                 _%hd141705141943%_
                                 _%tl141685141886%_
                                 _%arg141691141905%_)
                                (_%__match144736144737%_
                                 _%e141682141876%_
                                 _%hd141681141879%_
                                 _%tl141680141881%_
                                 _%e141694141908%_
                                 _%hd141693141911%_
                                 _%tl141692141913%_
                                 _%e141697141916%_
                                 _%hd141696141919%_
                                 _%tl141695141921%_
                                 _%e141700141924%_
                                 _%hd141699141927%_
                                 _%tl141698141929%_
                                 _%e141703141932%_
                                 _%hd141702141935%_
                                 _%tl141701141937%_
                                 _%e141706141940%_
                                 _%hd141705141943%_
                                 _%tl141704141945%_
                                 _%e141709141948%_
                                 _%hd141708141951%_
                                 _%tl141707141953%_
                                 _%e141712141956%_
                                 _%hd141711141959%_
                                 _%tl141710141961%_
                                 _%e141715141964%_
                                 _%hd141714141967%_
                                 _%tl141713141969%_))
                            (let ()
                              (declare (not safe))
                              (_%g141629141753%_)))))
                    (let () (declare (not safe)) (_%g141629141753%_)))
                (let () (declare (not safe)) (_%g141629141753%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g141629141753%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g141629141753%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g141629141753%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g141629141753%_)))))
                        (let () (declare (not safe)) (_%g141629141753%_)))
                    (let () (declare (not safe)) (_%g141629141753%_)))
                (let () (declare (not safe)) (_%g141629141753%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g141629141753%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g141629141753%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g141629141753%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g141629141753%_)))))
                        (let () (declare (not safe)) (_%g141629141753%_)))))
                (let () (declare (not safe)) (_%g141629141753%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141686141889%_
                                       _%target141683141884%_
                                       '())))))
                               (_%__match144654144655%_
                                (lambda (_%e141636142012%_
                                         _%hd141635142015%_
                                         _%tl141634142017%_
                                         _%__splice144631144632%_
                                         _%target141637142020%_
                                         _%tl141639142022%_)
                                  (letrec ((_%loop141640142025%_
                                            (lambda (_%hd141638142028%_
                                                     _%arg141644142030%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141638142028%_))
                                                  (let ((_%e141641142033%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141638142028%_))))
                                                    (let ((_%lp-tl141643142038%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141641142033%_)))
                                                          (_%lp-hd141642142036%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141641142033%_))))
                                                      (let ((__tmp145822
                                                             (cons _%lp-hd141642142036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141644142030%_)))
                (declare (not safe))
                (_%loop141640142025%_ _%lp-tl141643142038%_ __tmp145822))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141645142041%_
                                                         (reverse _%arg141644142030%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141634142017%_))
                                                        (let ((_%e141648142044%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141634142017%_))))
                  (let ((_%tl141646142049%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141648142044%_)))
                        (_%hd141647142047%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141648142044%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141647142047%_))
                        (let ((_%e141651142052%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141647142047%_))))
                          (let ((_%tl141649142057%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141651142052%_)))
                                (_%hd141650142055%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141651142052%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141650142055%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141650142055%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141649142057%_))
                                        (let ((_%e141654142060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141649142057%_))))
                                          (let ((_%tl141652142065%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141654142060%_)))
                                                (_%hd141653142063%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141654142060%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141653142063%_))
                                                (let ((_%e141657142068%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141653142063%_))))
                                                  (let ((_%tl141655142073%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141657142068%_)))
                                                        (_%hd141656142071%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141657142068%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141656142071%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141656142071%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141655142073%_))
                        (let ((_%e141660142076%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141655142073%_))))
                          (let ((_%tl141658142081%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141660142076%_)))
                                (_%hd141659142079%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141660142076%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141658142081%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl141652142065%_))
                                    (let ((_%__splice144633144634%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141652142065%_
                                              '0))))
                                      (let ((_%tl141663142086%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144633144634%_
                                                '1)))
                                            (_%target141661142084%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144633144634%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl141663142086%_))
                                            (letrec ((_%loop141664142089%_
                                                      (lambda (_%hd141662142092%_
                                                               _%xarg141668142094%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd141662142092%_))
                                                            (let ((_%e141665142097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd141662142092%_))))
                      (let ((_%lp-tl141667142102%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141665142097%_)))
                            (_%lp-hd141666142100%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141665142097%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd141666142100%_))
                            (let ((_%e141672142105%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd141666142100%_))))
                              (let ((_%tl141670142110%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141672142105%_)))
                                    (_%hd141671142108%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141672142105%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141671142108%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd141671142108%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141670142110%_))
                                            (let ((_%e141675142113%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141670142110%_))))
                                              (let ((_%tl141673142118%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141675142113%_)))
                                                    (_%hd141674142116%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141675142113%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl141673142118%_))
                                                    (let ((__tmp145823
                                                           (cons _%hd141674142116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xarg141668142094%_)))
              (declare (not safe))
              (_%loop141664142089%_ _%lp-tl141667142102%_ __tmp145823))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144666144667%_
                                                     _%e141636142012%_
                                                     _%hd141635142015%_
                                                     _%tl141634142017%_
                                                     _%__splice144631144632%_
                                                     _%target141637142020%_
                                                     _%tl141639142022%_))))
                                            (_%__match144666144667%_
                                             _%e141636142012%_
                                             _%hd141635142015%_
                                             _%tl141634142017%_
                                             _%__splice144631144632%_
                                             _%target141637142020%_
                                             _%tl141639142022%_))
                                        (_%__match144666144667%_
                                         _%e141636142012%_
                                         _%hd141635142015%_
                                         _%tl141634142017%_
                                         _%__splice144631144632%_
                                         _%target141637142020%_
                                         _%tl141639142022%_))
                                    (_%__match144666144667%_
                                     _%e141636142012%_
                                     _%hd141635142015%_
                                     _%tl141634142017%_
                                     _%__splice144631144632%_
                                     _%target141637142020%_
                                     _%tl141639142022%_))))
                            (_%__match144666144667%_
                             _%e141636142012%_
                             _%hd141635142015%_
                             _%tl141634142017%_
                             _%__splice144631144632%_
                             _%target141637142020%_
                             _%tl141639142022%_))))
                    (let ((_%xarg141669142121%_
                           (reverse _%xarg141668142094%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141646142049%_))
                          (_%__kont144629144630%_
                           _%xarg141669142121%_
                           _%hd141659142079%_
                           _%arg141645142041%_)
                          (_%__match144666144667%_
                           _%e141636142012%_
                           _%hd141635142015%_
                           _%tl141634142017%_
                           _%__splice144631144632%_
                           _%target141637142020%_
                           _%tl141639142022%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop141664142089%_
                                                 _%target141661142084%_
                                                 '())))
                                            (_%__match144666144667%_
                                             _%e141636142012%_
                                             _%hd141635142015%_
                                             _%tl141634142017%_
                                             _%__splice144631144632%_
                                             _%target141637142020%_
                                             _%tl141639142022%_))))
                                    (_%__match144666144667%_
                                     _%e141636142012%_
                                     _%hd141635142015%_
                                     _%tl141634142017%_
                                     _%__splice144631144632%_
                                     _%target141637142020%_
                                     _%tl141639142022%_))
                                (_%__match144666144667%_
                                 _%e141636142012%_
                                 _%hd141635142015%_
                                 _%tl141634142017%_
                                 _%__splice144631144632%_
                                 _%target141637142020%_
                                 _%tl141639142022%_))))
                        (_%__match144666144667%_
                         _%e141636142012%_
                         _%hd141635142015%_
                         _%tl141634142017%_
                         _%__splice144631144632%_
                         _%target141637142020%_
                         _%tl141639142022%_))
                    (_%__match144666144667%_
                     _%e141636142012%_
                     _%hd141635142015%_
                     _%tl141634142017%_
                     _%__splice144631144632%_
                     _%target141637142020%_
                     _%tl141639142022%_))
                (_%__match144666144667%_
                 _%e141636142012%_
                 _%hd141635142015%_
                 _%tl141634142017%_
                 _%__splice144631144632%_
                 _%target141637142020%_
                 _%tl141639142022%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match144666144667%_
                                                 _%e141636142012%_
                                                 _%hd141635142015%_
                                                 _%tl141634142017%_
                                                 _%__splice144631144632%_
                                                 _%target141637142020%_
                                                 _%tl141639142022%_))))
                                        (_%__match144666144667%_
                                         _%e141636142012%_
                                         _%hd141635142015%_
                                         _%tl141634142017%_
                                         _%__splice144631144632%_
                                         _%target141637142020%_
                                         _%tl141639142022%_))
                                    (_%__match144666144667%_
                                     _%e141636142012%_
                                     _%hd141635142015%_
                                     _%tl141634142017%_
                                     _%__splice144631144632%_
                                     _%target141637142020%_
                                     _%tl141639142022%_))
                                (_%__match144666144667%_
                                 _%e141636142012%_
                                 _%hd141635142015%_
                                 _%tl141634142017%_
                                 _%__splice144631144632%_
                                 _%target141637142020%_
                                 _%tl141639142022%_))))
                        (_%__match144666144667%_
                         _%e141636142012%_
                         _%hd141635142015%_
                         _%tl141634142017%_
                         _%__splice144631144632%_
                         _%target141637142020%_
                         _%tl141639142022%_))))
                (_%__match144666144667%_
                 _%e141636142012%_
                 _%hd141635142015%_
                 _%tl141634142017%_
                 _%__splice144631144632%_
                 _%target141637142020%_
                 _%tl141639142022%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141640142025%_
                                       _%target141637142020%_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144627144628%_))
                              (let ((_%e141636142012%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144627144628%_))))
                                (let ((_%tl141634142017%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141636142012%_)))
                                      (_%hd141635142015%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141636142012%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd141635142015%_))
                                      (let ((_%__splice144631144632%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd141635142015%_
                                                '0))))
                                        (let ((_%tl141639142022%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144631144632%_
                                                  '1)))
                                              (_%target141637142020%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144631144632%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141639142022%_))
                                              (_%__match144654144655%_
                                               _%e141636142012%_
                                               _%hd141635142015%_
                                               _%tl141634142017%_
                                               _%__splice144631144632%_
                                               _%target141637142020%_
                                               _%tl141639142022%_)
                                              (_%__match144666144667%_
                                               _%e141636142012%_
                                               _%hd141635142015%_
                                               _%tl141634142017%_
                                               _%__splice144631144632%_
                                               _%target141637142020%_
                                               _%tl141639142022%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141634142017%_))
                                          (let ((_%e141724141766%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141634142017%_))))
                                            (let ((_%tl141722141771%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141724141766%_)))
                                                  (_%hd141723141769%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141724141766%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141723141769%_))
                                                  (let ((_%e141727141774%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141723141769%_))))
                                                    (let ((_%tl141725141779%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141727141774%_)))
                                                          (_%hd141726141777%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141727141774%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd141726141777%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd141726141777%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141725141779%_))
                          (let ((_%e141730141782%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141725141779%_))))
                            (let ((_%tl141728141787%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141730141782%_)))
                                  (_%hd141729141785%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141730141782%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd141729141785%_))
                                  (let ((_%e141733141790%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd141729141785%_))))
                                    (let ((_%tl141731141795%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141733141790%_)))
                                          (_%hd141732141793%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141733141790%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd141732141793%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd141732141793%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl141731141795%_))
                                                  (let ((_%e141736141798%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl141731141795%_))))
                                                    (let ((_%tl141734141803%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141736141798%_)))
                                                          (_%hd141735141801%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141736141798%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141734141803%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141728141787%_))
                      (let ((_%e141739141806%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141728141787%_))))
                        (let ((_%tl141737141811%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141739141806%_)))
                              (_%hd141738141809%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141739141806%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd141738141809%_))
                              (let ((_%e141742141814%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd141738141809%_))))
                                (let ((_%tl141740141819%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141742141814%_)))
                                      (_%hd141741141817%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141742141814%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd141741141817%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd141741141817%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141740141819%_))
                                              (let ((_%e141745141822%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141740141819%_))))
                                                (let ((_%tl141743141827%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141745141822%_)))
                                                      (_%hd141744141825%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141745141822%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141743141827%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl141737141811%_))
                                                          (let ((_%e141748141830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl141737141811%_))))
                    (let ((_%tl141746141835%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141748141830%_)))
                          (_%hd141747141833%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141748141830%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141746141835%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl141722141771%_))
                              (_%__kont144639144640%_
                               _%hd141744141825%_
                               _%hd141735141801%_
                               _%hd141635142015%_)
                              (let ()
                                (declare (not safe))
                                (_%g141629141753%_)))
                          (let () (declare (not safe)) (_%g141629141753%_)))))
                  (let () (declare (not safe)) (_%g141629141753%_)))
              (let () (declare (not safe)) (_%g141629141753%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g141629141753%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141629141753%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g141629141753%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g141629141753%_)))))
                      (let () (declare (not safe)) (_%g141629141753%_)))
                  (let () (declare (not safe)) (_%g141629141753%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141629141753%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g141629141753%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141629141753%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g141629141753%_)))))
                          (let () (declare (not safe)) (_%g141629141753%_)))
                      (let () (declare (not safe)) (_%g141629141753%_)))
                  (let () (declare (not safe)) (_%g141629141753%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141629141753%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141629141753%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g141629141753%_))))))))
                 (_%generate1141472%_
                  (lambda (_%args141607%_
                           _%arglen141608%_
                           _%hd141609%_
                           _%body141610%_)
                    (let* ((_%len141612%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd141609%_)))
                           (_%condition141617%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd141609%_))
                                (let ()
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#current-compile-decls-unsafe?))
                                      (cons '##fx=
                                            (cons _%arglen141608%_
                                                  (cons _%len141612%_ '())))
                                      (cons 'let
                                            (cons '()
                                                  (cons '(declare (not safe))
                                                        (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%arglen141608%_ (cons _%len141612%_ '())))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len141612%_ '0)
                                    (let ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gxc#current-compile-decls-unsafe?))
                                          (cons '##fx>=
                                                (cons _%arglen141608%_
                                                      (cons _%len141612%_
                                                            '())))
                                          (cons 'let
                                                (cons '()
                                                      (cons '(declare
                                                               (not safe))
                                                            (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%arglen141608%_
                                      (cons _%len141612%_ '())))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let () '#t))))
                           (_%dispatch141619%_
                            (if (let ()
                                  (declare (not safe))
                                  (_%dispatch-case?141470%_
                                   _%hd141609%_
                                   _%body141610%_))
                                (let ()
                                  (declare (not safe))
                                  (_%dispatch-case-e141471%_
                                   _%hd141609%_
                                   _%body141610%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _%self141467%_
                                   _%hd141609%_
                                   _%body141610%_)))))
                      (cons _%condition141617%_
                            (cons (cons 'apply
                                        (cons _%dispatch141619%_
                                              (cons _%args141607%_ '())))
                                  '()))))))
          (let* ((_%g141474141502%_
                  (lambda (_%g141475141499%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141475141499%_))))
                 (_%g141473141604%_
                  (lambda (_%g141475141505%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141475141505%_))
                        (let ((_%e141480141507%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141475141505%_))))
                          (let ((_%hd141479141510%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141480141507%_)))
                                (_%tl141478141512%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141480141507%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl141478141512%_))
                                (let ((_g145824_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl141478141512%_
                                          '0))))
                                  (begin
                                    (let ((_g145825_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145824_)
                                                 (##vector-length _g145824_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145825_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145825_)))
                                    (let ((_%target141481141515%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145824_ 0)))
                                          (_%tl141483141517%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145824_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl141483141517%_))
                                          (letrec ((_%loop141484141520%_
                                                    (lambda (_%hd141482141523%_
                                                             _%body141488141525%_
                                                             _%hd141489141527%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd141482141523%_))
                                                          (let ((_%e141485141530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd141482141523%_))))
                    (let ((_%lp-hd141486141533%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141485141530%_)))
                          (_%lp-tl141487141535%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141485141530%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd141486141533%_))
                          (let ((_%e141494141538%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd141486141533%_))))
                            (let ((_%hd141493141541%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141494141538%_)))
                                  (_%tl141492141543%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141494141538%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl141492141543%_))
                                  (let ((_%e141497141546%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl141492141543%_))))
                                    (let ((_%hd141496141549%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141497141546%_)))
                                          (_%tl141495141551%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141497141546%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl141495141551%_))
                                          (let ((__tmp145827
                                                 (cons _%hd141496141549%_
                                                       _%body141488141525%_))
                                                (__tmp145826
                                                 (cons _%hd141493141541%_
                                                       _%hd141489141527%_)))
                                            (declare (not safe))
                                            (_%loop141484141520%_
                                             _%lp-tl141487141535%_
                                             __tmp145827
                                             __tmp145826))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141474141502%_
                                             _%g141475141505%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g141474141502%_ _%g141475141505%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g141474141502%_ _%g141475141505%_)))))
                  (let ((_%body141490141554%_ (reverse _%body141488141525%_))
                        (_%hd141491141556%_ (reverse _%hd141489141527%_)))
                    ((lambda (_%L141559%_ _%L141560%_)
                       (let ((_%args141579%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen141580%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name141581%_
                              (let ((_%$e141576%_
                                     (let ((__tmp145828
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp145828 _%stx141468%_))))
                                (if _%$e141576%_
                                    _%$e141576%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args141579%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen141580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (let ()
                                       (declare (not safe))
                                       (gxc#current-compile-decls-unsafe?))
                                     (cons '##length (cons _%args141579%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args141579%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp145832
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name141581%_
                                                                (cons _%args141579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp145829
                                  (map (lambda (_%g141582141585%_
                                                _%g141583141587%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%generate1141472%_
                                            _%args141579%_
                                            _%arglen141580%_
                                            _%g141582141585%_
                                            _%g141583141587%_)))
                                       (let ((__tmp145830
                                              (lambda (_%g141589141592%_
                                                       _%g141590141594%_)
                                                (cons _%g141589141592%_
                                                      _%g141590141594%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145830
                                          '()
                                          _%L141560%_))
                                       (let ((__tmp145831
                                              (lambda (_%g141596141599%_
                                                       _%g141597141601%_)
                                                (cons _%g141596141599%_
                                                      _%g141597141601%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145831
                                          '()
                                          _%L141559%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp145832 __tmp145829)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body141490141554%_
                     _%hd141491141556%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop141484141520%_
                                               _%target141481141515%_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141474141502%_
                                             _%g141475141505%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g141474141502%_ _%g141475141505%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g141474141502%_ _%g141475141505%_))))))
            (declare (not safe))
            (_%g141473141604%_ _%stx141468%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self140697%_ _%stx140698%_ _%compiled-body?140699%_)
        (letrec ((_%generate-simple140701%_
                  (lambda (_%hd141452%_ _%body141453%_)
                    (let ((__tmp145833
                           (let ((__tmp145834
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _%self140697%_
                                     'let
                                     _%hd141452%_
                                     _%body141453%_
                                     _%compiled-body?140699%_))))
                             (declare (not safe))
                             (_%coalesce-let140703%_ __tmp145834))))
                      (declare (not safe))
                      (_%coalesce-boolean140702%_ __tmp145833))))
                 (_%coalesce-boolean140702%_
                  (lambda (_%code141313%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code141314141340%_ _%code141313%_)
                               (_%else141316141348%_
                                (lambda () _%code141313%_))
                               (_%K141318141385%_
                                (lambda (_%expr2141351%_
                                         _%expr1141352%_
                                         _%id141353%_)
                                  (let* ((_%expr2141354141362%_
                                          _%expr2141351%_)
                                         (_%else141356141370%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1141352%_
                                                        (cons _%expr2141351%_
                                                              '())))))
                                         (_%K141358141375%_
                                          (lambda (_%exprs141373%_)
                                            (cons 'or
                                                  (cons _%expr1141352%_
                                                        _%exprs141373%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2141354141362%_))
                                        (let ((_%hd141359141378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2141354141362%_)))
                                              (_%tl141360141380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2141354141362%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd141359141378%_ 'or))
                                              (let ((_%exprs141383%_
                                                     _%tl141360141380%_))
                                                (declare (not safe))
                                                (_%K141358141375%_
                                                 _%exprs141383%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%else141356141370%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else141356141370%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code141314141340%_))
                              (let ((_%hd141319141388%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code141314141340%_)))
                                    (_%tl141320141390%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code141314141340%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd141319141388%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl141320141390%_))
                                        (let ((_%hd141321141393%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl141320141390%_)))
                                              (_%tl141322141395%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl141320141390%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd141321141393%_))
                                              (let ((_%hd141333141398%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd141321141393%_)))
                                                    (_%tl141334141400%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd141321141393%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd141333141398%_))
                                                    (let ((_%hd141335141403%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd141333141398%_)))
                                                          (_%tl141336141405%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd141333141398%_))))
                                                      (let ((_%id141408%_
                                                             _%hd141335141403%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl141336141405%_))
                                                            (let ((_%hd141337141410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl141336141405%_)))
                          (_%tl141338141412%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl141336141405%_))))
                      (let ((_%expr1141415%_ _%hd141337141410%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl141338141412%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl141334141400%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl141322141395%_))
                                    (let ((_%hd141323141417%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl141322141395%_)))
                                          (_%tl141324141419%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl141322141395%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd141323141417%_))
                                          (let ((_%hd141325141422%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd141323141417%_)))
                                                (_%tl141326141424%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd141323141417%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd141325141422%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl141326141424%_))
                                                    (let ((_%hd141327141427%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl141326141424%_)))
                                                          (_%tl141328141429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl141326141424%_))))
                                                      (if ((lambda (_%g141431141433%_)
                                                             (eq? _%g141431141433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id141408%_))
                   _%hd141327141427%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl141328141429%_))
                      (let ((_%hd141329141436%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl141328141429%_)))
                            (_%tl141330141438%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl141328141429%_))))
                        (if ((lambda (_%g141440141442%_)
                               (eq? _%g141440141442%_ _%id141408%_))
                             _%hd141329141436%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl141330141438%_))
                                (let ((_%hd141331141445%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl141330141438%_)))
                                      (_%tl141332141447%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl141330141438%_))))
                                  (let ((_%expr2141450%_ _%hd141331141445%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl141332141447%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl141324141419%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K141318141385%_
                                               _%expr2141450%_
                                               _%expr1141415%_
                                               _%id141408%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%else141316141348%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%else141316141348%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%else141316141348%_)))
                            (let ()
                              (declare (not safe))
                              (_%else141316141348%_))))
                      (let () (declare (not safe)) (_%else141316141348%_)))
                  (let () (declare (not safe)) (_%else141316141348%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else141316141348%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else141316141348%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else141316141348%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else141316141348%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else141316141348%_)))
                            (let ()
                              (declare (not safe))
                              (_%else141316141348%_)))))
                    (let () (declare (not safe)) (_%else141316141348%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else141316141348%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%else141316141348%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else141316141348%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%else141316141348%_))))
                              (let ()
                                (declare (not safe))
                                (_%else141316141348%_))))
                        _%code141313%_)))
                 (_%coalesce-let140703%_
                  (lambda (_%code141005%_)
                    (let* ((_%code141006141080%_ _%code141005%_)
                           (_%else141011141088%_ (lambda () _%code141005%_)))
                      (let ((_%K141070141288%_
                             (lambda (_%body141286%_)
                               (cons 'let _%body141286%_)))
                            (_%K141053141234%_
                             (lambda (_%body141230%_
                                      _%expr141231%_
                                      _%id141232%_)
                               (cons 'let
                                     (cons (cons (cons _%id141232%_
                                                       (cons _%expr141231%_
                                                             '()))
                                                 '())
                                           _%body141230%_))))
                            (_%K141030141158%_
                             (lambda (_%body141152%_
                                      _%expr2141153%_
                                      _%id2141154%_
                                      _%expr1141155%_
                                      _%id1141156%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1141156%_
                                                       (cons _%expr1141155%_
                                                             '()))
                                                 (cons (cons _%id2141154%_
                                                             (cons _%expr2141153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body141152%_))))
                            (_%K141013141097%_
                             (lambda (_%body141092%_
                                      _%bind141093%_
                                      _%expr1141094%_
                                      _%id1141095%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1141095%_
                                                       (cons _%expr1141094%_
                                                             '()))
                                                 _%bind141093%_)
                                           _%body141092%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code141006141080%_))
                            (let ((_%tl141072141293%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code141006141080%_)))
                                  (_%hd141071141291%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code141006141080%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd141071141291%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl141072141293%_))
                                      (let ((_%tl141074141298%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl141072141293%_)))
                                            (_%hd141073141296%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl141072141293%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%hd141073141296%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tl141074141298%_))
                                                (let ((_%tl141076141303%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl141074141298%_)))
                                                      (_%hd141075141301%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl141074141298%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd141075141301%_))
                                                      (let ((_%tl141078141308%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd141075141301%_)))
                    (_%hd141077141306%_
                     (let () (declare (not safe)) (##car _%hd141075141301%_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _%hd141077141306%_ 'let))
                    (if (let ()
                          (declare (not safe))
                          (##null? _%tl141076141303%_))
                        (let ((_%body141311%_ _%tl141078141308%_))
                          (declare (not safe))
                          (_%K141070141288%_ _%body141311%_))
                        (let () (declare (not safe)) (_%else141011141088%_)))
                    (let () (declare (not safe)) (_%else141011141088%_))))
              (let () (declare (not safe)) (_%else141011141088%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else141011141088%_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd141073141296%_))
                                                (let ((_%tl141065141249%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd141073141296%_)))
                                                      (_%hd141064141247%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd141073141296%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd141064141247%_))
                                                      (let ((_%tl141067141254%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd141064141247%_)))
                    (_%hd141066141252%_
                     (let () (declare (not safe)) (##car _%hd141064141247%_))))
                (if (let () (declare (not safe)) (##pair? _%tl141067141254%_))
                    (let ((_%tl141069141261%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl141067141254%_)))
                          (_%hd141068141259%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl141067141254%_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl141069141261%_))
                          (if (let ()
                                (declare (not safe))
                                (##null? _%tl141065141249%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl141074141298%_))
                                  (let ((_%tl141059141268%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl141074141298%_)))
                                        (_%hd141058141266%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl141074141298%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%hd141058141266%_))
                                        (let ((_%tl141061141273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd141058141266%_)))
                                              (_%hd141060141271%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd141058141266%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd141060141271%_
                                                       'let))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl141061141273%_))
                                                  (let ((_%tl141063141278%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl141061141273%_)))
                                                        (_%hd141062141276%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl141061141273%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%hd141062141276%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##null? _%tl141059141268%_))
                                                            (let ((_%id141257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd141066141252%_)
                          (_%expr141264%_ _%hd141068141259%_)
                          (_%body141281%_ _%tl141063141278%_))
                      (let ()
                        (declare (not safe))
                        (_%K141053141234%_
                         _%body141281%_
                         _%expr141264%_
                         _%id141257%_)))
                    (let () (declare (not safe)) (_%else141011141088%_)))
                (if (let () (declare (not safe)) (##pair? _%hd141062141276%_))
                    (let ((_%tl141042141207%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd141062141276%_)))
                          (_%hd141041141205%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd141062141276%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd141041141205%_))
                          (let ((_%tl141044141212%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd141041141205%_)))
                                (_%hd141043141210%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd141041141205%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl141044141212%_))
                                (let ((_%tl141046141219%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl141044141212%_)))
                                      (_%hd141045141217%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl141044141212%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl141046141219%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl141042141207%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl141059141268%_))
                                              (let ((_%id1141181%_
                                                     _%hd141066141252%_)
                                                    (_%expr1141188%_
                                                     _%hd141068141259%_)
                                                    (_%id2141215%_
                                                     _%hd141043141210%_)
                                                    (_%expr2141222%_
                                                     _%hd141045141217%_)
                                                    (_%body141224%_
                                                     _%tl141063141278%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%K141030141158%_
                                                   _%body141224%_
                                                   _%expr2141222%_
                                                   _%id2141215%_
                                                   _%expr1141188%_
                                                   _%id1141181%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%else141011141088%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else141011141088%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else141011141088%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%else141011141088%_))))
                          (let ()
                            (declare (not safe))
                            (_%else141011141088%_))))
                    (let () (declare (not safe)) (_%else141011141088%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else141011141088%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd141060141271%_
                                                           'let*))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%tl141061141273%_))
                                                      (let ((_%tl141023141141%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl141061141273%_)))
                    (_%hd141022141139%_
                     (let () (declare (not safe)) (##car _%tl141061141273%_))))
                (if (let () (declare (not safe)) (##null? _%tl141059141268%_))
                    (let ((_%id1141120%_ _%hd141066141252%_)
                          (_%expr1141127%_ _%hd141068141259%_)
                          (_%bind141144%_ _%hd141022141139%_)
                          (_%body141146%_ _%tl141023141141%_))
                      (let ()
                        (declare (not safe))
                        (_%K141013141097%_
                         _%body141146%_
                         _%bind141144%_
                         _%expr1141127%_
                         _%id1141120%_)))
                    (let () (declare (not safe)) (_%else141011141088%_))))
              (let () (declare (not safe)) (_%else141011141088%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else141011141088%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else141011141088%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else141011141088%_)))
                              (let ()
                                (declare (not safe))
                                (_%else141011141088%_)))
                          (let ()
                            (declare (not safe))
                            (_%else141011141088%_))))
                    (let () (declare (not safe)) (_%else141011141088%_))))
              (let () (declare (not safe)) (_%else141011141088%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else141011141088%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%else141011141088%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else141011141088%_))))
                            (let ()
                              (declare (not safe))
                              (_%else141011141088%_)))))))
                 (_%generate-values140704%_
                  (lambda (_%hd140818%_ _%body140819%_)
                    (let _%lp140821%_ ((_%rest140823%_ _%hd140818%_)
                                       (_%bind140824%_ '())
                                       (_%check140825%_ '())
                                       (_%post140826%_ '()))
                      (let* ((_%__stx144962144963%_ _%rest140823%_)
                             (_%g140829140840%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144962144963%_)))))
                        (let ((_%__kont144964144965%_
                               (lambda (_%L140867%_ _%L140868%_)
                                 (let* ((_%__stx144918144919%_ _%L140868%_)
                                        (_%g140883140908%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144918144919%_)))))
                                   (let ((_%__kont144920144921%_
                                          (lambda (_%L140981%_ _%L140982%_)
                                            (let ((_%eid140996%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140982%_)))
                                                  (_%expr140997%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self140697%_
                                                      _%L140981%_))))
                                              (let ((__tmp145835
                                                     (cons (cons _%eid140996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140997%_ '()))
                   _%bind140824%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%lp140821%_
                                                 _%L140867%_
                                                 __tmp145835
                                                 _%check140825%_
                                                 _%post140826%_)))))
                                         (_%__kont144922144923%_
                                          (lambda (_%L140929%_ _%L140930%_)
                                            (let* ((_%vals140943%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values140945%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _%vals140943%_
                                                       _%L140930%_
                                                       _%L140929%_)))
                                                   (_%refs140947%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _%vals140943%_
                                                       _%L140930%_)))
                                                   (_%expr140949%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self140697%_
                                                       _%L140929%_))))
                                              (let ((__tmp145838
                                                     (cons (cons _%vals140943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140949%_ '()))
                   _%bind140824%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145837
                                                     (cons _%check-values140945%_
                                                           _%check140825%_))
                                                    (__tmp145836
                                                     (cons _%refs140947%_
                                                           _%post140826%_)))
                                                (declare (not safe))
                                                (_%lp140821%_
                                                 _%L140867%_
                                                 __tmp145838
                                                 __tmp145837
                                                 __tmp145836))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144918144919%_))
                                         (let ((_%e140889140957%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144918144919%_))))
                                           (let ((_%tl140887140962%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140889140957%_)))
                                                 (_%hd140888140960%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140889140957%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd140888140960%_))
                                                 (let ((_%e140892140965%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd140888140960%_))))
                                                   (let ((_%tl140890140970%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140892140965%_)))
                                                         (_%hd140891140968%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140892140965%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140890140970%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140887140962%_))
                     (let ((_%e140895140973%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140887140962%_))))
                       (let ((_%tl140893140978%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140895140973%_)))
                             (_%hd140894140976%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140895140973%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140893140978%_))
                             (_%__kont144920144921%_
                              _%hd140894140976%_
                              _%hd140891140968%_)
                             (let ()
                               (declare (not safe))
                               (_%g140883140908%_)))))
                     (let () (declare (not safe)) (_%g140883140908%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140887140962%_))
                     (let ((_%e140903140921%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140887140962%_))))
                       (let ((_%tl140901140926%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140903140921%_)))
                             (_%hd140902140924%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140903140921%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140901140926%_))
                             (_%__kont144922144923%_
                              _%hd140902140924%_
                              _%hd140888140960%_)
                             (let ()
                               (declare (not safe))
                               (_%g140883140908%_)))))
                     (let () (declare (not safe)) (_%g140883140908%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140887140962%_))
                                                     (let ((_%e140903140921%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140887140962%_))))
                                                       (let ((_%tl140901140926%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140903140921%_)))
                     (_%hd140902140924%_
                      (let () (declare (not safe)) (##car _%e140903140921%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140901140926%_))
                     (_%__kont144922144923%_
                      _%hd140902140924%_
                      _%hd140888140960%_)
                     (let () (declare (not safe)) (_%g140883140908%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140883140908%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g140883140908%_)))))))
                              (_%__kont144966144967%_
                               (lambda ()
                                 (let* ((_%body140847%_
                                         (if _%compiled-body?140699%_
                                             _%body140819%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self140697%_
                                                _%body140819%_))))
                                        (_%body140849%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-post140705%_
                                            _%post140826%_
                                            _%body140847%_)))
                                        (_%body140851%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-check140706%_
                                            _%check140825%_
                                            _%body140849%_))))
                                   (cons 'let
                                         (cons (reverse _%bind140824%_)
                                               (cons _%body140851%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144962144963%_))
                              (let ((_%e140835140859%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144962144963%_))))
                                (let ((_%tl140833140864%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140835140859%_)))
                                      (_%hd140834140862%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140835140859%_))))
                                  (_%__kont144964144965%_
                                   _%tl140833140864%_
                                   _%hd140834140862%_)))
                              (_%__kont144966144967%_)))))))
                 (_%generate-values-post140705%_
                  (lambda (_%post140777%_ _%body140778%_)
                    (let _%lp140780%_ ((_%rest140782%_ _%post140777%_)
                                       (_%body140783%_ _%body140778%_))
                      (let* ((_%rest140784140792%_ _%rest140782%_)
                             (_%else140786140800%_ (lambda () _%body140783%_))
                             (_%K140788140806%_
                              (lambda (_%rest140803%_ _%bind140804%_)
                                (let ((__tmp145839
                                       (cons 'let
                                             (cons _%bind140804%_
                                                   (cons _%body140783%_
                                                         '())))))
                                  (declare (not safe))
                                  (_%lp140780%_ _%rest140803%_ __tmp145839)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140784140792%_))
                            (let ((_%hd140789140809%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140784140792%_)))
                                  (_%tl140790140811%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140784140792%_))))
                              (let* ((_%bind140814%_ _%hd140789140809%_)
                                     (_%rest140816%_ _%tl140790140811%_))
                                (declare (not safe))
                                (_%K140788140806%_
                                 _%rest140816%_
                                 _%bind140814%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140786140800%_)))))))
                 (_%generate-values-check140706%_
                  (lambda (_%check140774%_ _%body140775%_)
                    (cons 'begin
                          (let ((__tmp145841 (cons _%body140775%_ '()))
                                (__tmp145840 (reverse _%check140774%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145841 __tmp145840))))))
          (let* ((_%g140708140725%_
                  (lambda (_%g140709140722%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140709140722%_))))
                 (_%g140707140771%_
                  (lambda (_%g140709140728%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140709140728%_))
                        (let ((_%e140714140730%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140709140728%_))))
                          (let ((_%hd140713140733%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140714140730%_)))
                                (_%tl140712140735%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140714140730%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140712140735%_))
                                (let ((_%e140717140738%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140712140735%_))))
                                  (let ((_%hd140716140741%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140717140738%_)))
                                        (_%tl140715140743%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140717140738%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140715140743%_))
                                        (let ((_%e140720140746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140715140743%_))))
                                          (let ((_%hd140719140749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140720140746%_)))
                                                (_%tl140718140751%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140720140746%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140718140751%_))
                                                ((lambda (_%L140754%_
                                                          _%L140755%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L140755%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-simple140701%_
                                                          _%L140755%_
                                                          _%L140754%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values140704%_
                                                          _%L140755%_
                                                          _%L140754%_))))
                                                 _%hd140719140749%_
                                                 _%hd140716140741%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g140708140725%_
                                                   _%g140709140728%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140708140725%_
                                           _%g140709140728%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g140708140725%_ _%g140709140728%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g140708140725%_ _%g140709140728%_))))))
            (declare (not safe))
            (_%g140707140771%_ _%stx140698%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self141458%_ _%stx141459%_)
        (let ((_%compiled-body?141461%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _%self141458%_
           _%stx141459%_
           _%compiled-body?141461%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g145843_
        (let ((_g145842_ (let () (declare (not safe)) (##length _g145843_))))
          (cond ((let () (declare (not safe)) (##fx= _g145842_ 2))
                 (apply (lambda (_%self141458%_ _%stx141459%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _%self141458%_
                             _%stx141459%_)))
                        _g145843_))
                ((let () (declare (not safe)) (##fx= _g145842_ 3))
                 (apply (lambda (_%self141463%_
                                 _%stx141464%_
                                 _%compiled-body?141465%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _%self141463%_
                             _%stx141464%_
                             _%compiled-body?141465%_)))
                        _g145843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g145843_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals140591%_ _%hd140592%_)
        (let _%lp140594%_ ((_%rest140596%_ _%hd140592%_)
                           (_%k140597%_ '0)
                           (_%r140598%_ '()))
          (let* ((_%__stx144976144977%_ _%rest140596%_)
                 (_%g140603140620%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx144976144977%_)))))
            (let ((_%__kont144978144979%_
                   (lambda (_%L140683%_)
                     (let ((__tmp145844
                            (let ()
                              (declare (not safe))
                              (##fx+ _%k140597%_ '1))))
                       (declare (not safe))
                       (_%lp140594%_ _%L140683%_ __tmp145844 _%r140598%_))))
                  (_%__kont144980144981%_
                   (lambda (_%L140656%_ _%L140657%_)
                     (let ((__tmp145846
                            (let ()
                              (declare (not safe))
                              (##fx+ _%k140597%_ '1)))
                           (__tmp145845
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L140657%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#generate-runtime-values-ref
                                                 _%vals140591%_
                                                 _%k140597%_
                                                 _%L140656%_))
                                              '()))
                                  _%r140598%_)))
                       (declare (not safe))
                       (_%lp140594%_ _%L140656%_ __tmp145846 __tmp145845))))
                  (_%__kont144982144983%_
                   (lambda (_%L140632%_)
                     (let ((__tmp145847
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L140632%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#generate-runtime-values->list
                                                 _%vals140591%_
                                                 _%k140597%_))
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp145847 _%r140598%_))))
                  (_%__kont144984144985%_ (lambda () (reverse _%r140598%_))))
              (let ((_%g140601140643%_
                     (lambda ()
                       (let ((_%L140632%_ _%__stx144976144977%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L140632%_))
                             (_%__kont144982144983%_ _%L140632%_)
                             (_%__kont144984144985%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx144976144977%_))
                    (let ((_%e140608140672%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx144976144977%_))))
                      (let ((_%tl140606140677%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140608140672%_)))
                            (_%hd140607140675%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140608140672%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd140607140675%_))
                            (let ((_%e140609140680%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd140607140675%_))))
                              (if (equal? _%e140609140680%_ '#f)
                                  (_%__kont144978144979%_ _%tl140606140677%_)
                                  (_%__kont144980144981%_
                                   _%tl140606140677%_
                                   _%hd140607140675%_)))
                            (_%__kont144980144981%_
                             _%tl140606140677%_
                             _%hd140607140675%_))))
                    (let () (declare (not safe)) (_%g140601140643%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self140270%_ _%stx140271%_ _%compiled-body?140272%_)
        (letrec ((_%generate-simple140274%_
                  (lambda (_%hd140576%_ _%body140577%_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _%self140270%_
                       'letrec
                       _%hd140576%_
                       _%body140577%_
                       _%compiled-body?140272%_))))
                 (_%generate-values140275%_
                  (lambda (_%hd140355%_ _%body140356%_)
                    (let _%lp140358%_ ((_%rest140360%_ _%hd140355%_)
                                       (_%bind140361%_ '())
                                       (_%check140362%_ '())
                                       (_%post140363%_ '()))
                      (let* ((_%__stx145050145051%_ _%rest140360%_)
                             (_%g140366140377%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx145050145051%_)))))
                        (let ((_%__kont145052145053%_
                               (lambda (_%L140404%_ _%L140405%_)
                                 (let* ((_%__stx145006145007%_ _%L140405%_)
                                        (_%g140420140445%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx145006145007%_)))))
                                   (let ((_%__kont145008145009%_
                                          (lambda (_%L140552%_ _%L140553%_)
                                            (let ((_%eid140567%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140553%_)))
                                                  (_%expr140568%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self140270%_
                                                      _%L140552%_))))
                                              (let ((__tmp145848
                                                     (cons (cons _%eid140567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140568%_ '()))
                   _%bind140361%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%lp140358%_
                                                 _%L140404%_
                                                 __tmp145848
                                                 _%check140362%_
                                                 _%post140363%_)))))
                                         (_%__kont145010145011%_
                                          (lambda (_%L140466%_ _%L140467%_)
                                            (let* ((_%vals140480%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values140482%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _%vals140480%_
                                                       _%L140467%_
                                                       _%L140466%_)))
                                                   (_%refs140484%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _%vals140480%_
                                                       _%L140467%_)))
                                                   (_%expr140486%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self140270%_
                                                       _%L140466%_))))
                                              (let ((__tmp145851
                                                     (let ((__tmp145853
                                                            (cons (cons _%vals140480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%expr140486%_ '()))
                          _%bind140361%_))
                   (__tmp145852
                    (map (lambda (_%e140488140490%_)
                           (let* ((_%g140492140501%_ _%e140488140490%_)
                                  (_%E140494140505%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%g140492140501%_
                                              '([eid _])))
                                     '#!void))
                                  (_%K140495140510%_
                                   (lambda (_%eid140508%_)
                                     (cons _%eid140508%_ (cons '#!void '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%g140492140501%_))
                                 (let ((_%hd140496140513%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%g140492140501%_)))
                                       (_%tl140497140515%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%g140492140501%_))))
                                   (let ((_%eid140518%_ _%hd140496140513%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _%tl140497140515%_))
                                         (let ((_%tl140499140520%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%tl140497140515%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _%tl140499140520%_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%K140495140510%_
                                                  _%eid140518%_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%E140494140505%_))))
                                         (let ()
                                           (declare (not safe))
                                           (_%E140494140505%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%E140494140505%_)))))
                         _%refs140484%_)))
               (declare (not safe))
               (__foldl1 cons __tmp145853 __tmp145852)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145850
                                                     (cons _%check-values140482%_
                                                           _%check140362%_))
                                                    (__tmp145849
                                                     (let ()
                                                       (declare (not safe))
                                                       (__foldl1
                                                        cons
                                                        _%refs140484%_
                                                        _%post140363%_))))
                                                (declare (not safe))
                                                (_%lp140358%_
                                                 _%L140404%_
                                                 __tmp145851
                                                 __tmp145850
                                                 __tmp145849))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx145006145007%_))
                                         (let ((_%e140426140528%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx145006145007%_))))
                                           (let ((_%tl140424140533%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140426140528%_)))
                                                 (_%hd140425140531%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140426140528%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd140425140531%_))
                                                 (let ((_%e140429140536%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd140425140531%_))))
                                                   (let ((_%tl140427140541%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140429140536%_)))
                                                         (_%hd140428140539%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140429140536%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140427140541%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140424140533%_))
                     (let ((_%e140432140544%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140424140533%_))))
                       (let ((_%tl140430140549%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140432140544%_)))
                             (_%hd140431140547%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140432140544%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140430140549%_))
                             (_%__kont145008145009%_
                              _%hd140431140547%_
                              _%hd140428140539%_)
                             (let ()
                               (declare (not safe))
                               (_%g140420140445%_)))))
                     (let () (declare (not safe)) (_%g140420140445%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140424140533%_))
                     (let ((_%e140440140458%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140424140533%_))))
                       (let ((_%tl140438140463%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140440140458%_)))
                             (_%hd140439140461%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140440140458%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140438140463%_))
                             (_%__kont145010145011%_
                              _%hd140439140461%_
                              _%hd140425140531%_)
                             (let ()
                               (declare (not safe))
                               (_%g140420140445%_)))))
                     (let () (declare (not safe)) (_%g140420140445%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140424140533%_))
                                                     (let ((_%e140440140458%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140424140533%_))))
                                                       (let ((_%tl140438140463%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140440140458%_)))
                     (_%hd140439140461%_
                      (let () (declare (not safe)) (##car _%e140440140458%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140438140463%_))
                     (_%__kont145010145011%_
                      _%hd140439140461%_
                      _%hd140425140531%_)
                     (let () (declare (not safe)) (_%g140420140445%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140420140445%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g140420140445%_)))))))
                              (_%__kont145054145055%_
                               (lambda ()
                                 (let* ((_%body140384%_
                                         (if _%compiled-body?140272%_
                                             _%body140356%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self140270%_
                                                _%body140356%_))))
                                        (_%body140386%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-post140277%_
                                            _%post140363%_
                                            _%body140384%_)))
                                        (_%body140388%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-check140276%_
                                            _%check140362%_
                                            _%body140386%_))))
                                   (cons 'letrec
                                         (cons (reverse _%bind140361%_)
                                               (cons _%body140388%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx145050145051%_))
                              (let ((_%e140372140396%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx145050145051%_))))
                                (let ((_%tl140370140401%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140372140396%_)))
                                      (_%hd140371140399%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140372140396%_))))
                                  (_%__kont145052145053%_
                                   _%tl140370140401%_
                                   _%hd140371140399%_)))
                              (_%__kont145054145055%_)))))))
                 (_%generate-values-check140276%_
                  (lambda (_%check140352%_ _%body140353%_)
                    (cons 'begin
                          (let ((__tmp145855 (cons _%body140353%_ '()))
                                (__tmp145854 (reverse _%check140352%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145855 __tmp145854)))))
                 (_%generate-values-post140277%_
                  (lambda (_%post140345%_ _%body140346%_)
                    (cons 'begin
                          (let ((__tmp145859 (cons _%body140346%_ '()))
                                (__tmp145856
                                 (let ((__tmp145858
                                        (lambda (_%g140347140349%_)
                                          (cons 'set! _%g140347140349%_)))
                                       (__tmp145857 (reverse _%post140345%_)))
                                   (declare (not safe))
                                   (##map __tmp145858 __tmp145857))))
                            (declare (not safe))
                            (__foldr1 cons __tmp145859 __tmp145856))))))
          (let* ((_%g140279140296%_
                  (lambda (_%g140280140293%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140280140293%_))))
                 (_%g140278140342%_
                  (lambda (_%g140280140299%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140280140299%_))
                        (let ((_%e140285140301%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140280140299%_))))
                          (let ((_%hd140284140304%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140285140301%_)))
                                (_%tl140283140306%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140285140301%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140283140306%_))
                                (let ((_%e140288140309%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140283140306%_))))
                                  (let ((_%hd140287140312%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140288140309%_)))
                                        (_%tl140286140314%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140288140309%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140286140314%_))
                                        (let ((_%e140291140317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140286140314%_))))
                                          (let ((_%hd140290140320%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140291140317%_)))
                                                (_%tl140289140322%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140291140317%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140289140322%_))
                                                ((lambda (_%L140325%_
                                                          _%L140326%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L140326%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-simple140274%_
                                                          _%L140326%_
                                                          _%L140325%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values140275%_
                                                          _%L140326%_
                                                          _%L140325%_))))
                                                 _%hd140290140320%_
                                                 _%hd140287140312%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g140279140296%_
                                                   _%g140280140299%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140279140296%_
                                           _%g140280140299%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g140279140296%_ _%g140280140299%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g140279140296%_ _%g140280140299%_))))))
            (declare (not safe))
            (_%g140278140342%_ _%stx140271%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self140582%_ _%stx140583%_)
        (let ((_%compiled-body?140585%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _%self140582%_
           _%stx140583%_
           _%compiled-body?140585%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g145861_
        (let ((_g145860_ (let () (declare (not safe)) (##length _g145861_))))
          (cond ((let () (declare (not safe)) (##fx= _g145860_ 2))
                 (apply (lambda (_%self140582%_ _%stx140583%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _%self140582%_
                             _%stx140583%_)))
                        _g145861_))
                ((let () (declare (not safe)) (##fx= _g145860_ 3))
                 (apply (lambda (_%self140587%_
                                 _%stx140588%_
                                 _%compiled-body?140589%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _%self140587%_
                             _%stx140588%_
                             _%compiled-body?140589%_)))
                        _g145861_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g145861_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self139851%_ _%stx139852%_)
        (letrec ((_%generate-values139854%_
                  (lambda (_%hd140097%_ _%body140098%_)
                    (let _%lp140100%_ ((_%rest140102%_ _%hd140097%_)
                                       (_%bind140103%_ '()))
                      (let* ((_%rest140104140112%_ _%rest140102%_)
                             (_%else140106140123%_
                              (lambda ()
                                (let ((_%bind140120%_ (reverse _%bind140103%_))
                                      (_%body140121%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self139851%_
                                          _%body140098%_))))
                                  (cons 'letrec*
                                        (cons _%bind140120%_
                                              (cons _%body140121%_ '()))))))
                             (_%K140108140257%_
                              (lambda (_%rest140126%_ _%hd-bind140127%_)
                                (let* ((_%__stx145064145065%_
                                        _%hd-bind140127%_)
                                       (_%g140130140155%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx145064145065%_)))))
                                  (let ((_%__kont145066145067%_
                                         (lambda (_%L140236%_ _%L140237%_)
                                           (let ((_%eid140251%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L140237%_)))
                                                 (_%expr140252%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self139851%_
                                                     _%L140236%_))))
                                             (let ((__tmp145862
                                                    (cons (cons _%eid140251%_
                                                                (cons _%expr140252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind140103%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp140100%_
                                                _%rest140126%_
                                                __tmp145862)))))
                                        (_%__kont145068145069%_
                                         (lambda (_%L140176%_ _%L140177%_)
                                           (let* ((_%vals140196%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp140198%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values140200%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _%tmp140198%_
                                                      _%L140177%_
                                                      _%L140176%_)))
                                                  (_%refs140202%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _%vals140196%_
                                                      _%L140177%_)))
                                                  (_%expr140204%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139851%_
                                                      _%L140176%_)))
                                                  (__tmp145863
                                                   (let ((__tmp145864
                                                          (cons (cons _%vals140196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons 'let
                                          (cons (cons (cons _%tmp140198%_
                                                            (cons _%expr140204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%check-values140200%_
                                                      (cons _%tmp140198%_
                                                            '()))))
                                    '()))
                        _%bind140103%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldl1
                                                      cons
                                                      __tmp145864
                                                      _%refs140202%_))))
                                             (declare (not safe))
                                             (_%lp140100%_
                                              _%rest140126%_
                                              __tmp145863)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx145064145065%_))
                                        (let ((_%e140136140212%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx145064145065%_))))
                                          (let ((_%tl140134140217%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140136140212%_)))
                                                (_%hd140135140215%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140136140212%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd140135140215%_))
                                                (let ((_%e140139140220%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd140135140215%_))))
                                                  (let ((_%tl140137140225%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140139140220%_)))
                                                        (_%hd140138140223%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140139140220%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140137140225%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl140134140217%_))
                                                            (let ((_%e140142140228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl140134140217%_))))
                      (let ((_%tl140140140233%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140142140228%_)))
                            (_%hd140141140231%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140142140228%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl140140140233%_))
                            (_%__kont145066145067%_
                             _%hd140141140231%_
                             _%hd140138140223%_)
                            (let ()
                              (declare (not safe))
                              (_%g140130140155%_)))))
                    (let () (declare (not safe)) (_%g140130140155%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl140134140217%_))
                    (let ((_%e140150140168%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl140134140217%_))))
                      (let ((_%tl140148140173%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140150140168%_)))
                            (_%hd140149140171%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140150140168%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl140148140173%_))
                            (_%__kont145068145069%_
                             _%hd140149140171%_
                             _%hd140135140215%_)
                            (let ()
                              (declare (not safe))
                              (_%g140130140155%_)))))
                    (let () (declare (not safe)) (_%g140130140155%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl140134140217%_))
                                                    (let ((_%e140150140168%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl140134140217%_))))
                                                      (let ((_%tl140148140173%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e140150140168%_)))
                    (_%hd140149140171%_
                     (let () (declare (not safe)) (##car _%e140150140168%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl140148140173%_))
                    (_%__kont145068145069%_
                     _%hd140149140171%_
                     _%hd140135140215%_)
                    (let () (declare (not safe)) (_%g140130140155%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g140130140155%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140130140155%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140104140112%_))
                            (let ((_%hd140109140260%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140104140112%_)))
                                  (_%tl140110140262%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140104140112%_))))
                              (let* ((_%hd-bind140265%_ _%hd140109140260%_)
                                     (_%rest140267%_ _%tl140110140262%_))
                                (declare (not safe))
                                (_%K140108140257%_
                                 _%rest140267%_
                                 _%hd-bind140265%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140106140123%_)))))))
                 (_%generate-letrec?139855%_
                  (lambda (_%hd139987%_)
                    (let _%lp139989%_ ((_%rest139991%_ _%hd139987%_))
                      (let* ((_%rest139992140000%_ _%rest139991%_)
                             (_%else139994140008%_ (lambda () '#t))
                             (_%K139996140085%_
                              (lambda (_%rest140011%_ _%hd-bind140012%_)
                                (let* ((_%g140014140031%_
                                        (lambda (_%g140015140028%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g140015140028%_))))
                                       (_%g140013140082%_
                                        (lambda (_%g140015140034%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g140015140034%_))
                                              (let ((_%e140020140036%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g140015140034%_))))
                                                (let ((_%hd140019140039%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140020140036%_)))
                                                      (_%tl140018140041%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140020140036%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd140019140039%_))
                                                      (let ((_%e140023140044%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd140019140039%_))))
                (let ((_%hd140022140047%_
                       (let () (declare (not safe)) (##car _%e140023140044%_)))
                      (_%tl140021140049%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e140023140044%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl140021140049%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl140018140041%_))
                          (let ((_%e140026140052%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl140018140041%_))))
                            (let ((_%hd140025140055%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140026140052%_)))
                                  (_%tl140024140057%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140026140052%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl140024140057%_))
                                  ((lambda (_%L140060%_ _%L140061%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_%is-lambda-expr?139856%_
                                            _%L140060%_))
                                         (let ()
                                           (declare (not safe))
                                           (_%lp139989%_ _%rest140011%_))
                                         '#f))
                                   _%hd140025140055%_
                                   _%hd140022140047%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g140014140031%_ _%g140015140034%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g140014140031%_ _%g140015140034%_)))
                      (let ()
                        (declare (not safe))
                        (_%g140014140031%_ _%g140015140034%_)))))
              (let ()
                (declare (not safe))
                (_%g140014140031%_ _%g140015140034%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g140014140031%_
                                                 _%g140015140034%_))))))
                                  (declare (not safe))
                                  (_%g140013140082%_ _%hd-bind140012%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139992140000%_))
                            (let ((_%hd139997140088%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139992140000%_)))
                                  (_%tl139998140090%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139992140000%_))))
                              (let* ((_%hd-bind140093%_ _%hd139997140088%_)
                                     (_%rest140095%_ _%tl139998140090%_))
                                (declare (not safe))
                                (_%K139996140085%_
                                 _%rest140095%_
                                 _%hd-bind140093%_)))
                            (let ()
                              (declare (not safe))
                              (_%else139994140008%_)))))))
                 (_%is-lambda-expr?139856%_
                  (lambda (_%expr139924%_)
                    (let* ((_%__stx145108145109%_ _%expr139924%_)
                           (_%g139927139941%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx145108145109%_)))))
                      (let ((_%__kont145110145111%_
                             (lambda (_%L139969%_ _%L139970%_) '#t))
                            (_%__kont145112145113%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx145108145109%_))
                            (let ((_%e139933139953%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx145108145109%_))))
                              (let ((_%tl139931139958%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e139933139953%_)))
                                    (_%hd139932139956%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e139933139953%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd139932139956%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd139932139956%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl139931139958%_))
                                            (let ((_%e139936139961%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl139931139958%_))))
                                              (let ((_%tl139934139966%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e139936139961%_)))
                                                    (_%hd139935139964%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e139936139961%_))))
                                                (_%__kont145110145111%_
                                                 _%tl139934139966%_
                                                 _%hd139935139964%_)))
                                            (_%__kont145112145113%_))
                                        (_%__kont145112145113%_))
                                    (_%__kont145112145113%_))))
                            (_%__kont145112145113%_)))))))
          (let* ((_%g139858139875%_
                  (lambda (_%g139859139872%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139859139872%_))))
                 (_%g139857139921%_
                  (lambda (_%g139859139878%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139859139878%_))
                        (let ((_%e139864139880%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139859139878%_))))
                          (let ((_%hd139863139883%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139864139880%_)))
                                (_%tl139862139885%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139864139880%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139862139885%_))
                                (let ((_%e139867139888%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139862139885%_))))
                                  (let ((_%hd139866139891%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139867139888%_)))
                                        (_%tl139865139893%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139867139888%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139865139893%_))
                                        (let ((_%e139870139896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139865139893%_))))
                                          (let ((_%hd139869139899%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139870139896%_)))
                                                (_%tl139868139901%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139870139896%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139868139901%_))
                                                ((lambda (_%L139904%_
                                                          _%L139905%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L139905%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-letrec?139855%_
                                                              _%L139905%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _%self139851%_
                                                              'letrec
                                                              _%L139905%_
                                                              _%L139904%_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _%self139851%_
                                                              'letrec*
                                                              _%L139905%_
                                                              _%L139904%_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values139854%_
                                                          _%L139905%_
                                                          _%L139904%_))))
                                                 _%hd139869139899%_
                                                 _%hd139866139891%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g139858139875%_
                                                   _%g139859139878%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139858139875%_
                                           _%g139859139878%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139858139875%_ _%g139859139878%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139858139875%_ _%g139859139878%_))))))
            (declare (not safe))
            (_%g139857139921%_ _%stx139852%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd139788%_)
        (let _%lp139790%_ ((_%rest139792%_ _%hd139788%_))
          (let* ((_%rest139793139809%_ _%rest139792%_)
                 (_%else139796139817%_ (lambda () '#f)))
            (let ((_%K139799139830%_
                   (lambda (_%rest139828%_)
                     (let ()
                       (declare (not safe))
                       (_%lp139790%_ _%rest139828%_))))
                  (_%K139798139822%_ (lambda () '#t)))
              (let ((_%try-match139795139825%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest139793139809%_))
                           (let () (declare (not safe)) (_%K139798139822%_))
                           (let ()
                             (declare (not safe))
                             (_%else139796139817%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest139793139809%_))
                    (let ((_%tl139801139835%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest139793139809%_)))
                          (_%hd139800139833%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest139793139809%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd139800139833%_))
                          (let ((_%tl139803139840%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd139800139833%_)))
                                (_%hd139802139838%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd139800139833%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139802139838%_))
                                (let ((_%tl139807139843%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139802139838%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl139807139843%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl139803139840%_))
                                          (let ((_%tl139805139846%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl139803139840%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl139805139846%_))
                                                (let ((_%rest139849%_
                                                       _%tl139801139835%_))
                                                  (declare (not safe))
                                                  (_%lp139790%_
                                                   _%rest139849%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else139796139817%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else139796139817%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else139796139817%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%else139796139817%_))))
                          (let ()
                            (declare (not safe))
                            (_%else139796139817%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match139795139825%_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self139699%_
               _%form139700%_
               _%hd139701%_
               _%body139702%_
               _%compiled-body?139703%_)
        (letrec ((_%generate1139705%_
                  (lambda (_%bind139744%_)
                    (let* ((_%bind139745139756%_ _%bind139744%_)
                           (_%E139747139760%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind139745139756%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K139748139766%_
                            (lambda (_%expr139763%_ _%id139764%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id139764%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self139699%_
                                             _%expr139763%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind139745139756%_))
                          (let ((_%hd139749139769%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind139745139756%_)))
                                (_%tl139750139771%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind139745139756%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139749139769%_))
                                (let ((_%hd139753139774%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd139749139769%_)))
                                      (_%tl139754139776%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139749139769%_))))
                                  (let ((_%id139779%_ _%hd139753139774%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl139754139776%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl139750139771%_))
                                            (let ((_%hd139751139781%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl139750139771%_)))
                                                  (_%tl139752139783%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl139750139771%_))))
                                              (let ((_%expr139786%_
                                                     _%hd139751139781%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl139752139783%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%K139748139766%_
                                                       _%expr139786%_
                                                       _%id139779%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E139747139760%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%E139747139760%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E139747139760%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%E139747139760%_))))
                          (let ()
                            (declare (not safe))
                            (_%E139747139760%_)))))))
          (let* ((_%bind139707%_ (map _%generate1139705%_ _%hd139701%_))
                 (_%body139709%_
                  (if _%compiled-body?139703%_
                      _%body139702%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self139699%_ _%body139702%_))))
                 (_%body139741%_
                  (let* ((_%body139710139718%_ _%body139709%_)
                         (_%else139712139726%_
                          (lambda () (cons _%body139709%_ '())))
                         (_%K139714139731%_
                          (lambda (_%exprs139729%_) _%exprs139729%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body139710139718%_))
                        (let ((_%hd139715139734%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body139710139718%_)))
                              (_%tl139716139736%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body139710139718%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd139715139734%_ 'begin))
                              (let ((_%exprs139739%_ _%tl139716139736%_))
                                (declare (not safe))
                                (_%K139714139731%_ _%exprs139739%_))
                              (let ()
                                (declare (not safe))
                                (_%else139712139726%_))))
                        (let ()
                          (declare (not safe))
                          (_%else139712139726%_))))))
            (cons _%form139700%_ (cons _%bind139707%_ _%body139741%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self139599%_ _%stx139600%_)
        (letrec ((_%generate1139602%_
                  (lambda (_%datum139654%_)
                    (if (or (let ()
                              (declare (not safe))
                              (null? _%datum139654%_))
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum139654%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum139654%_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _%datum139654%_)))
                        (let () _%datum139654%_)
                        (if (uninterned-symbol? _%datum139654%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum139654%_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _%datum139654%_))
                                (let ()
                                  (cons (let ((__tmp145865
                                               (car _%datum139654%_)))
                                          (declare (not safe))
                                          (_%generate1139602%_ __tmp145865))
                                        (let ((__tmp145866
                                               (cdr _%datum139654%_)))
                                          (declare (not safe))
                                          (_%generate1139602%_ __tmp145866))))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _%datum139654%_))
                                    (let ()
                                      (box (let ((__tmp145867
                                                  (unbox _%datum139654%_)))
                                             (declare (not safe))
                                             (_%generate1139602%_
                                              __tmp145867))))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _%datum139654%_))
                                        (let ()
                                          (vector-map
                                           _%generate1139602%_
                                           _%datum139654%_))
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (s8vector? _%datum139654%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _%datum139654%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s16vector? _%datum139654%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u16vector? _%datum139654%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s32vector? _%datum139654%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u32vector? _%datum139654%_))
                                                (s64vector? _%datum139654%_)
                                                (u64vector? _%datum139654%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (f32vector? _%datum139654%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (f64vector?
                                                   _%datum139654%_)))
                                            (let () _%datum139654%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx139600%_)))))))))))
          (let* ((_%g139604139617%_
                  (lambda (_%g139605139614%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139605139614%_))))
                 (_%g139603139651%_
                  (lambda (_%g139605139620%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139605139620%_))
                        (let ((_%e139609139622%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139605139620%_))))
                          (let ((_%hd139608139625%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139609139622%_)))
                                (_%tl139607139627%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139609139622%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139607139627%_))
                                (let ((_%e139612139630%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139607139627%_))))
                                  (let ((_%hd139611139633%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139612139630%_)))
                                        (_%tl139610139635%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139612139630%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl139610139635%_))
                                        ((lambda (_%L139638%_)
                                           (cons 'quote
                                                 (cons (let ((__tmp145868
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%L139638%_))))
                 (declare (not safe))
                 (_%generate1139602%_ __tmp145868))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd139611139633%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g139604139617%_
                                           _%g139605139620%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139604139617%_ _%g139605139620%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139604139617%_ _%g139605139620%_))))))
            (declare (not safe))
            (_%g139603139651%_ _%stx139600%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self139040%_ _%stx139041%_)
        (letrec ((_%compile-call139043%_
                  (lambda (_%rator139332%_ _%rands139333%_)
                    (let ((_%rator139339%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self139040%_
                              _%rator139332%_)))
                          (_%rands139340%_
                           (map (lambda (_%g139334139336%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self139040%_
                                     _%g139334139336%_)))
                                _%rands139333%_)))
                      (let* ((_%__stx145155145156%_ _%rator139339%_)
                             (_%g139343139395%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx145155145156%_)))))
                        (let ((_%__kont145157145158%_
                               (lambda (_%L139519%_
                                        _%L139520%_
                                        _%L139521%_
                                        _%L139522%_)
                                 (if (let ((__tmp145871
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands139340%_)))
                                           (__tmp145869
                                            (length (let ((__tmp145870
                                                           (lambda (_%g139558139561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g139559139563%_)
                     (cons _%g139558139561%_ _%g139559139563%_))))
              (declare (not safe))
              (__foldr1 __tmp145870 '() _%L139521%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145871 __tmp145869))
                                     (let* ((_%id139566%_ _%L139522%_)
                                            (_%args139575%_
                                             (let ((__tmp145872
                                                    (lambda (_%g139567139570%_
                                                             _%g139568139572%_)
                                                      (cons _%g139567139570%_
                                                            _%g139568139572%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145872
                                                '()
                                                _%L139521%_)))
                                            (_%body139584%_
                                             (let ((__tmp145873
                                                    (lambda (_%g139576139579%_
                                                             _%g139577139581%_)
                                                      (cons _%g139576139579%_
                                                            _%g139577139581%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145873
                                                '()
                                                _%L139520%_)))
                                            (_%init139586%_
                                             (map list
                                                  _%args139575%_
                                                  _%rands139340%_)))
                                       (cons 'let
                                             (cons _%id139566%_
                                                   (cons _%init139586%_
                                                         _%body139584%_))))
                                     (let ((__tmp145874
                                            (let ((__tmp145875
                                                   (lambda (_%g139588139591%_
                                                            _%g139589139593%_)
                                                     (cons _%g139588139591%_
                                                           _%g139589139593%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145875
                                               '()
                                               _%L139521%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx139041%_
                                        __tmp145874
                                        _%rands139340%_)))))
                              (_%__kont145163145164%_
                               (lambda ()
                                 (cons _%rator139339%_ _%rands139340%_))))
                          (let ((_%__match145222145223%_
                                 (lambda (_%e139351139407%_
                                          _%hd139350139410%_
                                          _%tl139349139412%_
                                          _%e139354139415%_
                                          _%hd139353139418%_
                                          _%tl139352139420%_
                                          _%e139357139423%_
                                          _%hd139356139426%_
                                          _%tl139355139428%_
                                          _%e139360139431%_
                                          _%hd139359139434%_
                                          _%tl139358139436%_
                                          _%e139363139439%_
                                          _%hd139362139442%_
                                          _%tl139361139444%_
                                          _%e139366139447%_
                                          _%hd139365139450%_
                                          _%tl139364139452%_
                                          _%e139369139455%_
                                          _%hd139368139458%_
                                          _%tl139367139460%_
                                          _%__splice145159145160%_
                                          _%target139370139463%_
                                          _%tl139372139465%_)
                                   (letrec ((_%loop139373139468%_
                                             (lambda (_%hd139371139471%_
                                                      _%arg139377139473%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd139371139471%_))
                                                   (let ((_%e139374139476%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd139371139471%_))))
                                                     (let ((_%lp-tl139376139481%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e139374139476%_)))
                                                           (_%lp-hd139375139479%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e139374139476%_))))
                                                       (let ((__tmp145876
                                                              (cons _%lp-hd139375139479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%arg139377139473%_)))
                 (declare (not safe))
                 (_%loop139373139468%_ _%lp-tl139376139481%_ __tmp145876))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%arg139378139484%_
                                                          (reverse _%arg139377139473%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl139367139460%_))
                                                         (let ((_%__splice145161145162%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl139367139460%_ '0))))
                   (let ((_%tl139381139489%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice145161145162%_ '1)))
                         (_%target139379139487%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice145161145162%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl139381139489%_))
                         (letrec ((_%loop139382139492%_
                                   (lambda (_%hd139380139495%_
                                            _%body139386139497%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd139380139495%_))
                                         (let ((_%e139383139500%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd139380139495%_))))
                                           (let ((_%lp-tl139385139505%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e139383139500%_)))
                                                 (_%lp-hd139384139503%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e139383139500%_))))
                                             (let ((__tmp145877
                                                    (cons _%lp-hd139384139503%_
                                                          _%body139386139497%_)))
                                               (declare (not safe))
                                               (_%loop139382139492%_
                                                _%lp-tl139385139505%_
                                                __tmp145877))))
                                         (let ((_%body139387139508%_
                                                (reverse _%body139386139497%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl139361139444%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl139355139428%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl139352139420%_))
                                                       (let ((_%e139390139511%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl139352139420%_))))
                 (let ((_%tl139388139516%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e139390139511%_)))
                       (_%hd139389139514%_
                        (let ()
                          (declare (not safe))
                          (##car _%e139390139511%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl139388139516%_))
                       (let ((_%L139519%_ _%hd139389139514%_)
                             (_%L139520%_ _%body139387139508%_)
                             (_%L139521%_ _%arg139378139484%_)
                             (_%L139522%_ _%hd139359139434%_))
                         (if (eq? _%L139522%_ _%L139519%_)
                             (_%__kont145157145158%_
                              _%L139519%_
                              _%L139520%_
                              _%L139521%_
                              _%L139522%_)
                             (_%__kont145163145164%_)))
                       (_%__kont145163145164%_))))
               (_%__kont145163145164%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont145163145164%_))
                                               (_%__kont145163145164%_)))))))
                           (let ()
                             (declare (not safe))
                             (_%loop139382139492%_
                              _%target139379139487%_
                              '())))
                         (_%__kont145163145164%_))))
                 (_%__kont145163145164%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_%loop139373139468%_
                                        _%target139370139463%_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx145155145156%_))
                                (let ((_%e139351139407%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx145155145156%_))))
                                  (let ((_%tl139349139412%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139351139407%_)))
                                        (_%hd139350139410%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139351139407%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd139350139410%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd139350139410%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl139349139412%_))
                                                (let ((_%e139354139415%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl139349139412%_))))
                                                  (let ((_%tl139352139420%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139354139415%_)))
                                                        (_%hd139353139418%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139354139415%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd139353139418%_))
                                                        (let ((_%e139357139423%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd139353139418%_))))
                  (let ((_%tl139355139428%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e139357139423%_)))
                        (_%hd139356139426%_
                         (let ()
                           (declare (not safe))
                           (##car _%e139357139423%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd139356139426%_))
                        (let ((_%e139360139431%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd139356139426%_))))
                          (let ((_%tl139358139436%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139360139431%_)))
                                (_%hd139359139434%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139360139431%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139358139436%_))
                                (let ((_%e139363139439%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139358139436%_))))
                                  (let ((_%tl139361139444%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139363139439%_)))
                                        (_%hd139362139442%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139363139439%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd139362139442%_))
                                        (let ((_%e139366139447%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd139362139442%_))))
                                          (let ((_%tl139364139452%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139366139447%_)))
                                                (_%hd139365139450%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139366139447%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd139365139450%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd139365139450%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl139364139452%_))
                                                        (let ((_%e139369139455%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl139364139452%_))))
                  (let ((_%tl139367139460%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e139369139455%_)))
                        (_%hd139368139458%_
                         (let ()
                           (declare (not safe))
                           (##car _%e139369139455%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd139368139458%_))
                        (let ((_%__splice145159145160%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd139368139458%_
                                  '0))))
                          (let ((_%tl139372139465%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice145159145160%_ '1)))
                                (_%target139370139463%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice145159145160%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl139372139465%_))
                                (_%__match145222145223%_
                                 _%e139351139407%_
                                 _%hd139350139410%_
                                 _%tl139349139412%_
                                 _%e139354139415%_
                                 _%hd139353139418%_
                                 _%tl139352139420%_
                                 _%e139357139423%_
                                 _%hd139356139426%_
                                 _%tl139355139428%_
                                 _%e139360139431%_
                                 _%hd139359139434%_
                                 _%tl139358139436%_
                                 _%e139363139439%_
                                 _%hd139362139442%_
                                 _%tl139361139444%_
                                 _%e139366139447%_
                                 _%hd139365139450%_
                                 _%tl139364139452%_
                                 _%e139369139455%_
                                 _%hd139368139458%_
                                 _%tl139367139460%_
                                 _%__splice145159145160%_
                                 _%target139370139463%_
                                 _%tl139372139465%_)
                                (_%__kont145163145164%_))))
                        (_%__kont145163145164%_))))
                (_%__kont145163145164%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont145163145164%_))
                                                (_%__kont145163145164%_))))
                                        (_%__kont145163145164%_))))
                                (_%__kont145163145164%_))))
                        (_%__kont145163145164%_))))
                (_%__kont145163145164%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont145163145164%_))
                                            (_%__kont145163145164%_))
                                        (_%__kont145163145164%_))))
                                (_%__kont145163145164%_)))))))))
          (let* ((_%g139045139068%_
                  (lambda (_%g139046139065%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139046139065%_))))
                 (_%g139044139329%_
                  (lambda (_%g139046139071%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139046139071%_))
                        (let ((_%e139051139073%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139046139071%_))))
                          (let ((_%hd139050139076%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139051139073%_)))
                                (_%tl139049139078%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139051139073%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139049139078%_))
                                (let ((_%e139054139081%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139049139078%_))))
                                  (let ((_%hd139053139084%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139054139081%_)))
                                        (_%tl139052139086%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139054139081%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl139052139086%_))
                                        (let ((_g145878_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl139052139086%_
                                                  '0))))
                                          (begin
                                            (let ((_g145879_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g145878_)
                                                         (##vector-length
                                                          _g145878_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g145879_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g145879_)))
                                            (let ((_%target139055139089%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145878_
                                                      0)))
                                                  (_%tl139057139091%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145878_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl139057139091%_))
                                                  (letrec ((_%loop139058139094%_
                                                            (lambda (_%hd139056139097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand139062139099%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd139056139097%_))
                          (let ((_%e139059139102%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd139056139097%_))))
                            (let ((_%lp-hd139060139105%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139059139102%_)))
                                  (_%lp-tl139061139107%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139059139102%_))))
                              (let ((__tmp145880
                                     (cons _%lp-hd139060139105%_
                                           _%rand139062139099%_)))
                                (declare (not safe))
                                (_%loop139058139094%_
                                 _%lp-tl139061139107%_
                                 __tmp145880))))
                          (let ((_%rand139063139110%_
                                 (reverse _%rand139062139099%_)))
                            ((lambda (_%L139113%_ _%L139114%_)
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls-unsafe?))
                                   (let ((__tmp145881
                                          (let ((__tmp145882
                                                 (lambda (_%g139131139134%_
                                                          _%g139132139136%_)
                                                   (cons _%g139131139134%_
                                                         _%g139132139136%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp145882
                                             '()
                                             _%L139113%_))))
                                     (declare (not safe))
                                     (_%compile-call139043%_
                                      _%L139114%_
                                      __tmp145881))
                                   (let* ((_%__stx145271145272%_ _%L139114%_)
                                          (_%g139140139152%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx145271145272%_)))))
                                     (let ((_%__kont145273145274%_
                                            (lambda ()
                                              (let ((_%f139189%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self139040%_
                                                        _%L139114%_))))
                                                (if (and (let ((__tmp145883
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f139189%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp145883))
                 (let ((__tmp145884
                        (let ()
                          (declare (not safe))
                          (##memq _%f139189%_ gxc#checked-primitives))))
                   (declare (not safe))
                   (not __tmp145884)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp139191%_ ((_%rest139194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp145890
                                                (lambda (_%g139311139314%_
                                                         _%g139312139316%_)
                                                  (cons _%g139311139314%_
                                                        _%g139312139316%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp145890
                                            '()
                                            _%L139113%_))))
                               (_%bind139196%_ '())
                               (_%args139197%_ '()))
              (let* ((_%rest139198139206%_ _%rest139194%_)
                     (_%else139200139214%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind139196%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f139189%_
                                                      _%args139197%_)
                                                '()))))))
                     (_%K139202139300%_
                      (lambda (_%rest139217%_ _%e139218%_)
                        (let* ((_%__stx145225145226%_ _%e139218%_)
                               (_%g139223139241%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx145225145226%_)))))
                          (let ((_%__kont145227145228%_
                                 (lambda ()
                                   (let ((__tmp145885
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e139218%_))
                                                _%args139197%_)))
                                     (declare (not safe))
                                     (_%lp139191%_
                                      _%rest139217%_
                                      _%bind139196%_
                                      __tmp145885))))
                                (_%__kont145229145230%_
                                 (lambda ()
                                   (let ((__tmp145886
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e139218%_))
                                                _%args139197%_)))
                                     (declare (not safe))
                                     (_%lp139191%_
                                      _%rest139217%_
                                      _%bind139196%_
                                      __tmp145886))))
                                (_%__kont145231145232%_
                                 (lambda ()
                                   (let ((_%tmp139248%_
                                          (let ((__tmp145887
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp145887))))
                                     (let ((__tmp145889
                                            (cons (cons _%tmp139248%_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _%e139218%_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind139196%_))
                                           (__tmp145888
                                            (cons _%tmp139248%_
                                                  _%args139197%_)))
                                       (declare (not safe))
                                       (_%lp139191%_
                                        _%rest139217%_
                                        __tmp145889
                                        __tmp145888))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx145225145226%_))
                                (let ((_%e139227139279%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx145225145226%_))))
                                  (let ((_%tl139225139284%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139227139279%_)))
                                        (_%hd139226139282%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139227139279%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd139226139282%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd139226139282%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl139225139284%_))
                                                (let ((_%e139230139287%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl139225139284%_))))
                                                  (let ((_%tl139228139292%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139230139287%_)))
                                                        (_%hd139229139290%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139230139287%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139228139292%_))
                                                        (_%__kont145227145228%_)
                                                        (_%__kont145231145232%_))))
                                                (_%__kont145231145232%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd139226139282%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl139225139284%_))
                                                    (let ((_%e139236139264%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl139225139284%_))))
                                                      (let ((_%tl139234139269%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e139236139264%_)))
                    (_%hd139235139267%_
                     (let () (declare (not safe)) (##car _%e139236139264%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl139234139269%_))
                    (_%__kont145229145230%_)
                    (_%__kont145231145232%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont145231145232%_))
                                                (_%__kont145231145232%_)))
                                        (_%__kont145231145232%_))))
                                (_%__kont145231145232%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest139198139206%_))
                    (let ((_%hd139203139303%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest139198139206%_)))
                          (_%tl139204139305%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest139198139206%_))))
                      (let* ((_%e139308%_ _%hd139203139303%_)
                             (_%rest139310%_ _%tl139204139305%_))
                        (declare (not safe))
                        (_%K139202139300%_ _%rest139310%_ _%e139308%_)))
                    (let () (declare (not safe)) (_%else139200139214%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp145891
                                                           (let ((__tmp145892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g139318139321%_ _%g139319139323%_)
                            (cons _%g139318139321%_ _%g139319139323%_))))
                     (declare (not safe))
                     (__foldr1 __tmp145892 '() _%L139113%_))))
              (declare (not safe))
              (_%compile-call139043%_ _%L139114%_ __tmp145891))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont145275145276%_
                                            (lambda ()
                                              (let ((__tmp145893
                                                     (let ((__tmp145894
                                                            (lambda (_%g139158139161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g139159139163%_)
                      (cons _%g139158139161%_ _%g139159139163%_))))
               (declare (not safe))
               (__foldr1 __tmp145894 '() _%L139113%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%compile-call139043%_
                                                 _%L139114%_
                                                 __tmp145893)))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx145271145272%_))
                                           (let ((_%e139144139171%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx145271145272%_))))
                                             (let ((_%tl139142139176%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e139144139171%_)))
                                                   (_%hd139143139174%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e139144139171%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd139143139174%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd139143139174%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl139142139176%_))
                                                           (let ((_%e139147139179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl139142139176%_))))
                     (let ((_%tl139145139184%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e139147139179%_)))
                           (_%hd139146139182%_
                            (let ()
                              (declare (not safe))
                              (##car _%e139147139179%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl139145139184%_))
                           (_%__kont145273145274%_)
                           (_%__kont145275145276%_))))
                   (_%__kont145275145276%_))
               (_%__kont145275145276%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont145275145276%_))))
                                           (_%__kont145275145276%_))))))
                             _%rand139063139110%_
                             _%hd139053139084%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%loop139058139094%_
                                                       _%target139055139089%_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g139045139068%_
                                                     _%g139046139071%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139045139068%_
                                           _%g139046139071%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139045139068%_ _%g139046139071%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139045139068%_ _%g139046139071%_))))))
            (declare (not safe))
            (_%g139044139329%_ _%stx139041%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self138783%_ _%stx138784%_)
        (let* ((_%__stx145343145344%_ _%stx138784%_)
               (_%g138787138816%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx145343145344%_)))))
          (let ((_%__kont145345145346%_
                 (lambda (_%L138884%_ _%L138885%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call%
                          _%self138783%_
                          _%stx138784%_))
                       (let ((_%f138907%_
                              (let ((__tmp145895
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L138885%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self138783%_
                                 __tmp145895))))
                         (let _%lp138909%_ ((_%rest138912%_
                                             (reverse (let ((__tmp145901
                                                             (lambda (_%g139029139032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g139030139034%_)
                       (cons _%g139029139032%_ _%g139030139034%_))))
                (declare (not safe))
                (__foldr1 __tmp145901 '() _%L138884%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind138914%_ '())
                                            (_%args138915%_ '()))
                           (let* ((_%rest138916138924%_ _%rest138912%_)
                                  (_%else138918138932%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind138914%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f138907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args138915%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K138920139018%_
                                   (lambda (_%rest138935%_ _%e138936%_)
                                     (let* ((_%__stx145297145298%_ _%e138936%_)
                                            (_%g138941138959%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx145297145298%_)))))
                                       (let ((_%__kont145299145300%_
                                              (lambda ()
                                                (let ((__tmp145896
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__0 _%e138936%_))
                     _%args138915%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_%lp138909%_
                                                   _%rest138935%_
                                                   _%bind138914%_
                                                   __tmp145896))))
                                             (_%__kont145301145302%_
                                              (lambda ()
                                                (let ((__tmp145897
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__0 _%e138936%_))
                     _%args138915%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_%lp138909%_
                                                   _%rest138935%_
                                                   _%bind138914%_
                                                   __tmp145897))))
                                             (_%__kont145303145304%_
                                              (lambda ()
                                                (let ((_%tmp138966%_
                                                       (let ((__tmp145898
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp145898))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp145900
                                                         (cons (cons _%tmp138966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__0 _%e138936%_))
                                   '()))
                       _%bind138914%_))
                (__tmp145899 (cons _%tmp138966%_ _%args138915%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%lp138909%_
                                                     _%rest138935%_
                                                     __tmp145900
                                                     __tmp145899))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx145297145298%_))
                                             (let ((_%e138945138997%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx145297145298%_))))
                                               (let ((_%tl138943139002%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e138945138997%_)))
                                                     (_%hd138944139000%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e138945138997%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd138944139000%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd138944139000%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl138943139002%_))
                     (let ((_%e138948139005%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl138943139002%_))))
                       (let ((_%tl138946139010%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e138948139005%_)))
                             (_%hd138947139008%_
                              (let ()
                                (declare (not safe))
                                (##car _%e138948139005%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl138946139010%_))
                             (_%__kont145299145300%_)
                             (_%__kont145303145304%_))))
                     (_%__kont145303145304%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd138944139000%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl138943139002%_))
                         (let ((_%e138954138982%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl138943139002%_))))
                           (let ((_%tl138952138987%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e138954138982%_)))
                                 (_%hd138953138985%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e138954138982%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl138952138987%_))
                                 (_%__kont145301145302%_)
                                 (_%__kont145303145304%_))))
                         (_%__kont145303145304%_))
                     (_%__kont145303145304%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145303145304%_))))
                                             (_%__kont145303145304%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest138916138924%_))
                                 (let ((_%hd138921139021%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest138916138924%_)))
                                       (_%tl138922139023%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest138916138924%_))))
                                   (let* ((_%e139026%_ _%hd138921139021%_)
                                          (_%rest139028%_ _%tl138922139023%_))
                                     (declare (not safe))
                                     (_%K138920139018%_
                                      _%rest139028%_
                                      _%e139026%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%else138918138932%_)))))))))
                (_%__kont145349145350%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call%
                      _%self138783%_
                      _%stx138784%_)))))
            (let ((_%__match145388145389%_
                   (lambda (_%e138793138828%_
                            _%hd138792138831%_
                            _%tl138791138833%_
                            _%e138796138836%_
                            _%hd138795138839%_
                            _%tl138794138841%_
                            _%e138799138844%_
                            _%hd138798138847%_
                            _%tl138797138849%_
                            _%e138802138852%_
                            _%hd138801138855%_
                            _%tl138800138857%_
                            _%__splice145347145348%_
                            _%target138803138860%_
                            _%tl138805138862%_)
                     (letrec ((_%loop138806138865%_
                               (lambda (_%hd138804138868%_
                                        _%rand138810138870%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd138804138868%_))
                                     (let ((_%e138807138873%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd138804138868%_))))
                                       (let ((_%lp-tl138809138878%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e138807138873%_)))
                                             (_%lp-hd138808138876%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e138807138873%_))))
                                         (let ((__tmp145902
                                                (cons _%lp-hd138808138876%_
                                                      _%rand138810138870%_)))
                                           (declare (not safe))
                                           (_%loop138806138865%_
                                            _%lp-tl138809138878%_
                                            __tmp145902))))
                                     (let ((_%rand138811138881%_
                                            (reverse _%rand138810138870%_)))
                                       (_%__kont145345145346%_
                                        _%rand138811138881%_
                                        _%hd138801138855%_))))))
                       (let ()
                         (declare (not safe))
                         (_%loop138806138865%_ _%target138803138860%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx145343145344%_))
                  (let ((_%e138793138828%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx145343145344%_))))
                    (let ((_%tl138791138833%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e138793138828%_)))
                          (_%hd138792138831%_
                           (let ()
                             (declare (not safe))
                             (##car _%e138793138828%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl138791138833%_))
                          (let ((_%e138796138836%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl138791138833%_))))
                            (let ((_%tl138794138841%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138796138836%_)))
                                  (_%hd138795138839%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138796138836%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd138795138839%_))
                                  (let ((_%e138799138844%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd138795138839%_))))
                                    (let ((_%tl138797138849%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e138799138844%_)))
                                          (_%hd138798138847%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e138799138844%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd138798138847%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd138798138847%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl138797138849%_))
                                                  (let ((_%e138802138852%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl138797138849%_))))
                                                    (let ((_%tl138800138857%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e138802138852%_)))
                                                          (_%hd138801138855%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e138802138852%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl138800138857%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl138794138841%_))
                      (let ((_%__splice145347145348%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl138794138841%_
                                '0))))
                        (let ((_%tl138805138862%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145347145348%_ '1)))
                              (_%target138803138860%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145347145348%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl138805138862%_))
                              (_%__match145388145389%_
                               _%e138793138828%_
                               _%hd138792138831%_
                               _%tl138791138833%_
                               _%e138796138836%_
                               _%hd138795138839%_
                               _%tl138794138841%_
                               _%e138799138844%_
                               _%hd138798138847%_
                               _%tl138797138849%_
                               _%e138802138852%_
                               _%hd138801138855%_
                               _%tl138800138857%_
                               _%__splice145347145348%_
                               _%target138803138860%_
                               _%tl138805138862%_)
                              (_%__kont145349145350%_))))
                      (_%__kont145349145350%_))
                  (_%__kont145349145350%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145349145350%_))
                                              (_%__kont145349145350%_))
                                          (_%__kont145349145350%_))))
                                  (_%__kont145349145350%_))))
                          (_%__kont145349145350%_))))
                  (_%__kont145349145350%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self138595%_ _%stx138596%_)
        (letrec ((_%simplify138598%_
                  (lambda (_%code138683%_)
                    (let* ((_%code138684138702%_ _%code138683%_)
                           (_%else138686138710%_ (lambda () _%code138683%_))
                           (_%K138688138746%_
                            (lambda (_%expr138713%_ _%test138714%_)
                              (let* ((_%expr138715138723%_ _%expr138713%_)
                                     (_%else138717138731%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test138714%_
                                                    (cons _%expr138713%_
                                                          '())))))
                                     (_%K138719138736%_
                                      (lambda (_%exprs138734%_)
                                        (cons 'and
                                              (cons _%test138714%_
                                                    _%exprs138734%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr138715138723%_))
                                    (let ((_%hd138720138739%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr138715138723%_)))
                                          (_%tl138721138741%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr138715138723%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd138720138739%_ 'and))
                                          (let ((_%exprs138744%_
                                                 _%tl138721138741%_))
                                            (declare (not safe))
                                            (_%K138719138736%_
                                             _%exprs138744%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else138717138731%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else138717138731%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code138684138702%_))
                          (let ((_%hd138689138749%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code138684138702%_)))
                                (_%tl138690138751%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code138684138702%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd138689138749%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl138690138751%_))
                                    (let ((_%hd138691138754%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl138690138751%_)))
                                          (_%tl138692138756%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl138690138751%_))))
                                      (let ((_%test138759%_
                                             _%hd138691138754%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl138692138756%_))
                                            (let ((_%hd138693138761%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl138692138756%_)))
                                                  (_%tl138694138763%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl138692138756%_))))
                                              (let ((_%expr138766%_
                                                     _%hd138693138761%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl138694138763%_))
                                                    (let ((_%hd138695138768%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl138694138763%_)))
                                                          (_%tl138696138770%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl138694138763%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd138695138768%_))
                                                          (let ((_%hd138697138773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd138695138768%_)))
                        (_%tl138698138775%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd138695138768%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd138697138773%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl138698138775%_))
                            (let ((_%hd138699138778%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl138698138775%_)))
                                  (_%tl138700138780%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl138698138775%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd138699138778%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl138700138780%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl138696138770%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%K138688138746%_
                                             _%expr138766%_
                                             _%test138759%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else138686138710%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else138686138710%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else138686138710%_))))
                            (let ()
                              (declare (not safe))
                              (_%else138686138710%_)))
                        (let () (declare (not safe)) (_%else138686138710%_))))
                  (let () (declare (not safe)) (_%else138686138710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else138686138710%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%else138686138710%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else138686138710%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else138686138710%_))))
                          (let ()
                            (declare (not safe))
                            (_%else138686138710%_)))))))
          (let* ((_%g138600138621%_
                  (lambda (_%g138601138618%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138601138618%_))))
                 (_%g138599138680%_
                  (lambda (_%g138601138624%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138601138624%_))
                        (let ((_%e138607138626%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138601138624%_))))
                          (let ((_%hd138606138629%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138607138626%_)))
                                (_%tl138605138631%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138607138626%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138605138631%_))
                                (let ((_%e138610138634%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138605138631%_))))
                                  (let ((_%hd138609138637%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138610138634%_)))
                                        (_%tl138608138639%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138610138634%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl138608138639%_))
                                        (let ((_%e138613138642%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl138608138639%_))))
                                          (let ((_%hd138612138645%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138613138642%_)))
                                                (_%tl138611138647%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138613138642%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138611138647%_))
                                                (let ((_%e138616138650%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138611138647%_))))
                                                  (let ((_%hd138615138653%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138616138650%_)))
                                                        (_%tl138614138655%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138616138650%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl138614138655%_))
                                                        ((lambda (_%L138658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L138659%_
                          _%L138660%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (let ((__tmp145903
                              (cons 'if
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self138595%_
                                             _%L138660%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self138595%_
                                                   _%L138659%_))
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self138595%_
                                                         _%L138658%_))
                                                      '()))))))
                         (declare (not safe))
                         (_%simplify138598%_ __tmp145903))
                       (cons 'if
                             (cons (let ((__tmp145904
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self138595%_
                                               _%L138660%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp145904
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self138595%_
                                            _%L138659%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self138595%_
                                                  _%L138658%_))
                                               '()))))))
                 _%hd138615138653%_
                 _%hd138612138645%_
                 _%hd138609138637%_)
                (let ()
                  (declare (not safe))
                  (_%g138600138621%_ _%g138601138624%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g138600138621%_
                                                   _%g138601138624%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g138600138621%_
                                           _%g138601138624%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g138600138621%_ _%g138601138624%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g138600138621%_ _%g138601138624%_))))))
            (declare (not safe))
            (_%g138599138680%_ _%stx138596%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self138543%_ _%stx138544%_)
        (let* ((_%g138546138559%_
                (lambda (_%g138547138556%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138547138556%_))))
               (_%g138545138592%_
                (lambda (_%g138547138562%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138547138562%_))
                      (let ((_%e138551138564%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138547138562%_))))
                        (let ((_%hd138550138567%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138551138564%_)))
                              (_%tl138549138569%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138551138564%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138549138569%_))
                              (let ((_%e138554138572%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138549138569%_))))
                                (let ((_%hd138553138575%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138554138572%_)))
                                      (_%tl138552138577%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138554138572%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl138552138577%_))
                                      ((lambda (_%L138580%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L138580%_)))
                                       _%hd138553138575%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g138546138559%_
                                         _%g138547138562%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138546138559%_ _%g138547138562%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138546138559%_ _%g138547138562%_))))))
          (declare (not safe))
          (_%g138545138592%_ _%stx138544%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self138475%_ _%stx138476%_)
        (let* ((_%g138478138495%_
                (lambda (_%g138479138492%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138479138492%_))))
               (_%g138477138540%_
                (lambda (_%g138479138498%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138479138498%_))
                      (let ((_%e138484138500%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138479138498%_))))
                        (let ((_%hd138483138503%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138484138500%_)))
                              (_%tl138482138505%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138484138500%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138482138505%_))
                              (let ((_%e138487138508%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138482138505%_))))
                                (let ((_%hd138486138511%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138487138508%_)))
                                      (_%tl138485138513%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138487138508%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138485138513%_))
                                      (let ((_%e138490138516%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138485138513%_))))
                                        (let ((_%hd138489138519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138490138516%_)))
                                              (_%tl138488138521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138490138516%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138488138521%_))
                                              ((lambda (_%L138524%_
                                                        _%L138525%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L138525%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self138475%_ _%L138524%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138489138519%_
                                               _%hd138486138511%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g138478138495%_
                                                 _%g138479138498%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g138478138495%_
                                         _%g138479138498%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138478138495%_ _%g138479138498%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138478138495%_ _%g138479138498%_))))))
          (declare (not safe))
          (_%g138477138540%_ _%stx138476%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self138286%_ _%stx138287%_)
        (let* ((_%g138289138306%_
                (lambda (_%g138290138303%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138290138303%_))))
               (_%g138288138472%_
                (lambda (_%g138290138309%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138290138309%_))
                      (let ((_%e138295138311%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138290138309%_))))
                        (let ((_%hd138294138314%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138295138311%_)))
                              (_%tl138293138316%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138295138311%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138293138316%_))
                              (let ((_%e138298138319%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138293138316%_))))
                                (let ((_%hd138297138322%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138298138319%_)))
                                      (_%tl138296138324%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138298138319%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138296138324%_))
                                      (let ((_%e138301138327%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138296138324%_))))
                                        (let ((_%hd138300138330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138301138327%_)))
                                              (_%tl138299138332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138301138327%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138299138332%_))
                                              ((lambda (_%L138335%_
                                                        _%L138336%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self138286%_ _%L138335%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self138286%_ _%L138336%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp138351%_ ((_%rest138354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L138336%_ (cons _%L138335%_ '())))
                                (_%bind138356%_ '())
                                (_%args138357%_ '()))
               (let* ((_%rest138358138366%_ _%rest138354%_)
                      (_%else138360138374%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind138356%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args138357%_)
                                                 '()))))))
                      (_%K138362138460%_
                       (lambda (_%rest138377%_ _%e138378%_)
                         (let* ((_%__stx145391145392%_ _%e138378%_)
                                (_%g138383138401%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx145391145392%_)))))
                           (let ((_%__kont145393145394%_
                                  (lambda ()
                                    (let ((__tmp145905
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e138378%_))
                                                 _%args138357%_)))
                                      (declare (not safe))
                                      (_%lp138351%_
                                       _%rest138377%_
                                       _%bind138356%_
                                       __tmp145905))))
                                 (_%__kont145395145396%_
                                  (lambda ()
                                    (let ((__tmp145906
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e138378%_))
                                                 _%args138357%_)))
                                      (declare (not safe))
                                      (_%lp138351%_
                                       _%rest138377%_
                                       _%bind138356%_
                                       __tmp145906))))
                                 (_%__kont145397145398%_
                                  (lambda ()
                                    (let ((_%tmp138408%_
                                           (let ((__tmp145907
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145907))))
                                      (let ((__tmp145909
                                             (cons (cons _%tmp138408%_
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#compile-e__0 _%e138378%_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%bind138356%_))
                                            (__tmp145908
                                             (cons _%tmp138408%_
                                                   _%args138357%_)))
                                        (declare (not safe))
                                        (_%lp138351%_
                                         _%rest138377%_
                                         __tmp145909
                                         __tmp145908))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx145391145392%_))
                                 (let ((_%e138387138439%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx145391145392%_))))
                                   (let ((_%tl138385138444%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e138387138439%_)))
                                         (_%hd138386138442%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e138387138439%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd138386138442%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd138386138442%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl138385138444%_))
                                                 (let ((_%e138390138447%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl138385138444%_))))
                                                   (let ((_%tl138388138452%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e138390138447%_)))
                                                         (_%hd138389138450%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e138390138447%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl138388138452%_))
                                                         (_%__kont145393145394%_)
                                                         (_%__kont145397145398%_))))
                                                 (_%__kont145397145398%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd138386138442%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl138385138444%_))
                                                     (let ((_%e138396138424%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl138385138444%_))))
                                                       (let ((_%tl138394138429%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e138396138424%_)))
                     (_%hd138395138427%_
                      (let () (declare (not safe)) (##car _%e138396138424%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl138394138429%_))
                     (_%__kont145395145396%_)
                     (_%__kont145397145398%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145397145398%_))
                                                 (_%__kont145397145398%_)))
                                         (_%__kont145397145398%_))))
                                 (_%__kont145397145398%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest138358138366%_))
                     (let ((_%hd138363138463%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest138358138366%_)))
                           (_%tl138364138465%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest138358138366%_))))
                       (let* ((_%e138468%_ _%hd138363138463%_)
                              (_%rest138470%_ _%tl138364138465%_))
                         (declare (not safe))
                         (_%K138362138460%_ _%rest138470%_ _%e138468%_)))
                     (let () (declare (not safe)) (_%else138360138374%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138300138330%_
                                               _%hd138297138322%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g138289138306%_
                                                 _%g138290138309%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g138289138306%_
                                         _%g138290138309%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138289138306%_ _%g138290138309%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138289138306%_ _%g138290138309%_))))))
          (declare (not safe))
          (_%g138288138472%_ _%stx138287%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self138097%_ _%stx138098%_)
        (let* ((_%g138100138117%_
                (lambda (_%g138101138114%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138101138114%_))))
               (_%g138099138283%_
                (lambda (_%g138101138120%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138101138120%_))
                      (let ((_%e138106138122%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138101138120%_))))
                        (let ((_%hd138105138125%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138106138122%_)))
                              (_%tl138104138127%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138106138122%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138104138127%_))
                              (let ((_%e138109138130%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138104138127%_))))
                                (let ((_%hd138108138133%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138109138130%_)))
                                      (_%tl138107138135%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138109138130%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138107138135%_))
                                      (let ((_%e138112138138%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138107138135%_))))
                                        (let ((_%hd138111138141%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138112138138%_)))
                                              (_%tl138110138143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138112138138%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138110138143%_))
                                              ((lambda (_%L138146%_
                                                        _%L138147%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self138097%_ _%L138146%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self138097%_ _%L138147%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp138162%_ ((_%rest138165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L138147%_ (cons _%L138146%_ '())))
                                (_%bind138167%_ '())
                                (_%args138168%_ '()))
               (let* ((_%rest138169138177%_ _%rest138165%_)
                      (_%else138171138185%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind138167%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args138168%_)
                                                 '()))))))
                      (_%K138173138271%_
                       (lambda (_%rest138188%_ _%e138189%_)
                         (let* ((_%__stx145437145438%_ _%e138189%_)
                                (_%g138194138212%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx145437145438%_)))))
                           (let ((_%__kont145439145440%_
                                  (lambda ()
                                    (let ((__tmp145910
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e138189%_))
                                                 _%args138168%_)))
                                      (declare (not safe))
                                      (_%lp138162%_
                                       _%rest138188%_
                                       _%bind138167%_
                                       __tmp145910))))
                                 (_%__kont145441145442%_
                                  (lambda ()
                                    (let ((__tmp145911
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e138189%_))
                                                 _%args138168%_)))
                                      (declare (not safe))
                                      (_%lp138162%_
                                       _%rest138188%_
                                       _%bind138167%_
                                       __tmp145911))))
                                 (_%__kont145443145444%_
                                  (lambda ()
                                    (let ((_%tmp138219%_
                                           (let ((__tmp145912
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145912))))
                                      (let ((__tmp145914
                                             (cons (cons _%tmp138219%_
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#compile-e__0 _%e138189%_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%bind138167%_))
                                            (__tmp145913
                                             (cons _%tmp138219%_
                                                   _%args138168%_)))
                                        (declare (not safe))
                                        (_%lp138162%_
                                         _%rest138188%_
                                         __tmp145914
                                         __tmp145913))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx145437145438%_))
                                 (let ((_%e138198138250%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx145437145438%_))))
                                   (let ((_%tl138196138255%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e138198138250%_)))
                                         (_%hd138197138253%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e138198138250%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd138197138253%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd138197138253%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl138196138255%_))
                                                 (let ((_%e138201138258%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl138196138255%_))))
                                                   (let ((_%tl138199138263%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e138201138258%_)))
                                                         (_%hd138200138261%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e138201138258%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl138199138263%_))
                                                         (_%__kont145439145440%_)
                                                         (_%__kont145443145444%_))))
                                                 (_%__kont145443145444%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd138197138253%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl138196138255%_))
                                                     (let ((_%e138207138235%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl138196138255%_))))
                                                       (let ((_%tl138205138240%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e138207138235%_)))
                     (_%hd138206138238%_
                      (let () (declare (not safe)) (##car _%e138207138235%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl138205138240%_))
                     (_%__kont145441145442%_)
                     (_%__kont145443145444%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145443145444%_))
                                                 (_%__kont145443145444%_)))
                                         (_%__kont145443145444%_))))
                                 (_%__kont145443145444%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest138169138177%_))
                     (let ((_%hd138174138274%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest138169138177%_)))
                           (_%tl138175138276%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest138169138177%_))))
                       (let* ((_%e138279%_ _%hd138174138274%_)
                              (_%rest138281%_ _%tl138175138276%_))
                         (declare (not safe))
                         (_%K138173138271%_ _%rest138281%_ _%e138279%_)))
                     (let () (declare (not safe)) (_%else138171138185%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138111138141%_
                                               _%hd138108138133%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g138100138117%_
                                                 _%g138101138120%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g138100138117%_
                                         _%g138101138120%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138100138117%_ _%g138101138120%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138100138117%_ _%g138101138120%_))))))
          (declare (not safe))
          (_%g138099138283%_ _%stx138098%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self138013%_ _%stx138014%_)
        (let* ((_%g138016138037%_
                (lambda (_%g138017138034%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138017138034%_))))
               (_%g138015138094%_
                (lambda (_%g138017138040%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138017138040%_))
                      (let ((_%e138023138042%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138017138040%_))))
                        (let ((_%hd138022138045%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138023138042%_)))
                              (_%tl138021138047%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138023138042%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138021138047%_))
                              (let ((_%e138026138050%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138021138047%_))))
                                (let ((_%hd138025138053%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138026138050%_)))
                                      (_%tl138024138055%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138026138050%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138024138055%_))
                                      (let ((_%e138029138058%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138024138055%_))))
                                        (let ((_%hd138028138061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138029138058%_)))
                                              (_%tl138027138063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138029138058%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138027138063%_))
                                              (let ((_%e138032138066%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138027138063%_))))
                                                (let ((_%hd138031138069%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138032138066%_)))
                                                      (_%tl138030138071%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138032138066%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl138030138071%_))
                                                      ((lambda (_%L138074%_
                                                                _%L138075%_
                                                                _%L138076%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self138013%_ _%L138074%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self138013%_
                                      _%L138075%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self138013%_
                                            _%L138076%_))
                                         (cons ''#f '()))))))
               _%hd138031138069%_
               _%hd138028138061%_
               _%hd138025138053%_)
              (let ()
                (declare (not safe))
                (_%g138016138037%_ _%g138017138040%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g138016138037%_
                                                 _%g138017138040%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g138016138037%_
                                         _%g138017138040%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138016138037%_ _%g138017138040%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138016138037%_ _%g138017138040%_))))))
          (declare (not safe))
          (_%g138015138094%_ _%stx138014%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self137913%_ _%stx137914%_)
        (let* ((_%g137916137941%_
                (lambda (_%g137917137938%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137917137938%_))))
               (_%g137915138010%_
                (lambda (_%g137917137944%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137917137944%_))
                      (let ((_%e137924137946%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137917137944%_))))
                        (let ((_%hd137923137949%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137924137946%_)))
                              (_%tl137922137951%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137924137946%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137922137951%_))
                              (let ((_%e137927137954%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137922137951%_))))
                                (let ((_%hd137926137957%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137927137954%_)))
                                      (_%tl137925137959%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137927137954%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137925137959%_))
                                      (let ((_%e137930137962%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137925137959%_))))
                                        (let ((_%hd137929137965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137930137962%_)))
                                              (_%tl137928137967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137930137962%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137928137967%_))
                                              (let ((_%e137933137970%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137928137967%_))))
                                                (let ((_%hd137932137973%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137933137970%_)))
                                                      (_%tl137931137975%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137933137970%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137931137975%_))
                                                      (let ((_%e137936137978%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137931137975%_))))
                (let ((_%hd137935137981%_
                       (let () (declare (not safe)) (##car _%e137936137978%_)))
                      (_%tl137934137983%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137936137978%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137934137983%_))
                      ((lambda (_%L137986%_
                                _%L137987%_
                                _%L137988%_
                                _%L137989%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137913%_
                                        _%L137987%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137913%_
                                              _%L137986%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137913%_
                                                    _%L137988%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137913%_
                                                          _%L137989%_))
                                                       (cons ''#f '())))))))
                       _%hd137935137981%_
                       _%hd137932137973%_
                       _%hd137929137965%_
                       _%hd137926137957%_)
                      (let ()
                        (declare (not safe))
                        (_%g137916137941%_ _%g137917137944%_)))))
              (let ()
                (declare (not safe))
                (_%g137916137941%_ _%g137917137944%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137916137941%_
                                                 _%g137917137944%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137916137941%_
                                         _%g137917137944%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137916137941%_ _%g137917137944%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137916137941%_ _%g137917137944%_))))))
          (declare (not safe))
          (_%g137915138010%_ _%stx137914%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self137829%_ _%stx137830%_)
        (let* ((_%g137832137853%_
                (lambda (_%g137833137850%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137833137850%_))))
               (_%g137831137910%_
                (lambda (_%g137833137856%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137833137856%_))
                      (let ((_%e137839137858%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137833137856%_))))
                        (let ((_%hd137838137861%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137839137858%_)))
                              (_%tl137837137863%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137839137858%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137837137863%_))
                              (let ((_%e137842137866%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137837137863%_))))
                                (let ((_%hd137841137869%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137842137866%_)))
                                      (_%tl137840137871%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137842137866%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137840137871%_))
                                      (let ((_%e137845137874%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137840137871%_))))
                                        (let ((_%hd137844137877%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137845137874%_)))
                                              (_%tl137843137879%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137845137874%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137843137879%_))
                                              (let ((_%e137848137882%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137843137879%_))))
                                                (let ((_%hd137847137885%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137848137882%_)))
                                                      (_%tl137846137887%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137848137882%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137846137887%_))
                                                      ((lambda (_%L137890%_
                                                                _%L137891%_
                                                                _%L137892%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137829%_ _%L137890%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137829%_
                                      _%L137891%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137829%_
                                            _%L137892%_))
                                         (cons ''#f '()))))))
               _%hd137847137885%_
               _%hd137844137877%_
               _%hd137841137869%_)
              (let ()
                (declare (not safe))
                (_%g137832137853%_ _%g137833137856%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137832137853%_
                                                 _%g137833137856%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137832137853%_
                                         _%g137833137856%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137832137853%_ _%g137833137856%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137832137853%_ _%g137833137856%_))))))
          (declare (not safe))
          (_%g137831137910%_ _%stx137830%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self137729%_ _%stx137730%_)
        (let* ((_%g137732137757%_
                (lambda (_%g137733137754%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137733137754%_))))
               (_%g137731137826%_
                (lambda (_%g137733137760%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137733137760%_))
                      (let ((_%e137740137762%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137733137760%_))))
                        (let ((_%hd137739137765%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137740137762%_)))
                              (_%tl137738137767%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137740137762%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137738137767%_))
                              (let ((_%e137743137770%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137738137767%_))))
                                (let ((_%hd137742137773%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137743137770%_)))
                                      (_%tl137741137775%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137743137770%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137741137775%_))
                                      (let ((_%e137746137778%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137741137775%_))))
                                        (let ((_%hd137745137781%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137746137778%_)))
                                              (_%tl137744137783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137746137778%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137744137783%_))
                                              (let ((_%e137749137786%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137744137783%_))))
                                                (let ((_%hd137748137789%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137749137786%_)))
                                                      (_%tl137747137791%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137749137786%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137747137791%_))
                                                      (let ((_%e137752137794%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137747137791%_))))
                (let ((_%hd137751137797%_
                       (let () (declare (not safe)) (##car _%e137752137794%_)))
                      (_%tl137750137799%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137752137794%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137750137799%_))
                      ((lambda (_%L137802%_
                                _%L137803%_
                                _%L137804%_
                                _%L137805%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137729%_
                                        _%L137803%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137729%_
                                              _%L137802%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137729%_
                                                    _%L137804%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137729%_
                                                          _%L137805%_))
                                                       (cons ''#f '())))))))
                       _%hd137751137797%_
                       _%hd137748137789%_
                       _%hd137745137781%_
                       _%hd137742137773%_)
                      (let ()
                        (declare (not safe))
                        (_%g137732137757%_ _%g137733137760%_)))))
              (let ()
                (declare (not safe))
                (_%g137732137757%_ _%g137733137760%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137732137757%_
                                                 _%g137733137760%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137732137757%_
                                         _%g137733137760%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137732137757%_ _%g137733137760%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137732137757%_ _%g137733137760%_))))))
          (declare (not safe))
          (_%g137731137826%_ _%stx137730%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self137524%_ _%stx137525%_)
        (let* ((_%g137527137548%_
                (lambda (_%g137528137545%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137528137545%_))))
               (_%g137526137726%_
                (lambda (_%g137528137551%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137528137551%_))
                      (let ((_%e137534137553%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137528137551%_))))
                        (let ((_%hd137533137556%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137534137553%_)))
                              (_%tl137532137558%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137534137553%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137532137558%_))
                              (let ((_%e137537137561%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137532137558%_))))
                                (let ((_%hd137536137564%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137537137561%_)))
                                      (_%tl137535137566%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137537137561%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137535137566%_))
                                      (let ((_%e137540137569%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137535137566%_))))
                                        (let ((_%hd137539137572%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137540137569%_)))
                                              (_%tl137538137574%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137540137569%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137538137574%_))
                                              (let ((_%e137543137577%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137538137574%_))))
                                                (let ((_%hd137542137580%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137543137577%_)))
                                                      (_%tl137541137582%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137543137577%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137541137582%_))
                                                      ((lambda (_%L137585%_
                                                                _%L137586%_
                                                                _%L137587%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (cons '##unchecked-structure-ref
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self137524%_
                                    _%L137585%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self137524%_
                                          _%L137586%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp137605%_ ((_%rest137608%_
                                         (cons _%L137586%_
                                               (cons _%L137585%_ '())))
                                        (_%bind137610%_ '())
                                        (_%args137611%_ '()))
                       (let* ((_%rest137612137620%_ _%rest137608%_)
                              (_%else137614137628%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind137610%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp145915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp145915 _%args137611%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K137616137714%_
                               (lambda (_%rest137631%_ _%e137632%_)
                                 (let* ((_%__stx145483145484%_ _%e137632%_)
                                        (_%g137637137655%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx145483145484%_)))))
                                   (let ((_%__kont145485145486%_
                                          (lambda ()
                                            (let ((__tmp145916
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137632%_))
                                                         _%args137611%_)))
                                              (declare (not safe))
                                              (_%lp137605%_
                                               _%rest137631%_
                                               _%bind137610%_
                                               __tmp145916))))
                                         (_%__kont145487145488%_
                                          (lambda ()
                                            (let ((__tmp145917
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137632%_))
                                                         _%args137611%_)))
                                              (declare (not safe))
                                              (_%lp137605%_
                                               _%rest137631%_
                                               _%bind137610%_
                                               __tmp145917))))
                                         (_%__kont145489145490%_
                                          (lambda ()
                                            (let ((_%tmp137662%_
                                                   (let ((__tmp145918
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp145918))))
                                              (let ((__tmp145920
                                                     (cons (cons _%tmp137662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__0 _%e137632%_))
                               '()))
                   _%bind137610%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145919
                                                     (cons _%tmp137662%_
                                                           _%args137611%_)))
                                                (declare (not safe))
                                                (_%lp137605%_
                                                 _%rest137631%_
                                                 __tmp145920
                                                 __tmp145919))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx145483145484%_))
                                         (let ((_%e137641137693%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx145483145484%_))))
                                           (let ((_%tl137639137698%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e137641137693%_)))
                                                 (_%hd137640137696%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e137641137693%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd137640137696%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd137640137696%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl137639137698%_))
                                                         (let ((_%e137644137701%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl137639137698%_))))
                   (let ((_%tl137642137706%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e137644137701%_)))
                         (_%hd137643137704%_
                          (let ()
                            (declare (not safe))
                            (##car _%e137644137701%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl137642137706%_))
                         (_%__kont145485145486%_)
                         (_%__kont145489145490%_))))
                 (_%__kont145489145490%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd137640137696%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl137639137698%_))
                     (let ((_%e137650137678%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl137639137698%_))))
                       (let ((_%tl137648137683%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e137650137678%_)))
                             (_%hd137649137681%_
                              (let ()
                                (declare (not safe))
                                (##car _%e137650137678%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl137648137683%_))
                             (_%__kont145487145488%_)
                             (_%__kont145489145490%_))))
                     (_%__kont145489145490%_))
                 (_%__kont145489145490%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145489145490%_))))
                                         (_%__kont145489145490%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest137612137620%_))
                             (let ((_%hd137617137717%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest137612137620%_)))
                                   (_%tl137618137719%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest137612137620%_))))
                               (let* ((_%e137722%_ _%hd137617137717%_)
                                      (_%rest137724%_ _%tl137618137719%_))
                                 (declare (not safe))
                                 (_%K137616137714%_
                                  _%rest137724%_
                                  _%e137722%_)))
                             (let ()
                               (declare (not safe))
                               (_%else137614137628%_)))))))
               _%hd137542137580%_
               _%hd137539137572%_
               _%hd137536137564%_)
              (let ()
                (declare (not safe))
                (_%g137527137548%_ _%g137528137551%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137527137548%_
                                                 _%g137528137551%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137527137548%_
                                         _%g137528137551%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137527137548%_ _%g137528137551%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137527137548%_ _%g137528137551%_))))))
          (declare (not safe))
          (_%g137526137726%_ _%stx137525%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self137303%_ _%stx137304%_)
        (let* ((_%g137306137331%_
                (lambda (_%g137307137328%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137307137328%_))))
               (_%g137305137521%_
                (lambda (_%g137307137334%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137307137334%_))
                      (let ((_%e137314137336%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137307137334%_))))
                        (let ((_%hd137313137339%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137314137336%_)))
                              (_%tl137312137341%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137314137336%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137312137341%_))
                              (let ((_%e137317137344%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137312137341%_))))
                                (let ((_%hd137316137347%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137317137344%_)))
                                      (_%tl137315137349%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137317137344%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137315137349%_))
                                      (let ((_%e137320137352%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137315137349%_))))
                                        (let ((_%hd137319137355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137320137352%_)))
                                              (_%tl137318137357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137320137352%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137318137357%_))
                                              (let ((_%e137323137360%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137318137357%_))))
                                                (let ((_%hd137322137363%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137323137360%_)))
                                                      (_%tl137321137365%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137323137360%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137321137365%_))
                                                      (let ((_%e137326137368%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137321137365%_))))
                (let ((_%hd137325137371%_
                       (let () (declare (not safe)) (##car _%e137326137368%_)))
                      (_%tl137324137373%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137326137368%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137324137373%_))
                      ((lambda (_%L137376%_
                                _%L137377%_
                                _%L137378%_
                                _%L137379%_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137303%_
                                            _%L137377%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self137303%_
                                                  _%L137376%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self137303%_
                                                        _%L137378%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp137400%_ ((_%rest137403%_
                                                 (cons _%L137378%_
                                                       (cons _%L137376%_
                                                             (cons _%L137377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind137405%_ '())
                                                (_%args137406%_ '()))
                               (let* ((_%rest137407137415%_ _%rest137403%_)
                                      (_%else137409137423%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind137405%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp145921 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp145921 _%args137406%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K137411137509%_
                                       (lambda (_%rest137426%_ _%e137427%_)
                                         (let* ((_%__stx145529145530%_
                                                 _%e137427%_)
                                                (_%g137432137450%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx145529145530%_)))))
                                           (let ((_%__kont145531145532%_
                                                  (lambda ()
                                                    (let ((__tmp145922
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e137427%_))
                         _%args137406%_)))
              (declare (not safe))
              (_%lp137400%_ _%rest137426%_ _%bind137405%_ __tmp145922))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145533145534%_
                                                  (lambda ()
                                                    (let ((__tmp145923
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e137427%_))
                         _%args137406%_)))
              (declare (not safe))
              (_%lp137400%_ _%rest137426%_ _%bind137405%_ __tmp145923))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145535145536%_
                                                  (lambda ()
                                                    (let ((_%tmp137457%_
                                                           (let ((__tmp145924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp145924))))
              (let ((__tmp145926
                     (cons (cons _%tmp137457%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e137427%_))
                                       '()))
                           _%bind137405%_))
                    (__tmp145925 (cons _%tmp137457%_ _%args137406%_)))
                (declare (not safe))
                (_%lp137400%_ _%rest137426%_ __tmp145926 __tmp145925))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx145529145530%_))
                                                 (let ((_%e137436137488%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx145529145530%_))))
                                                   (let ((_%tl137434137493%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137436137488%_)))
                                                         (_%hd137435137491%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137436137488%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd137435137491%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd137435137491%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl137434137493%_))
                         (let ((_%e137439137496%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl137434137493%_))))
                           (let ((_%tl137437137501%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e137439137496%_)))
                                 (_%hd137438137499%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e137439137496%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl137437137501%_))
                                 (_%__kont145531145532%_)
                                 (_%__kont145535145536%_))))
                         (_%__kont145535145536%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd137435137491%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl137434137493%_))
                             (let ((_%e137445137473%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl137434137493%_))))
                               (let ((_%tl137443137478%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e137445137473%_)))
                                     (_%hd137444137476%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e137445137473%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl137443137478%_))
                                     (_%__kont145533145534%_)
                                     (_%__kont145535145536%_))))
                             (_%__kont145535145536%_))
                         (_%__kont145535145536%_)))
                 (_%__kont145535145536%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145535145536%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest137407137415%_))
                                     (let ((_%hd137412137512%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest137407137415%_)))
                                           (_%tl137413137514%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest137407137415%_))))
                                       (let* ((_%e137517%_ _%hd137412137512%_)
                                              (_%rest137519%_
                                               _%tl137413137514%_))
                                         (declare (not safe))
                                         (_%K137411137509%_
                                          _%rest137519%_
                                          _%e137517%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%else137409137423%_)))))))
                       _%hd137325137371%_
                       _%hd137322137363%_
                       _%hd137319137355%_
                       _%hd137316137347%_)
                      (let ()
                        (declare (not safe))
                        (_%g137306137331%_ _%g137307137334%_)))))
              (let ()
                (declare (not safe))
                (_%g137306137331%_ _%g137307137334%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137306137331%_
                                                 _%g137307137334%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137306137331%_
                                         _%g137307137334%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137306137331%_ _%g137307137334%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137306137331%_ _%g137307137334%_))))))
          (declare (not safe))
          (_%g137305137521%_ _%stx137304%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self137142%_ _%stx137143%_)
        (letrec ((_%import-set-template137145%_
                  (lambda (_%in137248%_ _%phi137249%_)
                    (let ((_%iphi137251%_
                           (fx+ _%phi137249%_
                                (##direct-structure-ref
                                 _%in137248%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports137252%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in137248%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp137254%_ ((_%rest137256%_ _%imports137252%_)
                                         (_%r137257%_ '()))
                        (let* ((_%rest137258137266%_ _%rest137256%_)
                               (_%else137260137274%_ (lambda () _%r137257%_))
                               (_%K137262137291%_
                                (lambda (_%rest137277%_ _%in137278%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in137278%_
                                         'gx#module-context::t))
                                      (let ()
                                        (if (let ()
                                              (declare (not safe))
                                              (##fxzero? _%iphi137251%_))
                                            (let ((__tmp145927
                                                   (cons _%in137278%_
                                                         _%r137257%_)))
                                              (declare (not safe))
                                              (_%lp137254%_
                                               _%rest137277%_
                                               __tmp145927))
                                            (let ()
                                              (declare (not safe))
                                              (_%lp137254%_
                                               _%rest137277%_
                                               _%r137257%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in137278%_
                                             'gx#module-import::t))
                                          (let ((_%iphi137282%_
                                                 (fx+ _%phi137249%_
                                                      (##direct-structure-ref
                                                       _%in137278%_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi137282%_))
                                                (let ((__tmp145928
                                                       (cons (##direct-structure-ref
                                                              (##direct-structure-ref
                                                               _%in137278%_
                                                               '1
                                                               gx#module-import::t
                                                               '#f)
                                                              '1
                                                              gx#module-export::t
                                                              '#f)
                                                             _%r137257%_)))
                                                  (declare (not safe))
                                                  (_%lp137254%_
                                                   _%rest137277%_
                                                   __tmp145928))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%lp137254%_
                                                   _%rest137277%_
                                                   _%r137257%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in137278%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi137285%_
                                                     (fx+ _%iphi137251%_
                                                          (##direct-structure-ref
                                                           _%in137278%_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi137285%_))
                                                    (let ((__tmp145929
                                                           (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in137278%_
                          '1
                          gx#import-set::t
                          '#f)
                         _%r137257%_)))
              (declare (not safe))
              (_%lp137254%_ _%rest137277%_ __tmp145929))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi137285%_))
                                                        (let ((__tmp145930
                                                               (let ((__tmp145931
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_%import-set-template137145%_
                                 _%in137278%_
                                 _%iphi137251%_))))
                         (declare (not safe))
                         (__foldl1 cons _%r137257%_ __tmp145931))))
                  (declare (not safe))
                  (_%lp137254%_ _%rest137277%_ __tmp145930))
                (let ()
                  (declare (not safe))
                  (_%lp137254%_ _%rest137277%_ _%r137257%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%lp137254%_
                                                 _%rest137277%_
                                                 _%r137257%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest137258137266%_))
                              (let ((_%hd137263137294%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest137258137266%_)))
                                    (_%tl137264137296%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest137258137266%_))))
                                (let* ((_%in137299%_ _%hd137263137294%_)
                                       (_%rest137301%_ _%tl137264137296%_))
                                  (declare (not safe))
                                  (_%K137262137291%_
                                   _%rest137301%_
                                   _%in137299%_)))
                              (let ()
                                (declare (not safe))
                                (_%else137260137274%_)))))))))
          (let* ((_%g137147137157%_
                  (lambda (_%g137148137154%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137148137154%_))))
                 (_%g137146137245%_
                  (lambda (_%g137148137160%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137148137160%_))
                        (let ((_%e137152137162%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137148137160%_))))
                          (let ((_%hd137151137165%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137152137162%_)))
                                (_%tl137150137167%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137152137162%_))))
                            ((lambda (_%L137170%_)
                               (let ((_%ht137181%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp137183%_ ((_%rest137185%_
                                                     _%L137170%_)
                                                    (_%loads137186%_ '()))
                                   (letrec ((_%K137188%_
                                             (lambda (_%ctx137238%_
                                                      _%rest137239%_)
                                               (let ((_%id137241%_
                                                      (##structure-ref
                                                       _%ctx137238%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _%ht137181%_
                                                        _%id137241%_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%lp137183%_
                                                        _%rest137239%_
                                                        _%loads137186%_))
                                                     (let ((_%rt137243%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id137241%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%ht137181%_
                                                          _%id137241%_
                                                          _%rt137243%_))
                                                       (let ((__tmp145932
                                                              (cons _%rt137243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%loads137186%_)))
                 (declare (not safe))
                 (_%lp137183%_ _%rest137239%_ __tmp145932))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_%rest137189137197%_
                                             _%rest137185%_)
                                            (_%else137191137209%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp145934
                                                            (lambda (_%g137204137206%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g137204137206%_)))
                   (__tmp145933 (reverse _%loads137186%_)))
               (declare (not safe))
               (##map __tmp145934 __tmp145933)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K137193137226%_
                                             (lambda (_%rest137212%_
                                                      _%in137213%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in137213%_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%K137188%_
                                                      _%in137213%_
                                                      _%rest137212%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in137213%_
                                                          'gx#module-import::t))
                                                       (let ()
                                                         (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%in137213%_
                               '3
                               gx#module-import::t
                               '#f))
                     (let ((__tmp145935
                            (##direct-structure-ref
                             (##direct-structure-ref
                              _%in137213%_
                              '1
                              gx#module-import::t
                              '#f)
                             '1
                             gx#module-export::t
                             '#f)))
                       (declare (not safe))
                       (_%K137188%_ __tmp145935 _%rest137212%_))
                     (let ()
                       (declare (not safe))
                       (_%lp137183%_ _%rest137212%_ _%loads137186%_))))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in137213%_
                      'gx#import-set::t))
                   (let ((_%phi137218%_
                          (##direct-structure-ref
                           _%in137213%_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (fxzero? _%phi137218%_)
                         (let ((__tmp145936
                                (##direct-structure-ref
                                 _%in137213%_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_%K137188%_ __tmp145936 _%rest137212%_))
                         (if (fxpositive? _%phi137218%_)
                             (let ()
                               (let* ((_%deps137222%_
                                       (let ()
                                         (declare (not safe))
                                         (_%import-set-template137145%_
                                          _%in137213%_
                                          '0)))
                                      (__tmp145937
                                       (let ()
                                         (declare (not safe))
                                         (__foldl1
                                          cons
                                          _%rest137212%_
                                          _%deps137222%_))))
                                 (declare (not safe))
                                 (_%lp137183%_ __tmp145937 _%loads137186%_)))
                             (let ()
                               (declare (not safe))
                               (_%lp137183%_
                                _%rest137212%_
                                _%loads137186%_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx137143%_
                      _%in137213%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest137189137197%_))
                                           (let ((_%hd137194137229%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest137189137197%_)))
                                                 (_%tl137195137231%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest137189137197%_))))
                                             (let* ((_%in137234%_
                                                     _%hd137194137229%_)
                                                    (_%rest137236%_
                                                     _%tl137195137231%_))
                                               (declare (not safe))
                                               (_%K137193137226%_
                                                _%rest137236%_
                                                _%in137234%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%else137191137209%_))))))))
                             _%tl137150137167%_)))
                        (let ()
                          (declare (not safe))
                          (_%g137147137157%_ _%g137148137160%_))))))
            (declare (not safe))
            (_%g137146137245%_ _%stx137143%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self136955%_ _%stx136956%_)
        (letrec ((_%add-lift!136958%_
                  (lambda (_%expr137140%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr137140%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote136959%_
                  (lambda (_%id137137%_ _%marks137138%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id137137%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks137138%_
                                                        '()))))))))
                 (_%generate-simple136960%_
                  (lambda (_%stxq137132%_)
                    (let ((_%gid137134%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid137135%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq137132%_))))
                      (let ((__tmp145938
                             (cons 'define
                                   (cons _%gid137134%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_%generate-syntax-quote136959%_
                                                  _%qid137135%_
                                                  ''()))
                                               '())))))
                        (declare (not safe))
                        (_%add-lift!136958%_ __tmp145938))
                      (let ((__tmp145939
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145939 _%stxq137132%_ _%gid137134%_))
                      _%gid137134%_)))
                 (_%generate-serialized136961%_
                  (lambda (_%stxq137122%_ _%marks137123%_)
                    (let* ((_%mark-refs137125%_
                            (map _%generate-mark136962%_ _%marks137123%_))
                           (_%gid137127%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid137129%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq137122%_))))
                      (let ((__tmp145940
                             (cons 'define
                                   (cons _%gid137127%_
                                         (cons (let ((__tmp145941
                                                      (cons 'list
                                                            _%mark-refs137125%_)))
                                                 (declare (not safe))
                                                 (_%generate-syntax-quote136959%_
                                                  _%qid137129%_
                                                  __tmp145941))
                                               '())))))
                        (declare (not safe))
                        (_%add-lift!136958%_ __tmp145940))
                      (let ((__tmp145942
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145942 _%stxq137122%_ _%gid137127%_))
                      _%gid137127%_)))
                 (_%generate-mark136962%_
                  (lambda (_%mark137107%_)
                    (let ((_%$e137109%_
                           (let ((__tmp145943
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp145943 _%mark137107%_))))
                      (if _%$e137109%_
                          (values _%$e137109%_)
                          (let ()
                            (let* ((_%gid137113%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-temporary__% '#t)))
                                   (_%repr137115%_
                                    (let ()
                                      (declare (not safe))
                                      (_%serialize-mark136963%_
                                       _%mark137107%_)))
                                   (_%ctx137117%_
                                    (let ((__tmp145944
                                           (##structure-ref
                                            _%mark137107%_
                                            '2
                                            gx#expander-mark::t
                                            '#f)))
                                      (declare (not safe))
                                      (gx#core-context-top__1 __tmp145944)))
                                   (_%ctx-ref137119%_
                                    (if (eq? _%ctx137117%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#current-expander-context)))
                                        '(gx#current-expander-context)
                                        (cons 'gx#import-module
                                              (cons (cons 'quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_%context-ref136964%_ _%ctx137117%_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              (let ((__tmp145945
                                     (let ()
                                       (declare (not safe))
                                       (gxc#current-compile-marks))))
                                (declare (not safe))
                                (hash-put!
                                 __tmp145945
                                 _%mark137107%_
                                 _%gid137113%_))
                              (let ((__tmp145946
                                     (cons 'define
                                           (cons _%gid137113%_
                                                 (cons (cons 'gx#core-deserialize-mark
                                                             (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%repr137115%_ '()))
                           (cons _%ctx-ref137119%_ '())))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (declare (not safe))
                                (_%add-lift!136958%_ __tmp145946))
                              _%gid137113%_))))))
                 (_%serialize-mark136963%_
                  (lambda (_%mark137054%_)
                    (letrec ((_%quote-e137056%_
                              (lambda (_%sym137105%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym137105%_))
                                    _%sym137105%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym137105%_))))))
                      (let* ((_%mark137057137066%_ _%mark137054%_)
                             (_%E137059137070%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark137057137066%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K137060137082%_
                              (lambda (_%trace137073%_
                                       _%phi137074%_
                                       _%ctx137075%_
                                       _%subst137076%_)
                                (let ((_%subs137078%_
                                       (if _%subst137076%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst137076%_))
                                           '())))
                                  (cons _%phi137074%_
                                        (map (lambda (_%pair137080%_)
                                               (cons (let ((__tmp145947
                                                            (car _%pair137080%_)))
                                                       (declare (not safe))
                                                       (_%quote-e137056%_
                                                        __tmp145947))
                                                     (let ((__tmp145948
                                                            (cdr _%pair137080%_)))
                                                       (declare (not safe))
                                                       (_%quote-e137056%_
                                                        __tmp145948))))
                                             _%subs137078%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark137057137066%_
                               'gx#expander-mark::t))
                            (let* ((_%e137061137085%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark137057137066%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst137088%_ _%e137061137085%_)
                                   (_%e137062137090%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark137057137066%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx137093%_ _%e137062137090%_)
                                   (_%e137063137095%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark137057137066%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi137098%_ _%e137063137095%_)
                                   (_%e137064137100%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark137057137066%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace137103%_ _%e137064137100%_))
                              (declare (not safe))
                              (_%K137060137082%_
                               _%trace137103%_
                               _%phi137098%_
                               _%ctx137093%_
                               _%subst137088%_))
                            (let ()
                              (declare (not safe))
                              (_%E137059137070%_)))))))
                 (_%context-ref136964%_
                  (lambda (_%ctx137041%_)
                    (if (let ((__tmp145949
                               (##structure-ref
                                _%ctx137041%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp145949
                           'gx#module-context::t))
                        (let ((_%ctx-ref137043%_
                               (let ()
                                 (declare (not safe))
                                 (_%context-ref-nested136966%_ _%ctx137041%_)))
                              (_%ctx-origin137044%_
                               (let ()
                                 (declare (not safe))
                                 (_%context-ref-origin136965%_ _%ctx137041%_)))
                              (_%origin137045%_
                               (let ((__tmp145950
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (_%context-ref-origin136965%_ __tmp145950))))
                          (if (eq? _%origin137045%_ _%ctx-origin137044%_)
                              (let ((_%ref137047%_
                                     (let ((__tmp145951
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-context))))
                                       (declare (not safe))
                                       (_%context-ref-nested136966%_
                                        __tmp145951))))
                                (let _%lp137049%_ ((_%ref137051%_
                                                    (cdr _%ref137047%_))
                                                   (_%ctx-ref137052%_
                                                    (cdr _%ctx-ref137043%_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _%ref137051%_))
                                           (eq? (car _%ref137051%_)
                                                (car _%ctx-ref137052%_)))
                                      (let ((__tmp145953 (cdr _%ref137051%_))
                                            (__tmp145952
                                             (cdr _%ctx-ref137052%_)))
                                        (declare (not safe))
                                        (_%lp137049%_ __tmp145953 __tmp145952))
                                      (cons '#f _%ctx-ref137052%_))))
                              _%ctx-ref137043%_))
                        (let ((__tmp145954
                               (##structure-ref
                                _%ctx137041%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp145954)))))
                 (_%context-ref-origin136965%_
                  (lambda (_%ctx137033%_)
                    (let _%lp137035%_ ((_%ctx137037%_ _%ctx137033%_))
                      (let ((_%super137039%_
                             (##structure-ref
                              _%ctx137037%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super137039%_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_%lp137035%_ _%super137039%_))
                            _%ctx137037%_)))))
                 (_%context-ref-nested136966%_
                  (lambda (_%ctx137024%_)
                    (let _%lp137026%_ ((_%ctx137028%_ _%ctx137024%_)
                                       (_%r137029%_ '()))
                      (let ((_%super137031%_
                             (##structure-ref
                              _%ctx137028%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super137031%_
                               'gx#module-context::t))
                            (let ((__tmp145955
                                   (cons (car (##structure-ref
                                               _%ctx137028%_
                                               '7
                                               gx#module-context::t
                                               '#f))
                                         _%r137029%_)))
                              (declare (not safe))
                              (_%lp137026%_ _%super137031%_ __tmp145955))
                            (cons (let ((__tmp145956
                                         (##structure-ref
                                          _%ctx137028%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp145956))
                                  _%r137029%_)))))))
          (let* ((_%g136968136981%_
                  (lambda (_%g136969136978%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136969136978%_))))
                 (_%g136967137021%_
                  (lambda (_%g136969136984%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136969136984%_))
                        (let ((_%e136973136986%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136969136984%_))))
                          (let ((_%hd136972136989%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136973136986%_)))
                                (_%tl136971136991%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136973136986%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl136971136991%_))
                                (let ((_%e136976136994%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl136971136991%_))))
                                  (let ((_%hd136975136997%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136976136994%_)))
                                        (_%tl136974136999%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136976136994%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136974136999%_))
                                        ((lambda (_%L137002%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L137002%_))
                                               (let ((_%$e137015%_
                                                      (let ((__tmp145957
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp145957 _%L137002%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e137015%_
                                                     (values _%$e137015%_)
                                                     (let ((_%marks137019%_
                                                            (##direct-structure-ref
                                                             _%L137002%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _%marks137019%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-simple136960%_
                                                              _%L137002%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-serialized136961%_
                                                              _%L137002%_
                                                              _%marks137019%_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L137002%_))))
                                         _%hd136975136997%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g136968136981%_
                                           _%g136969136984%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g136968136981%_ _%g136969136984%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g136968136981%_ _%g136969136984%_))))))
            (declare (not safe))
            (_%g136967137021%_ _%stx136956%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self136887%_ _%stx136888%_)
        (let* ((_%g136890136907%_
                (lambda (_%g136891136904%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136891136904%_))))
               (_%g136889136952%_
                (lambda (_%g136891136910%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136891136910%_))
                      (let ((_%e136896136912%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136891136910%_))))
                        (let ((_%hd136895136915%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136896136912%_)))
                              (_%tl136894136917%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136896136912%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136894136917%_))
                              (let ((_%e136899136920%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136894136917%_))))
                                (let ((_%hd136898136923%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136899136920%_)))
                                      (_%tl136897136925%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136899136920%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136897136925%_))
                                      (let ((_%e136902136928%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136897136925%_))))
                                        (let ((_%hd136901136931%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136902136928%_)))
                                              (_%tl136900136933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136902136928%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136900136933%_))
                                              ((lambda (_%L136936%_
                                                        _%L136937%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L136937%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self136887%_ _%L136936%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd136901136931%_
                                               _%hd136898136923%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g136890136907%_
                                                 _%g136891136910%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g136890136907%_
                                         _%g136891136910%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g136890136907%_ _%g136891136910%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136890136907%_ _%g136891136910%_))))))
          (declare (not safe))
          (_%g136889136952%_ _%stx136888%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self136836%_ _%stx136837%_)
        (let* ((_%g136839136849%_
                (lambda (_%g136840136846%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136840136846%_))))
               (_%g136838136884%_
                (lambda (_%g136840136852%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136840136852%_))
                      (let ((_%e136844136854%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136840136852%_))))
                        (let ((_%hd136843136857%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136844136854%_)))
                              (_%tl136842136859%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136844136854%_))))
                          ((lambda (_%L136862%_)
                             (let* ((_%c-body136876%_
                                     (map (lambda (_%g136871136873%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self136836%_
                                               _%g136871136873%_)))
                                          _%L136862%_))
                                    (_%c-body136881%_
                                     (let ((__tmp145958
                                            (lambda (_%$obj136878%_)
                                              (let ((__tmp145959
                                                     (let ()
                                                       (declare (not safe))
                                                       (eq? _%$obj136878%_
                                                            '#!void))))
                                                (declare (not safe))
                                                (not __tmp145959)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp145958
                                        _%c-body136876%_))))
                               (cons '%#begin _%c-body136881%_)))
                           _%tl136842136859%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136839136849%_ _%g136840136852%_))))))
          (declare (not safe))
          (_%g136838136884%_ _%stx136837%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self136741%_ _%stx136742%_)
        (let* ((_%g136744136754%_
                (lambda (_%g136745136751%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136745136751%_))))
               (_%g136743136833%_
                (lambda (_%g136745136757%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136745136757%_))
                      (let ((_%e136749136759%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136745136757%_))))
                        (let ((_%hd136748136762%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136749136759%_)))
                              (_%tl136747136764%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136749136759%_))))
                          ((lambda (_%L136767%_)
                             (let* ((_%phi136777%_
                                     (let ((__tmp145960
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp145960 '1)))
                                    (_%block136779%_
                                     (let ((__tmp145961
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _%self136741%_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp145961
                                        _%phi136777%_)))
                                    (_%compiled136782%_
                                     (let ((__tmp145962
                                            (lambda ()
                                              (let ((__tmp145964
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self136741%_
                                                        'state)))
                                                    (__tmp145963
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%L136767%_)))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi__%
                                                 '#f
                                                 __tmp145964
                                                 __tmp145963)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp145962
                                        gx#current-expander-phi
                                        _%phi136777%_))))
                               (let* ((_%g136785136795%_
                                       (lambda (_%g136786136792%_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g136786136792%_))))
                                      (_%g136784136830%_
                                       (lambda (_%g136786136798%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%g136786136798%_))
                                             (let ((_%e136790136800%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%g136786136798%_))))
                                               (let ((_%hd136789136803%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e136790136800%_)))
                                                     (_%tl136788136805%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e136790136800%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd136789136803%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _%hd136789136803%_))
                                                         ((lambda (_%L136808%_)
                                                            (let ((_%c-body136825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_%$obj136822%_)
                                     (let ((__tmp145965
                                            (let ()
                                              (declare (not safe))
                                              (eq? _%$obj136822%_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp145965)))
                                   _%L136808%_)))
                      (if _%block136779%_
                          (let ()
                            (cons '%#begin-syntax
                                  (cons (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'load-module
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons _%block136779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%c-body136825%_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _%c-body136825%_))
                              (let () '#!void)
                              (let ()
                                (cons '%#begin-syntax _%c-body136825%_))))))
                  _%tl136788136805%_)
                 (let ()
                   (declare (not safe))
                   (_%g136785136795%_ _%g136786136798%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g136785136795%_
                                                        _%g136786136798%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g136785136795%_
                                                _%g136786136798%_))))))
                                 (declare (not safe))
                                 (_%g136784136830%_ _%compiled136782%_))))
                           _%tl136747136764%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136744136754%_ _%g136745136757%_))))))
          (declare (not safe))
          (_%g136743136833%_ _%stx136742%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self136672%_ _%stx136673%_)
        (let ((__tmp145966
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self136672%_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp145966))
        (let* ((_%g136675136689%_
                (lambda (_%g136676136686%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136676136686%_))))
               (_%g136674136738%_
                (lambda (_%g136676136692%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136676136692%_))
                      (let ((_%e136681136694%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136676136692%_))))
                        (let ((_%hd136680136697%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136681136694%_)))
                              (_%tl136679136699%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136681136694%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136679136699%_))
                              (let ((_%e136684136702%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136679136699%_))))
                                (let ((_%hd136683136705%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136684136702%_)))
                                      (_%tl136682136707%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136684136702%_))))
                                  ((lambda (_%L136710%_ _%L136711%_)
                                     (let ((_%key136724%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L136711%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key136724%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx136673%_
                                              _%L136711%_
                                              _%key136724%_)))
                                       (let* ((_%ctx136726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L136711%_)))
                                              (_%code136729%_
                                               (let ((__tmp145967
                                                      (lambda ()
                                                        (let ((__tmp145968
                                                               (##structure-ref
                                                                _%ctx136726%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self136672%_
                                                           __tmp145968)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp145967
                                                  gx#current-expander-context
                                                  _%ctx136726%_)))
                                              (_%rt136731%_
                                               (let ((__tmp145969
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp145969
                                                  _%ctx136726%_)))
                                              (_%loader136733%_
                                               (if _%rt136731%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt136731%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid136735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L136711%_))))
                                         (let ((__tmp145970
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self136672%_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp145970))
                                         (cons '%#module
                                               (cons _%modid136735%_
                                                     (cons _%code136729%_
                                                           _%loader136733%_))))))
                                   _%tl136682136707%_
                                   _%hd136683136705%_)))
                              (let ()
                                (declare (not safe))
                                (_%g136675136689%_ _%g136676136692%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136675136689%_ _%g136676136692%_))))))
          (declare (not safe))
          (_%g136674136738%_ _%stx136673%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx136659%_ _%context-chain136660%_)
        (let _%lp136662%_ ((_%ctx136664%_ _%ctx136659%_) (_%path136665%_ '()))
          (let ((_%super136667%_
                 (##structure-ref _%ctx136664%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super136667%_ _%context-chain136660%_)
                (let ((__tmp145971
                       (let ((__tmp145972
                              (car (##structure-ref
                                    _%ctx136664%_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp145972 _%path136665%_))))
                  (declare (not safe))
                  (cons '#f __tmp145971))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super136667%_
                       'gx#module-context::t))
                    (let ((__tmp145973
                           (cons (car (##structure-ref
                                       _%ctx136664%_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _%path136665%_)))
                      (declare (not safe))
                      (_%lp136662%_ _%super136667%_ __tmp145973))
                    (let ()
                      (cons (let ((__tmp145974
                                   (##structure-ref
                                    _%ctx136664%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (make-symbol__1 '":" __tmp145974))
                            _%path136665%_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp136652%_ ((_%ctx136654%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r136655%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx136654%_ 'gx#module-context::t))
              (let ((__tmp145976
                     (##structure-ref _%ctx136654%_ '3 gx#phi-context::t '#f))
                    (__tmp145975 (cons _%ctx136654%_ _%r136655%_)))
                (declare (not safe))
                (_%lp136652%_ __tmp145976 __tmp145975))
              (let () _%r136655%_)))))
    (define gxc#generate-meta-import%
      (lambda (_%self136415%_ _%stx136416%_)
        (letrec* ((_%context-chain136418%_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_%make-import-spec136419%_
                   (lambda (_%in136588%_)
                     (let* ((_%in136589136601%_ _%in136588%_)
                            (_%E136591136605%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in136589136601%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K136592136615%_
                             (lambda (_%phi136608%_
                                      _%name136609%_
                                      _%src-name136610%_
                                      _%src-phi136611%_
                                      _%src-key136612%_
                                      _%src-ctx136613%_)
                               (cons _%phi136608%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name136609%_))
                                           (cons _%src-phi136611%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name136610%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in136589136601%_
                              'gx#module-import::t))
                           (let ((_%e136593136618%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in136589136601%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e136593136618%_
                                    'gx#module-export::t))
                                 (let* ((_%e136596136621%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136593136618%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx136624%_ _%e136596136621%_)
                                        (_%e136597136626%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136593136618%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key136629%_ _%e136597136626%_)
                                        (_%e136598136631%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136593136618%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi136634%_ _%e136598136631%_)
                                        (_%e136599136636%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136593136618%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name136639%_ _%e136599136636%_)
                                        (_%e136594136641%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in136589136601%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name136644%_ _%e136594136641%_)
                                        (_%e136595136646%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in136589136601%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi136649%_ _%e136595136646%_))
                                   (declare (not safe))
                                   (_%K136592136615%_
                                    _%phi136649%_
                                    _%name136644%_
                                    _%src-name136639%_
                                    _%src-phi136634%_
                                    _%src-key136629%_
                                    _%src-ctx136624%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%E136591136605%_))))
                           (let ()
                             (declare (not safe))
                             (_%E136591136605%_))))))
                  (_%make-import-path136420%_
                   (lambda (_%ctx136586%_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _%ctx136586%_
                        _%context-chain136418%_))))
                  (_%make-import-spec-in136421%_
                   (lambda (_%ctx136583%_ _%in136584%_)
                     (cons 'spec:
                           (cons (let ()
                                   (declare (not safe))
                                   (_%make-import-path136420%_ _%ctx136583%_))
                                 (reverse _%in136584%_))))))
          (let ((__tmp145977
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self136415%_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp145977))
          (let* ((_%g136423136433%_
                  (lambda (_%g136424136430%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136424136430%_))))
                 (_%g136422136580%_
                  (lambda (_%g136424136436%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136424136436%_))
                        (let ((_%e136428136438%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136424136436%_))))
                          (let ((_%hd136427136441%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136428136438%_)))
                                (_%tl136426136443%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136428136438%_))))
                            ((lambda (_%L136446%_)
                               (let _%lp136457%_ ((_%rest136459%_ _%L136446%_)
                                                  (_%current-src136460%_ '#f)
                                                  (_%current-in136461%_ '())
                                                  (_%r136462%_ '()))
                                 (let* ((_%rest136463136471%_ _%rest136459%_)
                                        (_%else136465136481%_
                                         (lambda ()
                                           (let ((_%r136479%_
                                                  (if _%current-src136460%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%make-import-spec-in136421%_
                                                               _%current-src136460%_
                                                               _%current-in136461%_))
                                                            _%r136462%_)
                                                      _%r136462%_)))
                                             (cons '%#import
                                                   (reverse _%r136479%_)))))
                                        (_%K136467136568%_
                                         (lambda (_%rest136484%_ _%in136485%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in136485%_
                                                  'gx#module-import::t))
                                               (let ()
                                                 (let* ((_%in136487136494%_
                                                         _%in136485%_)
                                                        (_%E136489136498%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%in136487136494%_
                            '((module-import (module-export src-ctx)))))
                   '#!void))
                (_%K136490136506%_
                 (lambda (_%src-ctx136501%_)
                   (if (eq? _%current-src136460%_ _%src-ctx136501%_)
                       (let ((__tmp145978
                              (cons (let ()
                                      (declare (not safe))
                                      (_%make-import-spec136419%_
                                       _%in136485%_))
                                    _%current-in136461%_)))
                         (declare (not safe))
                         (_%lp136457%_
                          _%rest136484%_
                          _%current-src136460%_
                          __tmp145978
                          _%r136462%_))
                       (if _%current-src136460%_
                           (let ((__tmp145980
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%make-import-spec136419%_
                                           _%in136485%_))
                                        '()))
                                 (__tmp145979
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%make-import-spec-in136421%_
                                           _%current-src136460%_
                                           _%current-in136461%_))
                                        _%r136462%_)))
                             (declare (not safe))
                             (_%lp136457%_
                              _%rest136484%_
                              _%src-ctx136501%_
                              __tmp145980
                              __tmp145979))
                           (let ((__tmp145981
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%make-import-spec136419%_
                                           _%in136485%_))
                                        '())))
                             (declare (not safe))
                             (_%lp136457%_
                              _%rest136484%_
                              _%src-ctx136501%_
                              __tmp145981
                              _%r136462%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in136487136494%_
                                                          'gx#module-import::t))
                                                       (let ((_%e136491136509%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%in136487136494%_
                         '1
                         '#f
                         '#f))))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        _%e136491136509%_
                        'gx#module-export::t))
                     (let* ((_%e136492136512%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%e136491136509%_
                                '1
                                '#f
                                '#f)))
                            (_%src-ctx136515%_ _%e136492136512%_))
                       (declare (not safe))
                       (_%K136490136506%_ _%src-ctx136515%_))
                     (let () (declare (not safe)) (_%E136489136498%_))))
               (let () (declare (not safe)) (_%E136489136498%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in136485%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (let* ((_%phi136518%_
                                                             (##direct-structure-ref
                                                              _%in136485%_
                                                              '2
                                                              gx#import-set::t
                                                              '#f))
                                                            (_%src136520%_
                                                             (##direct-structure-ref
                                                              _%in136485%_
                                                              '1
                                                              gx#import-set::t
                                                              '#f))
                                                            (_%src-in136560%_
                                                             (let* ((_%g136521136530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_%make-import-path136420%_ _%src136520%_)))
                            (_%E136524136534%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g136521136530%_
                                        '([path])
                                        '(path)))
                               '#!void)))
                       (let ((_%K136526136550%_
                              (lambda (_%path136548%_) _%path136548%_))
                             (_%K136525136540%_
                              (lambda (_%path136538%_)
                                (cons 'in: _%path136538%_))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%g136521136530%_))
                             (let ((_%tl136528136555%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g136521136530%_)))
                                   (_%hd136527136553%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g136521136530%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl136528136555%_))
                                   (let ((_%path136558%_ _%hd136527136553%_))
                                     (declare (not safe))
                                     (_%K136526136550%_ _%path136558%_))
                                   (let ((_%path136543%_ _%g136521136530%_))
                                     (declare (not safe))
                                     (_%K136525136540%_ _%path136543%_))))
                             (let ((_%path136543%_ _%g136521136530%_))
                               (declare (not safe))
                               (_%K136525136540%_ _%path136543%_))))))
                    (_%r136562%_
                     (if _%current-src136460%_
                         (cons (let ()
                                 (declare (not safe))
                                 (_%make-import-spec-in136421%_
                                  _%current-src136460%_
                                  _%current-in136461%_))
                               _%r136462%_)
                         _%r136462%_))
                    (__tmp145982
                     (cons (if (fxzero? _%phi136518%_)
                               _%src-in136560%_
                               (cons 'phi:
                                     (cons _%phi136518%_
                                           (cons _%src-in136560%_ '()))))
                           _%r136562%_)))
               (declare (not safe))
               (_%lp136457%_ _%rest136484%_ '#f '() __tmp145982)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in136485%_
                                                          'gx#module-context::t))
                                                       (let ()
                                                         (let* ((_%r136566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if _%current-src136460%_
                             (cons (let ()
                                     (declare (not safe))
                                     (_%make-import-spec-in136421%_
                                      _%current-src136460%_
                                      _%current-in136461%_))
                                   _%r136462%_)
                             _%r136462%_))
                        (__tmp145983
                         (cons (cons 'runtime:
                                     (let ()
                                       (declare (not safe))
                                       (_%make-import-path136420%_
                                        _%in136485%_)))
                               _%r136566%_)))
                   (declare (not safe))
                   (_%lp136457%_ _%rest136484%_ '#f '() __tmp145983)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest136463136471%_))
                                       (let ((_%hd136468136571%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest136463136471%_)))
                                             (_%tl136469136573%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest136463136471%_))))
                                         (let* ((_%in136576%_
                                                 _%hd136468136571%_)
                                                (_%rest136578%_
                                                 _%tl136469136573%_))
                                           (declare (not safe))
                                           (_%K136467136568%_
                                            _%rest136578%_
                                            _%in136576%_)))
                                       (let ()
                                         (declare (not safe))
                                         (_%else136465136481%_))))))
                             _%tl136426136443%_)))
                        (let ()
                          (declare (not safe))
                          (_%g136423136433%_ _%g136424136436%_))))))
            (declare (not safe))
            (_%g136422136580%_ _%stx136416%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self136225%_ _%stx136226%_)
        (letrec* ((_%context-chain136228%_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_%make-import-path136229%_
                   (lambda (_%ctx136413%_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _%ctx136413%_
                        _%context-chain136228%_)))))
          (let* ((_%g136231136241%_
                  (lambda (_%g136232136238%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136232136238%_))))
                 (_%g136230136410%_
                  (lambda (_%g136232136244%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136232136244%_))
                        (let ((_%e136236136246%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136232136244%_))))
                          (let ((_%hd136235136249%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136236136246%_)))
                                (_%tl136234136251%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136236136246%_))))
                            ((lambda (_%L136254%_)
                               (let _%lp136265%_ ((_%rest136267%_ _%L136254%_)
                                                  (_%r136268%_ '()))
                                 (let* ((_%rest136269136277%_ _%rest136267%_)
                                        (_%else136271136285%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r136268%_))))
                                        (_%K136273136398%_
                                         (lambda (_%rest136288%_ _%out136289%_)
                                           (let* ((_%out136290136303%_
                                                   _%out136289%_)
                                                  (_%E136293136307%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out136290136303%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K136297136377%_
                                                    (lambda (_%name136373%_
                                                             _%phi136374%_
                                                             _%key136375%_)
                                                      (let ((__tmp145984
                                                             (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%phi136374%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%key136375%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-identifier-key
                                                      _%name136373%_))
                                                   '()))))
                           _%r136268%_)))
                (declare (not safe))
                (_%lp136265%_ _%rest136288%_ __tmp145984))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K136294136357%_
                                                    (lambda (_%phi136311%_
                                                             _%src136312%_)
                                                      (let* ((_%out136352%_
                                                              (if _%src136312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g136313136322%_
                                              (let ()
                                                (declare (not safe))
                                                (_%make-import-path136229%_
                                                 _%src136312%_)))
                                             (_%E136316136326%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g136313136322%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K136318136342%_
                                               (lambda (_%path136340%_)
                                                 _%path136340%_))
                                              (_%K136317136332%_
                                               (lambda (_%path136330%_)
                                                 (cons 'in: _%path136330%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g136313136322%_))
                                              (let ((_%tl136320136347%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g136313136322%_)))
                                                    (_%hd136319136345%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g136313136322%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl136320136347%_))
                                                    (let ((_%path136350%_
                                                           _%hd136319136345%_))
                                                      (declare (not safe))
                                                      (_%K136318136342%_
                                                       _%path136350%_))
                                                    (let ((_%path136335%_
                                                           _%g136313136322%_))
                                                      (declare (not safe))
                                                      (_%K136317136332%_
                                                       _%path136335%_))))
                                              (let ((_%path136335%_
                                                     _%g136313136322%_))
                                                (declare (not safe))
                                                (_%K136317136332%_
                                                 _%path136335%_)))))
                                      '()))
                          '#t))
                     (_%out136354%_
                      (if (fxzero? _%phi136311%_)
                          _%out136352%_
                          (cons 'phi:
                                (cons _%phi136311%_
                                      (cons _%out136352%_ '())))))
                     (__tmp145985 (cons _%out136354%_ _%r136268%_)))
                (declare (not safe))
                (_%lp136265%_ _%rest136288%_ __tmp145985)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match136292136370%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out136290136303%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e136295136360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out136290136303%_
                               '1
                               '#f
                               '#f)))
                           (_%e136296136365%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out136290136303%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src136363%_ _%e136295136360%_)
                            (_%phi136368%_ _%e136296136365%_))
                        (let ()
                          (declare (not safe))
                          (_%K136294136357%_ _%phi136368%_ _%src136363%_))))
                    (let () (declare (not safe)) (_%E136293136307%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out136290136303%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e136298136380%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out136290136303%_
                        '1
                        '#f
                        '#f)))
                    (_%e136299136383%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136290136303%_
                        '2
                        '#f
                        '#f)))
                    (_%e136300136388%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136290136303%_
                        '3
                        '#f
                        '#f)))
                    (_%e136301136393%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136290136303%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key136386%_ _%e136299136383%_)
                     (_%phi136391%_ _%e136300136388%_)
                     (_%name136396%_ _%e136301136393%_))
                 (let ()
                   (declare (not safe))
                   (_%K136297136377%_
                    _%name136396%_
                    _%phi136391%_
                    _%key136386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%try-match136292136370%_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest136269136277%_))
                                       (let ((_%hd136274136401%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest136269136277%_)))
                                             (_%tl136275136403%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest136269136277%_))))
                                         (let* ((_%out136406%_
                                                 _%hd136274136401%_)
                                                (_%rest136408%_
                                                 _%tl136275136403%_))
                                           (declare (not safe))
                                           (_%K136273136398%_
                                            _%rest136408%_
                                            _%out136406%_)))
                                       (let ()
                                         (declare (not safe))
                                         (_%else136271136285%_))))))
                             _%tl136234136251%_)))
                        (let ()
                          (declare (not safe))
                          (_%g136231136241%_ _%g136232136244%_))))))
            (declare (not safe))
            (_%g136230136410%_ _%stx136226%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self136186%_ _%stx136187%_)
        (let ((__tmp145986
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self136186%_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp145986))
        (let* ((_%g136189136199%_
                (lambda (_%g136190136196%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136190136196%_))))
               (_%g136188136222%_
                (lambda (_%g136190136202%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136190136202%_))
                      (let ((_%e136194136204%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136190136202%_))))
                        (let ((_%hd136193136207%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136194136204%_)))
                              (_%tl136192136209%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136194136204%_))))
                          ((lambda (_%L136212%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L136212%_)))
                           _%tl136192136209%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136189136199%_ _%g136190136202%_))))))
          (declare (not safe))
          (_%g136188136222%_ _%stx136187%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self136057%_ _%stx136058%_)
        (letrec ((_%generate1136060%_
                  (lambda (_%id136181%_ _%eid136182%_)
                    (let ((_%eid136184%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid136182%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid136184%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx136058%_
                             _%eid136184%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id136181%_))
                            (cons _%eid136184%_ '()))))))
          (let* ((_%g136062136090%_
                  (lambda (_%g136063136087%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136063136087%_))))
                 (_%g136061136178%_
                  (lambda (_%g136063136093%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136063136093%_))
                        (let ((_%e136068136095%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136063136093%_))))
                          (let ((_%hd136067136098%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136068136095%_)))
                                (_%tl136066136100%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136068136095%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl136066136100%_))
                                (let ((_g145987_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl136066136100%_
                                          '0))))
                                  (begin
                                    (let ((_g145988_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145987_)
                                                 (##vector-length _g145987_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145988_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145988_)))
                                    (let ((_%target136069136103%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145987_ 0)))
                                          (_%tl136071136105%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145987_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl136071136105%_))
                                          (letrec ((_%loop136072136108%_
                                                    (lambda (_%hd136070136111%_
                                                             _%eid136076136113%_
                                                             _%id136077136115%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd136070136111%_))
                                                          (let ((_%e136073136118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd136070136111%_))))
                    (let ((_%lp-hd136074136121%_
                           (let ()
                             (declare (not safe))
                             (##car _%e136073136118%_)))
                          (_%lp-tl136075136123%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e136073136118%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd136074136121%_))
                          (let ((_%e136082136126%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd136074136121%_))))
                            (let ((_%hd136081136129%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e136082136126%_)))
                                  (_%tl136080136131%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e136082136126%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl136080136131%_))
                                  (let ((_%e136085136134%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl136080136131%_))))
                                    (let ((_%hd136084136137%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e136085136134%_)))
                                          (_%tl136083136139%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e136085136134%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl136083136139%_))
                                          (let ((__tmp145990
                                                 (cons _%hd136084136137%_
                                                       _%eid136076136113%_))
                                                (__tmp145989
                                                 (cons _%hd136081136129%_
                                                       _%id136077136115%_)))
                                            (declare (not safe))
                                            (_%loop136072136108%_
                                             _%lp-tl136075136123%_
                                             __tmp145990
                                             __tmp145989))
                                          (let ()
                                            (declare (not safe))
                                            (_%g136062136090%_
                                             _%g136063136093%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g136062136090%_ _%g136063136093%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g136062136090%_ _%g136063136093%_)))))
                  (let ((_%eid136078136142%_ (reverse _%eid136076136113%_))
                        (_%id136079136144%_ (reverse _%id136077136115%_)))
                    ((lambda (_%L136147%_ _%L136148%_)
                       (cons '%#extern
                             (map _%generate1136060%_
                                  (let ((__tmp145991
                                         (lambda (_%g136163136166%_
                                                  _%g136164136168%_)
                                           (cons _%g136163136166%_
                                                 _%g136164136168%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145991 '() _%L136148%_))
                                  (let ((__tmp145992
                                         (lambda (_%g136170136173%_
                                                  _%g136171136175%_)
                                           (cons _%g136170136173%_
                                                 _%g136171136175%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145992 '() _%L136147%_)))))
                     _%eid136078136142%_
                     _%id136079136144%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop136072136108%_
                                               _%target136069136103%_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g136062136090%_
                                             _%g136063136093%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g136062136090%_ _%g136063136093%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g136062136090%_ _%g136063136093%_))))))
            (declare (not safe))
            (_%g136061136178%_ _%stx136058%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self135847%_ _%stx135848%_)
        (letrec ((_%generate1135850%_
                  (lambda (_%id136052%_)
                    (let ((_%eid136054%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id136052%_)))
                          (_%ident136055%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id136052%_))))
                      (cons '%#define-runtime
                            (cons _%ident136055%_ (cons _%eid136054%_ '()))))))
                 (_%generate*135851%_
                  (lambda (_%all136020%_)
                    (let* ((_%all136021136029%_ _%all136020%_)
                           (_%else136023136037%_
                            (lambda () (cons '%#begin _%all136020%_)))
                           (_%K136025136042%_
                            (lambda (_%one136040%_) _%one136040%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all136021136029%_))
                          (let ((_%hd136026136045%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all136021136029%_)))
                                (_%tl136027136047%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all136021136029%_))))
                            (let ((_%one136050%_ _%hd136026136045%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl136027136047%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K136025136042%_ _%one136050%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%else136023136037%_)))))
                          (let ()
                            (declare (not safe))
                            (_%else136023136037%_)))))))
          (let* ((_%g135853135870%_
                  (lambda (_%g135854135867%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135854135867%_))))
                 (_%g135852136017%_
                  (lambda (_%g135854135873%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135854135873%_))
                        (let ((_%e135859135875%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135854135873%_))))
                          (let ((_%hd135858135878%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135859135875%_)))
                                (_%tl135857135880%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135859135875%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl135857135880%_))
                                (let ((_%e135862135883%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl135857135880%_))))
                                  (let ((_%hd135861135886%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135862135883%_)))
                                        (_%tl135860135888%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135862135883%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135860135888%_))
                                        (let ((_%e135865135891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135860135888%_))))
                                          (let ((_%hd135864135894%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135865135891%_)))
                                                (_%tl135863135896%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135865135891%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135863135896%_))
                                                ((lambda (_%L135899%_
                                                          _%L135900%_)
                                                   (let _%lp135916%_ ((_%rest135918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L135900%_)
                              (_%r135919%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx145608145609%_
                                                             _%rest135918%_)
                                                            (_%g135924135941%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx145608145609%_)))))
               (let ((_%__kont145610145611%_
                      (lambda (_%L136004%_)
                        (let ()
                          (declare (not safe))
                          (_%lp135916%_ _%L136004%_ _%r135919%_))))
                     (_%__kont145612145613%_
                      (lambda (_%L135977%_ _%L135978%_)
                        (let ((__tmp145993
                               (cons (let ()
                                       (declare (not safe))
                                       (_%generate1135850%_ _%L135978%_))
                                     _%r135919%_)))
                          (declare (not safe))
                          (_%lp135916%_ _%L135977%_ __tmp145993))))
                     (_%__kont145614145615%_
                      (lambda (_%L135953%_)
                        (let ((__tmp145994
                               (let ((__tmp145995
                                      (cons (let ()
                                              (declare (not safe))
                                              (_%generate1135850%_
                                               _%L135953%_))
                                            '())))
                                 (declare (not safe))
                                 (__foldl1 cons __tmp145995 _%r135919%_))))
                          (declare (not safe))
                          (_%generate*135851%_ __tmp145994))))
                     (_%__kont145616145617%_
                      (lambda ()
                        (let ((__tmp145996 (reverse _%r135919%_)))
                          (declare (not safe))
                          (_%generate*135851%_ __tmp145996)))))
                 (let ((_%g135922135964%_
                        (lambda ()
                          (let ((_%L135953%_ _%__stx145608145609%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L135953%_))
                                (_%__kont145614145615%_ _%L135953%_)
                                (_%__kont145616145617%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx145608145609%_))
                       (let ((_%e135929135993%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx145608145609%_))))
                         (let ((_%tl135927135998%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e135929135993%_)))
                               (_%hd135928135996%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e135929135993%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd135928135996%_))
                               (let ((_%e135930136001%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd135928135996%_))))
                                 (if (equal? _%e135930136001%_ '#f)
                                     (_%__kont145610145611%_
                                      _%tl135927135998%_)
                                     (_%__kont145612145613%_
                                      _%tl135927135998%_
                                      _%hd135928135996%_)))
                               (_%__kont145612145613%_
                                _%tl135927135998%_
                                _%hd135928135996%_))))
                       (let () (declare (not safe)) (_%g135922135964%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd135864135894%_
                                                 _%hd135861135886%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g135853135870%_
                                                   _%g135854135873%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g135853135870%_
                                           _%g135854135873%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g135853135870%_ _%g135854135873%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g135853135870%_ _%g135854135873%_))))))
            (declare (not safe))
            (_%g135852136017%_ _%stx135848%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self135744%_ _%stx135745%_)
        (let* ((_%g135747135764%_
                (lambda (_%g135748135761%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135748135761%_))))
               (_%g135746135844%_
                (lambda (_%g135748135767%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135748135767%_))
                      (let ((_%e135753135769%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135748135767%_))))
                        (let ((_%hd135752135772%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135753135769%_)))
                              (_%tl135751135774%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135753135769%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135751135774%_))
                              (let ((_%e135756135777%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135751135774%_))))
                                (let ((_%hd135755135780%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135756135777%_)))
                                      (_%tl135754135782%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135756135777%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135754135782%_))
                                      (let ((_%e135759135785%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135754135782%_))))
                                        (let ((_%hd135758135788%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135759135785%_)))
                                              (_%tl135757135790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135759135785%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135757135790%_))
                                              ((lambda (_%L135793%_
                                                        _%L135794%_)
                                                 (let* ((_%eid135809%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L135794%_)))
                                                        (_%phi135811%_
                                                         (let ((__tmp145997
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp145997 '1)))
                (_%block135813%_
                 (let ((__tmp145998
                        (let ()
                          (declare (not safe))
                          (slot-ref__0 _%self135744%_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp145998 _%phi135811%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g135816135823%_
                                                           (lambda (_%g135817135820%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g135817135820%_))))
                  (_%g135815135841%_
                   (lambda (_%g135817135826%_)
                     ((lambda (_%L135828%_)
                        (let ((__tmp146000
                               (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self135744%_ 'state)))
                              (__tmp145999
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        '%#define-runtime))
                                     (cons _%L135828%_
                                           (cons _%L135793%_ '())))))
                          (declare (not safe))
                          (gxc#meta-state-add-phi!
                           __tmp146000
                           _%phi135811%_
                           __tmp145999)))
                      _%g135817135826%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_%g135815135841%_
                                                      _%eid135809%_))
                                                   (if _%block135813%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block135813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%L135794%_))
                                             (cons _%eid135809%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%L135794%_))
                           (cons _%eid135809%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135758135788%_
                                               _%hd135755135780%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135747135764%_
                                                 _%g135748135767%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135747135764%_
                                         _%g135748135767%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135747135764%_ _%g135748135767%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135747135764%_ _%g135748135767%_))))))
          (declare (not safe))
          (_%g135746135844%_ _%stx135745%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self135676%_ _%stx135677%_)
        (let* ((_%g135679135696%_
                (lambda (_%g135680135693%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135680135693%_))))
               (_%g135678135741%_
                (lambda (_%g135680135699%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135680135699%_))
                      (let ((_%e135685135701%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135680135699%_))))
                        (let ((_%hd135684135704%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135685135701%_)))
                              (_%tl135683135706%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135685135701%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135683135706%_))
                              (let ((_%e135688135709%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135683135706%_))))
                                (let ((_%hd135687135712%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135688135709%_)))
                                      (_%tl135686135714%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135688135709%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135686135714%_))
                                      (let ((_%e135691135717%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135686135714%_))))
                                        (let ((_%hd135690135720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135691135717%_)))
                                              (_%tl135689135722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135691135717%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135689135722%_))
                                              ((lambda (_%L135725%_
                                                        _%L135726%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%L135726%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%L135725%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135690135720%_
                                               _%hd135687135712%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135679135696%_
                                                 _%g135680135699%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135679135696%_
                                         _%g135680135699%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135679135696%_ _%g135680135699%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135679135696%_ _%g135680135699%_))))))
          (declare (not safe))
          (_%g135678135741%_ _%stx135677%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self135673%_ _%stx135674%_)
        (let ((__tmp146002
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135673%_ 'state)))
              (__tmp146001
               (let () (declare (not safe)) (gx#current-expander-phi))))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp146002 __tmp146001 _%stx135674%_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _%self135673%_ _%stx135674%_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self135670%_ _%stx135671%_)
        (let ((__tmp146004
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135670%_ 'state)))
              (__tmp146003
               (let () (declare (not safe)) (gx#current-expander-phi))))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp146004 __tmp146003 _%stx135671%_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp146006 (list)) (__tmp146005 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp146006
         '(src n open blocks)
         __tmp146005
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args135667%_
        (apply make-instance gxc#meta-state::t _%$args135667%_)))
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
      (lambda (_%self135653%_ _%ctx135654%_)
        (let ((_%self135657%_ _%self135653%_))
          (if (let ((__tmp146007
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self135657%_))))
                (declare (not safe))
                (##fx< '4 __tmp146007))
              (begin
                (let ((__tmp146008
                       (let ((__tmp146009
                              (##structure-ref
                               _%ctx135654%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp146009))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self135657%_
                   __tmp146008
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self135657%_ '1 '2 '#f '#f))
                (let ((__tmp146010
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self135657%_
                   __tmp146010
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self135657%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp146011
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self135657%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self135657%_
                       '4
                       __tmp146011))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp146013 (list)) (__tmp146012 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp146013
         '(ctx phi n code)
         __tmp146012
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args135528%_
        (apply make-instance gxc#meta-state-block::t _%$args135528%_)))
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
      (lambda (_%state135487%_ _%phi135488%_)
        (let* ((_%state135489135497%_ _%state135487%_)
               (_%E135491135501%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state135489135497%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K135492135510%_
                (lambda (_%open135504%_ _%n135505%_ _%src135506%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open135504%_ _%phi135488%_))
                      '#f
                      (let ((_%block-ref135508%_
                             (let ((__tmp146014 (number->string _%n135505%_)))
                               (declare (not safe))
                               (##string-append
                                _%src135506%_
                                '"~"
                                __tmp146014))))
                        (##structure-set!
                         _%state135487%_
                         (let () (declare (not safe)) (##fx+ _%n135505%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp146015
                               (let ((__tmp146016
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp146016
                                  _%phi135488%_
                                  _%n135505%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open135504%_ _%phi135488%_ __tmp146015))
                        _%block-ref135508%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state135489135497%_
                 'gxc#meta-state::t))
              (let* ((_%e135493135513%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state135489135497%_
                         '1
                         '#f
                         '#f)))
                     (_%src135516%_ _%e135493135513%_)
                     (_%e135494135518%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state135489135497%_
                         '2
                         '#f
                         '#f)))
                     (_%n135521%_ _%e135494135518%_)
                     (_%e135495135523%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state135489135497%_
                         '3
                         '#f
                         '#f)))
                     (_%open135526%_ _%e135495135523%_))
                (declare (not safe))
                (_%K135492135510%_ _%open135526%_ _%n135521%_ _%src135516%_))
              (let () (declare (not safe)) (_%E135491135501%_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state135481%_ _%phi135482%_ _%stx135483%_)
        (let ((_%block135485%_
               (let ((__tmp146017
                      (##structure-ref
                       _%state135481%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp146017 _%phi135482%_))))
          (##structure-set!
           _%block135485%_
           (cons _%stx135483%_
                 (##structure-ref
                  _%block135485%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state135475%_)
        (##structure-set!
         _%state135475%_
         (let ((__tmp146020
                (lambda (_%_135477%_ _%block135478%_ _%r135479%_)
                  (cons _%block135478%_ _%r135479%_)))
               (__tmp146019
                (##structure-ref _%state135475%_ '4 gxc#meta-state::t '#f))
               (__tmp146018
                (##structure-ref _%state135475%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp146020 __tmp146019 __tmp146018))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state135475%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state135427%_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _%state135427%_))
        (let ((__tmp146022
               (lambda (_%block135429%_ _%r135430%_)
                 (let* ((_%block135431135440%_ _%block135429%_)
                        (_%E135433135444%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block135431135440%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K135434135452%_
                         (lambda (_%code135447%_
                                  _%n135448%_
                                  _%phi135449%_
                                  _%ctx135450%_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _%code135447%_))
                               _%r135430%_
                               (cons (cons _%ctx135450%_
                                           (cons _%phi135449%_
                                                 (cons _%n135448%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code135447%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r135430%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block135431135440%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e135435135455%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135431135440%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx135458%_ _%e135435135455%_)
                              (_%e135436135460%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135431135440%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi135463%_ _%e135436135460%_)
                              (_%e135437135465%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135431135440%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n135468%_ _%e135437135465%_)
                              (_%e135438135470%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135431135440%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code135473%_ _%e135438135470%_))
                         (declare (not safe))
                         (_%K135434135452%_
                          _%code135473%_
                          _%n135468%_
                          _%phi135463%_
                          _%ctx135458%_))
                       (let () (declare (not safe)) (_%E135433135444%_))))))
              (__tmp146021
               (##structure-ref _%state135427%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp146022 '() __tmp146021))))
    (define gxc#collect-expression-refs
      (lambda (_%stx135423%_)
        (let ((_%ht135425%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs__%
             '#f
             _%ht135425%_
             _%stx135423%_))
          _%ht135425%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self135366%_ _%stx135367%_)
        (let* ((_%g135369135382%_
                (lambda (_%g135370135379%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135370135379%_))))
               (_%g135368135420%_
                (lambda (_%g135370135385%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135370135385%_))
                      (let ((_%e135374135387%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135370135385%_))))
                        (let ((_%hd135373135390%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135374135387%_)))
                              (_%tl135372135392%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135374135387%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135372135392%_))
                              (let ((_%e135377135395%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135372135392%_))))
                                (let ((_%hd135376135398%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135377135395%_)))
                                      (_%tl135375135400%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135377135395%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl135375135400%_))
                                      ((lambda (_%L135403%_)
                                         (let* ((_%bind135415%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L135403%_)))
                                                (_%eid135417%_
                                                 (if _%bind135415%_
                                                     (##structure-ref
                                                      _%bind135415%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L135403%_))))
                                                (__tmp146023
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self135366%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp146023
                                            _%eid135417%_
                                            _%eid135417%_)))
                                       _%hd135376135398%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g135369135382%_
                                         _%g135370135385%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135369135382%_ _%g135370135385%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135369135382%_ _%g135370135385%_))))))
          (declare (not safe))
          (_%g135368135420%_ _%stx135367%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self135293%_ _%stx135294%_)
        (let* ((_%g135296135313%_
                (lambda (_%g135297135310%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135297135310%_))))
               (_%g135295135363%_
                (lambda (_%g135297135316%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135297135316%_))
                      (let ((_%e135302135318%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135297135316%_))))
                        (let ((_%hd135301135321%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135302135318%_)))
                              (_%tl135300135323%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135302135318%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135300135323%_))
                              (let ((_%e135305135326%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135300135323%_))))
                                (let ((_%hd135304135329%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135305135326%_)))
                                      (_%tl135303135331%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135305135326%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135303135331%_))
                                      (let ((_%e135308135334%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135303135331%_))))
                                        (let ((_%hd135307135337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135308135334%_)))
                                              (_%tl135306135339%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135308135334%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135306135339%_))
                                              ((lambda (_%L135342%_
                                                        _%L135343%_)
                                                 (let* ((_%bind135358%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L135343%_)))
                                                        (_%eid135360%_
                                                         (if _%bind135358%_
                                                             (##structure-ref
                                                              _%bind135358%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L135343%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp146024
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self135293%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp146024
                                                      _%eid135360%_
                                                      _%eid135360%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self135293%_
                                                      _%L135342%_))))
                                               _%hd135307135337%_
                                               _%hd135304135329%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135296135313%_
                                                 _%g135297135316%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135296135313%_
                                         _%g135297135316%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135296135313%_ _%g135297135316%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135296135313%_ _%g135297135316%_))))))
          (declare (not safe))
          (_%g135295135363%_ _%stx135294%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self135250%_ _%stx135251%_)
        (let* ((_%g135253135263%_
                (lambda (_%g135254135260%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135254135260%_))))
               (_%g135252135290%_
                (lambda (_%g135254135266%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135254135266%_))
                      (let ((_%e135258135268%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135254135266%_))))
                        (let ((_%hd135257135271%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135258135268%_)))
                              (_%tl135256135273%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135258135268%_))))
                          ((lambda (_%L135276%_)
                             (let ((__tmp146025
                                    (lambda (_%g135285135287%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self135250%_
                                         _%g135285135287%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp146025 _%L135276%_)))
                           _%tl135256135273%_)))
                      (let ()
                        (declare (not safe))
                        (_%g135253135263%_ _%g135254135266%_))))))
          (declare (not safe))
          (_%g135252135290%_ _%stx135251%_))))
    (define gxc#count-values-single%
      (lambda (_%self135247%_ _%stx135248%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self135113%_ _%stx135114%_)
        (let* ((_%__stx145638145639%_ _%stx135114%_)
               (_%g135117135146%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx145638145639%_)))))
          (let ((_%__kont145640145641%_
                 (lambda (_%L135214%_ _%L135215%_)
                   (length (let ((__tmp146026
                                  (lambda (_%g135236135239%_ _%g135237135241%_)
                                    (cons _%g135236135239%_
                                          _%g135237135241%_))))
                             (declare (not safe))
                             (__foldr1 __tmp146026 '() _%L135214%_)))))
                (_%__kont145644145645%_ (lambda () '#f)))
            (let ((_%__match145683145684%_
                   (lambda (_%e135123135158%_
                            _%hd135122135161%_
                            _%tl135121135163%_
                            _%e135126135166%_
                            _%hd135125135169%_
                            _%tl135124135171%_
                            _%e135129135174%_
                            _%hd135128135177%_
                            _%tl135127135179%_
                            _%e135132135182%_
                            _%hd135131135185%_
                            _%tl135130135187%_
                            _%__splice145642145643%_
                            _%target135133135190%_
                            _%tl135135135192%_)
                     (letrec ((_%loop135136135195%_
                               (lambda (_%hd135134135198%_
                                        _%rand135140135200%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd135134135198%_))
                                     (let ((_%e135137135203%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd135134135198%_))))
                                       (let ((_%lp-tl135139135208%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e135137135203%_)))
                                             (_%lp-hd135138135206%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e135137135203%_))))
                                         (let ((__tmp146027
                                                (cons _%lp-hd135138135206%_
                                                      _%rand135140135200%_)))
                                           (declare (not safe))
                                           (_%loop135136135195%_
                                            _%lp-tl135139135208%_
                                            __tmp146027))))
                                     (let ((_%rand135141135211%_
                                            (reverse _%rand135140135200%_)))
                                       (let ((_%L135214%_ _%rand135141135211%_)
                                             (_%L135215%_ _%hd135131135185%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L135215%_
                                                'values))
                                             (_%__kont145640145641%_
                                              _%L135214%_
                                              _%L135215%_)
                                             (_%__kont145644145645%_))))))))
                       (let ()
                         (declare (not safe))
                         (_%loop135136135195%_ _%target135133135190%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx145638145639%_))
                  (let ((_%e135123135158%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx145638145639%_))))
                    (let ((_%tl135121135163%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e135123135158%_)))
                          (_%hd135122135161%_
                           (let ()
                             (declare (not safe))
                             (##car _%e135123135158%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl135121135163%_))
                          (let ((_%e135126135166%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl135121135163%_))))
                            (let ((_%tl135124135171%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e135126135166%_)))
                                  (_%hd135125135169%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e135126135166%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd135125135169%_))
                                  (let ((_%e135129135174%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd135125135169%_))))
                                    (let ((_%tl135127135179%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e135129135174%_)))
                                          (_%hd135128135177%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e135129135174%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd135128135177%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd135128135177%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl135127135179%_))
                                                  (let ((_%e135132135182%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl135127135179%_))))
                                                    (let ((_%tl135130135187%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e135132135182%_)))
                                                          (_%hd135131135185%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e135132135182%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl135130135187%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl135124135171%_))
                      (let ((_%__splice145642145643%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl135124135171%_
                                '0))))
                        (let ((_%tl135135135192%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145642145643%_ '1)))
                              (_%target135133135190%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145642145643%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl135135135192%_))
                              (_%__match145683145684%_
                               _%e135123135158%_
                               _%hd135122135161%_
                               _%tl135121135163%_
                               _%e135126135166%_
                               _%hd135125135169%_
                               _%tl135124135171%_
                               _%e135129135174%_
                               _%hd135128135177%_
                               _%tl135127135179%_
                               _%e135132135182%_
                               _%hd135131135185%_
                               _%tl135130135187%_
                               _%__splice145642145643%_
                               _%target135133135190%_
                               _%tl135135135192%_)
                              (_%__kont145644145645%_))))
                      (_%__kont145644145645%_))
                  (_%__kont145644145645%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145644145645%_))
                                              (_%__kont145644145645%_))
                                          (_%__kont145644145645%_))))
                                  (_%__kont145644145645%_))))
                          (_%__kont145644145645%_))))
                  (_%__kont145644145645%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self135016%_ _%stx135017%_)
        (let* ((_%g135019135040%_
                (lambda (_%g135020135037%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135020135037%_))))
               (_%g135018135110%_
                (lambda (_%g135020135043%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135020135043%_))
                      (let ((_%e135026135045%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135020135043%_))))
                        (let ((_%hd135025135048%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135026135045%_)))
                              (_%tl135024135050%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135026135045%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135024135050%_))
                              (let ((_%e135029135053%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135024135050%_))))
                                (let ((_%hd135028135056%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135029135053%_)))
                                      (_%tl135027135058%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135029135053%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135027135058%_))
                                      (let ((_%e135032135061%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135027135058%_))))
                                        (let ((_%hd135031135064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135032135061%_)))
                                              (_%tl135030135066%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135032135061%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl135030135066%_))
                                              (let ((_%e135035135069%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl135030135066%_))))
                                                (let ((_%hd135034135072%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e135035135069%_)))
                                                      (_%tl135033135074%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e135035135069%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl135033135074%_))
                                                      ((lambda (_%L135077%_
                                                                _%L135078%_
                                                                _%L135079%_)
                                                         (let ((_%c1135096135098%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self135016%_ _%L135078%_))))
                   (if _%c1135096135098%_
                       (let* ((_%c1135101%_ _%c1135096135098%_)
                              (_%c2135102135104%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self135016%_
                                  _%L135077%_))))
                         (if _%c2135102135104%_
                             (let ((_%c2135107%_ _%c2135102135104%_))
                               (if (fx= _%c1135101%_ _%c2135107%_)
                                   _%c1135101%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd135034135072%_
               _%hd135031135064%_
               _%hd135028135056%_)
              (let ()
                (declare (not safe))
                (_%g135019135040%_ _%g135020135043%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g135019135040%_
                                                 _%g135020135043%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135019135040%_
                                         _%g135020135043%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135019135040%_ _%g135020135043%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135019135040%_ _%g135020135043%_))))))
          (declare (not safe))
          (_%g135018135110%_ _%stx135017%_))))))
