(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1712246556)
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
        (letrec ((_%hash-e144335%_
                  (lambda (_%id144337%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id144337%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e144335%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp145728 (list gxc#::void::t))
            (__tmp145727 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp145728
         '()
         __tmp145727
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args144331%_
        (apply make-instance gxc#::collect-bindings::t _%$args144331%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp145729
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
        (__make-promise __tmp145729)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx144323%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self144326%_
                (let ((__obj145703
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj145703))
               (__tmp145730
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144326%_ _%stx144323%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145730
           gxc#current-compile-method
           _%self144326%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp145732 (list gxc#::void::t))
            (__tmp145731 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp145732
         '(modules)
         __tmp145731
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args144320%_
        (apply make-instance gxc#::lift-modules::t _%$args144320%_)))
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
      (let ((__tmp145733
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
        (__make-promise __tmp145733)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords144294%_ _%modules144291144295%_ _%stx144297%_)
        (let ((_%modules144300%_
               (if (eq? _%modules144291144295%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules144291144295%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self144302%_
                  (let ((__obj145705
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145705
                       _%modules144300%_
                       '1
                       '#f
                       '#f))
                    __obj145705))
                 (__tmp145734
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144302%_ _%stx144297%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145734
             gxc#current-compile-method
             _%self144302%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords144309%_ . _%args144310%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords144309%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144309%_
                  'modules:
                  absent-value))
               _%args144310%_)))
    (define gxc#apply-lift-modules
      (lambda _%args144292144316%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args144292144316%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp145736 (list)) (__tmp145735 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp145736
         '()
         __tmp145735
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args144287%_
        (apply make-instance gxc#::find-runtime-code::t _%$args144287%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp145737
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
        (__make-promise __tmp145737)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx144279%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self144282%_
                (let ((__obj145707
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj145707))
               (__tmp145738
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144282%_ _%stx144279%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145738
           gxc#current-compile-method
           _%self144282%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp145740 (list gxc#::false::t))
            (__tmp145739 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp145740
         '()
         __tmp145739
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args144276%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args144276%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp145741
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
        (__make-promise __tmp145741)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx144268%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self144271%_
                (let ((__obj145709
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj145709))
               (__tmp145742
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144271%_ _%stx144268%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145742
           gxc#current-compile-method
           _%self144271%_))))
    (define gxc#::count-values::t
      (let ((__tmp145744 (list gxc#::false-expression::t))
            (__tmp145743 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp145744
         '()
         __tmp145743
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args144265%_
        (apply make-instance gxc#::count-values::t _%$args144265%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp145745
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
        (__make-promise __tmp145745)))
    (define gxc#apply-count-values
      (lambda (_%stx144257%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self144260%_
                (let ((__obj145711
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj145711))
               (__tmp145746
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144260%_ _%stx144257%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145746
           gxc#current-compile-method
           _%self144260%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp145747 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp145747
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args144254%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args144254%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp145748
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
        (__make-promise __tmp145748)))
    (define gxc#::generate-loader::t
      (let ((__tmp145750 (list gxc#::generate-runtime-empty::t))
            (__tmp145749 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp145750
         '()
         __tmp145749
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args144250%_
        (apply make-instance gxc#::generate-loader::t _%$args144250%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp145751
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
        (__make-promise __tmp145751)))
    (define gxc#apply-generate-loader
      (lambda (_%stx144242%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self144245%_
                (let ((__obj145714
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj145714))
               (__tmp145752
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144245%_ _%stx144242%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145752
           gxc#current-compile-method
           _%self144245%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp145753 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp145753
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args144239%_
        (apply make-instance gxc#::generate-runtime::t _%$args144239%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp145754
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
        (__make-promise __tmp145754)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx144231%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self144234%_
                (let ((__obj145716
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj145716))
               (__tmp145755
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144234%_ _%stx144231%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145755
           gxc#current-compile-method
           _%self144234%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp145757 (list gxc#::generate-runtime::t))
            (__tmp145756 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp145757
         '()
         __tmp145756
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args144228%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args144228%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp145758
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
        (__make-promise __tmp145758)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx144220%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self144223%_
                (let ((__obj145718
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj145718))
               (__tmp145759
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144223%_ _%stx144220%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145759
           gxc#current-compile-method
           _%self144223%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp145760 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp145760
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args144217%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args144217%_)))
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
      (let ((__tmp145761
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
        (__make-promise __tmp145761)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords144191%_ _%table144188144192%_ _%stx144194%_)
        (let ((_%table144197%_
               (if (eq? _%table144188144192%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table144188144192%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self144199%_
                  (let ((__obj145720
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145720
                       _%table144197%_
                       '1
                       '#f
                       '#f))
                    __obj145720))
                 (__tmp145762
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144199%_ _%stx144194%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145762
             gxc#current-compile-method
             _%self144199%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords144206%_ . _%args144207%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords144206%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144206%_
                  'table:
                  absent-value))
               _%args144207%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args144189144213%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args144189144213%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp145764 (list gxc#::void-expression::t))
            (__tmp145763 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp145764
         '(state)
         __tmp145763
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args144184%_
        (apply make-instance gxc#::generate-meta::t _%$args144184%_)))
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
      (let ((__tmp145765
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
        (__make-promise __tmp145765)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords144158%_ _%state144155144159%_ _%stx144161%_)
        (let ((_%state144164%_
               (if (eq? _%state144155144159%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state144155144159%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self144166%_
                  (let ((__obj145722
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145722
                       _%state144164%_
                       '1
                       '#f
                       '#f))
                    __obj145722))
                 (__tmp145766
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144166%_ _%stx144161%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145766
             gxc#current-compile-method
             _%self144166%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords144173%_ . _%args144174%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords144173%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144173%_
                  'state:
                  absent-value))
               _%args144174%_)))
    (define gxc#apply-generate-meta
      (lambda _%args144156144180%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args144156144180%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp145768 (list)) (__tmp145767 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp145768
         '(state)
         __tmp145767
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args144151%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args144151%_)))
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
      (let ((__tmp145769
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
        (__make-promise __tmp145769)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords144125%_ _%state144122144126%_ _%stx144128%_)
        (let ((_%state144131%_
               (if (eq? _%state144122144126%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state144122144126%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self144133%_
                  (let ((__obj145724
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145724
                       _%state144131%_
                       '1
                       '#f
                       '#f))
                    __obj145724))
                 (__tmp145770
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144133%_ _%stx144128%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145770
             gxc#current-compile-method
             _%self144133%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords144140%_ . _%args144141%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords144140%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144140%_
                  'state:
                  absent-value))
               _%args144141%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args144123144147%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args144123144147%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self144051%_ _%stx144052%_)
        (let* ((_%g144054144071%_
                (lambda (_%g144055144068%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144055144068%_))))
               (_%g144053144118%_
                (lambda (_%g144055144074%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144055144074%_))
                      (let ((_%e144060144076%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144055144074%_))))
                        (let ((_%hd144059144079%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144060144076%_)))
                              (_%tl144058144081%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144060144076%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144058144081%_))
                              (let ((_%e144063144084%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144058144081%_))))
                                (let ((_%hd144062144087%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144063144084%_)))
                                      (_%tl144061144089%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144063144084%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144061144089%_))
                                      (let ((_%e144066144092%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144061144089%_))))
                                        (let ((_%hd144065144095%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144066144092%_)))
                                              (_%tl144064144097%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144066144092%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144064144097%_))
                                              ((lambda (_%L144100%_
                                                        _%L144101%_)
                                                 (let ((__tmp145771
                                                        (lambda (_%bind144116%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind144116%_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _%bind144116%_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp145771
                                                    _%L144101%_)))
                                               _%hd144065144095%_
                                               _%hd144062144087%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g144054144071%_
                                                 _%g144055144074%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g144054144071%_
                                         _%g144055144074%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g144054144071%_ _%g144055144074%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g144054144071%_ _%g144055144074%_))))))
          (declare (not safe))
          (_%g144053144118%_ _%stx144052%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self143983%_ _%stx143984%_)
        (let* ((_%g143986144003%_
                (lambda (_%g143987144000%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143987144000%_))))
               (_%g143985144048%_
                (lambda (_%g143987144006%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143987144006%_))
                      (let ((_%e143992144008%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143987144006%_))))
                        (let ((_%hd143991144011%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143992144008%_)))
                              (_%tl143990144013%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143992144008%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143990144013%_))
                              (let ((_%e143995144016%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143990144013%_))))
                                (let ((_%hd143994144019%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143995144016%_)))
                                      (_%tl143993144021%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143995144016%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143993144021%_))
                                      (let ((_%e143998144024%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143993144021%_))))
                                        (let ((_%hd143997144027%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143998144024%_)))
                                              (_%tl143996144029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143998144024%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143996144029%_))
                                              ((lambda (_%L144032%_
                                                        _%L144033%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _%L144033%_
                                                    '#t)))
                                               _%hd143997144027%_
                                               _%hd143994144019%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g143986144003%_
                                                 _%g143987144006%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143986144003%_
                                         _%g143987144006%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143986144003%_ _%g143987144006%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143986144003%_ _%g143987144006%_))))))
          (declare (not safe))
          (_%g143985144048%_ _%stx143984%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self143925%_ _%stx143926%_)
        (let* ((_%g143928143942%_
                (lambda (_%g143929143939%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143929143939%_))))
               (_%g143927143980%_
                (lambda (_%g143929143945%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143929143945%_))
                      (let ((_%e143934143947%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143929143945%_))))
                        (let ((_%hd143933143950%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143934143947%_)))
                              (_%tl143932143952%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143934143947%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143932143952%_))
                              (let ((_%e143937143955%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143932143952%_))))
                                (let ((_%hd143936143958%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143937143955%_)))
                                      (_%tl143935143960%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143937143955%_))))
                                  ((lambda (_%L143963%_ _%L143964%_)
                                     (let ((_%ctx143977%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L143964%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self143925%_
                                           'modules))
                                        (cons _%ctx143977%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self143925%_
                                                        'modules)))))
                                       (let ((__tmp145772
                                              (lambda ()
                                                (let ((__tmp145773
                                                       (##structure-ref
                                                        _%ctx143977%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143925%_
                                                   __tmp145773)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp145772
                                          gx#current-expander-context
                                          _%ctx143977%_))))
                                   _%tl143935143960%_
                                   _%hd143936143958%_)))
                              (let ()
                                (declare (not safe))
                                (_%g143928143942%_ _%g143929143945%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143928143942%_ _%g143929143945%_))))))
          (declare (not safe))
          (_%g143927143980%_ _%stx143926%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls143878143880%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls143878143880%_
              (let ((_%decls143883%_ _%decls143878143880%_))
                (let _%lp143885%_ ((_%rest143887%_ _%decls143883%_))
                  (let* ((_%rest143888143896%_ _%rest143887%_)
                         (_%else143890143904%_ (lambda () '#f))
                         (_%K143892143913%_
                          (lambda (_%decls143907%_ _%decl143908%_)
                            (if (equal? _%decl143908%_ '(not safe))
                                (let () '#t)
                                (if (equal? _%decl143908%_ '(safe))
                                    (let () '#f)
                                    (let ()
                                      (declare (not safe))
                                      (_%lp143885%_ _%decls143907%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest143888143896%_))
                        (let ((_%hd143893143916%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest143888143896%_)))
                              (_%tl143894143918%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest143888143896%_))))
                          (let* ((_%decl143921%_ _%hd143893143916%_)
                                 (_%decls143923%_ _%tl143894143918%_))
                            (declare (not safe))
                            (_%K143892143913%_
                             _%decls143923%_
                             _%decl143921%_)))
                        (let ()
                          (declare (not safe))
                          (_%else143890143904%_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id143872%_ _%syntax?143873%_)
        (let ((_%eid143875%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id143872%_))
                '1
                gx#binding::t
                '#f))
              (_%ht143876%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid143875%_))
              '#!void
              (let ((__tmp145774
                     (let ((__tmp145775
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid143875%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp145775 _%syntax?143873%_))))
                (declare (not safe))
                (hash-put! _%ht143876%_ _%eid143875%_ __tmp145774))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id143870%_)
        (let ((__tmp145776
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _%id143870%_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp145776))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key143825%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key143825%_))
            (let () _%key143825%_)
            (if (uninterned-symbol? _%key143825%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key143825%_))
                (let ()
                  (let* ((_%key143829143836%_ _%key143825%_)
                         (_%E143831143840%_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _%key143829143836%_
                                     '([eid . mark])))
                            '#!void))
                         (_%K143832143858%_
                          (lambda (_%mark143843%_ _%eid143844%_)
                            (let ((_%$e143846%_
                                   (##structure-ref
                                    _%mark143843%_
                                    '1
                                    gx#expander-mark::t
                                    '#f)))
                              (if _%$e143846%_
                                  ((lambda (_%ht143849%_)
                                     (let ((_%$e143851%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-get
                                               _%ht143849%_
                                               _%eid143844%_))))
                                       (if _%$e143851%_
                                           ((lambda (_%id143854%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (interned-symbol?
                                                     _%id143854%_))
                                                  _%id143854%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _%id143854%_))))
                                            _%$e143851%_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%eid143844%_)))))
                                   _%$e143846%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-identifier-key
                                     _%eid143844%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%key143829143836%_))
                        (let ((_%hd143833143861%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%key143829143836%_)))
                              (_%tl143834143863%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%key143829143836%_))))
                          (let* ((_%eid143866%_ _%hd143833143861%_)
                                 (_%mark143868%_ _%tl143834143863%_))
                            (declare (not safe))
                            (_%K143832143858%_ _%mark143868%_ _%eid143866%_)))
                        (let ()
                          (declare (not safe))
                          (_%E143831143840%_)))))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self143822%_ _%stx143823%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self143669%_ _%stx143670%_)
        (letrec ((_%simplify143672%_
                  (lambda (_%body143720%_)
                    (let _%lp143722%_ ((_%rest143724%_ _%body143720%_)
                                       (_%r143725%_ '()))
                      (let* ((_%rest143726143734%_ _%rest143724%_)
                             (_%else143728143742%_
                              (lambda () (reverse _%r143725%_)))
                             (_%K143730143810%_
                              (lambda (_%rest143745%_ _%hd143746%_)
                                (let* ((_%hd143747143763%_ _%hd143746%_)
                                       (_%else143751143771%_
                                        (lambda ()
                                          (let ((__tmp145777
                                                 (cons _%hd143746%_
                                                       _%r143725%_)))
                                            (declare (not safe))
                                            (_%lp143722%_
                                             _%rest143745%_
                                             __tmp145777)))))
                                  (let ((_%K143759143800%_
                                         (lambda (_%exprs143798%_)
                                           (let ((__tmp145778
                                                  (let ()
                                                    (declare (not safe))
                                                    (__foldr1
                                                     cons
                                                     _%rest143745%_
                                                     _%exprs143798%_))))
                                             (declare (not safe))
                                             (_%lp143722%_
                                              __tmp145778
                                              _%r143725%_))))
                                        (_%K143754143784%_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _%rest143745%_))
                                               (let ((__tmp145779
                                                      (cons _%hd143746%_
                                                            _%r143725%_)))
                                                 (declare (not safe))
                                                 (_%lp143722%_
                                                  _%rest143745%_
                                                  __tmp145779))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp143722%_
                                                  _%rest143745%_
                                                  _%r143725%_)))))
                                        (_%K143753143776%_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _%rest143745%_))
                                               (let ((__tmp145780
                                                      (cons _%hd143746%_
                                                            _%r143725%_)))
                                                 (declare (not safe))
                                                 (_%lp143722%_
                                                  _%rest143745%_
                                                  __tmp145780))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp143722%_
                                                  _%rest143745%_
                                                  _%r143725%_))))))
                                    (let ((_%try-match143750143779%_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _%hd143747143763%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%K143753143776%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%else143751143771%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd143747143763%_))
                                          (let ((_%tl143761143805%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd143747143763%_)))
                                                (_%hd143760143803%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd143747143763%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd143760143803%_
                                                         'begin))
                                                (let ((_%exprs143808%_
                                                       _%tl143761143805%_))
                                                  (declare (not safe))
                                                  (_%K143759143800%_
                                                   _%exprs143808%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd143760143803%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl143761143805%_))
                                                        (let ((_%tl143758143792%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl143761143805%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl143758143792%_))
                      (let () (declare (not safe)) (_%K143754143784%_))
                      (let ()
                        (declare (not safe))
                        (_%try-match143750143779%_))))
                (let () (declare (not safe)) (_%try-match143750143779%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%try-match143750143779%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%try-match143750143779%_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest143726143734%_))
                            (let ((_%hd143731143813%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest143726143734%_)))
                                  (_%tl143732143815%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest143726143734%_))))
                              (let* ((_%hd143818%_ _%hd143731143813%_)
                                     (_%rest143820%_ _%tl143732143815%_))
                                (declare (not safe))
                                (_%K143730143810%_
                                 _%rest143820%_
                                 _%hd143818%_)))
                            (let ()
                              (declare (not safe))
                              (_%else143728143742%_))))))))
          (let* ((_%g143674143684%_
                  (lambda (_%g143675143681%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143675143681%_))))
                 (_%g143673143717%_
                  (lambda (_%g143675143687%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143675143687%_))
                        (let ((_%e143679143689%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143675143687%_))))
                          (let ((_%hd143678143692%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143679143689%_)))
                                (_%tl143677143694%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143679143689%_))))
                            ((lambda (_%L143697%_)
                               (let* ((_%body143712%_
                                       (map (lambda (_%g143707143709%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self143669%_
                                                 _%g143707143709%_)))
                                            _%L143697%_))
                                      (_%body143714%_
                                       (let ()
                                         (declare (not safe))
                                         (_%simplify143672%_ _%body143712%_))))
                                 (if (let ((__tmp145781
                                            (length _%body143714%_)))
                                       (declare (not safe))
                                       (##fx= __tmp145781 '1))
                                     (car _%body143714%_)
                                     (cons 'begin _%body143714%_))))
                             _%tl143677143694%_)))
                        (let ()
                          (declare (not safe))
                          (_%g143674143684%_ _%g143675143687%_))))))
            (declare (not safe))
            (_%g143673143717%_ _%stx143670%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self143630%_ _%stx143631%_)
        (let* ((_%g143633143643%_
                (lambda (_%g143634143640%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143634143640%_))))
               (_%g143632143666%_
                (lambda (_%g143634143646%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143634143646%_))
                      (let ((_%e143638143648%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143634143646%_))))
                        (let ((_%hd143637143651%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143638143648%_)))
                              (_%tl143636143653%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143638143648%_))))
                          ((lambda (_%L143656%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L143656%_))))
                           _%tl143636143653%_)))
                      (let ()
                        (declare (not safe))
                        (_%g143633143643%_ _%g143634143646%_))))))
          (declare (not safe))
          (_%g143632143666%_ _%stx143631%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self143394%_ _%stx143395%_)
        (let* ((_%__stx144360144361%_ _%stx143395%_)
               (_%g143399143451%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144360144361%_)))))
          (let ((_%__kont144362144363%_
                 (lambda (_%L143612%_ _%L143613%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self143394%_ _%L143612%_))))
                (_%__kont144364144365%_
                 (lambda (_%L143560%_ _%L143561%_ _%L143562%_)
                   (if (let ((__tmp145782
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L143562%_))))
                         (declare (not safe))
                         (##memq __tmp145782 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self143394%_ _%L143560%_)))))
                (_%__kont144368144369%_
                 (lambda (_%L143480%_ _%L143481%_)
                   (let ((_%decls143496%_ (map gx#syntax->datum _%L143481%_)))
                     (let ((__tmp145785
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls143496%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143394%_
                                                   _%L143480%_))
                                                '())))))
                           (__tmp145783
                            (let ((__tmp145784
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp145784 _%decls143496%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp145785
                        gxc#current-compile-decls
                        __tmp145783))))))
            (let* ((_%__match144415144416%_
                    (lambda (_%e143417143504%_
                             _%hd143416143507%_
                             _%tl143415143509%_
                             _%e143420143512%_
                             _%hd143419143515%_
                             _%tl143418143517%_
                             _%e143423143520%_
                             _%hd143422143523%_
                             _%tl143421143525%_
                             _%__splice144366144367%_
                             _%target143424143528%_
                             _%tl143426143530%_)
                      (letrec ((_%loop143427143533%_
                                (lambda (_%hd143425143536%_
                                         _%param143431143538%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd143425143536%_))
                                      (let ((_%e143428143541%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd143425143536%_))))
                                        (let ((_%lp-tl143430143546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143428143541%_)))
                                              (_%lp-hd143429143544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143428143541%_))))
                                          (let ((__tmp145786
                                                 (cons _%lp-hd143429143544%_
                                                       _%param143431143538%_)))
                                            (declare (not safe))
                                            (_%loop143427143533%_
                                             _%lp-tl143430143546%_
                                             __tmp145786))))
                                      (let ((_%param143432143549%_
                                             (reverse _%param143431143538%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143418143517%_))
                                            (let ((_%e143435143552%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143418143517%_))))
                                              (let ((_%tl143433143557%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143435143552%_)))
                                                    (_%hd143434143555%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143435143552%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl143433143557%_))
                                                    (let ((_%L143560%_
                                                           _%hd143434143555%_)
                                                          (_%L143561%_
                                                           _%param143432143549%_)
                                                          (_%L143562%_
                                                           _%hd143422143523%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L143562%_))
                       (let ((__tmp145787
                              (let ((__tmp145788
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L143562%_))))
                                (declare (not safe))
                                (##memq __tmp145788 gxc#gambit-annotations))))
                         (declare (not safe))
                         (not __tmp145787)))
                  (_%__kont144364144365%_ _%L143560%_ _%L143561%_ _%L143562%_)
                  (_%__kont144368144369%_
                   _%hd143434143555%_
                   _%hd143419143515%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g143399143451%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g143399143451%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop143427143533%_ _%target143424143528%_ '())))))
                   (_%__match144389144390%_
                    (lambda (_%e143405143588%_
                             _%hd143404143591%_
                             _%tl143403143593%_
                             _%e143408143596%_
                             _%hd143407143599%_
                             _%tl143406143601%_
                             _%e143411143604%_
                             _%hd143410143607%_
                             _%tl143409143609%_)
                      (let ((_%L143612%_ _%hd143410143607%_)
                            (_%L143613%_ _%hd143407143599%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L143613%_))
                            (_%__kont144362144363%_ _%L143612%_ _%L143613%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd143407143599%_))
                                (let ((_%e143423143520%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd143407143599%_))))
                                  (let ((_%tl143421143525%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143423143520%_)))
                                        (_%hd143422143523%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143423143520%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl143421143525%_))
                                        (let ((_%__splice144366144367%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl143421143525%_
                                                  '0))))
                                          (let ((_%tl143426143530%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice144366144367%_
                                                    '1)))
                                                (_%target143424143528%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice144366144367%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143426143530%_))
                                                (_%__match144415144416%_
                                                 _%e143405143588%_
                                                 _%hd143404143591%_
                                                 _%tl143403143593%_
                                                 _%e143408143596%_
                                                 _%hd143407143599%_
                                                 _%tl143406143601%_
                                                 _%e143423143520%_
                                                 _%hd143422143523%_
                                                 _%tl143421143525%_
                                                 _%__splice144366144367%_
                                                 _%target143424143528%_
                                                 _%tl143426143530%_)
                                                (_%__kont144368144369%_
                                                 _%hd143410143607%_
                                                 _%hd143407143599%_))))
                                        (_%__kont144368144369%_
                                         _%hd143410143607%_
                                         _%hd143407143599%_))))
                                (_%__kont144368144369%_
                                 _%hd143410143607%_
                                 _%hd143407143599%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144360144361%_))
                  (let ((_%e143405143588%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144360144361%_))))
                    (let ((_%tl143403143593%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143405143588%_)))
                          (_%hd143404143591%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143405143588%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143403143593%_))
                          (let ((_%e143408143596%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143403143593%_))))
                            (let ((_%tl143406143601%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143408143596%_)))
                                  (_%hd143407143599%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143408143596%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl143406143601%_))
                                  (let ((_%e143411143604%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl143406143601%_))))
                                    (let ((_%tl143409143609%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143411143604%_)))
                                          (_%hd143410143607%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143411143604%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl143409143609%_))
                                          (_%__match144389144390%_
                                           _%e143405143588%_
                                           _%hd143404143591%_
                                           _%tl143403143593%_
                                           _%e143408143596%_
                                           _%hd143407143599%_
                                           _%tl143406143601%_
                                           _%e143411143604%_
                                           _%hd143410143607%_
                                           _%tl143409143609%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd143407143599%_))
                                              (let ((_%e143423143520%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd143407143599%_))))
                                                (let ((_%tl143421143525%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143423143520%_)))
                                                      (_%hd143422143523%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143423143520%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl143421143525%_))
                                                      (let ((_%__splice144366144367%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl143421143525%_ '0))))
                (let ((_%tl143426143530%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice144366144367%_ '1)))
                      (_%target143424143528%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice144366144367%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl143426143530%_))
                      (_%__match144415144416%_
                       _%e143405143588%_
                       _%hd143404143591%_
                       _%tl143403143593%_
                       _%e143408143596%_
                       _%hd143407143599%_
                       _%tl143406143601%_
                       _%e143423143520%_
                       _%hd143422143523%_
                       _%tl143421143525%_
                       _%__splice144366144367%_
                       _%target143424143528%_
                       _%tl143426143530%_)
                      (let () (declare (not safe)) (_%g143399143451%_)))))
              (let () (declare (not safe)) (_%g143399143451%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g143399143451%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd143407143599%_))
                                      (let ((_%e143423143520%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd143407143599%_))))
                                        (let ((_%tl143421143525%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143423143520%_)))
                                              (_%hd143422143523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143423143520%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl143421143525%_))
                                              (let ((_%__splice144366144367%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl143421143525%_
                                                        '0))))
                                                (let ((_%tl143426143530%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice144366144367%_
                                                          '1)))
                                                      (_%target143424143528%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice144366144367%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143426143530%_))
                                                      (_%__match144415144416%_
                                                       _%e143405143588%_
                                                       _%hd143404143591%_
                                                       _%tl143403143593%_
                                                       _%e143408143596%_
                                                       _%hd143407143599%_
                                                       _%tl143406143601%_
                                                       _%e143423143520%_
                                                       _%hd143422143523%_
                                                       _%tl143421143525%_
                                                       _%__splice144366144367%_
                                                       _%target143424143528%_
                                                       _%tl143426143530%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g143399143451%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g143399143451%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143399143451%_))))))
                          (let () (declare (not safe)) (_%g143399143451%_)))))
                  (let () (declare (not safe)) (_%g143399143451%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self143353%_ _%stx143354%_)
        (let* ((_%g143356143366%_
                (lambda (_%g143357143363%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143357143363%_))))
               (_%g143355143391%_
                (lambda (_%g143357143369%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143357143369%_))
                      (let ((_%e143361143371%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143357143369%_))))
                        (let ((_%hd143360143374%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143361143371%_)))
                              (_%tl143359143376%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143361143371%_))))
                          ((lambda (_%L143379%_)
                             (let ((_%decls143389%_
                                    (map gx#syntax->datum _%L143379%_)))
                               (let ((__tmp145789
                                      (let ((__tmp145790
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp145790
                                         _%decls143389%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp145789))
                               (cons 'declare _%decls143389%_)))
                           _%tl143359143376%_)))
                      (let ()
                        (declare (not safe))
                        (_%g143356143366%_ _%g143357143369%_))))))
          (declare (not safe))
          (_%g143355143391%_ _%stx143354%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self143099%_ _%stx143100%_)
        (let* ((_%g143102143119%_
                (lambda (_%g143103143116%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143103143116%_))))
               (_%g143101143350%_
                (lambda (_%g143103143122%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143103143122%_))
                      (let ((_%e143108143124%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143103143122%_))))
                        (let ((_%hd143107143127%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143108143124%_)))
                              (_%tl143106143129%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143108143124%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143106143129%_))
                              (let ((_%e143111143132%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143106143129%_))))
                                (let ((_%hd143110143135%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143111143132%_)))
                                      (_%tl143109143137%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143111143132%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143109143137%_))
                                      (let ((_%e143114143140%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143109143137%_))))
                                        (let ((_%hd143113143143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143114143140%_)))
                                              (_%tl143112143145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143114143140%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143112143145%_))
                                              ((lambda (_%L143148%_
                                                        _%L143149%_)
                                                 (let* ((_%__stx144468144469%_
                                                         _%L143149%_)
                                                        (_%g143166143180%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx144468144469%_)))))
                                                   (let ((_%__kont144470144471%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self143099%_
                                                               _%L143148%_))))
                                                         (_%__kont144472144473%_
                                                          (lambda (_%L143312%_)
                                                            (let ((_%eid143321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L143312%_))))
                      (let ((_%lambda-expr143322143324%_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression
                                _%L143148%_))))
                        (if _%lambda-expr143322143324%_
                            (let* ((_%lambda-expr143327%_
                                    _%lambda-expr143322143324%_)
                                   (__tmp145791
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp145791
                               _%lambda-expr143327%_
                               _%eid143321%_))
                            '#f))
                      (cons 'define
                            (cons _%eid143321%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self143099%_
                                           _%L143148%_))
                                        '()))))))
                 (_%__kont144474144475%_
                  (lambda ()
                    (let* ((_%tmp143187%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body143296%_
                            (let _%lp143189%_ ((_%rest143191%_ _%L143149%_)
                                               (_%k143192%_ '0)
                                               (_%r143193%_ '()))
                              (let* ((_%__stx144438144439%_ _%rest143191%_)
                                     (_%g143198143215%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx144438144439%_)))))
                                (let ((_%__kont144440144441%_
                                       (lambda (_%L143283%_)
                                         (let ((__tmp145792
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%k143192%_ '1))))
                                           (declare (not safe))
                                           (_%lp143189%_
                                            _%L143283%_
                                            __tmp145792
                                            _%r143193%_))))
                                      (_%__kont144442144443%_
                                       (lambda (_%L143256%_ _%L143257%_)
                                         (let ((__tmp145794
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%k143192%_ '1)))
                                               (__tmp145793
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L143257%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-values-ref
                                   _%tmp143187%_
                                   _%k143192%_
                                   _%L143256%_))
                                '())))
              _%r143193%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%lp143189%_
                                            _%L143256%_
                                            __tmp145794
                                            __tmp145793))))
                                      (_%__kont144444144445%_
                                       (lambda (_%L143227%_)
                                         (let ((__tmp145795
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L143227%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-values->list
                                   _%tmp143187%_
                                   _%k143192%_))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp145795
                                            _%r143193%_))))
                                      (_%__kont144446144447%_
                                       (lambda () (reverse _%r143193%_))))
                                  (let ((_%g143196143243%_
                                         (lambda ()
                                           (let ((_%L143227%_
                                                  _%__stx144438144439%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L143227%_))
                                                 (_%__kont144444144445%_
                                                  _%L143227%_)
                                                 (_%__kont144446144447%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx144438144439%_))
                                        (let ((_%e143203143272%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx144438144439%_))))
                                          (let ((_%tl143201143277%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143203143272%_)))
                                                (_%hd143202143275%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143203143272%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd143202143275%_))
                                                (let ((_%e143204143280%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143202143275%_))))
                                                  (if (equal? _%e143204143280%_
                                                              '#f)
                                                      (_%__kont144440144441%_
                                                       _%tl143201143277%_)
                                                      (_%__kont144442144443%_
                                                       _%tl143201143277%_
                                                       _%hd143202143275%_)))
                                                (_%__kont144442144443%_
                                                 _%tl143201143277%_
                                                 _%hd143202143275%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g143196143243%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp143187%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self143099%_
                                                       _%L143148%_))
                                                    '())))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-check-values
                                           _%tmp143187%_
                                           _%L143149%_
                                           _%L143148%_))
                                        _%body143296%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx144468144469%_))
                                                         (let ((_%e143170143334%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx144468144469%_))))
                   (let ((_%tl143168143339%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e143170143334%_)))
                         (_%hd143169143337%_
                          (let ()
                            (declare (not safe))
                            (##car _%e143170143334%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd143169143337%_))
                         (let ((_%e143171143342%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd143169143337%_))))
                           (if (equal? _%e143171143342%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl143168143339%_))
                                   (_%__kont144470144471%_)
                                   (_%__kont144474144475%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl143168143339%_))
                                   (_%__kont144472144473%_ _%hd143169143337%_)
                                   (_%__kont144474144475%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143168143339%_))
                             (_%__kont144472144473%_ _%hd143169143337%_)
                             (_%__kont144474144475%_)))))
                 (_%__kont144474144475%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd143113143143%_
                                               _%hd143110143135%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g143102143119%_
                                                 _%g143103143122%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143102143119%_
                                         _%g143103143122%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143102143119%_ _%g143103143122%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143102143119%_ _%g143103143122%_))))))
          (declare (not safe))
          (_%g143101143350%_ _%stx143100%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals143074%_ _%hd143075%_ _%expr143076%_)
        (let ((_%$e143078%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _%expr143076%_))))
          (if _%$e143078%_
              ((lambda (_%count143081%_)
                 (let ((_%len143083%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd143075%_)))
                       (_%cmp143084%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd143075%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len143083%_ '0))
                           (_%cmp143084%_ _%count143081%_ _%len143083%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr143076%_
                          _%hd143075%_)))))
               _%$e143078%_)
              (let ()
                (let* ((_%len143090%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd143075%_)))
                       (_%cmp143092%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd143075%_))
                            '##fx=
                            '##fx>=))
                       (_%errmsg143094%_
                        (let ((__tmp145797
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-list? _%hd143075%_))
                                   '"Context expects "
                                   '"Context expects at least "))
                              (__tmp145796 (number->string _%len143090%_)))
                          (declare (not safe))
                          (##string-append
                           __tmp145797
                           __tmp145796
                           '" values")))
                       (_%count143096%_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-temporary__0))))
                  (if (and (let ((__tmp145798
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-list? _%hd143075%_))))
                             (declare (not safe))
                             (not __tmp145798))
                           (let ()
                             (declare (not safe))
                             (##fx= _%len143090%_ '0)))
                      '#!void
                      (cons 'let
                            (cons (cons (cons _%count143096%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-values-count
                                                       _%vals143074%_))
                                                    '()))
                                        '())
                                  (cons (cons 'if
                                              (cons (cons 'not
                                                          (cons (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#current-compile-decls-unsafe?))
                            (cons _%cmp143092%_
                                  (cons _%count143096%_
                                        (cons _%len143090%_ '())))
                            (cons 'let
                                  (cons '()
                                        (cons '(declare (not safe))
                                              (cons (cons _%cmp143092%_
                                                          (cons _%count143096%_
                                                                (cons _%len143090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'error
                                                                (cons _%errmsg143094%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%count143096%_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var143069%_)
        (letrec ((_%generate-inline143071%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var143069%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var143069%_ '()))
                                      (cons '1 '())))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_%generate-inline143071%_))
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (let ()
                                        (declare (not safe))
                                        (_%generate-inline143071%_))
                                      '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var143062%_ _%i143063%_ _%rest143064%_)
        (letrec ((_%generate-inline143066%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i143063%_ '0))
                             (let ((__tmp145799
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%rest143064%_))))
                               (declare (not safe))
                               (not __tmp145799)))
                        (cons 'if
                              (cons (cons '##values? (cons _%var143062%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var143062%_
                                                      (cons '0 '())))
                                          (cons _%var143062%_ '()))))
                        (cons '##vector-ref
                              (cons _%var143062%_ (cons _%i143063%_ '())))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_%generate-inline143066%_))
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (let ()
                                        (declare (not safe))
                                        (_%generate-inline143066%_))
                                      '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var143056%_ _%i143057%_)
        (if (let () (declare (not safe)) (##fx= _%i143057%_ '0))
            (let ()
              (if (let ()
                    (declare (not safe))
                    (gxc#current-compile-decls-unsafe?))
                  (cons 'if
                        (cons (cons '##values? (cons _%var143056%_ '()))
                              (cons (cons '##vector->list
                                          (cons _%var143056%_ '()))
                                    (cons (cons 'list (cons _%var143056%_ '()))
                                          '()))))
                  (cons 'let
                        (cons '()
                              (cons '(declare (not safe))
                                    (cons (cons 'if
                                                (cons (cons '##values?
                                                            (cons _%var143056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '##vector->list (cons _%var143056%_ '()))
                    (cons (cons 'list (cons _%var143056%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))))
            (if (let () (declare (not safe)) (##fx= _%i143057%_ '1))
                (let ()
                  (if (let ()
                        (declare (not safe))
                        (gxc#current-compile-decls-unsafe?))
                      (cons 'if
                            (cons (cons '##values? (cons _%var143056%_ '()))
                                  (cons (cons '##cdr
                                              (cons (cons '##vector->list
                                                          (cons _%var143056%_
                                                                '()))
                                                    '()))
                                        (cons ''() '()))))
                      (cons 'let
                            (cons '()
                                  (cons '(declare (not safe))
                                        (cons (cons 'if
                                                    (cons (cons '##values?
                                                                (cons _%var143056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '##cdr
                              (cons (cons '##vector->list
                                          (cons _%var143056%_ '()))
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
                                        (cons _%var143056%_ '()))
                                  (cons _%i143057%_ '())))
                      (cons 'let
                            (cons '()
                                  (cons '(declare (not safe))
                                        (cons (cons '##list-tail
                                                    (cons (cons '##vector->list
                                                                (cons _%var143056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons _%i143057%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self142988%_ _%stx142989%_)
        (let* ((_%g142991143008%_
                (lambda (_%g142992143005%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142992143005%_))))
               (_%g142990143053%_
                (lambda (_%g142992143011%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142992143011%_))
                      (let ((_%e142997143013%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142992143011%_))))
                        (let ((_%hd142996143016%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142997143013%_)))
                              (_%tl142995143018%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142997143013%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142995143018%_))
                              (let ((_%e143000143021%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142995143018%_))))
                                (let ((_%hd142999143024%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143000143021%_)))
                                      (_%tl142998143026%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143000143021%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142998143026%_))
                                      (let ((_%e143003143029%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142998143026%_))))
                                        (let ((_%hd143002143032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143003143029%_)))
                                              (_%tl143001143034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143003143029%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143001143034%_))
                                              ((lambda (_%L143037%_
                                                        _%L143038%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _%self142988%_
                                                    _%L143038%_
                                                    _%L143037%_)))
                                               _%hd143002143032%_
                                               _%hd142999143024%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g142991143008%_
                                                 _%g142992143011%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142991143008%_
                                         _%g142992143011%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g142991143008%_ _%g142992143011%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g142991143008%_ _%g142992143011%_))))))
          (declare (not safe))
          (_%g142990143053%_ _%stx142989%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self142947%_ _%hd142948%_ _%body142949%_)
        (let* ((_%hd142951%_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _%hd142948%_)))
               (_%body142953%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self142947%_ _%body142949%_)))
               (_%body142985%_
                (let* ((_%body142954142962%_ _%body142953%_)
                       (_%else142956142970%_
                        (lambda () (cons _%body142953%_ '())))
                       (_%K142958142975%_
                        (lambda (_%exprs142973%_) _%exprs142973%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body142954142962%_))
                      (let ((_%hd142959142978%_
                             (let ()
                               (declare (not safe))
                               (##car _%body142954142962%_)))
                            (_%tl142960142980%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body142954142962%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd142959142978%_ 'begin))
                            (let ((_%exprs142983%_ _%tl142960142980%_))
                              (declare (not safe))
                              (_%K142958142975%_ _%exprs142983%_))
                            (let ()
                              (declare (not safe))
                              (_%else142956142970%_))))
                      (let () (declare (not safe)) (_%else142956142970%_))))))
          (cons 'lambda (cons _%hd142951%_ _%body142985%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd142945%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd142945%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self141484%_ _%stx141485%_)
        (letrec ((_%dispatch-case?141487%_
                  (lambda (_%hd142175%_ _%body142176%_)
                    (let* ((_%form142178%_
                            (cons _%hd142175%_ (cons _%body142176%_ '())))
                           (_%__stx144500144501%_ _%form142178%_)
                           (_%g142183142340%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144500144501%_)))))
                      (let ((_%__kont144502144503%_
                             (lambda (_%L142865%_ _%L142866%_ _%L142867%_)
                               '#t))
                            (_%__kont144508144509%_
                             (lambda (_%L142653%_
                                      _%L142654%_
                                      _%L142655%_
                                      _%L142656%_
                                      _%L142657%_
                                      _%L142658%_)
                               '#t))
                            (_%__kont144514144515%_
                             (lambda (_%L142448%_
                                      _%L142449%_
                                      _%L142450%_
                                      _%L142451%_)
                               '#t))
                            (_%__kont144516144517%_ (lambda () '#f)))
                        (let* ((_%__match144641144642%_
                                (lambda (_%e142302142352%_
                                         _%hd142301142355%_
                                         _%tl142300142357%_
                                         _%e142305142360%_
                                         _%hd142304142363%_
                                         _%tl142303142365%_
                                         _%e142308142368%_
                                         _%hd142307142371%_
                                         _%tl142306142373%_
                                         _%e142311142376%_
                                         _%hd142310142379%_
                                         _%tl142309142381%_
                                         _%e142314142384%_
                                         _%hd142313142387%_
                                         _%tl142312142389%_
                                         _%e142317142392%_
                                         _%hd142316142395%_
                                         _%tl142315142397%_
                                         _%e142320142400%_
                                         _%hd142319142403%_
                                         _%tl142318142405%_
                                         _%e142323142408%_
                                         _%hd142322142411%_
                                         _%tl142321142413%_
                                         _%e142326142416%_
                                         _%hd142325142419%_
                                         _%tl142324142421%_
                                         _%e142329142424%_
                                         _%hd142328142427%_
                                         _%tl142327142429%_
                                         _%e142332142432%_
                                         _%hd142331142435%_
                                         _%tl142330142437%_
                                         _%e142335142440%_
                                         _%hd142334142443%_
                                         _%tl142333142445%_)
                                  (let ((_%L142448%_ _%hd142334142443%_)
                                        (_%L142449%_ _%hd142325142419%_)
                                        (_%L142450%_ _%hd142316142395%_)
                                        (_%L142451%_ _%hd142301142355%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L142451%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L142450%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L142451%_
                                                _%L142448%_))
                                             (let ((__tmp145800
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _%L142449%_
                                                       _%L142451%_))))
                                               (declare (not safe))
                                               (not __tmp145800)))
                                        (_%__kont144514144515%_
                                         _%L142448%_
                                         _%L142449%_
                                         _%L142450%_
                                         _%L142451%_)
                                        (_%__kont144516144517%_)))))
                               (_%__match144613144614%_
                                (lambda (_%e142302142352%_
                                         _%hd142301142355%_
                                         _%tl142300142357%_
                                         _%e142305142360%_
                                         _%hd142304142363%_
                                         _%tl142303142365%_
                                         _%e142308142368%_
                                         _%hd142307142371%_
                                         _%tl142306142373%_
                                         _%e142311142376%_
                                         _%hd142310142379%_
                                         _%tl142309142381%_
                                         _%e142314142384%_
                                         _%hd142313142387%_
                                         _%tl142312142389%_
                                         _%e142317142392%_
                                         _%hd142316142395%_
                                         _%tl142315142397%_
                                         _%e142320142400%_
                                         _%hd142319142403%_
                                         _%tl142318142405%_
                                         _%e142323142408%_
                                         _%hd142322142411%_
                                         _%tl142321142413%_
                                         _%e142326142416%_
                                         _%hd142325142419%_
                                         _%tl142324142421%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142318142405%_))
                                      (let ((_%e142329142424%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142318142405%_))))
                                        (let ((_%tl142327142429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142329142424%_)))
                                              (_%hd142328142427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142329142424%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd142328142427%_))
                                              (let ((_%e142332142432%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd142328142427%_))))
                                                (let ((_%tl142330142437%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142332142432%_)))
                                                      (_%hd142331142435%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142332142432%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd142331142435%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd142331142435%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl142330142437%_))
                      (let ((_%e142335142440%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl142330142437%_))))
                        (let ((_%tl142333142445%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142335142440%_)))
                              (_%hd142334142443%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142335142440%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl142333142445%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl142327142429%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl142303142365%_))
                                      (_%__match144641144642%_
                                       _%e142302142352%_
                                       _%hd142301142355%_
                                       _%tl142300142357%_
                                       _%e142305142360%_
                                       _%hd142304142363%_
                                       _%tl142303142365%_
                                       _%e142308142368%_
                                       _%hd142307142371%_
                                       _%tl142306142373%_
                                       _%e142311142376%_
                                       _%hd142310142379%_
                                       _%tl142309142381%_
                                       _%e142314142384%_
                                       _%hd142313142387%_
                                       _%tl142312142389%_
                                       _%e142317142392%_
                                       _%hd142316142395%_
                                       _%tl142315142397%_
                                       _%e142320142400%_
                                       _%hd142319142403%_
                                       _%tl142318142405%_
                                       _%e142323142408%_
                                       _%hd142322142411%_
                                       _%tl142321142413%_
                                       _%e142326142416%_
                                       _%hd142325142419%_
                                       _%tl142324142421%_
                                       _%e142329142424%_
                                       _%hd142328142427%_
                                       _%tl142327142429%_
                                       _%e142332142432%_
                                       _%hd142331142435%_
                                       _%tl142330142437%_
                                       _%e142335142440%_
                                       _%hd142334142443%_
                                       _%tl142333142445%_)
                                      (_%__kont144516144517%_))
                                  (_%__kont144516144517%_))
                              (_%__kont144516144517%_))))
                      (_%__kont144516144517%_))
                  (_%__kont144516144517%_))
              (_%__kont144516144517%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont144516144517%_))))
                                      (_%__kont144516144517%_))))
                               (_%__match144543144544%_
                                (lambda (_%e142238142493%_
                                         _%hd142237142496%_
                                         _%tl142236142498%_
                                         _%__splice144510144511%_
                                         _%target142239142501%_
                                         _%tl142241142503%_)
                                  (letrec ((_%loop142242142506%_
                                            (lambda (_%hd142240142509%_
                                                     _%arg142246142511%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142240142509%_))
                                                  (let ((_%e142243142514%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142240142509%_))))
                                                    (let ((_%lp-tl142245142519%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142243142514%_)))
                                                          (_%lp-hd142244142517%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142243142514%_))))
                                                      (let ((__tmp145801
                                                             (cons _%lp-hd142244142517%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg142246142511%_)))
                (declare (not safe))
                (_%loop142242142506%_ _%lp-tl142245142519%_ __tmp145801))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg142247142522%_
                                                         (reverse _%arg142246142511%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142236142498%_))
                                                        (let ((_%e142250142525%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142236142498%_))))
                  (let ((_%tl142248142530%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142250142525%_)))
                        (_%hd142249142528%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142250142525%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142249142528%_))
                        (let ((_%e142253142533%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142249142528%_))))
                          (let ((_%tl142251142538%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142253142533%_)))
                                (_%hd142252142536%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142253142533%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142252142536%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd142252142536%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142251142538%_))
                                        (let ((_%e142256142541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142251142538%_))))
                                          (let ((_%tl142254142546%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142256142541%_)))
                                                (_%hd142255142544%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142256142541%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd142255142544%_))
                                                (let ((_%e142259142549%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142255142544%_))))
                                                  (let ((_%tl142257142554%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142259142549%_)))
                                                        (_%hd142258142552%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142259142549%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd142258142552%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd142258142552%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl142257142554%_))
                        (let ((_%e142262142557%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl142257142554%_))))
                          (let ((_%tl142260142562%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142262142557%_)))
                                (_%hd142261142560%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142262142557%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142260142562%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl142254142546%_))
                                    (let ((_%e142265142565%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl142254142546%_))))
                                      (let ((_%tl142263142570%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e142265142565%_)))
                                            (_%hd142264142568%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e142265142565%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd142264142568%_))
                                            (let ((_%e142268142573%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd142264142568%_))))
                                              (let ((_%tl142266142578%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142268142573%_)))
                                                    (_%hd142267142576%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142268142573%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd142267142576%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd142267142576%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl142266142578%_))
                                                            (let ((_%e142271142581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl142266142578%_))))
                      (let ((_%tl142269142586%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142271142581%_)))
                            (_%hd142270142584%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142271142581%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl142269142586%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl142263142570%_))
                                (if (let ((__tmp145802
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl142263142570%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp145802 '1))
                                    (let ((_%__splice144512144513%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl142263142570%_
                                              '1))))
                                      (let ((_%tl142274142591%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144512144513%_
                                                '1)))
                                            (_%target142272142589%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144512144513%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142274142591%_))
                                            (let ((_%e142283142594%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142274142591%_))))
                                              (let ((_%tl142281142599%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142283142594%_)))
                                                    (_%hd142282142597%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142283142594%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd142282142597%_))
                                                    (let ((_%e142286142602%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd142282142597%_))))
                                                      (let ((_%tl142284142607%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e142286142602%_)))
                    (_%hd142285142605%_
                     (let () (declare (not safe)) (##car _%e142286142602%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd142285142605%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd142285142605%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl142284142607%_))
                            (let ((_%e142289142610%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl142284142607%_))))
                              (let ((_%tl142287142615%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e142289142610%_)))
                                    (_%hd142288142613%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e142289142610%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl142287142615%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl142281142599%_))
                                        (letrec ((_%loop142275142618%_
                                                  (lambda (_%hd142273142621%_
                                                           _%xarg142279142623%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd142273142621%_))
                                                        (let ((_%e142276142626%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd142273142621%_))))
                  (let ((_%lp-tl142278142631%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142276142626%_)))
                        (_%lp-hd142277142629%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142276142626%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd142277142629%_))
                        (let ((_%e142292142634%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd142277142629%_))))
                          (let ((_%tl142290142639%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142292142634%_)))
                                (_%hd142291142637%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142292142634%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142291142637%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd142291142637%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142290142639%_))
                                        (let ((_%e142295142642%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142290142639%_))))
                                          (let ((_%tl142293142647%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142295142642%_)))
                                                (_%hd142294142645%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142295142642%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142293142647%_))
                                                (let ((__tmp145803
                                                       (cons _%hd142294142645%_
                                                             _%xarg142279142623%_)))
                                                  (declare (not safe))
                                                  (_%loop142275142618%_
                                                   _%lp-tl142278142631%_
                                                   __tmp145803))
                                                (_%__match144613144614%_
                                                 _%e142238142493%_
                                                 _%hd142237142496%_
                                                 _%tl142236142498%_
                                                 _%e142250142525%_
                                                 _%hd142249142528%_
                                                 _%tl142248142530%_
                                                 _%e142253142533%_
                                                 _%hd142252142536%_
                                                 _%tl142251142538%_
                                                 _%e142256142541%_
                                                 _%hd142255142544%_
                                                 _%tl142254142546%_
                                                 _%e142259142549%_
                                                 _%hd142258142552%_
                                                 _%tl142257142554%_
                                                 _%e142262142557%_
                                                 _%hd142261142560%_
                                                 _%tl142260142562%_
                                                 _%e142265142565%_
                                                 _%hd142264142568%_
                                                 _%tl142263142570%_
                                                 _%e142268142573%_
                                                 _%hd142267142576%_
                                                 _%tl142266142578%_
                                                 _%e142271142581%_
                                                 _%hd142270142584%_
                                                 _%tl142269142586%_))))
                                        (_%__match144613144614%_
                                         _%e142238142493%_
                                         _%hd142237142496%_
                                         _%tl142236142498%_
                                         _%e142250142525%_
                                         _%hd142249142528%_
                                         _%tl142248142530%_
                                         _%e142253142533%_
                                         _%hd142252142536%_
                                         _%tl142251142538%_
                                         _%e142256142541%_
                                         _%hd142255142544%_
                                         _%tl142254142546%_
                                         _%e142259142549%_
                                         _%hd142258142552%_
                                         _%tl142257142554%_
                                         _%e142262142557%_
                                         _%hd142261142560%_
                                         _%tl142260142562%_
                                         _%e142265142565%_
                                         _%hd142264142568%_
                                         _%tl142263142570%_
                                         _%e142268142573%_
                                         _%hd142267142576%_
                                         _%tl142266142578%_
                                         _%e142271142581%_
                                         _%hd142270142584%_
                                         _%tl142269142586%_))
                                    (_%__match144613144614%_
                                     _%e142238142493%_
                                     _%hd142237142496%_
                                     _%tl142236142498%_
                                     _%e142250142525%_
                                     _%hd142249142528%_
                                     _%tl142248142530%_
                                     _%e142253142533%_
                                     _%hd142252142536%_
                                     _%tl142251142538%_
                                     _%e142256142541%_
                                     _%hd142255142544%_
                                     _%tl142254142546%_
                                     _%e142259142549%_
                                     _%hd142258142552%_
                                     _%tl142257142554%_
                                     _%e142262142557%_
                                     _%hd142261142560%_
                                     _%tl142260142562%_
                                     _%e142265142565%_
                                     _%hd142264142568%_
                                     _%tl142263142570%_
                                     _%e142268142573%_
                                     _%hd142267142576%_
                                     _%tl142266142578%_
                                     _%e142271142581%_
                                     _%hd142270142584%_
                                     _%tl142269142586%_))
                                (_%__match144613144614%_
                                 _%e142238142493%_
                                 _%hd142237142496%_
                                 _%tl142236142498%_
                                 _%e142250142525%_
                                 _%hd142249142528%_
                                 _%tl142248142530%_
                                 _%e142253142533%_
                                 _%hd142252142536%_
                                 _%tl142251142538%_
                                 _%e142256142541%_
                                 _%hd142255142544%_
                                 _%tl142254142546%_
                                 _%e142259142549%_
                                 _%hd142258142552%_
                                 _%tl142257142554%_
                                 _%e142262142557%_
                                 _%hd142261142560%_
                                 _%tl142260142562%_
                                 _%e142265142565%_
                                 _%hd142264142568%_
                                 _%tl142263142570%_
                                 _%e142268142573%_
                                 _%hd142267142576%_
                                 _%tl142266142578%_
                                 _%e142271142581%_
                                 _%hd142270142584%_
                                 _%tl142269142586%_))))
                        (_%__match144613144614%_
                         _%e142238142493%_
                         _%hd142237142496%_
                         _%tl142236142498%_
                         _%e142250142525%_
                         _%hd142249142528%_
                         _%tl142248142530%_
                         _%e142253142533%_
                         _%hd142252142536%_
                         _%tl142251142538%_
                         _%e142256142541%_
                         _%hd142255142544%_
                         _%tl142254142546%_
                         _%e142259142549%_
                         _%hd142258142552%_
                         _%tl142257142554%_
                         _%e142262142557%_
                         _%hd142261142560%_
                         _%tl142260142562%_
                         _%e142265142565%_
                         _%hd142264142568%_
                         _%tl142263142570%_
                         _%e142268142573%_
                         _%hd142267142576%_
                         _%tl142266142578%_
                         _%e142271142581%_
                         _%hd142270142584%_
                         _%tl142269142586%_))))
                (let ((_%xarg142280142650%_ (reverse _%xarg142279142623%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142248142530%_))
                      (let ((_%L142653%_ _%hd142288142613%_)
                            (_%L142654%_ _%xarg142280142650%_)
                            (_%L142655%_ _%hd142270142584%_)
                            (_%L142656%_ _%hd142261142560%_)
                            (_%L142657%_ _%tl142241142503%_)
                            (_%L142658%_ _%arg142247142522%_))
                        (if (and (let ((__tmp145804
                                        (let ((__tmp145805
                                               (lambda (_%g142701142704%_
                                                        _%g142702142706%_)
                                                 (cons _%g142701142704%_
                                                       _%g142702142706%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145805
                                           '()
                                           _%L142658%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp145804))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L142657%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L142656%_
                                    'apply))
                                 (let ((__tmp145808
                                        (length (let ((__tmp145809
                                                       (lambda (_%g142708142711%_
                                                                _%g142709142713%_)
                                                         (cons _%g142708142711%_
                                                               _%g142709142713%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145809
                                                   '()
                                                   _%L142658%_))))
                                       (__tmp145806
                                        (length (let ((__tmp145807
                                                       (lambda (_%g142715142718%_
                                                                _%g142716142720%_)
                                                         (cons _%g142715142718%_
                                                               _%g142716142720%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145807
                                                   '()
                                                   _%L142654%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp145808 __tmp145806))
                                 (let ((__tmp145812
                                        (let ((__tmp145813
                                               (lambda (_%g142722142725%_
                                                        _%g142723142727%_)
                                                 (cons _%g142722142725%_
                                                       _%g142723142727%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145813
                                           '()
                                           _%L142658%_)))
                                       (__tmp145810
                                        (let ((__tmp145811
                                               (lambda (_%g142729142732%_
                                                        _%g142730142734%_)
                                                 (cons _%g142729142732%_
                                                       _%g142730142734%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145811
                                           '()
                                           _%L142654%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp145812
                                    __tmp145810))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L142657%_
                                    _%L142653%_))
                                 (let ((__tmp145814
                                        (let ((__tmp145818
                                               (lambda (_%g142736142738%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _%g142736142738%_
                                                    _%L142655%_))))
                                              (__tmp145815
                                               (let ((__tmp145817
                                                      (lambda (_%g142740142743%_
                                                               _%g142741142745%_)
                                                        (cons _%g142740142743%_
                                                              _%g142741142745%_)))
                                                     (__tmp145816
                                                      (cons _%L142657%_ '())))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp145817
                                                  __tmp145816
                                                  _%L142658%_))))
                                          (declare (not safe))
                                          (__find __tmp145818 __tmp145815))))
                                   (declare (not safe))
                                   (not __tmp145814)))
                            (_%__kont144508144509%_
                             _%L142653%_
                             _%L142654%_
                             _%L142655%_
                             _%L142656%_
                             _%L142657%_
                             _%L142658%_)
                            (_%__match144613144614%_
                             _%e142238142493%_
                             _%hd142237142496%_
                             _%tl142236142498%_
                             _%e142250142525%_
                             _%hd142249142528%_
                             _%tl142248142530%_
                             _%e142253142533%_
                             _%hd142252142536%_
                             _%tl142251142538%_
                             _%e142256142541%_
                             _%hd142255142544%_
                             _%tl142254142546%_
                             _%e142259142549%_
                             _%hd142258142552%_
                             _%tl142257142554%_
                             _%e142262142557%_
                             _%hd142261142560%_
                             _%tl142260142562%_
                             _%e142265142565%_
                             _%hd142264142568%_
                             _%tl142263142570%_
                             _%e142268142573%_
                             _%hd142267142576%_
                             _%tl142266142578%_
                             _%e142271142581%_
                             _%hd142270142584%_
                             _%tl142269142586%_)))
                      (_%__match144613144614%_
                       _%e142238142493%_
                       _%hd142237142496%_
                       _%tl142236142498%_
                       _%e142250142525%_
                       _%hd142249142528%_
                       _%tl142248142530%_
                       _%e142253142533%_
                       _%hd142252142536%_
                       _%tl142251142538%_
                       _%e142256142541%_
                       _%hd142255142544%_
                       _%tl142254142546%_
                       _%e142259142549%_
                       _%hd142258142552%_
                       _%tl142257142554%_
                       _%e142262142557%_
                       _%hd142261142560%_
                       _%tl142260142562%_
                       _%e142265142565%_
                       _%hd142264142568%_
                       _%tl142263142570%_
                       _%e142268142573%_
                       _%hd142267142576%_
                       _%tl142266142578%_
                       _%e142271142581%_
                       _%hd142270142584%_
                       _%tl142269142586%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop142275142618%_
                                             _%target142272142589%_
                                             '())))
                                        (_%__match144613144614%_
                                         _%e142238142493%_
                                         _%hd142237142496%_
                                         _%tl142236142498%_
                                         _%e142250142525%_
                                         _%hd142249142528%_
                                         _%tl142248142530%_
                                         _%e142253142533%_
                                         _%hd142252142536%_
                                         _%tl142251142538%_
                                         _%e142256142541%_
                                         _%hd142255142544%_
                                         _%tl142254142546%_
                                         _%e142259142549%_
                                         _%hd142258142552%_
                                         _%tl142257142554%_
                                         _%e142262142557%_
                                         _%hd142261142560%_
                                         _%tl142260142562%_
                                         _%e142265142565%_
                                         _%hd142264142568%_
                                         _%tl142263142570%_
                                         _%e142268142573%_
                                         _%hd142267142576%_
                                         _%tl142266142578%_
                                         _%e142271142581%_
                                         _%hd142270142584%_
                                         _%tl142269142586%_))
                                    (_%__match144613144614%_
                                     _%e142238142493%_
                                     _%hd142237142496%_
                                     _%tl142236142498%_
                                     _%e142250142525%_
                                     _%hd142249142528%_
                                     _%tl142248142530%_
                                     _%e142253142533%_
                                     _%hd142252142536%_
                                     _%tl142251142538%_
                                     _%e142256142541%_
                                     _%hd142255142544%_
                                     _%tl142254142546%_
                                     _%e142259142549%_
                                     _%hd142258142552%_
                                     _%tl142257142554%_
                                     _%e142262142557%_
                                     _%hd142261142560%_
                                     _%tl142260142562%_
                                     _%e142265142565%_
                                     _%hd142264142568%_
                                     _%tl142263142570%_
                                     _%e142268142573%_
                                     _%hd142267142576%_
                                     _%tl142266142578%_
                                     _%e142271142581%_
                                     _%hd142270142584%_
                                     _%tl142269142586%_))))
                            (_%__match144613144614%_
                             _%e142238142493%_
                             _%hd142237142496%_
                             _%tl142236142498%_
                             _%e142250142525%_
                             _%hd142249142528%_
                             _%tl142248142530%_
                             _%e142253142533%_
                             _%hd142252142536%_
                             _%tl142251142538%_
                             _%e142256142541%_
                             _%hd142255142544%_
                             _%tl142254142546%_
                             _%e142259142549%_
                             _%hd142258142552%_
                             _%tl142257142554%_
                             _%e142262142557%_
                             _%hd142261142560%_
                             _%tl142260142562%_
                             _%e142265142565%_
                             _%hd142264142568%_
                             _%tl142263142570%_
                             _%e142268142573%_
                             _%hd142267142576%_
                             _%tl142266142578%_
                             _%e142271142581%_
                             _%hd142270142584%_
                             _%tl142269142586%_))
                        (_%__match144613144614%_
                         _%e142238142493%_
                         _%hd142237142496%_
                         _%tl142236142498%_
                         _%e142250142525%_
                         _%hd142249142528%_
                         _%tl142248142530%_
                         _%e142253142533%_
                         _%hd142252142536%_
                         _%tl142251142538%_
                         _%e142256142541%_
                         _%hd142255142544%_
                         _%tl142254142546%_
                         _%e142259142549%_
                         _%hd142258142552%_
                         _%tl142257142554%_
                         _%e142262142557%_
                         _%hd142261142560%_
                         _%tl142260142562%_
                         _%e142265142565%_
                         _%hd142264142568%_
                         _%tl142263142570%_
                         _%e142268142573%_
                         _%hd142267142576%_
                         _%tl142266142578%_
                         _%e142271142581%_
                         _%hd142270142584%_
                         _%tl142269142586%_))
                    (_%__match144613144614%_
                     _%e142238142493%_
                     _%hd142237142496%_
                     _%tl142236142498%_
                     _%e142250142525%_
                     _%hd142249142528%_
                     _%tl142248142530%_
                     _%e142253142533%_
                     _%hd142252142536%_
                     _%tl142251142538%_
                     _%e142256142541%_
                     _%hd142255142544%_
                     _%tl142254142546%_
                     _%e142259142549%_
                     _%hd142258142552%_
                     _%tl142257142554%_
                     _%e142262142557%_
                     _%hd142261142560%_
                     _%tl142260142562%_
                     _%e142265142565%_
                     _%hd142264142568%_
                     _%tl142263142570%_
                     _%e142268142573%_
                     _%hd142267142576%_
                     _%tl142266142578%_
                     _%e142271142581%_
                     _%hd142270142584%_
                     _%tl142269142586%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144613144614%_
                                                     _%e142238142493%_
                                                     _%hd142237142496%_
                                                     _%tl142236142498%_
                                                     _%e142250142525%_
                                                     _%hd142249142528%_
                                                     _%tl142248142530%_
                                                     _%e142253142533%_
                                                     _%hd142252142536%_
                                                     _%tl142251142538%_
                                                     _%e142256142541%_
                                                     _%hd142255142544%_
                                                     _%tl142254142546%_
                                                     _%e142259142549%_
                                                     _%hd142258142552%_
                                                     _%tl142257142554%_
                                                     _%e142262142557%_
                                                     _%hd142261142560%_
                                                     _%tl142260142562%_
                                                     _%e142265142565%_
                                                     _%hd142264142568%_
                                                     _%tl142263142570%_
                                                     _%e142268142573%_
                                                     _%hd142267142576%_
                                                     _%tl142266142578%_
                                                     _%e142271142581%_
                                                     _%hd142270142584%_
                                                     _%tl142269142586%_))))
                                            (_%__match144613144614%_
                                             _%e142238142493%_
                                             _%hd142237142496%_
                                             _%tl142236142498%_
                                             _%e142250142525%_
                                             _%hd142249142528%_
                                             _%tl142248142530%_
                                             _%e142253142533%_
                                             _%hd142252142536%_
                                             _%tl142251142538%_
                                             _%e142256142541%_
                                             _%hd142255142544%_
                                             _%tl142254142546%_
                                             _%e142259142549%_
                                             _%hd142258142552%_
                                             _%tl142257142554%_
                                             _%e142262142557%_
                                             _%hd142261142560%_
                                             _%tl142260142562%_
                                             _%e142265142565%_
                                             _%hd142264142568%_
                                             _%tl142263142570%_
                                             _%e142268142573%_
                                             _%hd142267142576%_
                                             _%tl142266142578%_
                                             _%e142271142581%_
                                             _%hd142270142584%_
                                             _%tl142269142586%_))))
                                    (_%__match144613144614%_
                                     _%e142238142493%_
                                     _%hd142237142496%_
                                     _%tl142236142498%_
                                     _%e142250142525%_
                                     _%hd142249142528%_
                                     _%tl142248142530%_
                                     _%e142253142533%_
                                     _%hd142252142536%_
                                     _%tl142251142538%_
                                     _%e142256142541%_
                                     _%hd142255142544%_
                                     _%tl142254142546%_
                                     _%e142259142549%_
                                     _%hd142258142552%_
                                     _%tl142257142554%_
                                     _%e142262142557%_
                                     _%hd142261142560%_
                                     _%tl142260142562%_
                                     _%e142265142565%_
                                     _%hd142264142568%_
                                     _%tl142263142570%_
                                     _%e142268142573%_
                                     _%hd142267142576%_
                                     _%tl142266142578%_
                                     _%e142271142581%_
                                     _%hd142270142584%_
                                     _%tl142269142586%_))
                                (_%__match144613144614%_
                                 _%e142238142493%_
                                 _%hd142237142496%_
                                 _%tl142236142498%_
                                 _%e142250142525%_
                                 _%hd142249142528%_
                                 _%tl142248142530%_
                                 _%e142253142533%_
                                 _%hd142252142536%_
                                 _%tl142251142538%_
                                 _%e142256142541%_
                                 _%hd142255142544%_
                                 _%tl142254142546%_
                                 _%e142259142549%_
                                 _%hd142258142552%_
                                 _%tl142257142554%_
                                 _%e142262142557%_
                                 _%hd142261142560%_
                                 _%tl142260142562%_
                                 _%e142265142565%_
                                 _%hd142264142568%_
                                 _%tl142263142570%_
                                 _%e142268142573%_
                                 _%hd142267142576%_
                                 _%tl142266142578%_
                                 _%e142271142581%_
                                 _%hd142270142584%_
                                 _%tl142269142586%_))
                            (_%__kont144516144517%_))))
                    (_%__kont144516144517%_))
                (_%__kont144516144517%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144516144517%_))))
                                            (_%__kont144516144517%_))))
                                    (_%__kont144516144517%_))
                                (_%__kont144516144517%_))))
                        (_%__kont144516144517%_))
                    (_%__kont144516144517%_))
                (_%__kont144516144517%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont144516144517%_))))
                                        (_%__kont144516144517%_))
                                    (_%__kont144516144517%_))
                                (_%__kont144516144517%_))))
                        (_%__kont144516144517%_))))
                (_%__kont144516144517%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop142242142506%_
                                       _%target142239142501%_
                                       '())))))
                               (_%__match144531144532%_
                                (lambda (_%e142190142753%_
                                         _%hd142189142756%_
                                         _%tl142188142758%_
                                         _%__splice144504144505%_
                                         _%target142191142761%_
                                         _%tl142193142763%_)
                                  (letrec ((_%loop142194142766%_
                                            (lambda (_%hd142192142769%_
                                                     _%arg142198142771%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142192142769%_))
                                                  (let ((_%e142195142774%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142192142769%_))))
                                                    (let ((_%lp-tl142197142779%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142195142774%_)))
                                                          (_%lp-hd142196142777%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142195142774%_))))
                                                      (let ((__tmp145819
                                                             (cons _%lp-hd142196142777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg142198142771%_)))
                (declare (not safe))
                (_%loop142194142766%_ _%lp-tl142197142779%_ __tmp145819))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg142199142782%_
                                                         (reverse _%arg142198142771%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142188142758%_))
                                                        (let ((_%e142202142785%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142188142758%_))))
                  (let ((_%tl142200142790%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142202142785%_)))
                        (_%hd142201142788%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142202142785%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142201142788%_))
                        (let ((_%e142205142793%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142201142788%_))))
                          (let ((_%tl142203142798%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142205142793%_)))
                                (_%hd142204142796%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142205142793%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142204142796%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd142204142796%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142203142798%_))
                                        (let ((_%e142208142801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142203142798%_))))
                                          (let ((_%tl142206142806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142208142801%_)))
                                                (_%hd142207142804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142208142801%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd142207142804%_))
                                                (let ((_%e142211142809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142207142804%_))))
                                                  (let ((_%tl142209142814%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142211142809%_)))
                                                        (_%hd142210142812%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142211142809%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd142210142812%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd142210142812%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl142209142814%_))
                        (let ((_%e142214142817%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl142209142814%_))))
                          (let ((_%tl142212142822%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142214142817%_)))
                                (_%hd142213142820%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142214142817%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142212142822%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl142206142806%_))
                                    (let ((_%__splice144506144507%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl142206142806%_
                                              '0))))
                                      (let ((_%tl142217142827%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144506144507%_
                                                '1)))
                                            (_%target142215142825%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144506144507%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl142217142827%_))
                                            (letrec ((_%loop142218142830%_
                                                      (lambda (_%hd142216142833%_
                                                               _%xarg142222142835%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd142216142833%_))
                                                            (let ((_%e142219142838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd142216142833%_))))
                      (let ((_%lp-tl142221142843%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142219142838%_)))
                            (_%lp-hd142220142841%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142219142838%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd142220142841%_))
                            (let ((_%e142226142846%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd142220142841%_))))
                              (let ((_%tl142224142851%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e142226142846%_)))
                                    (_%hd142225142849%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e142226142846%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd142225142849%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd142225142849%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142224142851%_))
                                            (let ((_%e142229142854%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142224142851%_))))
                                              (let ((_%tl142227142859%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142229142854%_)))
                                                    (_%hd142228142857%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142229142854%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl142227142859%_))
                                                    (let ((__tmp145820
                                                           (cons _%hd142228142857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xarg142222142835%_)))
              (declare (not safe))
              (_%loop142218142830%_ _%lp-tl142221142843%_ __tmp145820))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144543144544%_
                                                     _%e142190142753%_
                                                     _%hd142189142756%_
                                                     _%tl142188142758%_
                                                     _%__splice144504144505%_
                                                     _%target142191142761%_
                                                     _%tl142193142763%_))))
                                            (_%__match144543144544%_
                                             _%e142190142753%_
                                             _%hd142189142756%_
                                             _%tl142188142758%_
                                             _%__splice144504144505%_
                                             _%target142191142761%_
                                             _%tl142193142763%_))
                                        (_%__match144543144544%_
                                         _%e142190142753%_
                                         _%hd142189142756%_
                                         _%tl142188142758%_
                                         _%__splice144504144505%_
                                         _%target142191142761%_
                                         _%tl142193142763%_))
                                    (_%__match144543144544%_
                                     _%e142190142753%_
                                     _%hd142189142756%_
                                     _%tl142188142758%_
                                     _%__splice144504144505%_
                                     _%target142191142761%_
                                     _%tl142193142763%_))))
                            (_%__match144543144544%_
                             _%e142190142753%_
                             _%hd142189142756%_
                             _%tl142188142758%_
                             _%__splice144504144505%_
                             _%target142191142761%_
                             _%tl142193142763%_))))
                    (let ((_%xarg142223142862%_
                           (reverse _%xarg142222142835%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl142200142790%_))
                          (let ((_%L142865%_ _%xarg142223142862%_)
                                (_%L142866%_ _%hd142213142820%_)
                                (_%L142867%_ _%arg142199142782%_))
                            (if (and (let ((__tmp145821
                                            (let ((__tmp145822
                                                   (lambda (_%g142895142898%_
                                                            _%g142896142900%_)
                                                     (cons _%g142895142898%_
                                                           _%g142896142900%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145822
                                               '()
                                               _%L142867%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp145821))
                                     (let ((__tmp145825
                                            (length (let ((__tmp145826
                                                           (lambda (_%g142902142905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142903142907%_)
                     (cons _%g142902142905%_ _%g142903142907%_))))
              (declare (not safe))
              (__foldr1 __tmp145826 '() _%L142867%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp145823
                                            (length (let ((__tmp145824
                                                           (lambda (_%g142909142912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142910142914%_)
                     (cons _%g142909142912%_ _%g142910142914%_))))
              (declare (not safe))
              (__foldr1 __tmp145824 '() _%L142865%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145825 __tmp145823))
                                     (let ((__tmp145829
                                            (let ((__tmp145830
                                                   (lambda (_%g142916142919%_
                                                            _%g142917142921%_)
                                                     (cons _%g142916142919%_
                                                           _%g142917142921%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145830
                                               '()
                                               _%L142867%_)))
                                           (__tmp145827
                                            (let ((__tmp145828
                                                   (lambda (_%g142923142926%_
                                                            _%g142924142928%_)
                                                     (cons _%g142923142926%_
                                                           _%g142924142928%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145828
                                               '()
                                               _%L142865%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp145829
                                        __tmp145827))
                                     (let ((__tmp145831
                                            (let ((__tmp145834
                                                   (lambda (_%g142930142932%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g142930142932%_
                                                        _%L142866%_))))
                                                  (__tmp145832
                                                   (let ((__tmp145833
                                                          (lambda (_%g142934142937%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g142935142939%_)
                    (cons _%g142934142937%_ _%g142935142939%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp145833
                                                      '()
                                                      _%L142867%_))))
                                              (declare (not safe))
                                              (__find __tmp145834
                                                      __tmp145832))))
                                       (declare (not safe))
                                       (not __tmp145831)))
                                (_%__kont144502144503%_
                                 _%L142865%_
                                 _%L142866%_
                                 _%L142867%_)
                                (_%__match144543144544%_
                                 _%e142190142753%_
                                 _%hd142189142756%_
                                 _%tl142188142758%_
                                 _%__splice144504144505%_
                                 _%target142191142761%_
                                 _%tl142193142763%_)))
                          (_%__match144543144544%_
                           _%e142190142753%_
                           _%hd142189142756%_
                           _%tl142188142758%_
                           _%__splice144504144505%_
                           _%target142191142761%_
                           _%tl142193142763%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop142218142830%_
                                                 _%target142215142825%_
                                                 '())))
                                            (_%__match144543144544%_
                                             _%e142190142753%_
                                             _%hd142189142756%_
                                             _%tl142188142758%_
                                             _%__splice144504144505%_
                                             _%target142191142761%_
                                             _%tl142193142763%_))))
                                    (_%__match144543144544%_
                                     _%e142190142753%_
                                     _%hd142189142756%_
                                     _%tl142188142758%_
                                     _%__splice144504144505%_
                                     _%target142191142761%_
                                     _%tl142193142763%_))
                                (_%__match144543144544%_
                                 _%e142190142753%_
                                 _%hd142189142756%_
                                 _%tl142188142758%_
                                 _%__splice144504144505%_
                                 _%target142191142761%_
                                 _%tl142193142763%_))))
                        (_%__match144543144544%_
                         _%e142190142753%_
                         _%hd142189142756%_
                         _%tl142188142758%_
                         _%__splice144504144505%_
                         _%target142191142761%_
                         _%tl142193142763%_))
                    (_%__match144543144544%_
                     _%e142190142753%_
                     _%hd142189142756%_
                     _%tl142188142758%_
                     _%__splice144504144505%_
                     _%target142191142761%_
                     _%tl142193142763%_))
                (_%__match144543144544%_
                 _%e142190142753%_
                 _%hd142189142756%_
                 _%tl142188142758%_
                 _%__splice144504144505%_
                 _%target142191142761%_
                 _%tl142193142763%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match144543144544%_
                                                 _%e142190142753%_
                                                 _%hd142189142756%_
                                                 _%tl142188142758%_
                                                 _%__splice144504144505%_
                                                 _%target142191142761%_
                                                 _%tl142193142763%_))))
                                        (_%__match144543144544%_
                                         _%e142190142753%_
                                         _%hd142189142756%_
                                         _%tl142188142758%_
                                         _%__splice144504144505%_
                                         _%target142191142761%_
                                         _%tl142193142763%_))
                                    (_%__match144543144544%_
                                     _%e142190142753%_
                                     _%hd142189142756%_
                                     _%tl142188142758%_
                                     _%__splice144504144505%_
                                     _%target142191142761%_
                                     _%tl142193142763%_))
                                (_%__match144543144544%_
                                 _%e142190142753%_
                                 _%hd142189142756%_
                                 _%tl142188142758%_
                                 _%__splice144504144505%_
                                 _%target142191142761%_
                                 _%tl142193142763%_))))
                        (_%__match144543144544%_
                         _%e142190142753%_
                         _%hd142189142756%_
                         _%tl142188142758%_
                         _%__splice144504144505%_
                         _%target142191142761%_
                         _%tl142193142763%_))))
                (_%__match144543144544%_
                 _%e142190142753%_
                 _%hd142189142756%_
                 _%tl142188142758%_
                 _%__splice144504144505%_
                 _%target142191142761%_
                 _%tl142193142763%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop142194142766%_
                                       _%target142191142761%_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144500144501%_))
                              (let ((_%e142190142753%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144500144501%_))))
                                (let ((_%tl142188142758%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142190142753%_)))
                                      (_%hd142189142756%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142190142753%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd142189142756%_))
                                      (let ((_%__splice144504144505%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd142189142756%_
                                                '0))))
                                        (let ((_%tl142193142763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144504144505%_
                                                  '1)))
                                              (_%target142191142761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144504144505%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142193142763%_))
                                              (_%__match144531144532%_
                                               _%e142190142753%_
                                               _%hd142189142756%_
                                               _%tl142188142758%_
                                               _%__splice144504144505%_
                                               _%target142191142761%_
                                               _%tl142193142763%_)
                                              (_%__match144543144544%_
                                               _%e142190142753%_
                                               _%hd142189142756%_
                                               _%tl142188142758%_
                                               _%__splice144504144505%_
                                               _%target142191142761%_
                                               _%tl142193142763%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl142188142758%_))
                                          (let ((_%e142305142360%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl142188142758%_))))
                                            (let ((_%tl142303142365%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e142305142360%_)))
                                                  (_%hd142304142363%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e142305142360%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142304142363%_))
                                                  (let ((_%e142308142368%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142304142363%_))))
                                                    (let ((_%tl142306142373%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142308142368%_)))
                                                          (_%hd142307142371%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142308142368%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd142307142371%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd142307142371%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142306142373%_))
                          (let ((_%e142311142376%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142306142373%_))))
                            (let ((_%tl142309142381%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142311142376%_)))
                                  (_%hd142310142379%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142311142376%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd142310142379%_))
                                  (let ((_%e142314142384%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd142310142379%_))))
                                    (let ((_%tl142312142389%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142314142384%_)))
                                          (_%hd142313142387%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142314142384%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd142313142387%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd142313142387%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl142312142389%_))
                                                  (let ((_%e142317142392%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl142312142389%_))))
                                                    (let ((_%tl142315142397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142317142392%_)))
                                                          (_%hd142316142395%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142317142392%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl142315142397%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl142309142381%_))
                      (let ((_%e142320142400%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl142309142381%_))))
                        (let ((_%tl142318142405%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142320142400%_)))
                              (_%hd142319142403%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142320142400%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd142319142403%_))
                              (let ((_%e142323142408%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd142319142403%_))))
                                (let ((_%tl142321142413%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142323142408%_)))
                                      (_%hd142322142411%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142323142408%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd142322142411%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd142322142411%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142321142413%_))
                                              (let ((_%e142326142416%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142321142413%_))))
                                                (let ((_%tl142324142421%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142326142416%_)))
                                                      (_%hd142325142419%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142326142416%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142324142421%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl142318142405%_))
                                                          (let ((_%e142329142424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl142318142405%_))))
                    (let ((_%tl142327142429%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142329142424%_)))
                          (_%hd142328142427%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142329142424%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd142328142427%_))
                          (let ((_%e142332142432%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd142328142427%_))))
                            (let ((_%tl142330142437%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142332142432%_)))
                                  (_%hd142331142435%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142332142432%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd142331142435%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd142331142435%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl142330142437%_))
                                          (let ((_%e142335142440%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl142330142437%_))))
                                            (let ((_%tl142333142445%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e142335142440%_)))
                                                  (_%hd142334142443%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e142335142440%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl142333142445%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142327142429%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl142303142365%_))
                                                          (_%__match144641144642%_
                                                           _%e142190142753%_
                                                           _%hd142189142756%_
                                                           _%tl142188142758%_
                                                           _%e142305142360%_
                                                           _%hd142304142363%_
                                                           _%tl142303142365%_
                                                           _%e142308142368%_
                                                           _%hd142307142371%_
                                                           _%tl142306142373%_
                                                           _%e142311142376%_
                                                           _%hd142310142379%_
                                                           _%tl142309142381%_
                                                           _%e142314142384%_
                                                           _%hd142313142387%_
                                                           _%tl142312142389%_
                                                           _%e142317142392%_
                                                           _%hd142316142395%_
                                                           _%tl142315142397%_
                                                           _%e142320142400%_
                                                           _%hd142319142403%_
                                                           _%tl142318142405%_
                                                           _%e142323142408%_
                                                           _%hd142322142411%_
                                                           _%tl142321142413%_
                                                           _%e142326142416%_
                                                           _%hd142325142419%_
                                                           _%tl142324142421%_
                                                           _%e142329142424%_
                                                           _%hd142328142427%_
                                                           _%tl142327142429%_
                                                           _%e142332142432%_
                                                           _%hd142331142435%_
                                                           _%tl142330142437%_
                                                           _%e142335142440%_
                                                           _%hd142334142443%_
                                                           _%tl142333142445%_)
                                                          (_%__kont144516144517%_))
                                                      (_%__kont144516144517%_))
                                                  (_%__kont144516144517%_))))
                                          (_%__kont144516144517%_))
                                      (_%__kont144516144517%_))
                                  (_%__kont144516144517%_))))
                          (_%__kont144516144517%_))))
                  (_%__kont144516144517%_))
              (_%__kont144516144517%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont144516144517%_))
                                          (_%__kont144516144517%_))
                                      (_%__kont144516144517%_))))
                              (_%__kont144516144517%_))))
                      (_%__kont144516144517%_))
                  (_%__kont144516144517%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144516144517%_))
                                              (_%__kont144516144517%_))
                                          (_%__kont144516144517%_))))
                                  (_%__kont144516144517%_))))
                          (_%__kont144516144517%_))
                      (_%__kont144516144517%_))
                  (_%__kont144516144517%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144516144517%_))))
                                          (_%__kont144516144517%_)))))
                              (_%__kont144516144517%_)))))))
                 (_%dispatch-case-e141488%_
                  (lambda (_%hd141639%_ _%body141640%_)
                    (let* ((_%form141642%_
                            (cons _%hd141639%_ (cons _%body141640%_ '())))
                           (_%__stx144644144645%_ _%form141642%_)
                           (_%g141646141770%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144644144645%_)))))
                      (let ((_%__kont144646144647%_
                             (lambda (_%L142141%_ _%L142142%_ _%L142143%_)
                               (let ((__tmp145835
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L142142%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self141484%_
                                  __tmp145835))))
                            (_%__kont144652144653%_
                             (lambda (_%L141989%_
                                      _%L141990%_
                                      _%L141991%_
                                      _%L141992%_)
                               (let ((__tmp145836
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141989%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self141484%_
                                  __tmp145836))))
                            (_%__kont144656144657%_
                             (lambda (_%L141855%_ _%L141856%_ _%L141857%_)
                               (let ((__tmp145837
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141855%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self141484%_
                                  __tmp145837)))))
                        (let* ((_%__match144753144754%_
                                (lambda (_%e141738141775%_
                                         _%hd141737141778%_
                                         _%tl141736141780%_
                                         _%e141741141783%_
                                         _%hd141740141786%_
                                         _%tl141739141788%_
                                         _%e141744141791%_
                                         _%hd141743141794%_
                                         _%tl141742141796%_
                                         _%e141747141799%_
                                         _%hd141746141802%_
                                         _%tl141745141804%_
                                         _%e141750141807%_
                                         _%hd141749141810%_
                                         _%tl141748141812%_
                                         _%e141753141815%_
                                         _%hd141752141818%_
                                         _%tl141751141820%_
                                         _%e141756141823%_
                                         _%hd141755141826%_
                                         _%tl141754141828%_
                                         _%e141759141831%_
                                         _%hd141758141834%_
                                         _%tl141757141836%_
                                         _%e141762141839%_
                                         _%hd141761141842%_
                                         _%tl141760141844%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141754141828%_))
                                      (let ((_%e141765141847%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141754141828%_))))
                                        (let ((_%tl141763141852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141765141847%_)))
                                              (_%hd141764141850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141765141847%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141763141852%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl141739141788%_))
                                                  (_%__kont144656144657%_
                                                   _%hd141761141842%_
                                                   _%hd141752141818%_
                                                   _%hd141737141778%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141646141770%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g141646141770%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g141646141770%_)))))
                               (_%__match144683144684%_
                                (lambda (_%e141699141893%_
                                         _%hd141698141896%_
                                         _%tl141697141898%_
                                         _%__splice144654144655%_
                                         _%target141700141901%_
                                         _%tl141702141903%_)
                                  (letrec ((_%loop141703141906%_
                                            (lambda (_%hd141701141909%_
                                                     _%arg141707141911%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141701141909%_))
                                                  (let ((_%e141704141914%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141701141909%_))))
                                                    (let ((_%lp-tl141706141919%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141704141914%_)))
                                                          (_%lp-hd141705141917%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141704141914%_))))
                                                      (let ((__tmp145838
                                                             (cons _%lp-hd141705141917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141707141911%_)))
                (declare (not safe))
                (_%loop141703141906%_ _%lp-tl141706141919%_ __tmp145838))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141708141922%_
                                                         (reverse _%arg141707141911%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141697141898%_))
                                                        (let ((_%e141711141925%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141697141898%_))))
                  (let ((_%tl141709141930%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141711141925%_)))
                        (_%hd141710141928%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141711141925%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141710141928%_))
                        (let ((_%e141714141933%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141710141928%_))))
                          (let ((_%tl141712141938%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141714141933%_)))
                                (_%hd141713141936%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141714141933%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141713141936%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141713141936%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141712141938%_))
                                        (let ((_%e141717141941%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141712141938%_))))
                                          (let ((_%tl141715141946%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141717141941%_)))
                                                (_%hd141716141944%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141717141941%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141716141944%_))
                                                (let ((_%e141720141949%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141716141944%_))))
                                                  (let ((_%tl141718141954%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141720141949%_)))
                                                        (_%hd141719141952%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141720141949%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141719141952%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141719141952%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141718141954%_))
                        (let ((_%e141723141957%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141718141954%_))))
                          (let ((_%tl141721141962%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141723141957%_)))
                                (_%hd141722141960%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141723141957%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141721141962%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl141715141946%_))
                                    (let ((_%e141726141965%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl141715141946%_))))
                                      (let ((_%tl141724141970%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e141726141965%_)))
                                            (_%hd141725141968%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e141726141965%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd141725141968%_))
                                            (let ((_%e141729141973%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd141725141968%_))))
                                              (let ((_%tl141727141978%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141729141973%_)))
                                                    (_%hd141728141976%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141729141973%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd141728141976%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd141728141976%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141727141978%_))
                                                            (let ((_%e141732141981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141727141978%_))))
                      (let ((_%tl141730141986%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141732141981%_)))
                            (_%hd141731141984%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141732141981%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141730141986%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141709141930%_))
                                (_%__kont144652144653%_
                                 _%hd141731141984%_
                                 _%hd141722141960%_
                                 _%tl141702141903%_
                                 _%arg141708141922%_)
                                (_%__match144753144754%_
                                 _%e141699141893%_
                                 _%hd141698141896%_
                                 _%tl141697141898%_
                                 _%e141711141925%_
                                 _%hd141710141928%_
                                 _%tl141709141930%_
                                 _%e141714141933%_
                                 _%hd141713141936%_
                                 _%tl141712141938%_
                                 _%e141717141941%_
                                 _%hd141716141944%_
                                 _%tl141715141946%_
                                 _%e141720141949%_
                                 _%hd141719141952%_
                                 _%tl141718141954%_
                                 _%e141723141957%_
                                 _%hd141722141960%_
                                 _%tl141721141962%_
                                 _%e141726141965%_
                                 _%hd141725141968%_
                                 _%tl141724141970%_
                                 _%e141729141973%_
                                 _%hd141728141976%_
                                 _%tl141727141978%_
                                 _%e141732141981%_
                                 _%hd141731141984%_
                                 _%tl141730141986%_))
                            (let ()
                              (declare (not safe))
                              (_%g141646141770%_)))))
                    (let () (declare (not safe)) (_%g141646141770%_)))
                (let () (declare (not safe)) (_%g141646141770%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g141646141770%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g141646141770%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g141646141770%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g141646141770%_)))))
                        (let () (declare (not safe)) (_%g141646141770%_)))
                    (let () (declare (not safe)) (_%g141646141770%_)))
                (let () (declare (not safe)) (_%g141646141770%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g141646141770%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g141646141770%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g141646141770%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g141646141770%_)))))
                        (let () (declare (not safe)) (_%g141646141770%_)))))
                (let () (declare (not safe)) (_%g141646141770%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141703141906%_
                                       _%target141700141901%_
                                       '())))))
                               (_%__match144671144672%_
                                (lambda (_%e141653142029%_
                                         _%hd141652142032%_
                                         _%tl141651142034%_
                                         _%__splice144648144649%_
                                         _%target141654142037%_
                                         _%tl141656142039%_)
                                  (letrec ((_%loop141657142042%_
                                            (lambda (_%hd141655142045%_
                                                     _%arg141661142047%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141655142045%_))
                                                  (let ((_%e141658142050%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141655142045%_))))
                                                    (let ((_%lp-tl141660142055%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141658142050%_)))
                                                          (_%lp-hd141659142053%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141658142050%_))))
                                                      (let ((__tmp145839
                                                             (cons _%lp-hd141659142053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141661142047%_)))
                (declare (not safe))
                (_%loop141657142042%_ _%lp-tl141660142055%_ __tmp145839))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141662142058%_
                                                         (reverse _%arg141661142047%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141651142034%_))
                                                        (let ((_%e141665142061%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141651142034%_))))
                  (let ((_%tl141663142066%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141665142061%_)))
                        (_%hd141664142064%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141665142061%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141664142064%_))
                        (let ((_%e141668142069%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141664142064%_))))
                          (let ((_%tl141666142074%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141668142069%_)))
                                (_%hd141667142072%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141668142069%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141667142072%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141667142072%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141666142074%_))
                                        (let ((_%e141671142077%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141666142074%_))))
                                          (let ((_%tl141669142082%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141671142077%_)))
                                                (_%hd141670142080%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141671142077%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141670142080%_))
                                                (let ((_%e141674142085%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141670142080%_))))
                                                  (let ((_%tl141672142090%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141674142085%_)))
                                                        (_%hd141673142088%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141674142085%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141673142088%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141673142088%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141672142090%_))
                        (let ((_%e141677142093%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141672142090%_))))
                          (let ((_%tl141675142098%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141677142093%_)))
                                (_%hd141676142096%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141677142093%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141675142098%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl141669142082%_))
                                    (let ((_%__splice144650144651%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141669142082%_
                                              '0))))
                                      (let ((_%tl141680142103%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144650144651%_
                                                '1)))
                                            (_%target141678142101%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144650144651%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl141680142103%_))
                                            (letrec ((_%loop141681142106%_
                                                      (lambda (_%hd141679142109%_
                                                               _%xarg141685142111%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd141679142109%_))
                                                            (let ((_%e141682142114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd141679142109%_))))
                      (let ((_%lp-tl141684142119%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141682142114%_)))
                            (_%lp-hd141683142117%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141682142114%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd141683142117%_))
                            (let ((_%e141689142122%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd141683142117%_))))
                              (let ((_%tl141687142127%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141689142122%_)))
                                    (_%hd141688142125%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141689142122%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141688142125%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd141688142125%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141687142127%_))
                                            (let ((_%e141692142130%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141687142127%_))))
                                              (let ((_%tl141690142135%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141692142130%_)))
                                                    (_%hd141691142133%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141692142130%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl141690142135%_))
                                                    (let ((__tmp145840
                                                           (cons _%hd141691142133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xarg141685142111%_)))
              (declare (not safe))
              (_%loop141681142106%_ _%lp-tl141684142119%_ __tmp145840))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144683144684%_
                                                     _%e141653142029%_
                                                     _%hd141652142032%_
                                                     _%tl141651142034%_
                                                     _%__splice144648144649%_
                                                     _%target141654142037%_
                                                     _%tl141656142039%_))))
                                            (_%__match144683144684%_
                                             _%e141653142029%_
                                             _%hd141652142032%_
                                             _%tl141651142034%_
                                             _%__splice144648144649%_
                                             _%target141654142037%_
                                             _%tl141656142039%_))
                                        (_%__match144683144684%_
                                         _%e141653142029%_
                                         _%hd141652142032%_
                                         _%tl141651142034%_
                                         _%__splice144648144649%_
                                         _%target141654142037%_
                                         _%tl141656142039%_))
                                    (_%__match144683144684%_
                                     _%e141653142029%_
                                     _%hd141652142032%_
                                     _%tl141651142034%_
                                     _%__splice144648144649%_
                                     _%target141654142037%_
                                     _%tl141656142039%_))))
                            (_%__match144683144684%_
                             _%e141653142029%_
                             _%hd141652142032%_
                             _%tl141651142034%_
                             _%__splice144648144649%_
                             _%target141654142037%_
                             _%tl141656142039%_))))
                    (let ((_%xarg141686142138%_
                           (reverse _%xarg141685142111%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141663142066%_))
                          (_%__kont144646144647%_
                           _%xarg141686142138%_
                           _%hd141676142096%_
                           _%arg141662142058%_)
                          (_%__match144683144684%_
                           _%e141653142029%_
                           _%hd141652142032%_
                           _%tl141651142034%_
                           _%__splice144648144649%_
                           _%target141654142037%_
                           _%tl141656142039%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop141681142106%_
                                                 _%target141678142101%_
                                                 '())))
                                            (_%__match144683144684%_
                                             _%e141653142029%_
                                             _%hd141652142032%_
                                             _%tl141651142034%_
                                             _%__splice144648144649%_
                                             _%target141654142037%_
                                             _%tl141656142039%_))))
                                    (_%__match144683144684%_
                                     _%e141653142029%_
                                     _%hd141652142032%_
                                     _%tl141651142034%_
                                     _%__splice144648144649%_
                                     _%target141654142037%_
                                     _%tl141656142039%_))
                                (_%__match144683144684%_
                                 _%e141653142029%_
                                 _%hd141652142032%_
                                 _%tl141651142034%_
                                 _%__splice144648144649%_
                                 _%target141654142037%_
                                 _%tl141656142039%_))))
                        (_%__match144683144684%_
                         _%e141653142029%_
                         _%hd141652142032%_
                         _%tl141651142034%_
                         _%__splice144648144649%_
                         _%target141654142037%_
                         _%tl141656142039%_))
                    (_%__match144683144684%_
                     _%e141653142029%_
                     _%hd141652142032%_
                     _%tl141651142034%_
                     _%__splice144648144649%_
                     _%target141654142037%_
                     _%tl141656142039%_))
                (_%__match144683144684%_
                 _%e141653142029%_
                 _%hd141652142032%_
                 _%tl141651142034%_
                 _%__splice144648144649%_
                 _%target141654142037%_
                 _%tl141656142039%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match144683144684%_
                                                 _%e141653142029%_
                                                 _%hd141652142032%_
                                                 _%tl141651142034%_
                                                 _%__splice144648144649%_
                                                 _%target141654142037%_
                                                 _%tl141656142039%_))))
                                        (_%__match144683144684%_
                                         _%e141653142029%_
                                         _%hd141652142032%_
                                         _%tl141651142034%_
                                         _%__splice144648144649%_
                                         _%target141654142037%_
                                         _%tl141656142039%_))
                                    (_%__match144683144684%_
                                     _%e141653142029%_
                                     _%hd141652142032%_
                                     _%tl141651142034%_
                                     _%__splice144648144649%_
                                     _%target141654142037%_
                                     _%tl141656142039%_))
                                (_%__match144683144684%_
                                 _%e141653142029%_
                                 _%hd141652142032%_
                                 _%tl141651142034%_
                                 _%__splice144648144649%_
                                 _%target141654142037%_
                                 _%tl141656142039%_))))
                        (_%__match144683144684%_
                         _%e141653142029%_
                         _%hd141652142032%_
                         _%tl141651142034%_
                         _%__splice144648144649%_
                         _%target141654142037%_
                         _%tl141656142039%_))))
                (_%__match144683144684%_
                 _%e141653142029%_
                 _%hd141652142032%_
                 _%tl141651142034%_
                 _%__splice144648144649%_
                 _%target141654142037%_
                 _%tl141656142039%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141657142042%_
                                       _%target141654142037%_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144644144645%_))
                              (let ((_%e141653142029%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144644144645%_))))
                                (let ((_%tl141651142034%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141653142029%_)))
                                      (_%hd141652142032%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141653142029%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd141652142032%_))
                                      (let ((_%__splice144648144649%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd141652142032%_
                                                '0))))
                                        (let ((_%tl141656142039%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144648144649%_
                                                  '1)))
                                              (_%target141654142037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144648144649%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141656142039%_))
                                              (_%__match144671144672%_
                                               _%e141653142029%_
                                               _%hd141652142032%_
                                               _%tl141651142034%_
                                               _%__splice144648144649%_
                                               _%target141654142037%_
                                               _%tl141656142039%_)
                                              (_%__match144683144684%_
                                               _%e141653142029%_
                                               _%hd141652142032%_
                                               _%tl141651142034%_
                                               _%__splice144648144649%_
                                               _%target141654142037%_
                                               _%tl141656142039%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141651142034%_))
                                          (let ((_%e141741141783%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141651142034%_))))
                                            (let ((_%tl141739141788%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141741141783%_)))
                                                  (_%hd141740141786%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141741141783%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141740141786%_))
                                                  (let ((_%e141744141791%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141740141786%_))))
                                                    (let ((_%tl141742141796%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141744141791%_)))
                                                          (_%hd141743141794%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141744141791%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd141743141794%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd141743141794%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141742141796%_))
                          (let ((_%e141747141799%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141742141796%_))))
                            (let ((_%tl141745141804%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141747141799%_)))
                                  (_%hd141746141802%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141747141799%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd141746141802%_))
                                  (let ((_%e141750141807%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd141746141802%_))))
                                    (let ((_%tl141748141812%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141750141807%_)))
                                          (_%hd141749141810%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141750141807%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd141749141810%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd141749141810%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl141748141812%_))
                                                  (let ((_%e141753141815%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl141748141812%_))))
                                                    (let ((_%tl141751141820%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141753141815%_)))
                                                          (_%hd141752141818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141753141815%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141751141820%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141745141804%_))
                      (let ((_%e141756141823%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141745141804%_))))
                        (let ((_%tl141754141828%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141756141823%_)))
                              (_%hd141755141826%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141756141823%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd141755141826%_))
                              (let ((_%e141759141831%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd141755141826%_))))
                                (let ((_%tl141757141836%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141759141831%_)))
                                      (_%hd141758141834%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141759141831%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd141758141834%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd141758141834%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141757141836%_))
                                              (let ((_%e141762141839%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141757141836%_))))
                                                (let ((_%tl141760141844%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141762141839%_)))
                                                      (_%hd141761141842%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141762141839%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141760141844%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl141754141828%_))
                                                          (let ((_%e141765141847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl141754141828%_))))
                    (let ((_%tl141763141852%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141765141847%_)))
                          (_%hd141764141850%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141765141847%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141763141852%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl141739141788%_))
                              (_%__kont144656144657%_
                               _%hd141761141842%_
                               _%hd141752141818%_
                               _%hd141652142032%_)
                              (let ()
                                (declare (not safe))
                                (_%g141646141770%_)))
                          (let () (declare (not safe)) (_%g141646141770%_)))))
                  (let () (declare (not safe)) (_%g141646141770%_)))
              (let () (declare (not safe)) (_%g141646141770%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g141646141770%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141646141770%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g141646141770%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g141646141770%_)))))
                      (let () (declare (not safe)) (_%g141646141770%_)))
                  (let () (declare (not safe)) (_%g141646141770%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141646141770%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g141646141770%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141646141770%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g141646141770%_)))))
                          (let () (declare (not safe)) (_%g141646141770%_)))
                      (let () (declare (not safe)) (_%g141646141770%_)))
                  (let () (declare (not safe)) (_%g141646141770%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141646141770%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141646141770%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g141646141770%_))))))))
                 (_%generate1141489%_
                  (lambda (_%args141624%_
                           _%arglen141625%_
                           _%hd141626%_
                           _%body141627%_)
                    (let* ((_%len141629%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd141626%_)))
                           (_%condition141634%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd141626%_))
                                (let ()
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#current-compile-decls-unsafe?))
                                      (cons '##fx=
                                            (cons _%arglen141625%_
                                                  (cons _%len141629%_ '())))
                                      (cons 'let
                                            (cons '()
                                                  (cons '(declare (not safe))
                                                        (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%arglen141625%_ (cons _%len141629%_ '())))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len141629%_ '0)
                                    (let ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gxc#current-compile-decls-unsafe?))
                                          (cons '##fx>=
                                                (cons _%arglen141625%_
                                                      (cons _%len141629%_
                                                            '())))
                                          (cons 'let
                                                (cons '()
                                                      (cons '(declare
                                                               (not safe))
                                                            (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%arglen141625%_
                                      (cons _%len141629%_ '())))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let () '#t))))
                           (_%dispatch141636%_
                            (if (let ()
                                  (declare (not safe))
                                  (_%dispatch-case?141487%_
                                   _%hd141626%_
                                   _%body141627%_))
                                (let ()
                                  (declare (not safe))
                                  (_%dispatch-case-e141488%_
                                   _%hd141626%_
                                   _%body141627%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _%self141484%_
                                   _%hd141626%_
                                   _%body141627%_)))))
                      (cons _%condition141634%_
                            (cons (cons 'apply
                                        (cons _%dispatch141636%_
                                              (cons _%args141624%_ '())))
                                  '()))))))
          (let* ((_%g141491141519%_
                  (lambda (_%g141492141516%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141492141516%_))))
                 (_%g141490141621%_
                  (lambda (_%g141492141522%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141492141522%_))
                        (let ((_%e141497141524%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141492141522%_))))
                          (let ((_%hd141496141527%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141497141524%_)))
                                (_%tl141495141529%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141497141524%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl141495141529%_))
                                (let ((_g145841_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl141495141529%_
                                          '0))))
                                  (begin
                                    (let ((_g145842_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145841_)
                                                 (##vector-length _g145841_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145842_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145842_)))
                                    (let ((_%target141498141532%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145841_ 0)))
                                          (_%tl141500141534%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145841_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl141500141534%_))
                                          (letrec ((_%loop141501141537%_
                                                    (lambda (_%hd141499141540%_
                                                             _%body141505141542%_
                                                             _%hd141506141544%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd141499141540%_))
                                                          (let ((_%e141502141547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd141499141540%_))))
                    (let ((_%lp-hd141503141550%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141502141547%_)))
                          (_%lp-tl141504141552%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141502141547%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd141503141550%_))
                          (let ((_%e141511141555%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd141503141550%_))))
                            (let ((_%hd141510141558%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141511141555%_)))
                                  (_%tl141509141560%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141511141555%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl141509141560%_))
                                  (let ((_%e141514141563%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl141509141560%_))))
                                    (let ((_%hd141513141566%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141514141563%_)))
                                          (_%tl141512141568%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141514141563%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl141512141568%_))
                                          (let ((__tmp145844
                                                 (cons _%hd141513141566%_
                                                       _%body141505141542%_))
                                                (__tmp145843
                                                 (cons _%hd141510141558%_
                                                       _%hd141506141544%_)))
                                            (declare (not safe))
                                            (_%loop141501141537%_
                                             _%lp-tl141504141552%_
                                             __tmp145844
                                             __tmp145843))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141491141519%_
                                             _%g141492141522%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g141491141519%_ _%g141492141522%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g141491141519%_ _%g141492141522%_)))))
                  (let ((_%body141507141571%_ (reverse _%body141505141542%_))
                        (_%hd141508141573%_ (reverse _%hd141506141544%_)))
                    ((lambda (_%L141576%_ _%L141577%_)
                       (let ((_%args141596%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen141597%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name141598%_
                              (let ((_%$e141593%_
                                     (let ((__tmp145845
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp145845 _%stx141485%_))))
                                (if _%$e141593%_
                                    _%$e141593%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args141596%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen141597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (let ()
                                       (declare (not safe))
                                       (gxc#current-compile-decls-unsafe?))
                                     (cons '##length (cons _%args141596%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args141596%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp145849
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name141598%_
                                                                (cons _%args141596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp145846
                                  (map (lambda (_%g141599141602%_
                                                _%g141600141604%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%generate1141489%_
                                            _%args141596%_
                                            _%arglen141597%_
                                            _%g141599141602%_
                                            _%g141600141604%_)))
                                       (let ((__tmp145847
                                              (lambda (_%g141606141609%_
                                                       _%g141607141611%_)
                                                (cons _%g141606141609%_
                                                      _%g141607141611%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145847
                                          '()
                                          _%L141577%_))
                                       (let ((__tmp145848
                                              (lambda (_%g141613141616%_
                                                       _%g141614141618%_)
                                                (cons _%g141613141616%_
                                                      _%g141614141618%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145848
                                          '()
                                          _%L141576%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp145849 __tmp145846)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body141507141571%_
                     _%hd141508141573%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop141501141537%_
                                               _%target141498141532%_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141491141519%_
                                             _%g141492141522%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g141491141519%_ _%g141492141522%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g141491141519%_ _%g141492141522%_))))))
            (declare (not safe))
            (_%g141490141621%_ _%stx141485%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self140714%_ _%stx140715%_ _%compiled-body?140716%_)
        (letrec ((_%generate-simple140718%_
                  (lambda (_%hd141469%_ _%body141470%_)
                    (let ((__tmp145850
                           (let ((__tmp145851
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _%self140714%_
                                     'let
                                     _%hd141469%_
                                     _%body141470%_
                                     _%compiled-body?140716%_))))
                             (declare (not safe))
                             (_%coalesce-let140720%_ __tmp145851))))
                      (declare (not safe))
                      (_%coalesce-boolean140719%_ __tmp145850))))
                 (_%coalesce-boolean140719%_
                  (lambda (_%code141330%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code141331141357%_ _%code141330%_)
                               (_%else141333141365%_
                                (lambda () _%code141330%_))
                               (_%K141335141402%_
                                (lambda (_%expr2141368%_
                                         _%expr1141369%_
                                         _%id141370%_)
                                  (let* ((_%expr2141371141379%_
                                          _%expr2141368%_)
                                         (_%else141373141387%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1141369%_
                                                        (cons _%expr2141368%_
                                                              '())))))
                                         (_%K141375141392%_
                                          (lambda (_%exprs141390%_)
                                            (cons 'or
                                                  (cons _%expr1141369%_
                                                        _%exprs141390%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2141371141379%_))
                                        (let ((_%hd141376141395%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2141371141379%_)))
                                              (_%tl141377141397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2141371141379%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd141376141395%_ 'or))
                                              (let ((_%exprs141400%_
                                                     _%tl141377141397%_))
                                                (declare (not safe))
                                                (_%K141375141392%_
                                                 _%exprs141400%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%else141373141387%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else141373141387%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code141331141357%_))
                              (let ((_%hd141336141405%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code141331141357%_)))
                                    (_%tl141337141407%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code141331141357%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd141336141405%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl141337141407%_))
                                        (let ((_%hd141338141410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl141337141407%_)))
                                              (_%tl141339141412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl141337141407%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd141338141410%_))
                                              (let ((_%hd141350141415%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd141338141410%_)))
                                                    (_%tl141351141417%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd141338141410%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd141350141415%_))
                                                    (let ((_%hd141352141420%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd141350141415%_)))
                                                          (_%tl141353141422%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd141350141415%_))))
                                                      (let ((_%id141425%_
                                                             _%hd141352141420%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl141353141422%_))
                                                            (let ((_%hd141354141427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl141353141422%_)))
                          (_%tl141355141429%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl141353141422%_))))
                      (let ((_%expr1141432%_ _%hd141354141427%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl141355141429%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl141351141417%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl141339141412%_))
                                    (let ((_%hd141340141434%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl141339141412%_)))
                                          (_%tl141341141436%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl141339141412%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd141340141434%_))
                                          (let ((_%hd141342141439%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd141340141434%_)))
                                                (_%tl141343141441%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd141340141434%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd141342141439%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl141343141441%_))
                                                    (let ((_%hd141344141444%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl141343141441%_)))
                                                          (_%tl141345141446%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl141343141441%_))))
                                                      (if ((lambda (_%g141448141450%_)
                                                             (eq? _%g141448141450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id141425%_))
                   _%hd141344141444%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl141345141446%_))
                      (let ((_%hd141346141453%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl141345141446%_)))
                            (_%tl141347141455%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl141345141446%_))))
                        (if ((lambda (_%g141457141459%_)
                               (eq? _%g141457141459%_ _%id141425%_))
                             _%hd141346141453%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl141347141455%_))
                                (let ((_%hd141348141462%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl141347141455%_)))
                                      (_%tl141349141464%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl141347141455%_))))
                                  (let ((_%expr2141467%_ _%hd141348141462%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl141349141464%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl141341141436%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K141335141402%_
                                               _%expr2141467%_
                                               _%expr1141432%_
                                               _%id141425%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%else141333141365%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%else141333141365%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%else141333141365%_)))
                            (let ()
                              (declare (not safe))
                              (_%else141333141365%_))))
                      (let () (declare (not safe)) (_%else141333141365%_)))
                  (let () (declare (not safe)) (_%else141333141365%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else141333141365%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else141333141365%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else141333141365%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else141333141365%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else141333141365%_)))
                            (let ()
                              (declare (not safe))
                              (_%else141333141365%_)))))
                    (let () (declare (not safe)) (_%else141333141365%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else141333141365%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%else141333141365%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else141333141365%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%else141333141365%_))))
                              (let ()
                                (declare (not safe))
                                (_%else141333141365%_))))
                        _%code141330%_)))
                 (_%coalesce-let140720%_
                  (lambda (_%code141022%_)
                    (let* ((_%code141023141097%_ _%code141022%_)
                           (_%else141028141105%_ (lambda () _%code141022%_)))
                      (let ((_%K141087141305%_
                             (lambda (_%body141303%_)
                               (cons 'let _%body141303%_)))
                            (_%K141070141251%_
                             (lambda (_%body141247%_
                                      _%expr141248%_
                                      _%id141249%_)
                               (cons 'let
                                     (cons (cons (cons _%id141249%_
                                                       (cons _%expr141248%_
                                                             '()))
                                                 '())
                                           _%body141247%_))))
                            (_%K141047141175%_
                             (lambda (_%body141169%_
                                      _%expr2141170%_
                                      _%id2141171%_
                                      _%expr1141172%_
                                      _%id1141173%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1141173%_
                                                       (cons _%expr1141172%_
                                                             '()))
                                                 (cons (cons _%id2141171%_
                                                             (cons _%expr2141170%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body141169%_))))
                            (_%K141030141114%_
                             (lambda (_%body141109%_
                                      _%bind141110%_
                                      _%expr1141111%_
                                      _%id1141112%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1141112%_
                                                       (cons _%expr1141111%_
                                                             '()))
                                                 _%bind141110%_)
                                           _%body141109%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code141023141097%_))
                            (let ((_%tl141089141310%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code141023141097%_)))
                                  (_%hd141088141308%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code141023141097%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd141088141308%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl141089141310%_))
                                      (let ((_%tl141091141315%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl141089141310%_)))
                                            (_%hd141090141313%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl141089141310%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%hd141090141313%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tl141091141315%_))
                                                (let ((_%tl141093141320%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl141091141315%_)))
                                                      (_%hd141092141318%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl141091141315%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd141092141318%_))
                                                      (let ((_%tl141095141325%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd141092141318%_)))
                    (_%hd141094141323%_
                     (let () (declare (not safe)) (##car _%hd141092141318%_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _%hd141094141323%_ 'let))
                    (if (let ()
                          (declare (not safe))
                          (##null? _%tl141093141320%_))
                        (let ((_%body141328%_ _%tl141095141325%_))
                          (declare (not safe))
                          (_%K141087141305%_ _%body141328%_))
                        (let () (declare (not safe)) (_%else141028141105%_)))
                    (let () (declare (not safe)) (_%else141028141105%_))))
              (let () (declare (not safe)) (_%else141028141105%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else141028141105%_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd141090141313%_))
                                                (let ((_%tl141082141266%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd141090141313%_)))
                                                      (_%hd141081141264%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd141090141313%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd141081141264%_))
                                                      (let ((_%tl141084141271%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd141081141264%_)))
                    (_%hd141083141269%_
                     (let () (declare (not safe)) (##car _%hd141081141264%_))))
                (if (let () (declare (not safe)) (##pair? _%tl141084141271%_))
                    (let ((_%tl141086141278%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl141084141271%_)))
                          (_%hd141085141276%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl141084141271%_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl141086141278%_))
                          (if (let ()
                                (declare (not safe))
                                (##null? _%tl141082141266%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl141091141315%_))
                                  (let ((_%tl141076141285%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl141091141315%_)))
                                        (_%hd141075141283%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl141091141315%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%hd141075141283%_))
                                        (let ((_%tl141078141290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd141075141283%_)))
                                              (_%hd141077141288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd141075141283%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd141077141288%_
                                                       'let))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl141078141290%_))
                                                  (let ((_%tl141080141295%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl141078141290%_)))
                                                        (_%hd141079141293%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl141078141290%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%hd141079141293%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##null? _%tl141076141285%_))
                                                            (let ((_%id141274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd141083141269%_)
                          (_%expr141281%_ _%hd141085141276%_)
                          (_%body141298%_ _%tl141080141295%_))
                      (let ()
                        (declare (not safe))
                        (_%K141070141251%_
                         _%body141298%_
                         _%expr141281%_
                         _%id141274%_)))
                    (let () (declare (not safe)) (_%else141028141105%_)))
                (if (let () (declare (not safe)) (##pair? _%hd141079141293%_))
                    (let ((_%tl141059141224%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd141079141293%_)))
                          (_%hd141058141222%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd141079141293%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd141058141222%_))
                          (let ((_%tl141061141229%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd141058141222%_)))
                                (_%hd141060141227%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd141058141222%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl141061141229%_))
                                (let ((_%tl141063141236%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl141061141229%_)))
                                      (_%hd141062141234%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl141061141229%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl141063141236%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl141059141224%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl141076141285%_))
                                              (let ((_%id1141198%_
                                                     _%hd141083141269%_)
                                                    (_%expr1141205%_
                                                     _%hd141085141276%_)
                                                    (_%id2141232%_
                                                     _%hd141060141227%_)
                                                    (_%expr2141239%_
                                                     _%hd141062141234%_)
                                                    (_%body141241%_
                                                     _%tl141080141295%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%K141047141175%_
                                                   _%body141241%_
                                                   _%expr2141239%_
                                                   _%id2141232%_
                                                   _%expr1141205%_
                                                   _%id1141198%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%else141028141105%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else141028141105%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else141028141105%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%else141028141105%_))))
                          (let ()
                            (declare (not safe))
                            (_%else141028141105%_))))
                    (let () (declare (not safe)) (_%else141028141105%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else141028141105%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd141077141288%_
                                                           'let*))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%tl141078141290%_))
                                                      (let ((_%tl141040141158%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl141078141290%_)))
                    (_%hd141039141156%_
                     (let () (declare (not safe)) (##car _%tl141078141290%_))))
                (if (let () (declare (not safe)) (##null? _%tl141076141285%_))
                    (let ((_%id1141137%_ _%hd141083141269%_)
                          (_%expr1141144%_ _%hd141085141276%_)
                          (_%bind141161%_ _%hd141039141156%_)
                          (_%body141163%_ _%tl141040141158%_))
                      (let ()
                        (declare (not safe))
                        (_%K141030141114%_
                         _%body141163%_
                         _%bind141161%_
                         _%expr1141144%_
                         _%id1141137%_)))
                    (let () (declare (not safe)) (_%else141028141105%_))))
              (let () (declare (not safe)) (_%else141028141105%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else141028141105%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else141028141105%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else141028141105%_)))
                              (let ()
                                (declare (not safe))
                                (_%else141028141105%_)))
                          (let ()
                            (declare (not safe))
                            (_%else141028141105%_))))
                    (let () (declare (not safe)) (_%else141028141105%_))))
              (let () (declare (not safe)) (_%else141028141105%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else141028141105%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%else141028141105%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else141028141105%_))))
                            (let ()
                              (declare (not safe))
                              (_%else141028141105%_)))))))
                 (_%generate-values140721%_
                  (lambda (_%hd140835%_ _%body140836%_)
                    (let _%lp140838%_ ((_%rest140840%_ _%hd140835%_)
                                       (_%bind140841%_ '())
                                       (_%check140842%_ '())
                                       (_%post140843%_ '()))
                      (let* ((_%__stx144979144980%_ _%rest140840%_)
                             (_%g140846140857%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144979144980%_)))))
                        (let ((_%__kont144981144982%_
                               (lambda (_%L140884%_ _%L140885%_)
                                 (let* ((_%__stx144935144936%_ _%L140885%_)
                                        (_%g140900140925%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144935144936%_)))))
                                   (let ((_%__kont144937144938%_
                                          (lambda (_%L140998%_ _%L140999%_)
                                            (let ((_%eid141013%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140999%_)))
                                                  (_%expr141014%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self140714%_
                                                      _%L140998%_))))
                                              (let ((__tmp145852
                                                     (cons (cons _%eid141013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr141014%_ '()))
                   _%bind140841%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%lp140838%_
                                                 _%L140884%_
                                                 __tmp145852
                                                 _%check140842%_
                                                 _%post140843%_)))))
                                         (_%__kont144939144940%_
                                          (lambda (_%L140946%_ _%L140947%_)
                                            (let* ((_%vals140960%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values140962%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _%vals140960%_
                                                       _%L140947%_
                                                       _%L140946%_)))
                                                   (_%refs140964%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _%vals140960%_
                                                       _%L140947%_)))
                                                   (_%expr140966%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self140714%_
                                                       _%L140946%_))))
                                              (let ((__tmp145855
                                                     (cons (cons _%vals140960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140966%_ '()))
                   _%bind140841%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145854
                                                     (cons _%check-values140962%_
                                                           _%check140842%_))
                                                    (__tmp145853
                                                     (cons _%refs140964%_
                                                           _%post140843%_)))
                                                (declare (not safe))
                                                (_%lp140838%_
                                                 _%L140884%_
                                                 __tmp145855
                                                 __tmp145854
                                                 __tmp145853))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144935144936%_))
                                         (let ((_%e140906140974%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144935144936%_))))
                                           (let ((_%tl140904140979%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140906140974%_)))
                                                 (_%hd140905140977%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140906140974%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd140905140977%_))
                                                 (let ((_%e140909140982%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd140905140977%_))))
                                                   (let ((_%tl140907140987%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140909140982%_)))
                                                         (_%hd140908140985%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140909140982%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140907140987%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140904140979%_))
                     (let ((_%e140912140990%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140904140979%_))))
                       (let ((_%tl140910140995%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140912140990%_)))
                             (_%hd140911140993%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140912140990%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140910140995%_))
                             (_%__kont144937144938%_
                              _%hd140911140993%_
                              _%hd140908140985%_)
                             (let ()
                               (declare (not safe))
                               (_%g140900140925%_)))))
                     (let () (declare (not safe)) (_%g140900140925%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140904140979%_))
                     (let ((_%e140920140938%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140904140979%_))))
                       (let ((_%tl140918140943%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140920140938%_)))
                             (_%hd140919140941%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140920140938%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140918140943%_))
                             (_%__kont144939144940%_
                              _%hd140919140941%_
                              _%hd140905140977%_)
                             (let ()
                               (declare (not safe))
                               (_%g140900140925%_)))))
                     (let () (declare (not safe)) (_%g140900140925%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140904140979%_))
                                                     (let ((_%e140920140938%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140904140979%_))))
                                                       (let ((_%tl140918140943%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140920140938%_)))
                     (_%hd140919140941%_
                      (let () (declare (not safe)) (##car _%e140920140938%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140918140943%_))
                     (_%__kont144939144940%_
                      _%hd140919140941%_
                      _%hd140905140977%_)
                     (let () (declare (not safe)) (_%g140900140925%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140900140925%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g140900140925%_)))))))
                              (_%__kont144983144984%_
                               (lambda ()
                                 (let* ((_%body140864%_
                                         (if _%compiled-body?140716%_
                                             _%body140836%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self140714%_
                                                _%body140836%_))))
                                        (_%body140866%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-post140722%_
                                            _%post140843%_
                                            _%body140864%_)))
                                        (_%body140868%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-check140723%_
                                            _%check140842%_
                                            _%body140866%_))))
                                   (cons 'let
                                         (cons (reverse _%bind140841%_)
                                               (cons _%body140868%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144979144980%_))
                              (let ((_%e140852140876%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144979144980%_))))
                                (let ((_%tl140850140881%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140852140876%_)))
                                      (_%hd140851140879%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140852140876%_))))
                                  (_%__kont144981144982%_
                                   _%tl140850140881%_
                                   _%hd140851140879%_)))
                              (_%__kont144983144984%_)))))))
                 (_%generate-values-post140722%_
                  (lambda (_%post140794%_ _%body140795%_)
                    (let _%lp140797%_ ((_%rest140799%_ _%post140794%_)
                                       (_%body140800%_ _%body140795%_))
                      (let* ((_%rest140801140809%_ _%rest140799%_)
                             (_%else140803140817%_ (lambda () _%body140800%_))
                             (_%K140805140823%_
                              (lambda (_%rest140820%_ _%bind140821%_)
                                (let ((__tmp145856
                                       (cons 'let
                                             (cons _%bind140821%_
                                                   (cons _%body140800%_
                                                         '())))))
                                  (declare (not safe))
                                  (_%lp140797%_ _%rest140820%_ __tmp145856)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140801140809%_))
                            (let ((_%hd140806140826%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140801140809%_)))
                                  (_%tl140807140828%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140801140809%_))))
                              (let* ((_%bind140831%_ _%hd140806140826%_)
                                     (_%rest140833%_ _%tl140807140828%_))
                                (declare (not safe))
                                (_%K140805140823%_
                                 _%rest140833%_
                                 _%bind140831%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140803140817%_)))))))
                 (_%generate-values-check140723%_
                  (lambda (_%check140791%_ _%body140792%_)
                    (cons 'begin
                          (let ((__tmp145858 (cons _%body140792%_ '()))
                                (__tmp145857 (reverse _%check140791%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145858 __tmp145857))))))
          (let* ((_%g140725140742%_
                  (lambda (_%g140726140739%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140726140739%_))))
                 (_%g140724140788%_
                  (lambda (_%g140726140745%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140726140745%_))
                        (let ((_%e140731140747%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140726140745%_))))
                          (let ((_%hd140730140750%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140731140747%_)))
                                (_%tl140729140752%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140731140747%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140729140752%_))
                                (let ((_%e140734140755%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140729140752%_))))
                                  (let ((_%hd140733140758%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140734140755%_)))
                                        (_%tl140732140760%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140734140755%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140732140760%_))
                                        (let ((_%e140737140763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140732140760%_))))
                                          (let ((_%hd140736140766%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140737140763%_)))
                                                (_%tl140735140768%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140737140763%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140735140768%_))
                                                ((lambda (_%L140771%_
                                                          _%L140772%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L140772%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-simple140718%_
                                                          _%L140772%_
                                                          _%L140771%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values140721%_
                                                          _%L140772%_
                                                          _%L140771%_))))
                                                 _%hd140736140766%_
                                                 _%hd140733140758%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g140725140742%_
                                                   _%g140726140745%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140725140742%_
                                           _%g140726140745%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g140725140742%_ _%g140726140745%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g140725140742%_ _%g140726140745%_))))))
            (declare (not safe))
            (_%g140724140788%_ _%stx140715%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self141475%_ _%stx141476%_)
        (let ((_%compiled-body?141478%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _%self141475%_
           _%stx141476%_
           _%compiled-body?141478%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g145860_
        (let ((_g145859_ (let () (declare (not safe)) (##length _g145860_))))
          (cond ((let () (declare (not safe)) (##fx= _g145859_ 2))
                 (apply (lambda (_%self141475%_ _%stx141476%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _%self141475%_
                             _%stx141476%_)))
                        _g145860_))
                ((let () (declare (not safe)) (##fx= _g145859_ 3))
                 (apply (lambda (_%self141480%_
                                 _%stx141481%_
                                 _%compiled-body?141482%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _%self141480%_
                             _%stx141481%_
                             _%compiled-body?141482%_)))
                        _g145860_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g145860_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals140608%_ _%hd140609%_)
        (let _%lp140611%_ ((_%rest140613%_ _%hd140609%_)
                           (_%k140614%_ '0)
                           (_%r140615%_ '()))
          (let* ((_%__stx144993144994%_ _%rest140613%_)
                 (_%g140620140637%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx144993144994%_)))))
            (let ((_%__kont144995144996%_
                   (lambda (_%L140700%_)
                     (let ((__tmp145861
                            (let ()
                              (declare (not safe))
                              (##fx+ _%k140614%_ '1))))
                       (declare (not safe))
                       (_%lp140611%_ _%L140700%_ __tmp145861 _%r140615%_))))
                  (_%__kont144997144998%_
                   (lambda (_%L140673%_ _%L140674%_)
                     (let ((__tmp145863
                            (let ()
                              (declare (not safe))
                              (##fx+ _%k140614%_ '1)))
                           (__tmp145862
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L140674%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#generate-runtime-values-ref
                                                 _%vals140608%_
                                                 _%k140614%_
                                                 _%L140673%_))
                                              '()))
                                  _%r140615%_)))
                       (declare (not safe))
                       (_%lp140611%_ _%L140673%_ __tmp145863 __tmp145862))))
                  (_%__kont144999145000%_
                   (lambda (_%L140649%_)
                     (let ((__tmp145864
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L140649%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#generate-runtime-values->list
                                                 _%vals140608%_
                                                 _%k140614%_))
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp145864 _%r140615%_))))
                  (_%__kont145001145002%_ (lambda () (reverse _%r140615%_))))
              (let ((_%g140618140660%_
                     (lambda ()
                       (let ((_%L140649%_ _%__stx144993144994%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L140649%_))
                             (_%__kont144999145000%_ _%L140649%_)
                             (_%__kont145001145002%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx144993144994%_))
                    (let ((_%e140625140689%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx144993144994%_))))
                      (let ((_%tl140623140694%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140625140689%_)))
                            (_%hd140624140692%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140625140689%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd140624140692%_))
                            (let ((_%e140626140697%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd140624140692%_))))
                              (if (equal? _%e140626140697%_ '#f)
                                  (_%__kont144995144996%_ _%tl140623140694%_)
                                  (_%__kont144997144998%_
                                   _%tl140623140694%_
                                   _%hd140624140692%_)))
                            (_%__kont144997144998%_
                             _%tl140623140694%_
                             _%hd140624140692%_))))
                    (let () (declare (not safe)) (_%g140618140660%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self140287%_ _%stx140288%_ _%compiled-body?140289%_)
        (letrec ((_%generate-simple140291%_
                  (lambda (_%hd140593%_ _%body140594%_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _%self140287%_
                       'letrec
                       _%hd140593%_
                       _%body140594%_
                       _%compiled-body?140289%_))))
                 (_%generate-values140292%_
                  (lambda (_%hd140372%_ _%body140373%_)
                    (let _%lp140375%_ ((_%rest140377%_ _%hd140372%_)
                                       (_%bind140378%_ '())
                                       (_%check140379%_ '())
                                       (_%post140380%_ '()))
                      (let* ((_%__stx145067145068%_ _%rest140377%_)
                             (_%g140383140394%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx145067145068%_)))))
                        (let ((_%__kont145069145070%_
                               (lambda (_%L140421%_ _%L140422%_)
                                 (let* ((_%__stx145023145024%_ _%L140422%_)
                                        (_%g140437140462%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx145023145024%_)))))
                                   (let ((_%__kont145025145026%_
                                          (lambda (_%L140569%_ _%L140570%_)
                                            (let ((_%eid140584%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140570%_)))
                                                  (_%expr140585%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self140287%_
                                                      _%L140569%_))))
                                              (let ((__tmp145865
                                                     (cons (cons _%eid140584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140585%_ '()))
                   _%bind140378%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%lp140375%_
                                                 _%L140421%_
                                                 __tmp145865
                                                 _%check140379%_
                                                 _%post140380%_)))))
                                         (_%__kont145027145028%_
                                          (lambda (_%L140483%_ _%L140484%_)
                                            (let* ((_%vals140497%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values140499%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _%vals140497%_
                                                       _%L140484%_
                                                       _%L140483%_)))
                                                   (_%refs140501%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _%vals140497%_
                                                       _%L140484%_)))
                                                   (_%expr140503%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self140287%_
                                                       _%L140483%_))))
                                              (let ((__tmp145868
                                                     (let ((__tmp145870
                                                            (cons (cons _%vals140497%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%expr140503%_ '()))
                          _%bind140378%_))
                   (__tmp145869
                    (map (lambda (_%e140505140507%_)
                           (let* ((_%g140509140518%_ _%e140505140507%_)
                                  (_%E140511140522%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%g140509140518%_
                                              '([eid _])))
                                     '#!void))
                                  (_%K140512140527%_
                                   (lambda (_%eid140525%_)
                                     (cons _%eid140525%_ (cons '#!void '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%g140509140518%_))
                                 (let ((_%hd140513140530%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%g140509140518%_)))
                                       (_%tl140514140532%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%g140509140518%_))))
                                   (let ((_%eid140535%_ _%hd140513140530%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _%tl140514140532%_))
                                         (let ((_%tl140516140537%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%tl140514140532%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _%tl140516140537%_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%K140512140527%_
                                                  _%eid140535%_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%E140511140522%_))))
                                         (let ()
                                           (declare (not safe))
                                           (_%E140511140522%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%E140511140522%_)))))
                         _%refs140501%_)))
               (declare (not safe))
               (__foldl1 cons __tmp145870 __tmp145869)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145867
                                                     (cons _%check-values140499%_
                                                           _%check140379%_))
                                                    (__tmp145866
                                                     (let ()
                                                       (declare (not safe))
                                                       (__foldl1
                                                        cons
                                                        _%refs140501%_
                                                        _%post140380%_))))
                                                (declare (not safe))
                                                (_%lp140375%_
                                                 _%L140421%_
                                                 __tmp145868
                                                 __tmp145867
                                                 __tmp145866))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx145023145024%_))
                                         (let ((_%e140443140545%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx145023145024%_))))
                                           (let ((_%tl140441140550%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140443140545%_)))
                                                 (_%hd140442140548%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140443140545%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd140442140548%_))
                                                 (let ((_%e140446140553%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd140442140548%_))))
                                                   (let ((_%tl140444140558%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140446140553%_)))
                                                         (_%hd140445140556%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140446140553%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140444140558%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140441140550%_))
                     (let ((_%e140449140561%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140441140550%_))))
                       (let ((_%tl140447140566%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140449140561%_)))
                             (_%hd140448140564%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140449140561%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140447140566%_))
                             (_%__kont145025145026%_
                              _%hd140448140564%_
                              _%hd140445140556%_)
                             (let ()
                               (declare (not safe))
                               (_%g140437140462%_)))))
                     (let () (declare (not safe)) (_%g140437140462%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140441140550%_))
                     (let ((_%e140457140475%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140441140550%_))))
                       (let ((_%tl140455140480%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140457140475%_)))
                             (_%hd140456140478%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140457140475%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140455140480%_))
                             (_%__kont145027145028%_
                              _%hd140456140478%_
                              _%hd140442140548%_)
                             (let ()
                               (declare (not safe))
                               (_%g140437140462%_)))))
                     (let () (declare (not safe)) (_%g140437140462%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140441140550%_))
                                                     (let ((_%e140457140475%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140441140550%_))))
                                                       (let ((_%tl140455140480%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140457140475%_)))
                     (_%hd140456140478%_
                      (let () (declare (not safe)) (##car _%e140457140475%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140455140480%_))
                     (_%__kont145027145028%_
                      _%hd140456140478%_
                      _%hd140442140548%_)
                     (let () (declare (not safe)) (_%g140437140462%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140437140462%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g140437140462%_)))))))
                              (_%__kont145071145072%_
                               (lambda ()
                                 (let* ((_%body140401%_
                                         (if _%compiled-body?140289%_
                                             _%body140373%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self140287%_
                                                _%body140373%_))))
                                        (_%body140403%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-post140294%_
                                            _%post140380%_
                                            _%body140401%_)))
                                        (_%body140405%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-check140293%_
                                            _%check140379%_
                                            _%body140403%_))))
                                   (cons 'letrec
                                         (cons (reverse _%bind140378%_)
                                               (cons _%body140405%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx145067145068%_))
                              (let ((_%e140389140413%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx145067145068%_))))
                                (let ((_%tl140387140418%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140389140413%_)))
                                      (_%hd140388140416%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140389140413%_))))
                                  (_%__kont145069145070%_
                                   _%tl140387140418%_
                                   _%hd140388140416%_)))
                              (_%__kont145071145072%_)))))))
                 (_%generate-values-check140293%_
                  (lambda (_%check140369%_ _%body140370%_)
                    (cons 'begin
                          (let ((__tmp145872 (cons _%body140370%_ '()))
                                (__tmp145871 (reverse _%check140369%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145872 __tmp145871)))))
                 (_%generate-values-post140294%_
                  (lambda (_%post140362%_ _%body140363%_)
                    (cons 'begin
                          (let ((__tmp145876 (cons _%body140363%_ '()))
                                (__tmp145873
                                 (let ((__tmp145875
                                        (lambda (_%g140364140366%_)
                                          (cons 'set! _%g140364140366%_)))
                                       (__tmp145874 (reverse _%post140362%_)))
                                   (declare (not safe))
                                   (##map __tmp145875 __tmp145874))))
                            (declare (not safe))
                            (__foldr1 cons __tmp145876 __tmp145873))))))
          (let* ((_%g140296140313%_
                  (lambda (_%g140297140310%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140297140310%_))))
                 (_%g140295140359%_
                  (lambda (_%g140297140316%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140297140316%_))
                        (let ((_%e140302140318%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140297140316%_))))
                          (let ((_%hd140301140321%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140302140318%_)))
                                (_%tl140300140323%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140302140318%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140300140323%_))
                                (let ((_%e140305140326%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140300140323%_))))
                                  (let ((_%hd140304140329%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140305140326%_)))
                                        (_%tl140303140331%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140305140326%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140303140331%_))
                                        (let ((_%e140308140334%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140303140331%_))))
                                          (let ((_%hd140307140337%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140308140334%_)))
                                                (_%tl140306140339%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140308140334%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140306140339%_))
                                                ((lambda (_%L140342%_
                                                          _%L140343%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L140343%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-simple140291%_
                                                          _%L140343%_
                                                          _%L140342%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values140292%_
                                                          _%L140343%_
                                                          _%L140342%_))))
                                                 _%hd140307140337%_
                                                 _%hd140304140329%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g140296140313%_
                                                   _%g140297140316%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140296140313%_
                                           _%g140297140316%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g140296140313%_ _%g140297140316%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g140296140313%_ _%g140297140316%_))))))
            (declare (not safe))
            (_%g140295140359%_ _%stx140288%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self140599%_ _%stx140600%_)
        (let ((_%compiled-body?140602%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _%self140599%_
           _%stx140600%_
           _%compiled-body?140602%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g145878_
        (let ((_g145877_ (let () (declare (not safe)) (##length _g145878_))))
          (cond ((let () (declare (not safe)) (##fx= _g145877_ 2))
                 (apply (lambda (_%self140599%_ _%stx140600%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _%self140599%_
                             _%stx140600%_)))
                        _g145878_))
                ((let () (declare (not safe)) (##fx= _g145877_ 3))
                 (apply (lambda (_%self140604%_
                                 _%stx140605%_
                                 _%compiled-body?140606%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _%self140604%_
                             _%stx140605%_
                             _%compiled-body?140606%_)))
                        _g145878_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g145878_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self139868%_ _%stx139869%_)
        (letrec ((_%generate-values139871%_
                  (lambda (_%hd140114%_ _%body140115%_)
                    (let _%lp140117%_ ((_%rest140119%_ _%hd140114%_)
                                       (_%bind140120%_ '()))
                      (let* ((_%rest140121140129%_ _%rest140119%_)
                             (_%else140123140140%_
                              (lambda ()
                                (let ((_%bind140137%_ (reverse _%bind140120%_))
                                      (_%body140138%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self139868%_
                                          _%body140115%_))))
                                  (cons 'letrec*
                                        (cons _%bind140137%_
                                              (cons _%body140138%_ '()))))))
                             (_%K140125140274%_
                              (lambda (_%rest140143%_ _%hd-bind140144%_)
                                (let* ((_%__stx145081145082%_
                                        _%hd-bind140144%_)
                                       (_%g140147140172%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx145081145082%_)))))
                                  (let ((_%__kont145083145084%_
                                         (lambda (_%L140253%_ _%L140254%_)
                                           (let ((_%eid140268%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L140254%_)))
                                                 (_%expr140269%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self139868%_
                                                     _%L140253%_))))
                                             (let ((__tmp145879
                                                    (cons (cons _%eid140268%_
                                                                (cons _%expr140269%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind140120%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp140117%_
                                                _%rest140143%_
                                                __tmp145879)))))
                                        (_%__kont145085145086%_
                                         (lambda (_%L140193%_ _%L140194%_)
                                           (let* ((_%vals140213%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp140215%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values140217%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _%tmp140215%_
                                                      _%L140194%_
                                                      _%L140193%_)))
                                                  (_%refs140219%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _%vals140213%_
                                                      _%L140194%_)))
                                                  (_%expr140221%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139868%_
                                                      _%L140193%_)))
                                                  (__tmp145880
                                                   (let ((__tmp145881
                                                          (cons (cons _%vals140213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons 'let
                                          (cons (cons (cons _%tmp140215%_
                                                            (cons _%expr140221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%check-values140217%_
                                                      (cons _%tmp140215%_
                                                            '()))))
                                    '()))
                        _%bind140120%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldl1
                                                      cons
                                                      __tmp145881
                                                      _%refs140219%_))))
                                             (declare (not safe))
                                             (_%lp140117%_
                                              _%rest140143%_
                                              __tmp145880)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx145081145082%_))
                                        (let ((_%e140153140229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx145081145082%_))))
                                          (let ((_%tl140151140234%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140153140229%_)))
                                                (_%hd140152140232%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140153140229%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd140152140232%_))
                                                (let ((_%e140156140237%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd140152140232%_))))
                                                  (let ((_%tl140154140242%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140156140237%_)))
                                                        (_%hd140155140240%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140156140237%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140154140242%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl140151140234%_))
                                                            (let ((_%e140159140245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl140151140234%_))))
                      (let ((_%tl140157140250%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140159140245%_)))
                            (_%hd140158140248%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140159140245%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl140157140250%_))
                            (_%__kont145083145084%_
                             _%hd140158140248%_
                             _%hd140155140240%_)
                            (let ()
                              (declare (not safe))
                              (_%g140147140172%_)))))
                    (let () (declare (not safe)) (_%g140147140172%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl140151140234%_))
                    (let ((_%e140167140185%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl140151140234%_))))
                      (let ((_%tl140165140190%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140167140185%_)))
                            (_%hd140166140188%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140167140185%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl140165140190%_))
                            (_%__kont145085145086%_
                             _%hd140166140188%_
                             _%hd140152140232%_)
                            (let ()
                              (declare (not safe))
                              (_%g140147140172%_)))))
                    (let () (declare (not safe)) (_%g140147140172%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl140151140234%_))
                                                    (let ((_%e140167140185%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl140151140234%_))))
                                                      (let ((_%tl140165140190%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e140167140185%_)))
                    (_%hd140166140188%_
                     (let () (declare (not safe)) (##car _%e140167140185%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl140165140190%_))
                    (_%__kont145085145086%_
                     _%hd140166140188%_
                     _%hd140152140232%_)
                    (let () (declare (not safe)) (_%g140147140172%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g140147140172%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140147140172%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140121140129%_))
                            (let ((_%hd140126140277%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140121140129%_)))
                                  (_%tl140127140279%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140121140129%_))))
                              (let* ((_%hd-bind140282%_ _%hd140126140277%_)
                                     (_%rest140284%_ _%tl140127140279%_))
                                (declare (not safe))
                                (_%K140125140274%_
                                 _%rest140284%_
                                 _%hd-bind140282%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140123140140%_)))))))
                 (_%generate-letrec?139872%_
                  (lambda (_%hd140004%_)
                    (let _%lp140006%_ ((_%rest140008%_ _%hd140004%_))
                      (let* ((_%rest140009140017%_ _%rest140008%_)
                             (_%else140011140025%_ (lambda () '#t))
                             (_%K140013140102%_
                              (lambda (_%rest140028%_ _%hd-bind140029%_)
                                (let* ((_%g140031140048%_
                                        (lambda (_%g140032140045%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g140032140045%_))))
                                       (_%g140030140099%_
                                        (lambda (_%g140032140051%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g140032140051%_))
                                              (let ((_%e140037140053%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g140032140051%_))))
                                                (let ((_%hd140036140056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140037140053%_)))
                                                      (_%tl140035140058%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140037140053%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd140036140056%_))
                                                      (let ((_%e140040140061%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd140036140056%_))))
                (let ((_%hd140039140064%_
                       (let () (declare (not safe)) (##car _%e140040140061%_)))
                      (_%tl140038140066%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e140040140061%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl140038140066%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl140035140058%_))
                          (let ((_%e140043140069%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl140035140058%_))))
                            (let ((_%hd140042140072%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140043140069%_)))
                                  (_%tl140041140074%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140043140069%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl140041140074%_))
                                  ((lambda (_%L140077%_ _%L140078%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_%is-lambda-expr?139873%_
                                            _%L140077%_))
                                         (let ()
                                           (declare (not safe))
                                           (_%lp140006%_ _%rest140028%_))
                                         '#f))
                                   _%hd140042140072%_
                                   _%hd140039140064%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g140031140048%_ _%g140032140051%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g140031140048%_ _%g140032140051%_)))
                      (let ()
                        (declare (not safe))
                        (_%g140031140048%_ _%g140032140051%_)))))
              (let ()
                (declare (not safe))
                (_%g140031140048%_ _%g140032140051%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g140031140048%_
                                                 _%g140032140051%_))))))
                                  (declare (not safe))
                                  (_%g140030140099%_ _%hd-bind140029%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140009140017%_))
                            (let ((_%hd140014140105%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140009140017%_)))
                                  (_%tl140015140107%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140009140017%_))))
                              (let* ((_%hd-bind140110%_ _%hd140014140105%_)
                                     (_%rest140112%_ _%tl140015140107%_))
                                (declare (not safe))
                                (_%K140013140102%_
                                 _%rest140112%_
                                 _%hd-bind140110%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140011140025%_)))))))
                 (_%is-lambda-expr?139873%_
                  (lambda (_%expr139941%_)
                    (let* ((_%__stx145125145126%_ _%expr139941%_)
                           (_%g139944139958%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx145125145126%_)))))
                      (let ((_%__kont145127145128%_
                             (lambda (_%L139986%_ _%L139987%_) '#t))
                            (_%__kont145129145130%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx145125145126%_))
                            (let ((_%e139950139970%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx145125145126%_))))
                              (let ((_%tl139948139975%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e139950139970%_)))
                                    (_%hd139949139973%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e139950139970%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd139949139973%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd139949139973%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl139948139975%_))
                                            (let ((_%e139953139978%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl139948139975%_))))
                                              (let ((_%tl139951139983%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e139953139978%_)))
                                                    (_%hd139952139981%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e139953139978%_))))
                                                (_%__kont145127145128%_
                                                 _%tl139951139983%_
                                                 _%hd139952139981%_)))
                                            (_%__kont145129145130%_))
                                        (_%__kont145129145130%_))
                                    (_%__kont145129145130%_))))
                            (_%__kont145129145130%_)))))))
          (let* ((_%g139875139892%_
                  (lambda (_%g139876139889%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139876139889%_))))
                 (_%g139874139938%_
                  (lambda (_%g139876139895%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139876139895%_))
                        (let ((_%e139881139897%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139876139895%_))))
                          (let ((_%hd139880139900%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139881139897%_)))
                                (_%tl139879139902%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139881139897%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139879139902%_))
                                (let ((_%e139884139905%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139879139902%_))))
                                  (let ((_%hd139883139908%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139884139905%_)))
                                        (_%tl139882139910%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139884139905%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139882139910%_))
                                        (let ((_%e139887139913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139882139910%_))))
                                          (let ((_%hd139886139916%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139887139913%_)))
                                                (_%tl139885139918%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139887139913%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139885139918%_))
                                                ((lambda (_%L139921%_
                                                          _%L139922%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L139922%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-letrec?139872%_
                                                              _%L139922%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _%self139868%_
                                                              'letrec
                                                              _%L139922%_
                                                              _%L139921%_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _%self139868%_
                                                              'letrec*
                                                              _%L139922%_
                                                              _%L139921%_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values139871%_
                                                          _%L139922%_
                                                          _%L139921%_))))
                                                 _%hd139886139916%_
                                                 _%hd139883139908%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g139875139892%_
                                                   _%g139876139895%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139875139892%_
                                           _%g139876139895%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139875139892%_ _%g139876139895%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139875139892%_ _%g139876139895%_))))))
            (declare (not safe))
            (_%g139874139938%_ _%stx139869%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd139805%_)
        (let _%lp139807%_ ((_%rest139809%_ _%hd139805%_))
          (let* ((_%rest139810139826%_ _%rest139809%_)
                 (_%else139813139834%_ (lambda () '#f)))
            (let ((_%K139816139847%_
                   (lambda (_%rest139845%_)
                     (let ()
                       (declare (not safe))
                       (_%lp139807%_ _%rest139845%_))))
                  (_%K139815139839%_ (lambda () '#t)))
              (let ((_%try-match139812139842%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest139810139826%_))
                           (let () (declare (not safe)) (_%K139815139839%_))
                           (let ()
                             (declare (not safe))
                             (_%else139813139834%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest139810139826%_))
                    (let ((_%tl139818139852%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest139810139826%_)))
                          (_%hd139817139850%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest139810139826%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd139817139850%_))
                          (let ((_%tl139820139857%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd139817139850%_)))
                                (_%hd139819139855%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd139817139850%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139819139855%_))
                                (let ((_%tl139824139860%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139819139855%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl139824139860%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl139820139857%_))
                                          (let ((_%tl139822139863%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl139820139857%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl139822139863%_))
                                                (let ((_%rest139866%_
                                                       _%tl139818139852%_))
                                                  (declare (not safe))
                                                  (_%lp139807%_
                                                   _%rest139866%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else139813139834%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else139813139834%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else139813139834%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%else139813139834%_))))
                          (let ()
                            (declare (not safe))
                            (_%else139813139834%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match139812139842%_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self139716%_
               _%form139717%_
               _%hd139718%_
               _%body139719%_
               _%compiled-body?139720%_)
        (letrec ((_%generate1139722%_
                  (lambda (_%bind139761%_)
                    (let* ((_%bind139762139773%_ _%bind139761%_)
                           (_%E139764139777%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind139762139773%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K139765139783%_
                            (lambda (_%expr139780%_ _%id139781%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id139781%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self139716%_
                                             _%expr139780%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind139762139773%_))
                          (let ((_%hd139766139786%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind139762139773%_)))
                                (_%tl139767139788%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind139762139773%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139766139786%_))
                                (let ((_%hd139770139791%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd139766139786%_)))
                                      (_%tl139771139793%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139766139786%_))))
                                  (let ((_%id139796%_ _%hd139770139791%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl139771139793%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl139767139788%_))
                                            (let ((_%hd139768139798%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl139767139788%_)))
                                                  (_%tl139769139800%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl139767139788%_))))
                                              (let ((_%expr139803%_
                                                     _%hd139768139798%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl139769139800%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%K139765139783%_
                                                       _%expr139803%_
                                                       _%id139796%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E139764139777%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%E139764139777%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E139764139777%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%E139764139777%_))))
                          (let ()
                            (declare (not safe))
                            (_%E139764139777%_)))))))
          (let* ((_%bind139724%_ (map _%generate1139722%_ _%hd139718%_))
                 (_%body139726%_
                  (if _%compiled-body?139720%_
                      _%body139719%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self139716%_ _%body139719%_))))
                 (_%body139758%_
                  (let* ((_%body139727139735%_ _%body139726%_)
                         (_%else139729139743%_
                          (lambda () (cons _%body139726%_ '())))
                         (_%K139731139748%_
                          (lambda (_%exprs139746%_) _%exprs139746%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body139727139735%_))
                        (let ((_%hd139732139751%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body139727139735%_)))
                              (_%tl139733139753%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body139727139735%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd139732139751%_ 'begin))
                              (let ((_%exprs139756%_ _%tl139733139753%_))
                                (declare (not safe))
                                (_%K139731139748%_ _%exprs139756%_))
                              (let ()
                                (declare (not safe))
                                (_%else139729139743%_))))
                        (let ()
                          (declare (not safe))
                          (_%else139729139743%_))))))
            (cons _%form139717%_ (cons _%bind139724%_ _%body139758%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self139616%_ _%stx139617%_)
        (letrec ((_%generate1139619%_
                  (lambda (_%datum139671%_)
                    (if (or (let ()
                              (declare (not safe))
                              (null? _%datum139671%_))
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum139671%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum139671%_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _%datum139671%_)))
                        (let () _%datum139671%_)
                        (if (uninterned-symbol? _%datum139671%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum139671%_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _%datum139671%_))
                                (let ()
                                  (cons (let ((__tmp145882
                                               (car _%datum139671%_)))
                                          (declare (not safe))
                                          (_%generate1139619%_ __tmp145882))
                                        (let ((__tmp145883
                                               (cdr _%datum139671%_)))
                                          (declare (not safe))
                                          (_%generate1139619%_ __tmp145883))))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _%datum139671%_))
                                    (let ()
                                      (box (let ((__tmp145884
                                                  (unbox _%datum139671%_)))
                                             (declare (not safe))
                                             (_%generate1139619%_
                                              __tmp145884))))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _%datum139671%_))
                                        (let ()
                                          (vector-map
                                           _%generate1139619%_
                                           _%datum139671%_))
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (s8vector? _%datum139671%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _%datum139671%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s16vector? _%datum139671%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u16vector? _%datum139671%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s32vector? _%datum139671%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u32vector? _%datum139671%_))
                                                (s64vector? _%datum139671%_)
                                                (u64vector? _%datum139671%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (f32vector? _%datum139671%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (f64vector?
                                                   _%datum139671%_)))
                                            (let () _%datum139671%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx139617%_)))))))))))
          (let* ((_%g139621139634%_
                  (lambda (_%g139622139631%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139622139631%_))))
                 (_%g139620139668%_
                  (lambda (_%g139622139637%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139622139637%_))
                        (let ((_%e139626139639%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139622139637%_))))
                          (let ((_%hd139625139642%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139626139639%_)))
                                (_%tl139624139644%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139626139639%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139624139644%_))
                                (let ((_%e139629139647%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139624139644%_))))
                                  (let ((_%hd139628139650%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139629139647%_)))
                                        (_%tl139627139652%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139629139647%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl139627139652%_))
                                        ((lambda (_%L139655%_)
                                           (cons 'quote
                                                 (cons (let ((__tmp145885
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%L139655%_))))
                 (declare (not safe))
                 (_%generate1139619%_ __tmp145885))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd139628139650%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g139621139634%_
                                           _%g139622139637%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139621139634%_ _%g139622139637%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139621139634%_ _%g139622139637%_))))))
            (declare (not safe))
            (_%g139620139668%_ _%stx139617%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self139057%_ _%stx139058%_)
        (letrec ((_%compile-call139060%_
                  (lambda (_%rator139349%_ _%rands139350%_)
                    (let ((_%rator139356%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self139057%_
                              _%rator139349%_)))
                          (_%rands139357%_
                           (map (lambda (_%g139351139353%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self139057%_
                                     _%g139351139353%_)))
                                _%rands139350%_)))
                      (let* ((_%__stx145172145173%_ _%rator139356%_)
                             (_%g139360139412%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx145172145173%_)))))
                        (let ((_%__kont145174145175%_
                               (lambda (_%L139536%_
                                        _%L139537%_
                                        _%L139538%_
                                        _%L139539%_)
                                 (if (let ((__tmp145888
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands139357%_)))
                                           (__tmp145886
                                            (length (let ((__tmp145887
                                                           (lambda (_%g139575139578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g139576139580%_)
                     (cons _%g139575139578%_ _%g139576139580%_))))
              (declare (not safe))
              (__foldr1 __tmp145887 '() _%L139538%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145888 __tmp145886))
                                     (let* ((_%id139583%_ _%L139539%_)
                                            (_%args139592%_
                                             (let ((__tmp145889
                                                    (lambda (_%g139584139587%_
                                                             _%g139585139589%_)
                                                      (cons _%g139584139587%_
                                                            _%g139585139589%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145889
                                                '()
                                                _%L139538%_)))
                                            (_%body139601%_
                                             (let ((__tmp145890
                                                    (lambda (_%g139593139596%_
                                                             _%g139594139598%_)
                                                      (cons _%g139593139596%_
                                                            _%g139594139598%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145890
                                                '()
                                                _%L139537%_)))
                                            (_%init139603%_
                                             (map list
                                                  _%args139592%_
                                                  _%rands139357%_)))
                                       (cons 'let
                                             (cons _%id139583%_
                                                   (cons _%init139603%_
                                                         _%body139601%_))))
                                     (let ((__tmp145891
                                            (let ((__tmp145892
                                                   (lambda (_%g139605139608%_
                                                            _%g139606139610%_)
                                                     (cons _%g139605139608%_
                                                           _%g139606139610%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145892
                                               '()
                                               _%L139538%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx139058%_
                                        __tmp145891
                                        _%rands139357%_)))))
                              (_%__kont145180145181%_
                               (lambda ()
                                 (cons _%rator139356%_ _%rands139357%_))))
                          (let ((_%__match145239145240%_
                                 (lambda (_%e139368139424%_
                                          _%hd139367139427%_
                                          _%tl139366139429%_
                                          _%e139371139432%_
                                          _%hd139370139435%_
                                          _%tl139369139437%_
                                          _%e139374139440%_
                                          _%hd139373139443%_
                                          _%tl139372139445%_
                                          _%e139377139448%_
                                          _%hd139376139451%_
                                          _%tl139375139453%_
                                          _%e139380139456%_
                                          _%hd139379139459%_
                                          _%tl139378139461%_
                                          _%e139383139464%_
                                          _%hd139382139467%_
                                          _%tl139381139469%_
                                          _%e139386139472%_
                                          _%hd139385139475%_
                                          _%tl139384139477%_
                                          _%__splice145176145177%_
                                          _%target139387139480%_
                                          _%tl139389139482%_)
                                   (letrec ((_%loop139390139485%_
                                             (lambda (_%hd139388139488%_
                                                      _%arg139394139490%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd139388139488%_))
                                                   (let ((_%e139391139493%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd139388139488%_))))
                                                     (let ((_%lp-tl139393139498%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e139391139493%_)))
                                                           (_%lp-hd139392139496%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e139391139493%_))))
                                                       (let ((__tmp145893
                                                              (cons _%lp-hd139392139496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%arg139394139490%_)))
                 (declare (not safe))
                 (_%loop139390139485%_ _%lp-tl139393139498%_ __tmp145893))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%arg139395139501%_
                                                          (reverse _%arg139394139490%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl139384139477%_))
                                                         (let ((_%__splice145178145179%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl139384139477%_ '0))))
                   (let ((_%tl139398139506%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice145178145179%_ '1)))
                         (_%target139396139504%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice145178145179%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl139398139506%_))
                         (letrec ((_%loop139399139509%_
                                   (lambda (_%hd139397139512%_
                                            _%body139403139514%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd139397139512%_))
                                         (let ((_%e139400139517%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd139397139512%_))))
                                           (let ((_%lp-tl139402139522%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e139400139517%_)))
                                                 (_%lp-hd139401139520%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e139400139517%_))))
                                             (let ((__tmp145894
                                                    (cons _%lp-hd139401139520%_
                                                          _%body139403139514%_)))
                                               (declare (not safe))
                                               (_%loop139399139509%_
                                                _%lp-tl139402139522%_
                                                __tmp145894))))
                                         (let ((_%body139404139525%_
                                                (reverse _%body139403139514%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl139378139461%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl139372139445%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl139369139437%_))
                                                       (let ((_%e139407139528%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl139369139437%_))))
                 (let ((_%tl139405139533%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e139407139528%_)))
                       (_%hd139406139531%_
                        (let ()
                          (declare (not safe))
                          (##car _%e139407139528%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl139405139533%_))
                       (let ((_%L139536%_ _%hd139406139531%_)
                             (_%L139537%_ _%body139404139525%_)
                             (_%L139538%_ _%arg139395139501%_)
                             (_%L139539%_ _%hd139376139451%_))
                         (if (eq? _%L139539%_ _%L139536%_)
                             (_%__kont145174145175%_
                              _%L139536%_
                              _%L139537%_
                              _%L139538%_
                              _%L139539%_)
                             (_%__kont145180145181%_)))
                       (_%__kont145180145181%_))))
               (_%__kont145180145181%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont145180145181%_))
                                               (_%__kont145180145181%_)))))))
                           (let ()
                             (declare (not safe))
                             (_%loop139399139509%_
                              _%target139396139504%_
                              '())))
                         (_%__kont145180145181%_))))
                 (_%__kont145180145181%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_%loop139390139485%_
                                        _%target139387139480%_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx145172145173%_))
                                (let ((_%e139368139424%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx145172145173%_))))
                                  (let ((_%tl139366139429%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139368139424%_)))
                                        (_%hd139367139427%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139368139424%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd139367139427%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd139367139427%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl139366139429%_))
                                                (let ((_%e139371139432%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl139366139429%_))))
                                                  (let ((_%tl139369139437%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139371139432%_)))
                                                        (_%hd139370139435%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139371139432%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd139370139435%_))
                                                        (let ((_%e139374139440%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd139370139435%_))))
                  (let ((_%tl139372139445%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e139374139440%_)))
                        (_%hd139373139443%_
                         (let ()
                           (declare (not safe))
                           (##car _%e139374139440%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd139373139443%_))
                        (let ((_%e139377139448%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd139373139443%_))))
                          (let ((_%tl139375139453%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139377139448%_)))
                                (_%hd139376139451%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139377139448%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139375139453%_))
                                (let ((_%e139380139456%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139375139453%_))))
                                  (let ((_%tl139378139461%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139380139456%_)))
                                        (_%hd139379139459%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139380139456%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd139379139459%_))
                                        (let ((_%e139383139464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd139379139459%_))))
                                          (let ((_%tl139381139469%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139383139464%_)))
                                                (_%hd139382139467%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139383139464%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd139382139467%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd139382139467%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl139381139469%_))
                                                        (let ((_%e139386139472%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl139381139469%_))))
                  (let ((_%tl139384139477%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e139386139472%_)))
                        (_%hd139385139475%_
                         (let ()
                           (declare (not safe))
                           (##car _%e139386139472%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd139385139475%_))
                        (let ((_%__splice145176145177%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd139385139475%_
                                  '0))))
                          (let ((_%tl139389139482%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice145176145177%_ '1)))
                                (_%target139387139480%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice145176145177%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl139389139482%_))
                                (_%__match145239145240%_
                                 _%e139368139424%_
                                 _%hd139367139427%_
                                 _%tl139366139429%_
                                 _%e139371139432%_
                                 _%hd139370139435%_
                                 _%tl139369139437%_
                                 _%e139374139440%_
                                 _%hd139373139443%_
                                 _%tl139372139445%_
                                 _%e139377139448%_
                                 _%hd139376139451%_
                                 _%tl139375139453%_
                                 _%e139380139456%_
                                 _%hd139379139459%_
                                 _%tl139378139461%_
                                 _%e139383139464%_
                                 _%hd139382139467%_
                                 _%tl139381139469%_
                                 _%e139386139472%_
                                 _%hd139385139475%_
                                 _%tl139384139477%_
                                 _%__splice145176145177%_
                                 _%target139387139480%_
                                 _%tl139389139482%_)
                                (_%__kont145180145181%_))))
                        (_%__kont145180145181%_))))
                (_%__kont145180145181%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont145180145181%_))
                                                (_%__kont145180145181%_))))
                                        (_%__kont145180145181%_))))
                                (_%__kont145180145181%_))))
                        (_%__kont145180145181%_))))
                (_%__kont145180145181%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont145180145181%_))
                                            (_%__kont145180145181%_))
                                        (_%__kont145180145181%_))))
                                (_%__kont145180145181%_)))))))))
          (let* ((_%g139062139085%_
                  (lambda (_%g139063139082%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139063139082%_))))
                 (_%g139061139346%_
                  (lambda (_%g139063139088%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139063139088%_))
                        (let ((_%e139068139090%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139063139088%_))))
                          (let ((_%hd139067139093%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139068139090%_)))
                                (_%tl139066139095%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139068139090%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139066139095%_))
                                (let ((_%e139071139098%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139066139095%_))))
                                  (let ((_%hd139070139101%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139071139098%_)))
                                        (_%tl139069139103%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139071139098%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl139069139103%_))
                                        (let ((_g145895_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl139069139103%_
                                                  '0))))
                                          (begin
                                            (let ((_g145896_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g145895_)
                                                         (##vector-length
                                                          _g145895_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g145896_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g145896_)))
                                            (let ((_%target139072139106%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145895_
                                                      0)))
                                                  (_%tl139074139108%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145895_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl139074139108%_))
                                                  (letrec ((_%loop139075139111%_
                                                            (lambda (_%hd139073139114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand139079139116%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd139073139114%_))
                          (let ((_%e139076139119%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd139073139114%_))))
                            (let ((_%lp-hd139077139122%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139076139119%_)))
                                  (_%lp-tl139078139124%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139076139119%_))))
                              (let ((__tmp145897
                                     (cons _%lp-hd139077139122%_
                                           _%rand139079139116%_)))
                                (declare (not safe))
                                (_%loop139075139111%_
                                 _%lp-tl139078139124%_
                                 __tmp145897))))
                          (let ((_%rand139080139127%_
                                 (reverse _%rand139079139116%_)))
                            ((lambda (_%L139130%_ _%L139131%_)
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls-unsafe?))
                                   (let ((__tmp145898
                                          (let ((__tmp145899
                                                 (lambda (_%g139148139151%_
                                                          _%g139149139153%_)
                                                   (cons _%g139148139151%_
                                                         _%g139149139153%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp145899
                                             '()
                                             _%L139130%_))))
                                     (declare (not safe))
                                     (_%compile-call139060%_
                                      _%L139131%_
                                      __tmp145898))
                                   (let* ((_%__stx145288145289%_ _%L139131%_)
                                          (_%g139157139169%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx145288145289%_)))))
                                     (let ((_%__kont145290145291%_
                                            (lambda ()
                                              (let ((_%f139206%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self139057%_
                                                        _%L139131%_))))
                                                (if (and (let ((__tmp145900
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f139206%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp145900))
                 (let ((__tmp145901
                        (let ()
                          (declare (not safe))
                          (##memq _%f139206%_ gxc#checked-primitives))))
                   (declare (not safe))
                   (not __tmp145901)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp139208%_ ((_%rest139211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp145907
                                                (lambda (_%g139328139331%_
                                                         _%g139329139333%_)
                                                  (cons _%g139328139331%_
                                                        _%g139329139333%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp145907
                                            '()
                                            _%L139130%_))))
                               (_%bind139213%_ '())
                               (_%args139214%_ '()))
              (let* ((_%rest139215139223%_ _%rest139211%_)
                     (_%else139217139231%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind139213%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f139206%_
                                                      _%args139214%_)
                                                '()))))))
                     (_%K139219139317%_
                      (lambda (_%rest139234%_ _%e139235%_)
                        (let* ((_%__stx145242145243%_ _%e139235%_)
                               (_%g139240139258%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx145242145243%_)))))
                          (let ((_%__kont145244145245%_
                                 (lambda ()
                                   (let ((__tmp145902
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e139235%_))
                                                _%args139214%_)))
                                     (declare (not safe))
                                     (_%lp139208%_
                                      _%rest139234%_
                                      _%bind139213%_
                                      __tmp145902))))
                                (_%__kont145246145247%_
                                 (lambda ()
                                   (let ((__tmp145903
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e139235%_))
                                                _%args139214%_)))
                                     (declare (not safe))
                                     (_%lp139208%_
                                      _%rest139234%_
                                      _%bind139213%_
                                      __tmp145903))))
                                (_%__kont145248145249%_
                                 (lambda ()
                                   (let ((_%tmp139265%_
                                          (let ((__tmp145904
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp145904))))
                                     (let ((__tmp145906
                                            (cons (cons _%tmp139265%_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _%e139235%_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind139213%_))
                                           (__tmp145905
                                            (cons _%tmp139265%_
                                                  _%args139214%_)))
                                       (declare (not safe))
                                       (_%lp139208%_
                                        _%rest139234%_
                                        __tmp145906
                                        __tmp145905))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx145242145243%_))
                                (let ((_%e139244139296%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx145242145243%_))))
                                  (let ((_%tl139242139301%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139244139296%_)))
                                        (_%hd139243139299%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139244139296%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd139243139299%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd139243139299%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl139242139301%_))
                                                (let ((_%e139247139304%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl139242139301%_))))
                                                  (let ((_%tl139245139309%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139247139304%_)))
                                                        (_%hd139246139307%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139247139304%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139245139309%_))
                                                        (_%__kont145244145245%_)
                                                        (_%__kont145248145249%_))))
                                                (_%__kont145248145249%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd139243139299%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl139242139301%_))
                                                    (let ((_%e139253139281%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl139242139301%_))))
                                                      (let ((_%tl139251139286%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e139253139281%_)))
                    (_%hd139252139284%_
                     (let () (declare (not safe)) (##car _%e139253139281%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl139251139286%_))
                    (_%__kont145246145247%_)
                    (_%__kont145248145249%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont145248145249%_))
                                                (_%__kont145248145249%_)))
                                        (_%__kont145248145249%_))))
                                (_%__kont145248145249%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest139215139223%_))
                    (let ((_%hd139220139320%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest139215139223%_)))
                          (_%tl139221139322%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest139215139223%_))))
                      (let* ((_%e139325%_ _%hd139220139320%_)
                             (_%rest139327%_ _%tl139221139322%_))
                        (declare (not safe))
                        (_%K139219139317%_ _%rest139327%_ _%e139325%_)))
                    (let () (declare (not safe)) (_%else139217139231%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp145908
                                                           (let ((__tmp145909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g139335139338%_ _%g139336139340%_)
                            (cons _%g139335139338%_ _%g139336139340%_))))
                     (declare (not safe))
                     (__foldr1 __tmp145909 '() _%L139130%_))))
              (declare (not safe))
              (_%compile-call139060%_ _%L139131%_ __tmp145908))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont145292145293%_
                                            (lambda ()
                                              (let ((__tmp145910
                                                     (let ((__tmp145911
                                                            (lambda (_%g139175139178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g139176139180%_)
                      (cons _%g139175139178%_ _%g139176139180%_))))
               (declare (not safe))
               (__foldr1 __tmp145911 '() _%L139130%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%compile-call139060%_
                                                 _%L139131%_
                                                 __tmp145910)))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx145288145289%_))
                                           (let ((_%e139161139188%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx145288145289%_))))
                                             (let ((_%tl139159139193%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e139161139188%_)))
                                                   (_%hd139160139191%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e139161139188%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd139160139191%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd139160139191%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl139159139193%_))
                                                           (let ((_%e139164139196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl139159139193%_))))
                     (let ((_%tl139162139201%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e139164139196%_)))
                           (_%hd139163139199%_
                            (let ()
                              (declare (not safe))
                              (##car _%e139164139196%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl139162139201%_))
                           (_%__kont145290145291%_)
                           (_%__kont145292145293%_))))
                   (_%__kont145292145293%_))
               (_%__kont145292145293%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont145292145293%_))))
                                           (_%__kont145292145293%_))))))
                             _%rand139080139127%_
                             _%hd139070139101%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%loop139075139111%_
                                                       _%target139072139106%_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g139062139085%_
                                                     _%g139063139088%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139062139085%_
                                           _%g139063139088%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139062139085%_ _%g139063139088%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139062139085%_ _%g139063139088%_))))))
            (declare (not safe))
            (_%g139061139346%_ _%stx139058%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self138800%_ _%stx138801%_)
        (let* ((_%__stx145360145361%_ _%stx138801%_)
               (_%g138804138833%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx145360145361%_)))))
          (let ((_%__kont145362145363%_
                 (lambda (_%L138901%_ _%L138902%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call%
                          _%self138800%_
                          _%stx138801%_))
                       (let ((_%f138924%_
                              (let ((__tmp145912
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L138902%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self138800%_
                                 __tmp145912))))
                         (let _%lp138926%_ ((_%rest138929%_
                                             (reverse (let ((__tmp145918
                                                             (lambda (_%g139046139049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g139047139051%_)
                       (cons _%g139046139049%_ _%g139047139051%_))))
                (declare (not safe))
                (__foldr1 __tmp145918 '() _%L138901%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind138931%_ '())
                                            (_%args138932%_ '()))
                           (let* ((_%rest138933138941%_ _%rest138929%_)
                                  (_%else138935138949%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind138931%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f138924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args138932%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K138937139035%_
                                   (lambda (_%rest138952%_ _%e138953%_)
                                     (let* ((_%__stx145314145315%_ _%e138953%_)
                                            (_%g138958138976%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx145314145315%_)))))
                                       (let ((_%__kont145316145317%_
                                              (lambda ()
                                                (let ((__tmp145913
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__0 _%e138953%_))
                     _%args138932%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_%lp138926%_
                                                   _%rest138952%_
                                                   _%bind138931%_
                                                   __tmp145913))))
                                             (_%__kont145318145319%_
                                              (lambda ()
                                                (let ((__tmp145914
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__0 _%e138953%_))
                     _%args138932%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_%lp138926%_
                                                   _%rest138952%_
                                                   _%bind138931%_
                                                   __tmp145914))))
                                             (_%__kont145320145321%_
                                              (lambda ()
                                                (let ((_%tmp138983%_
                                                       (let ((__tmp145915
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp145915))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp145917
                                                         (cons (cons _%tmp138983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__0 _%e138953%_))
                                   '()))
                       _%bind138931%_))
                (__tmp145916 (cons _%tmp138983%_ _%args138932%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%lp138926%_
                                                     _%rest138952%_
                                                     __tmp145917
                                                     __tmp145916))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx145314145315%_))
                                             (let ((_%e138962139014%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx145314145315%_))))
                                               (let ((_%tl138960139019%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e138962139014%_)))
                                                     (_%hd138961139017%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e138962139014%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd138961139017%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd138961139017%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl138960139019%_))
                     (let ((_%e138965139022%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl138960139019%_))))
                       (let ((_%tl138963139027%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e138965139022%_)))
                             (_%hd138964139025%_
                              (let ()
                                (declare (not safe))
                                (##car _%e138965139022%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl138963139027%_))
                             (_%__kont145316145317%_)
                             (_%__kont145320145321%_))))
                     (_%__kont145320145321%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd138961139017%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl138960139019%_))
                         (let ((_%e138971138999%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl138960139019%_))))
                           (let ((_%tl138969139004%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e138971138999%_)))
                                 (_%hd138970139002%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e138971138999%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl138969139004%_))
                                 (_%__kont145318145319%_)
                                 (_%__kont145320145321%_))))
                         (_%__kont145320145321%_))
                     (_%__kont145320145321%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145320145321%_))))
                                             (_%__kont145320145321%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest138933138941%_))
                                 (let ((_%hd138938139038%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest138933138941%_)))
                                       (_%tl138939139040%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest138933138941%_))))
                                   (let* ((_%e139043%_ _%hd138938139038%_)
                                          (_%rest139045%_ _%tl138939139040%_))
                                     (declare (not safe))
                                     (_%K138937139035%_
                                      _%rest139045%_
                                      _%e139043%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%else138935138949%_)))))))))
                (_%__kont145366145367%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call%
                      _%self138800%_
                      _%stx138801%_)))))
            (let ((_%__match145405145406%_
                   (lambda (_%e138810138845%_
                            _%hd138809138848%_
                            _%tl138808138850%_
                            _%e138813138853%_
                            _%hd138812138856%_
                            _%tl138811138858%_
                            _%e138816138861%_
                            _%hd138815138864%_
                            _%tl138814138866%_
                            _%e138819138869%_
                            _%hd138818138872%_
                            _%tl138817138874%_
                            _%__splice145364145365%_
                            _%target138820138877%_
                            _%tl138822138879%_)
                     (letrec ((_%loop138823138882%_
                               (lambda (_%hd138821138885%_
                                        _%rand138827138887%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd138821138885%_))
                                     (let ((_%e138824138890%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd138821138885%_))))
                                       (let ((_%lp-tl138826138895%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e138824138890%_)))
                                             (_%lp-hd138825138893%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e138824138890%_))))
                                         (let ((__tmp145919
                                                (cons _%lp-hd138825138893%_
                                                      _%rand138827138887%_)))
                                           (declare (not safe))
                                           (_%loop138823138882%_
                                            _%lp-tl138826138895%_
                                            __tmp145919))))
                                     (let ((_%rand138828138898%_
                                            (reverse _%rand138827138887%_)))
                                       (_%__kont145362145363%_
                                        _%rand138828138898%_
                                        _%hd138818138872%_))))))
                       (let ()
                         (declare (not safe))
                         (_%loop138823138882%_ _%target138820138877%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx145360145361%_))
                  (let ((_%e138810138845%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx145360145361%_))))
                    (let ((_%tl138808138850%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e138810138845%_)))
                          (_%hd138809138848%_
                           (let ()
                             (declare (not safe))
                             (##car _%e138810138845%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl138808138850%_))
                          (let ((_%e138813138853%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl138808138850%_))))
                            (let ((_%tl138811138858%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138813138853%_)))
                                  (_%hd138812138856%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138813138853%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd138812138856%_))
                                  (let ((_%e138816138861%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd138812138856%_))))
                                    (let ((_%tl138814138866%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e138816138861%_)))
                                          (_%hd138815138864%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e138816138861%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd138815138864%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd138815138864%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl138814138866%_))
                                                  (let ((_%e138819138869%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl138814138866%_))))
                                                    (let ((_%tl138817138874%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e138819138869%_)))
                                                          (_%hd138818138872%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e138819138869%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl138817138874%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl138811138858%_))
                      (let ((_%__splice145364145365%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl138811138858%_
                                '0))))
                        (let ((_%tl138822138879%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145364145365%_ '1)))
                              (_%target138820138877%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145364145365%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl138822138879%_))
                              (_%__match145405145406%_
                               _%e138810138845%_
                               _%hd138809138848%_
                               _%tl138808138850%_
                               _%e138813138853%_
                               _%hd138812138856%_
                               _%tl138811138858%_
                               _%e138816138861%_
                               _%hd138815138864%_
                               _%tl138814138866%_
                               _%e138819138869%_
                               _%hd138818138872%_
                               _%tl138817138874%_
                               _%__splice145364145365%_
                               _%target138820138877%_
                               _%tl138822138879%_)
                              (_%__kont145366145367%_))))
                      (_%__kont145366145367%_))
                  (_%__kont145366145367%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145366145367%_))
                                              (_%__kont145366145367%_))
                                          (_%__kont145366145367%_))))
                                  (_%__kont145366145367%_))))
                          (_%__kont145366145367%_))))
                  (_%__kont145366145367%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self138612%_ _%stx138613%_)
        (letrec ((_%simplify138615%_
                  (lambda (_%code138700%_)
                    (let* ((_%code138701138719%_ _%code138700%_)
                           (_%else138703138727%_ (lambda () _%code138700%_))
                           (_%K138705138763%_
                            (lambda (_%expr138730%_ _%test138731%_)
                              (let* ((_%expr138732138740%_ _%expr138730%_)
                                     (_%else138734138748%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test138731%_
                                                    (cons _%expr138730%_
                                                          '())))))
                                     (_%K138736138753%_
                                      (lambda (_%exprs138751%_)
                                        (cons 'and
                                              (cons _%test138731%_
                                                    _%exprs138751%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr138732138740%_))
                                    (let ((_%hd138737138756%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr138732138740%_)))
                                          (_%tl138738138758%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr138732138740%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd138737138756%_ 'and))
                                          (let ((_%exprs138761%_
                                                 _%tl138738138758%_))
                                            (declare (not safe))
                                            (_%K138736138753%_
                                             _%exprs138761%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else138734138748%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else138734138748%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code138701138719%_))
                          (let ((_%hd138706138766%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code138701138719%_)))
                                (_%tl138707138768%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code138701138719%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd138706138766%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl138707138768%_))
                                    (let ((_%hd138708138771%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl138707138768%_)))
                                          (_%tl138709138773%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl138707138768%_))))
                                      (let ((_%test138776%_
                                             _%hd138708138771%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl138709138773%_))
                                            (let ((_%hd138710138778%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl138709138773%_)))
                                                  (_%tl138711138780%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl138709138773%_))))
                                              (let ((_%expr138783%_
                                                     _%hd138710138778%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl138711138780%_))
                                                    (let ((_%hd138712138785%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl138711138780%_)))
                                                          (_%tl138713138787%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl138711138780%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd138712138785%_))
                                                          (let ((_%hd138714138790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd138712138785%_)))
                        (_%tl138715138792%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd138712138785%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd138714138790%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl138715138792%_))
                            (let ((_%hd138716138795%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl138715138792%_)))
                                  (_%tl138717138797%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl138715138792%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd138716138795%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl138717138797%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl138713138787%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%K138705138763%_
                                             _%expr138783%_
                                             _%test138776%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else138703138727%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else138703138727%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else138703138727%_))))
                            (let ()
                              (declare (not safe))
                              (_%else138703138727%_)))
                        (let () (declare (not safe)) (_%else138703138727%_))))
                  (let () (declare (not safe)) (_%else138703138727%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else138703138727%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%else138703138727%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else138703138727%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else138703138727%_))))
                          (let ()
                            (declare (not safe))
                            (_%else138703138727%_)))))))
          (let* ((_%g138617138638%_
                  (lambda (_%g138618138635%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138618138635%_))))
                 (_%g138616138697%_
                  (lambda (_%g138618138641%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138618138641%_))
                        (let ((_%e138624138643%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138618138641%_))))
                          (let ((_%hd138623138646%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138624138643%_)))
                                (_%tl138622138648%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138624138643%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138622138648%_))
                                (let ((_%e138627138651%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138622138648%_))))
                                  (let ((_%hd138626138654%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138627138651%_)))
                                        (_%tl138625138656%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138627138651%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl138625138656%_))
                                        (let ((_%e138630138659%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl138625138656%_))))
                                          (let ((_%hd138629138662%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138630138659%_)))
                                                (_%tl138628138664%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138630138659%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138628138664%_))
                                                (let ((_%e138633138667%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138628138664%_))))
                                                  (let ((_%hd138632138670%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138633138667%_)))
                                                        (_%tl138631138672%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138633138667%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl138631138672%_))
                                                        ((lambda (_%L138675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L138676%_
                          _%L138677%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (let ((__tmp145920
                              (cons 'if
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self138612%_
                                             _%L138677%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self138612%_
                                                   _%L138676%_))
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self138612%_
                                                         _%L138675%_))
                                                      '()))))))
                         (declare (not safe))
                         (_%simplify138615%_ __tmp145920))
                       (cons 'if
                             (cons (let ((__tmp145921
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self138612%_
                                               _%L138677%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp145921
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self138612%_
                                            _%L138676%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self138612%_
                                                  _%L138675%_))
                                               '()))))))
                 _%hd138632138670%_
                 _%hd138629138662%_
                 _%hd138626138654%_)
                (let ()
                  (declare (not safe))
                  (_%g138617138638%_ _%g138618138641%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g138617138638%_
                                                   _%g138618138641%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g138617138638%_
                                           _%g138618138641%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g138617138638%_ _%g138618138641%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g138617138638%_ _%g138618138641%_))))))
            (declare (not safe))
            (_%g138616138697%_ _%stx138613%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self138560%_ _%stx138561%_)
        (let* ((_%g138563138576%_
                (lambda (_%g138564138573%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138564138573%_))))
               (_%g138562138609%_
                (lambda (_%g138564138579%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138564138579%_))
                      (let ((_%e138568138581%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138564138579%_))))
                        (let ((_%hd138567138584%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138568138581%_)))
                              (_%tl138566138586%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138568138581%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138566138586%_))
                              (let ((_%e138571138589%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138566138586%_))))
                                (let ((_%hd138570138592%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138571138589%_)))
                                      (_%tl138569138594%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138571138589%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl138569138594%_))
                                      ((lambda (_%L138597%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L138597%_)))
                                       _%hd138570138592%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g138563138576%_
                                         _%g138564138579%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138563138576%_ _%g138564138579%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138563138576%_ _%g138564138579%_))))))
          (declare (not safe))
          (_%g138562138609%_ _%stx138561%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self138492%_ _%stx138493%_)
        (let* ((_%g138495138512%_
                (lambda (_%g138496138509%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138496138509%_))))
               (_%g138494138557%_
                (lambda (_%g138496138515%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138496138515%_))
                      (let ((_%e138501138517%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138496138515%_))))
                        (let ((_%hd138500138520%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138501138517%_)))
                              (_%tl138499138522%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138501138517%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138499138522%_))
                              (let ((_%e138504138525%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138499138522%_))))
                                (let ((_%hd138503138528%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138504138525%_)))
                                      (_%tl138502138530%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138504138525%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138502138530%_))
                                      (let ((_%e138507138533%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138502138530%_))))
                                        (let ((_%hd138506138536%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138507138533%_)))
                                              (_%tl138505138538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138507138533%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138505138538%_))
                                              ((lambda (_%L138541%_
                                                        _%L138542%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L138542%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self138492%_ _%L138541%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138506138536%_
                                               _%hd138503138528%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g138495138512%_
                                                 _%g138496138515%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g138495138512%_
                                         _%g138496138515%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138495138512%_ _%g138496138515%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138495138512%_ _%g138496138515%_))))))
          (declare (not safe))
          (_%g138494138557%_ _%stx138493%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self138303%_ _%stx138304%_)
        (let* ((_%g138306138323%_
                (lambda (_%g138307138320%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138307138320%_))))
               (_%g138305138489%_
                (lambda (_%g138307138326%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138307138326%_))
                      (let ((_%e138312138328%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138307138326%_))))
                        (let ((_%hd138311138331%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138312138328%_)))
                              (_%tl138310138333%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138312138328%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138310138333%_))
                              (let ((_%e138315138336%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138310138333%_))))
                                (let ((_%hd138314138339%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138315138336%_)))
                                      (_%tl138313138341%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138315138336%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138313138341%_))
                                      (let ((_%e138318138344%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138313138341%_))))
                                        (let ((_%hd138317138347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138318138344%_)))
                                              (_%tl138316138349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138318138344%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138316138349%_))
                                              ((lambda (_%L138352%_
                                                        _%L138353%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self138303%_ _%L138352%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self138303%_ _%L138353%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp138368%_ ((_%rest138371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L138353%_ (cons _%L138352%_ '())))
                                (_%bind138373%_ '())
                                (_%args138374%_ '()))
               (let* ((_%rest138375138383%_ _%rest138371%_)
                      (_%else138377138391%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind138373%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args138374%_)
                                                 '()))))))
                      (_%K138379138477%_
                       (lambda (_%rest138394%_ _%e138395%_)
                         (let* ((_%__stx145408145409%_ _%e138395%_)
                                (_%g138400138418%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx145408145409%_)))))
                           (let ((_%__kont145410145411%_
                                  (lambda ()
                                    (let ((__tmp145922
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e138395%_))
                                                 _%args138374%_)))
                                      (declare (not safe))
                                      (_%lp138368%_
                                       _%rest138394%_
                                       _%bind138373%_
                                       __tmp145922))))
                                 (_%__kont145412145413%_
                                  (lambda ()
                                    (let ((__tmp145923
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e138395%_))
                                                 _%args138374%_)))
                                      (declare (not safe))
                                      (_%lp138368%_
                                       _%rest138394%_
                                       _%bind138373%_
                                       __tmp145923))))
                                 (_%__kont145414145415%_
                                  (lambda ()
                                    (let ((_%tmp138425%_
                                           (let ((__tmp145924
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145924))))
                                      (let ((__tmp145926
                                             (cons (cons _%tmp138425%_
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#compile-e__0 _%e138395%_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%bind138373%_))
                                            (__tmp145925
                                             (cons _%tmp138425%_
                                                   _%args138374%_)))
                                        (declare (not safe))
                                        (_%lp138368%_
                                         _%rest138394%_
                                         __tmp145926
                                         __tmp145925))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx145408145409%_))
                                 (let ((_%e138404138456%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx145408145409%_))))
                                   (let ((_%tl138402138461%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e138404138456%_)))
                                         (_%hd138403138459%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e138404138456%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd138403138459%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd138403138459%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl138402138461%_))
                                                 (let ((_%e138407138464%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl138402138461%_))))
                                                   (let ((_%tl138405138469%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e138407138464%_)))
                                                         (_%hd138406138467%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e138407138464%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl138405138469%_))
                                                         (_%__kont145410145411%_)
                                                         (_%__kont145414145415%_))))
                                                 (_%__kont145414145415%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd138403138459%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl138402138461%_))
                                                     (let ((_%e138413138441%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl138402138461%_))))
                                                       (let ((_%tl138411138446%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e138413138441%_)))
                     (_%hd138412138444%_
                      (let () (declare (not safe)) (##car _%e138413138441%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl138411138446%_))
                     (_%__kont145412145413%_)
                     (_%__kont145414145415%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145414145415%_))
                                                 (_%__kont145414145415%_)))
                                         (_%__kont145414145415%_))))
                                 (_%__kont145414145415%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest138375138383%_))
                     (let ((_%hd138380138480%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest138375138383%_)))
                           (_%tl138381138482%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest138375138383%_))))
                       (let* ((_%e138485%_ _%hd138380138480%_)
                              (_%rest138487%_ _%tl138381138482%_))
                         (declare (not safe))
                         (_%K138379138477%_ _%rest138487%_ _%e138485%_)))
                     (let () (declare (not safe)) (_%else138377138391%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138317138347%_
                                               _%hd138314138339%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g138306138323%_
                                                 _%g138307138326%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g138306138323%_
                                         _%g138307138326%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138306138323%_ _%g138307138326%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138306138323%_ _%g138307138326%_))))))
          (declare (not safe))
          (_%g138305138489%_ _%stx138304%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self138114%_ _%stx138115%_)
        (let* ((_%g138117138134%_
                (lambda (_%g138118138131%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138118138131%_))))
               (_%g138116138300%_
                (lambda (_%g138118138137%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138118138137%_))
                      (let ((_%e138123138139%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138118138137%_))))
                        (let ((_%hd138122138142%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138123138139%_)))
                              (_%tl138121138144%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138123138139%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138121138144%_))
                              (let ((_%e138126138147%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138121138144%_))))
                                (let ((_%hd138125138150%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138126138147%_)))
                                      (_%tl138124138152%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138126138147%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138124138152%_))
                                      (let ((_%e138129138155%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138124138152%_))))
                                        (let ((_%hd138128138158%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138129138155%_)))
                                              (_%tl138127138160%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138129138155%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138127138160%_))
                                              ((lambda (_%L138163%_
                                                        _%L138164%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self138114%_ _%L138163%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self138114%_ _%L138164%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp138179%_ ((_%rest138182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L138164%_ (cons _%L138163%_ '())))
                                (_%bind138184%_ '())
                                (_%args138185%_ '()))
               (let* ((_%rest138186138194%_ _%rest138182%_)
                      (_%else138188138202%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind138184%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args138185%_)
                                                 '()))))))
                      (_%K138190138288%_
                       (lambda (_%rest138205%_ _%e138206%_)
                         (let* ((_%__stx145454145455%_ _%e138206%_)
                                (_%g138211138229%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx145454145455%_)))))
                           (let ((_%__kont145456145457%_
                                  (lambda ()
                                    (let ((__tmp145927
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e138206%_))
                                                 _%args138185%_)))
                                      (declare (not safe))
                                      (_%lp138179%_
                                       _%rest138205%_
                                       _%bind138184%_
                                       __tmp145927))))
                                 (_%__kont145458145459%_
                                  (lambda ()
                                    (let ((__tmp145928
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e138206%_))
                                                 _%args138185%_)))
                                      (declare (not safe))
                                      (_%lp138179%_
                                       _%rest138205%_
                                       _%bind138184%_
                                       __tmp145928))))
                                 (_%__kont145460145461%_
                                  (lambda ()
                                    (let ((_%tmp138236%_
                                           (let ((__tmp145929
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145929))))
                                      (let ((__tmp145931
                                             (cons (cons _%tmp138236%_
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#compile-e__0 _%e138206%_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%bind138184%_))
                                            (__tmp145930
                                             (cons _%tmp138236%_
                                                   _%args138185%_)))
                                        (declare (not safe))
                                        (_%lp138179%_
                                         _%rest138205%_
                                         __tmp145931
                                         __tmp145930))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx145454145455%_))
                                 (let ((_%e138215138267%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx145454145455%_))))
                                   (let ((_%tl138213138272%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e138215138267%_)))
                                         (_%hd138214138270%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e138215138267%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd138214138270%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd138214138270%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl138213138272%_))
                                                 (let ((_%e138218138275%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl138213138272%_))))
                                                   (let ((_%tl138216138280%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e138218138275%_)))
                                                         (_%hd138217138278%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e138218138275%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl138216138280%_))
                                                         (_%__kont145456145457%_)
                                                         (_%__kont145460145461%_))))
                                                 (_%__kont145460145461%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd138214138270%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl138213138272%_))
                                                     (let ((_%e138224138252%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl138213138272%_))))
                                                       (let ((_%tl138222138257%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e138224138252%_)))
                     (_%hd138223138255%_
                      (let () (declare (not safe)) (##car _%e138224138252%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl138222138257%_))
                     (_%__kont145458145459%_)
                     (_%__kont145460145461%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145460145461%_))
                                                 (_%__kont145460145461%_)))
                                         (_%__kont145460145461%_))))
                                 (_%__kont145460145461%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest138186138194%_))
                     (let ((_%hd138191138291%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest138186138194%_)))
                           (_%tl138192138293%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest138186138194%_))))
                       (let* ((_%e138296%_ _%hd138191138291%_)
                              (_%rest138298%_ _%tl138192138293%_))
                         (declare (not safe))
                         (_%K138190138288%_ _%rest138298%_ _%e138296%_)))
                     (let () (declare (not safe)) (_%else138188138202%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138128138158%_
                                               _%hd138125138150%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g138117138134%_
                                                 _%g138118138137%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g138117138134%_
                                         _%g138118138137%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138117138134%_ _%g138118138137%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138117138134%_ _%g138118138137%_))))))
          (declare (not safe))
          (_%g138116138300%_ _%stx138115%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self138030%_ _%stx138031%_)
        (let* ((_%g138033138054%_
                (lambda (_%g138034138051%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138034138051%_))))
               (_%g138032138111%_
                (lambda (_%g138034138057%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138034138057%_))
                      (let ((_%e138040138059%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138034138057%_))))
                        (let ((_%hd138039138062%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138040138059%_)))
                              (_%tl138038138064%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138040138059%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138038138064%_))
                              (let ((_%e138043138067%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138038138064%_))))
                                (let ((_%hd138042138070%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138043138067%_)))
                                      (_%tl138041138072%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138043138067%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138041138072%_))
                                      (let ((_%e138046138075%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138041138072%_))))
                                        (let ((_%hd138045138078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138046138075%_)))
                                              (_%tl138044138080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138046138075%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138044138080%_))
                                              (let ((_%e138049138083%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138044138080%_))))
                                                (let ((_%hd138048138086%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138049138083%_)))
                                                      (_%tl138047138088%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138049138083%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl138047138088%_))
                                                      ((lambda (_%L138091%_
                                                                _%L138092%_
                                                                _%L138093%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self138030%_ _%L138091%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self138030%_
                                      _%L138092%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self138030%_
                                            _%L138093%_))
                                         (cons ''#f '()))))))
               _%hd138048138086%_
               _%hd138045138078%_
               _%hd138042138070%_)
              (let ()
                (declare (not safe))
                (_%g138033138054%_ _%g138034138057%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g138033138054%_
                                                 _%g138034138057%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g138033138054%_
                                         _%g138034138057%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138033138054%_ _%g138034138057%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138033138054%_ _%g138034138057%_))))))
          (declare (not safe))
          (_%g138032138111%_ _%stx138031%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self137930%_ _%stx137931%_)
        (let* ((_%g137933137958%_
                (lambda (_%g137934137955%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137934137955%_))))
               (_%g137932138027%_
                (lambda (_%g137934137961%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137934137961%_))
                      (let ((_%e137941137963%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137934137961%_))))
                        (let ((_%hd137940137966%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137941137963%_)))
                              (_%tl137939137968%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137941137963%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137939137968%_))
                              (let ((_%e137944137971%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137939137968%_))))
                                (let ((_%hd137943137974%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137944137971%_)))
                                      (_%tl137942137976%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137944137971%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137942137976%_))
                                      (let ((_%e137947137979%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137942137976%_))))
                                        (let ((_%hd137946137982%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137947137979%_)))
                                              (_%tl137945137984%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137947137979%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137945137984%_))
                                              (let ((_%e137950137987%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137945137984%_))))
                                                (let ((_%hd137949137990%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137950137987%_)))
                                                      (_%tl137948137992%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137950137987%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137948137992%_))
                                                      (let ((_%e137953137995%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137948137992%_))))
                (let ((_%hd137952137998%_
                       (let () (declare (not safe)) (##car _%e137953137995%_)))
                      (_%tl137951138000%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137953137995%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137951138000%_))
                      ((lambda (_%L138003%_
                                _%L138004%_
                                _%L138005%_
                                _%L138006%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137930%_
                                        _%L138004%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137930%_
                                              _%L138003%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137930%_
                                                    _%L138005%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137930%_
                                                          _%L138006%_))
                                                       (cons ''#f '())))))))
                       _%hd137952137998%_
                       _%hd137949137990%_
                       _%hd137946137982%_
                       _%hd137943137974%_)
                      (let ()
                        (declare (not safe))
                        (_%g137933137958%_ _%g137934137961%_)))))
              (let ()
                (declare (not safe))
                (_%g137933137958%_ _%g137934137961%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137933137958%_
                                                 _%g137934137961%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137933137958%_
                                         _%g137934137961%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137933137958%_ _%g137934137961%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137933137958%_ _%g137934137961%_))))))
          (declare (not safe))
          (_%g137932138027%_ _%stx137931%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self137846%_ _%stx137847%_)
        (let* ((_%g137849137870%_
                (lambda (_%g137850137867%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137850137867%_))))
               (_%g137848137927%_
                (lambda (_%g137850137873%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137850137873%_))
                      (let ((_%e137856137875%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137850137873%_))))
                        (let ((_%hd137855137878%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137856137875%_)))
                              (_%tl137854137880%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137856137875%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137854137880%_))
                              (let ((_%e137859137883%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137854137880%_))))
                                (let ((_%hd137858137886%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137859137883%_)))
                                      (_%tl137857137888%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137859137883%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137857137888%_))
                                      (let ((_%e137862137891%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137857137888%_))))
                                        (let ((_%hd137861137894%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137862137891%_)))
                                              (_%tl137860137896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137862137891%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137860137896%_))
                                              (let ((_%e137865137899%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137860137896%_))))
                                                (let ((_%hd137864137902%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137865137899%_)))
                                                      (_%tl137863137904%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137865137899%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137863137904%_))
                                                      ((lambda (_%L137907%_
                                                                _%L137908%_
                                                                _%L137909%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137846%_ _%L137907%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137846%_
                                      _%L137908%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137846%_
                                            _%L137909%_))
                                         (cons ''#f '()))))))
               _%hd137864137902%_
               _%hd137861137894%_
               _%hd137858137886%_)
              (let ()
                (declare (not safe))
                (_%g137849137870%_ _%g137850137873%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137849137870%_
                                                 _%g137850137873%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137849137870%_
                                         _%g137850137873%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137849137870%_ _%g137850137873%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137849137870%_ _%g137850137873%_))))))
          (declare (not safe))
          (_%g137848137927%_ _%stx137847%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self137746%_ _%stx137747%_)
        (let* ((_%g137749137774%_
                (lambda (_%g137750137771%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137750137771%_))))
               (_%g137748137843%_
                (lambda (_%g137750137777%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137750137777%_))
                      (let ((_%e137757137779%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137750137777%_))))
                        (let ((_%hd137756137782%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137757137779%_)))
                              (_%tl137755137784%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137757137779%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137755137784%_))
                              (let ((_%e137760137787%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137755137784%_))))
                                (let ((_%hd137759137790%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137760137787%_)))
                                      (_%tl137758137792%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137760137787%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137758137792%_))
                                      (let ((_%e137763137795%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137758137792%_))))
                                        (let ((_%hd137762137798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137763137795%_)))
                                              (_%tl137761137800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137763137795%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137761137800%_))
                                              (let ((_%e137766137803%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137761137800%_))))
                                                (let ((_%hd137765137806%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137766137803%_)))
                                                      (_%tl137764137808%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137766137803%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137764137808%_))
                                                      (let ((_%e137769137811%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137764137808%_))))
                (let ((_%hd137768137814%_
                       (let () (declare (not safe)) (##car _%e137769137811%_)))
                      (_%tl137767137816%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137769137811%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137767137816%_))
                      ((lambda (_%L137819%_
                                _%L137820%_
                                _%L137821%_
                                _%L137822%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137746%_
                                        _%L137820%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137746%_
                                              _%L137819%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137746%_
                                                    _%L137821%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137746%_
                                                          _%L137822%_))
                                                       (cons ''#f '())))))))
                       _%hd137768137814%_
                       _%hd137765137806%_
                       _%hd137762137798%_
                       _%hd137759137790%_)
                      (let ()
                        (declare (not safe))
                        (_%g137749137774%_ _%g137750137777%_)))))
              (let ()
                (declare (not safe))
                (_%g137749137774%_ _%g137750137777%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137749137774%_
                                                 _%g137750137777%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137749137774%_
                                         _%g137750137777%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137749137774%_ _%g137750137777%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137749137774%_ _%g137750137777%_))))))
          (declare (not safe))
          (_%g137748137843%_ _%stx137747%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self137541%_ _%stx137542%_)
        (let* ((_%g137544137565%_
                (lambda (_%g137545137562%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137545137562%_))))
               (_%g137543137743%_
                (lambda (_%g137545137568%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137545137568%_))
                      (let ((_%e137551137570%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137545137568%_))))
                        (let ((_%hd137550137573%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137551137570%_)))
                              (_%tl137549137575%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137551137570%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137549137575%_))
                              (let ((_%e137554137578%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137549137575%_))))
                                (let ((_%hd137553137581%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137554137578%_)))
                                      (_%tl137552137583%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137554137578%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137552137583%_))
                                      (let ((_%e137557137586%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137552137583%_))))
                                        (let ((_%hd137556137589%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137557137586%_)))
                                              (_%tl137555137591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137557137586%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137555137591%_))
                                              (let ((_%e137560137594%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137555137591%_))))
                                                (let ((_%hd137559137597%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137560137594%_)))
                                                      (_%tl137558137599%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137560137594%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137558137599%_))
                                                      ((lambda (_%L137602%_
                                                                _%L137603%_
                                                                _%L137604%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (cons '##unchecked-structure-ref
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self137541%_
                                    _%L137602%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self137541%_
                                          _%L137603%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp137622%_ ((_%rest137625%_
                                         (cons _%L137603%_
                                               (cons _%L137602%_ '())))
                                        (_%bind137627%_ '())
                                        (_%args137628%_ '()))
                       (let* ((_%rest137629137637%_ _%rest137625%_)
                              (_%else137631137645%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind137627%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp145932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp145932 _%args137628%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K137633137731%_
                               (lambda (_%rest137648%_ _%e137649%_)
                                 (let* ((_%__stx145500145501%_ _%e137649%_)
                                        (_%g137654137672%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx145500145501%_)))))
                                   (let ((_%__kont145502145503%_
                                          (lambda ()
                                            (let ((__tmp145933
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137649%_))
                                                         _%args137628%_)))
                                              (declare (not safe))
                                              (_%lp137622%_
                                               _%rest137648%_
                                               _%bind137627%_
                                               __tmp145933))))
                                         (_%__kont145504145505%_
                                          (lambda ()
                                            (let ((__tmp145934
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137649%_))
                                                         _%args137628%_)))
                                              (declare (not safe))
                                              (_%lp137622%_
                                               _%rest137648%_
                                               _%bind137627%_
                                               __tmp145934))))
                                         (_%__kont145506145507%_
                                          (lambda ()
                                            (let ((_%tmp137679%_
                                                   (let ((__tmp145935
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp145935))))
                                              (let ((__tmp145937
                                                     (cons (cons _%tmp137679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__0 _%e137649%_))
                               '()))
                   _%bind137627%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145936
                                                     (cons _%tmp137679%_
                                                           _%args137628%_)))
                                                (declare (not safe))
                                                (_%lp137622%_
                                                 _%rest137648%_
                                                 __tmp145937
                                                 __tmp145936))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx145500145501%_))
                                         (let ((_%e137658137710%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx145500145501%_))))
                                           (let ((_%tl137656137715%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e137658137710%_)))
                                                 (_%hd137657137713%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e137658137710%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd137657137713%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd137657137713%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl137656137715%_))
                                                         (let ((_%e137661137718%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl137656137715%_))))
                   (let ((_%tl137659137723%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e137661137718%_)))
                         (_%hd137660137721%_
                          (let ()
                            (declare (not safe))
                            (##car _%e137661137718%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl137659137723%_))
                         (_%__kont145502145503%_)
                         (_%__kont145506145507%_))))
                 (_%__kont145506145507%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd137657137713%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl137656137715%_))
                     (let ((_%e137667137695%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl137656137715%_))))
                       (let ((_%tl137665137700%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e137667137695%_)))
                             (_%hd137666137698%_
                              (let ()
                                (declare (not safe))
                                (##car _%e137667137695%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl137665137700%_))
                             (_%__kont145504145505%_)
                             (_%__kont145506145507%_))))
                     (_%__kont145506145507%_))
                 (_%__kont145506145507%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145506145507%_))))
                                         (_%__kont145506145507%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest137629137637%_))
                             (let ((_%hd137634137734%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest137629137637%_)))
                                   (_%tl137635137736%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest137629137637%_))))
                               (let* ((_%e137739%_ _%hd137634137734%_)
                                      (_%rest137741%_ _%tl137635137736%_))
                                 (declare (not safe))
                                 (_%K137633137731%_
                                  _%rest137741%_
                                  _%e137739%_)))
                             (let ()
                               (declare (not safe))
                               (_%else137631137645%_)))))))
               _%hd137559137597%_
               _%hd137556137589%_
               _%hd137553137581%_)
              (let ()
                (declare (not safe))
                (_%g137544137565%_ _%g137545137568%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137544137565%_
                                                 _%g137545137568%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137544137565%_
                                         _%g137545137568%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137544137565%_ _%g137545137568%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137544137565%_ _%g137545137568%_))))))
          (declare (not safe))
          (_%g137543137743%_ _%stx137542%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self137320%_ _%stx137321%_)
        (let* ((_%g137323137348%_
                (lambda (_%g137324137345%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137324137345%_))))
               (_%g137322137538%_
                (lambda (_%g137324137351%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137324137351%_))
                      (let ((_%e137331137353%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137324137351%_))))
                        (let ((_%hd137330137356%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137331137353%_)))
                              (_%tl137329137358%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137331137353%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137329137358%_))
                              (let ((_%e137334137361%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137329137358%_))))
                                (let ((_%hd137333137364%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137334137361%_)))
                                      (_%tl137332137366%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137334137361%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137332137366%_))
                                      (let ((_%e137337137369%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137332137366%_))))
                                        (let ((_%hd137336137372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137337137369%_)))
                                              (_%tl137335137374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137337137369%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137335137374%_))
                                              (let ((_%e137340137377%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137335137374%_))))
                                                (let ((_%hd137339137380%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137340137377%_)))
                                                      (_%tl137338137382%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137340137377%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137338137382%_))
                                                      (let ((_%e137343137385%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137338137382%_))))
                (let ((_%hd137342137388%_
                       (let () (declare (not safe)) (##car _%e137343137385%_)))
                      (_%tl137341137390%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137343137385%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137341137390%_))
                      ((lambda (_%L137393%_
                                _%L137394%_
                                _%L137395%_
                                _%L137396%_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137320%_
                                            _%L137394%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self137320%_
                                                  _%L137393%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self137320%_
                                                        _%L137395%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp137417%_ ((_%rest137420%_
                                                 (cons _%L137395%_
                                                       (cons _%L137393%_
                                                             (cons _%L137394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind137422%_ '())
                                                (_%args137423%_ '()))
                               (let* ((_%rest137424137432%_ _%rest137420%_)
                                      (_%else137426137440%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind137422%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp145938 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp145938 _%args137423%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K137428137526%_
                                       (lambda (_%rest137443%_ _%e137444%_)
                                         (let* ((_%__stx145546145547%_
                                                 _%e137444%_)
                                                (_%g137449137467%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx145546145547%_)))))
                                           (let ((_%__kont145548145549%_
                                                  (lambda ()
                                                    (let ((__tmp145939
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e137444%_))
                         _%args137423%_)))
              (declare (not safe))
              (_%lp137417%_ _%rest137443%_ _%bind137422%_ __tmp145939))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145550145551%_
                                                  (lambda ()
                                                    (let ((__tmp145940
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e137444%_))
                         _%args137423%_)))
              (declare (not safe))
              (_%lp137417%_ _%rest137443%_ _%bind137422%_ __tmp145940))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145552145553%_
                                                  (lambda ()
                                                    (let ((_%tmp137474%_
                                                           (let ((__tmp145941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp145941))))
              (let ((__tmp145943
                     (cons (cons _%tmp137474%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e137444%_))
                                       '()))
                           _%bind137422%_))
                    (__tmp145942 (cons _%tmp137474%_ _%args137423%_)))
                (declare (not safe))
                (_%lp137417%_ _%rest137443%_ __tmp145943 __tmp145942))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx145546145547%_))
                                                 (let ((_%e137453137505%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx145546145547%_))))
                                                   (let ((_%tl137451137510%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137453137505%_)))
                                                         (_%hd137452137508%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137453137505%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd137452137508%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd137452137508%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl137451137510%_))
                         (let ((_%e137456137513%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl137451137510%_))))
                           (let ((_%tl137454137518%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e137456137513%_)))
                                 (_%hd137455137516%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e137456137513%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl137454137518%_))
                                 (_%__kont145548145549%_)
                                 (_%__kont145552145553%_))))
                         (_%__kont145552145553%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd137452137508%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl137451137510%_))
                             (let ((_%e137462137490%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl137451137510%_))))
                               (let ((_%tl137460137495%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e137462137490%_)))
                                     (_%hd137461137493%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e137462137490%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl137460137495%_))
                                     (_%__kont145550145551%_)
                                     (_%__kont145552145553%_))))
                             (_%__kont145552145553%_))
                         (_%__kont145552145553%_)))
                 (_%__kont145552145553%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145552145553%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest137424137432%_))
                                     (let ((_%hd137429137529%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest137424137432%_)))
                                           (_%tl137430137531%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest137424137432%_))))
                                       (let* ((_%e137534%_ _%hd137429137529%_)
                                              (_%rest137536%_
                                               _%tl137430137531%_))
                                         (declare (not safe))
                                         (_%K137428137526%_
                                          _%rest137536%_
                                          _%e137534%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%else137426137440%_)))))))
                       _%hd137342137388%_
                       _%hd137339137380%_
                       _%hd137336137372%_
                       _%hd137333137364%_)
                      (let ()
                        (declare (not safe))
                        (_%g137323137348%_ _%g137324137351%_)))))
              (let ()
                (declare (not safe))
                (_%g137323137348%_ _%g137324137351%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137323137348%_
                                                 _%g137324137351%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137323137348%_
                                         _%g137324137351%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137323137348%_ _%g137324137351%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137323137348%_ _%g137324137351%_))))))
          (declare (not safe))
          (_%g137322137538%_ _%stx137321%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self137159%_ _%stx137160%_)
        (letrec ((_%import-set-template137162%_
                  (lambda (_%in137265%_ _%phi137266%_)
                    (let ((_%iphi137268%_
                           (fx+ _%phi137266%_
                                (##direct-structure-ref
                                 _%in137265%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports137269%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in137265%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp137271%_ ((_%rest137273%_ _%imports137269%_)
                                         (_%r137274%_ '()))
                        (let* ((_%rest137275137283%_ _%rest137273%_)
                               (_%else137277137291%_ (lambda () _%r137274%_))
                               (_%K137279137308%_
                                (lambda (_%rest137294%_ _%in137295%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in137295%_
                                         'gx#module-context::t))
                                      (let ()
                                        (if (let ()
                                              (declare (not safe))
                                              (##fxzero? _%iphi137268%_))
                                            (let ((__tmp145944
                                                   (cons _%in137295%_
                                                         _%r137274%_)))
                                              (declare (not safe))
                                              (_%lp137271%_
                                               _%rest137294%_
                                               __tmp145944))
                                            (let ()
                                              (declare (not safe))
                                              (_%lp137271%_
                                               _%rest137294%_
                                               _%r137274%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in137295%_
                                             'gx#module-import::t))
                                          (let ((_%iphi137299%_
                                                 (fx+ _%phi137266%_
                                                      (##direct-structure-ref
                                                       _%in137295%_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi137299%_))
                                                (let ((__tmp145945
                                                       (cons (##direct-structure-ref
                                                              (##direct-structure-ref
                                                               _%in137295%_
                                                               '1
                                                               gx#module-import::t
                                                               '#f)
                                                              '1
                                                              gx#module-export::t
                                                              '#f)
                                                             _%r137274%_)))
                                                  (declare (not safe))
                                                  (_%lp137271%_
                                                   _%rest137294%_
                                                   __tmp145945))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%lp137271%_
                                                   _%rest137294%_
                                                   _%r137274%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in137295%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi137302%_
                                                     (fx+ _%iphi137268%_
                                                          (##direct-structure-ref
                                                           _%in137295%_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi137302%_))
                                                    (let ((__tmp145946
                                                           (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in137295%_
                          '1
                          gx#import-set::t
                          '#f)
                         _%r137274%_)))
              (declare (not safe))
              (_%lp137271%_ _%rest137294%_ __tmp145946))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi137302%_))
                                                        (let ((__tmp145947
                                                               (let ((__tmp145948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_%import-set-template137162%_
                                 _%in137295%_
                                 _%iphi137268%_))))
                         (declare (not safe))
                         (__foldl1 cons _%r137274%_ __tmp145948))))
                  (declare (not safe))
                  (_%lp137271%_ _%rest137294%_ __tmp145947))
                (let ()
                  (declare (not safe))
                  (_%lp137271%_ _%rest137294%_ _%r137274%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%lp137271%_
                                                 _%rest137294%_
                                                 _%r137274%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest137275137283%_))
                              (let ((_%hd137280137311%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest137275137283%_)))
                                    (_%tl137281137313%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest137275137283%_))))
                                (let* ((_%in137316%_ _%hd137280137311%_)
                                       (_%rest137318%_ _%tl137281137313%_))
                                  (declare (not safe))
                                  (_%K137279137308%_
                                   _%rest137318%_
                                   _%in137316%_)))
                              (let ()
                                (declare (not safe))
                                (_%else137277137291%_)))))))))
          (let* ((_%g137164137174%_
                  (lambda (_%g137165137171%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137165137171%_))))
                 (_%g137163137262%_
                  (lambda (_%g137165137177%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137165137177%_))
                        (let ((_%e137169137179%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137165137177%_))))
                          (let ((_%hd137168137182%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137169137179%_)))
                                (_%tl137167137184%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137169137179%_))))
                            ((lambda (_%L137187%_)
                               (let ((_%ht137198%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp137200%_ ((_%rest137202%_
                                                     _%L137187%_)
                                                    (_%loads137203%_ '()))
                                   (letrec ((_%K137205%_
                                             (lambda (_%ctx137255%_
                                                      _%rest137256%_)
                                               (let ((_%id137258%_
                                                      (##structure-ref
                                                       _%ctx137255%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _%ht137198%_
                                                        _%id137258%_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%lp137200%_
                                                        _%rest137256%_
                                                        _%loads137203%_))
                                                     (let ((_%rt137260%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id137258%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%ht137198%_
                                                          _%id137258%_
                                                          _%rt137260%_))
                                                       (let ((__tmp145949
                                                              (cons _%rt137260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%loads137203%_)))
                 (declare (not safe))
                 (_%lp137200%_ _%rest137256%_ __tmp145949))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_%rest137206137214%_
                                             _%rest137202%_)
                                            (_%else137208137226%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp145951
                                                            (lambda (_%g137221137223%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g137221137223%_)))
                   (__tmp145950 (reverse _%loads137203%_)))
               (declare (not safe))
               (##map __tmp145951 __tmp145950)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K137210137243%_
                                             (lambda (_%rest137229%_
                                                      _%in137230%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in137230%_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%K137205%_
                                                      _%in137230%_
                                                      _%rest137229%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in137230%_
                                                          'gx#module-import::t))
                                                       (let ()
                                                         (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%in137230%_
                               '3
                               gx#module-import::t
                               '#f))
                     (let ((__tmp145952
                            (##direct-structure-ref
                             (##direct-structure-ref
                              _%in137230%_
                              '1
                              gx#module-import::t
                              '#f)
                             '1
                             gx#module-export::t
                             '#f)))
                       (declare (not safe))
                       (_%K137205%_ __tmp145952 _%rest137229%_))
                     (let ()
                       (declare (not safe))
                       (_%lp137200%_ _%rest137229%_ _%loads137203%_))))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in137230%_
                      'gx#import-set::t))
                   (let ((_%phi137235%_
                          (##direct-structure-ref
                           _%in137230%_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (fxzero? _%phi137235%_)
                         (let ((__tmp145953
                                (##direct-structure-ref
                                 _%in137230%_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_%K137205%_ __tmp145953 _%rest137229%_))
                         (if (fxpositive? _%phi137235%_)
                             (let ()
                               (let* ((_%deps137239%_
                                       (let ()
                                         (declare (not safe))
                                         (_%import-set-template137162%_
                                          _%in137230%_
                                          '0)))
                                      (__tmp145954
                                       (let ()
                                         (declare (not safe))
                                         (__foldl1
                                          cons
                                          _%rest137229%_
                                          _%deps137239%_))))
                                 (declare (not safe))
                                 (_%lp137200%_ __tmp145954 _%loads137203%_)))
                             (let ()
                               (declare (not safe))
                               (_%lp137200%_
                                _%rest137229%_
                                _%loads137203%_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx137160%_
                      _%in137230%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest137206137214%_))
                                           (let ((_%hd137211137246%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest137206137214%_)))
                                                 (_%tl137212137248%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest137206137214%_))))
                                             (let* ((_%in137251%_
                                                     _%hd137211137246%_)
                                                    (_%rest137253%_
                                                     _%tl137212137248%_))
                                               (declare (not safe))
                                               (_%K137210137243%_
                                                _%rest137253%_
                                                _%in137251%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%else137208137226%_))))))))
                             _%tl137167137184%_)))
                        (let ()
                          (declare (not safe))
                          (_%g137164137174%_ _%g137165137177%_))))))
            (declare (not safe))
            (_%g137163137262%_ _%stx137160%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self136972%_ _%stx136973%_)
        (letrec ((_%add-lift!136975%_
                  (lambda (_%expr137157%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr137157%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote136976%_
                  (lambda (_%id137154%_ _%marks137155%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id137154%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks137155%_
                                                        '()))))))))
                 (_%generate-simple136977%_
                  (lambda (_%stxq137149%_)
                    (let ((_%gid137151%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid137152%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq137149%_))))
                      (let ((__tmp145955
                             (cons 'define
                                   (cons _%gid137151%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_%generate-syntax-quote136976%_
                                                  _%qid137152%_
                                                  ''()))
                                               '())))))
                        (declare (not safe))
                        (_%add-lift!136975%_ __tmp145955))
                      (let ((__tmp145956
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145956 _%stxq137149%_ _%gid137151%_))
                      _%gid137151%_)))
                 (_%generate-serialized136978%_
                  (lambda (_%stxq137139%_ _%marks137140%_)
                    (let* ((_%mark-refs137142%_
                            (map _%generate-mark136979%_ _%marks137140%_))
                           (_%gid137144%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid137146%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq137139%_))))
                      (let ((__tmp145957
                             (cons 'define
                                   (cons _%gid137144%_
                                         (cons (let ((__tmp145958
                                                      (cons 'list
                                                            _%mark-refs137142%_)))
                                                 (declare (not safe))
                                                 (_%generate-syntax-quote136976%_
                                                  _%qid137146%_
                                                  __tmp145958))
                                               '())))))
                        (declare (not safe))
                        (_%add-lift!136975%_ __tmp145957))
                      (let ((__tmp145959
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145959 _%stxq137139%_ _%gid137144%_))
                      _%gid137144%_)))
                 (_%generate-mark136979%_
                  (lambda (_%mark137124%_)
                    (let ((_%$e137126%_
                           (let ((__tmp145960
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp145960 _%mark137124%_))))
                      (if _%$e137126%_
                          (values _%$e137126%_)
                          (let ()
                            (let* ((_%gid137130%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-temporary__% '#t)))
                                   (_%repr137132%_
                                    (let ()
                                      (declare (not safe))
                                      (_%serialize-mark136980%_
                                       _%mark137124%_)))
                                   (_%ctx137134%_
                                    (let ((__tmp145961
                                           (##structure-ref
                                            _%mark137124%_
                                            '2
                                            gx#expander-mark::t
                                            '#f)))
                                      (declare (not safe))
                                      (gx#core-context-top__1 __tmp145961)))
                                   (_%ctx-ref137136%_
                                    (if (eq? _%ctx137134%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#current-expander-context)))
                                        '(gx#current-expander-context)
                                        (cons 'gx#import-module
                                              (cons (cons 'quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_%context-ref136981%_ _%ctx137134%_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              (let ((__tmp145962
                                     (let ()
                                       (declare (not safe))
                                       (gxc#current-compile-marks))))
                                (declare (not safe))
                                (hash-put!
                                 __tmp145962
                                 _%mark137124%_
                                 _%gid137130%_))
                              (let ((__tmp145963
                                     (cons 'define
                                           (cons _%gid137130%_
                                                 (cons (cons 'gx#core-deserialize-mark
                                                             (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%repr137132%_ '()))
                           (cons _%ctx-ref137136%_ '())))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (declare (not safe))
                                (_%add-lift!136975%_ __tmp145963))
                              _%gid137130%_))))))
                 (_%serialize-mark136980%_
                  (lambda (_%mark137071%_)
                    (letrec ((_%quote-e137073%_
                              (lambda (_%sym137122%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym137122%_))
                                    _%sym137122%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym137122%_))))))
                      (let* ((_%mark137074137083%_ _%mark137071%_)
                             (_%E137076137087%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark137074137083%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K137077137099%_
                              (lambda (_%trace137090%_
                                       _%phi137091%_
                                       _%ctx137092%_
                                       _%subst137093%_)
                                (let ((_%subs137095%_
                                       (if _%subst137093%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst137093%_))
                                           '())))
                                  (cons _%phi137091%_
                                        (map (lambda (_%pair137097%_)
                                               (cons (let ((__tmp145964
                                                            (car _%pair137097%_)))
                                                       (declare (not safe))
                                                       (_%quote-e137073%_
                                                        __tmp145964))
                                                     (let ((__tmp145965
                                                            (cdr _%pair137097%_)))
                                                       (declare (not safe))
                                                       (_%quote-e137073%_
                                                        __tmp145965))))
                                             _%subs137095%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark137074137083%_
                               'gx#expander-mark::t))
                            (let* ((_%e137078137102%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark137074137083%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst137105%_ _%e137078137102%_)
                                   (_%e137079137107%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark137074137083%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx137110%_ _%e137079137107%_)
                                   (_%e137080137112%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark137074137083%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi137115%_ _%e137080137112%_)
                                   (_%e137081137117%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark137074137083%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace137120%_ _%e137081137117%_))
                              (declare (not safe))
                              (_%K137077137099%_
                               _%trace137120%_
                               _%phi137115%_
                               _%ctx137110%_
                               _%subst137105%_))
                            (let ()
                              (declare (not safe))
                              (_%E137076137087%_)))))))
                 (_%context-ref136981%_
                  (lambda (_%ctx137058%_)
                    (if (let ((__tmp145966
                               (##structure-ref
                                _%ctx137058%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp145966
                           'gx#module-context::t))
                        (let ((_%ctx-ref137060%_
                               (let ()
                                 (declare (not safe))
                                 (_%context-ref-nested136983%_ _%ctx137058%_)))
                              (_%ctx-origin137061%_
                               (let ()
                                 (declare (not safe))
                                 (_%context-ref-origin136982%_ _%ctx137058%_)))
                              (_%origin137062%_
                               (let ((__tmp145967
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (_%context-ref-origin136982%_ __tmp145967))))
                          (if (eq? _%origin137062%_ _%ctx-origin137061%_)
                              (let ((_%ref137064%_
                                     (let ((__tmp145968
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-context))))
                                       (declare (not safe))
                                       (_%context-ref-nested136983%_
                                        __tmp145968))))
                                (let _%lp137066%_ ((_%ref137068%_
                                                    (cdr _%ref137064%_))
                                                   (_%ctx-ref137069%_
                                                    (cdr _%ctx-ref137060%_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _%ref137068%_))
                                           (eq? (car _%ref137068%_)
                                                (car _%ctx-ref137069%_)))
                                      (let ((__tmp145970 (cdr _%ref137068%_))
                                            (__tmp145969
                                             (cdr _%ctx-ref137069%_)))
                                        (declare (not safe))
                                        (_%lp137066%_ __tmp145970 __tmp145969))
                                      (cons '#f _%ctx-ref137069%_))))
                              _%ctx-ref137060%_))
                        (let ((__tmp145971
                               (##structure-ref
                                _%ctx137058%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp145971)))))
                 (_%context-ref-origin136982%_
                  (lambda (_%ctx137050%_)
                    (let _%lp137052%_ ((_%ctx137054%_ _%ctx137050%_))
                      (let ((_%super137056%_
                             (##structure-ref
                              _%ctx137054%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super137056%_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_%lp137052%_ _%super137056%_))
                            _%ctx137054%_)))))
                 (_%context-ref-nested136983%_
                  (lambda (_%ctx137041%_)
                    (let _%lp137043%_ ((_%ctx137045%_ _%ctx137041%_)
                                       (_%r137046%_ '()))
                      (let ((_%super137048%_
                             (##structure-ref
                              _%ctx137045%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super137048%_
                               'gx#module-context::t))
                            (let ((__tmp145972
                                   (cons (car (##structure-ref
                                               _%ctx137045%_
                                               '7
                                               gx#module-context::t
                                               '#f))
                                         _%r137046%_)))
                              (declare (not safe))
                              (_%lp137043%_ _%super137048%_ __tmp145972))
                            (cons (let ((__tmp145973
                                         (##structure-ref
                                          _%ctx137045%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp145973))
                                  _%r137046%_)))))))
          (let* ((_%g136985136998%_
                  (lambda (_%g136986136995%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136986136995%_))))
                 (_%g136984137038%_
                  (lambda (_%g136986137001%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136986137001%_))
                        (let ((_%e136990137003%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136986137001%_))))
                          (let ((_%hd136989137006%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136990137003%_)))
                                (_%tl136988137008%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136990137003%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl136988137008%_))
                                (let ((_%e136993137011%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl136988137008%_))))
                                  (let ((_%hd136992137014%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136993137011%_)))
                                        (_%tl136991137016%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136993137011%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136991137016%_))
                                        ((lambda (_%L137019%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L137019%_))
                                               (let ((_%$e137032%_
                                                      (let ((__tmp145974
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp145974 _%L137019%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e137032%_
                                                     (values _%$e137032%_)
                                                     (let ((_%marks137036%_
                                                            (##direct-structure-ref
                                                             _%L137019%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _%marks137036%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-simple136977%_
                                                              _%L137019%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-serialized136978%_
                                                              _%L137019%_
                                                              _%marks137036%_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L137019%_))))
                                         _%hd136992137014%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g136985136998%_
                                           _%g136986137001%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g136985136998%_ _%g136986137001%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g136985136998%_ _%g136986137001%_))))))
            (declare (not safe))
            (_%g136984137038%_ _%stx136973%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self136904%_ _%stx136905%_)
        (let* ((_%g136907136924%_
                (lambda (_%g136908136921%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136908136921%_))))
               (_%g136906136969%_
                (lambda (_%g136908136927%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136908136927%_))
                      (let ((_%e136913136929%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136908136927%_))))
                        (let ((_%hd136912136932%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136913136929%_)))
                              (_%tl136911136934%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136913136929%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136911136934%_))
                              (let ((_%e136916136937%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136911136934%_))))
                                (let ((_%hd136915136940%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136916136937%_)))
                                      (_%tl136914136942%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136916136937%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136914136942%_))
                                      (let ((_%e136919136945%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136914136942%_))))
                                        (let ((_%hd136918136948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136919136945%_)))
                                              (_%tl136917136950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136919136945%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136917136950%_))
                                              ((lambda (_%L136953%_
                                                        _%L136954%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L136954%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self136904%_ _%L136953%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd136918136948%_
                                               _%hd136915136940%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g136907136924%_
                                                 _%g136908136927%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g136907136924%_
                                         _%g136908136927%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g136907136924%_ _%g136908136927%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136907136924%_ _%g136908136927%_))))))
          (declare (not safe))
          (_%g136906136969%_ _%stx136905%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self136853%_ _%stx136854%_)
        (let* ((_%g136856136866%_
                (lambda (_%g136857136863%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136857136863%_))))
               (_%g136855136901%_
                (lambda (_%g136857136869%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136857136869%_))
                      (let ((_%e136861136871%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136857136869%_))))
                        (let ((_%hd136860136874%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136861136871%_)))
                              (_%tl136859136876%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136861136871%_))))
                          ((lambda (_%L136879%_)
                             (let* ((_%c-body136893%_
                                     (map (lambda (_%g136888136890%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self136853%_
                                               _%g136888136890%_)))
                                          _%L136879%_))
                                    (_%c-body136898%_
                                     (let ((__tmp145975
                                            (lambda (_%$obj136895%_)
                                              (let ((__tmp145976
                                                     (let ()
                                                       (declare (not safe))
                                                       (eq? _%$obj136895%_
                                                            '#!void))))
                                                (declare (not safe))
                                                (not __tmp145976)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp145975
                                        _%c-body136893%_))))
                               (cons '%#begin _%c-body136898%_)))
                           _%tl136859136876%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136856136866%_ _%g136857136869%_))))))
          (declare (not safe))
          (_%g136855136901%_ _%stx136854%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self136758%_ _%stx136759%_)
        (let* ((_%g136761136771%_
                (lambda (_%g136762136768%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136762136768%_))))
               (_%g136760136850%_
                (lambda (_%g136762136774%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136762136774%_))
                      (let ((_%e136766136776%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136762136774%_))))
                        (let ((_%hd136765136779%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136766136776%_)))
                              (_%tl136764136781%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136766136776%_))))
                          ((lambda (_%L136784%_)
                             (let* ((_%phi136794%_
                                     (let ((__tmp145977
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp145977 '1)))
                                    (_%block136796%_
                                     (let ((__tmp145978
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _%self136758%_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp145978
                                        _%phi136794%_)))
                                    (_%compiled136799%_
                                     (let ((__tmp145979
                                            (lambda ()
                                              (let ((__tmp145981
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self136758%_
                                                        'state)))
                                                    (__tmp145980
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%L136784%_)))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi__%
                                                 '#f
                                                 __tmp145981
                                                 __tmp145980)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp145979
                                        gx#current-expander-phi
                                        _%phi136794%_))))
                               (let* ((_%g136802136812%_
                                       (lambda (_%g136803136809%_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g136803136809%_))))
                                      (_%g136801136847%_
                                       (lambda (_%g136803136815%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%g136803136815%_))
                                             (let ((_%e136807136817%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%g136803136815%_))))
                                               (let ((_%hd136806136820%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e136807136817%_)))
                                                     (_%tl136805136822%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e136807136817%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd136806136820%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _%hd136806136820%_))
                                                         ((lambda (_%L136825%_)
                                                            (let ((_%c-body136842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_%$obj136839%_)
                                     (let ((__tmp145982
                                            (let ()
                                              (declare (not safe))
                                              (eq? _%$obj136839%_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp145982)))
                                   _%L136825%_)))
                      (if _%block136796%_
                          (let ()
                            (cons '%#begin-syntax
                                  (cons (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'load-module
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons _%block136796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%c-body136842%_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _%c-body136842%_))
                              (let () '#!void)
                              (let ()
                                (cons '%#begin-syntax _%c-body136842%_))))))
                  _%tl136805136822%_)
                 (let ()
                   (declare (not safe))
                   (_%g136802136812%_ _%g136803136815%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g136802136812%_
                                                        _%g136803136815%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g136802136812%_
                                                _%g136803136815%_))))))
                                 (declare (not safe))
                                 (_%g136801136847%_ _%compiled136799%_))))
                           _%tl136764136781%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136761136771%_ _%g136762136774%_))))))
          (declare (not safe))
          (_%g136760136850%_ _%stx136759%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self136689%_ _%stx136690%_)
        (let ((__tmp145983
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self136689%_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp145983))
        (let* ((_%g136692136706%_
                (lambda (_%g136693136703%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136693136703%_))))
               (_%g136691136755%_
                (lambda (_%g136693136709%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136693136709%_))
                      (let ((_%e136698136711%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136693136709%_))))
                        (let ((_%hd136697136714%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136698136711%_)))
                              (_%tl136696136716%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136698136711%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136696136716%_))
                              (let ((_%e136701136719%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136696136716%_))))
                                (let ((_%hd136700136722%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136701136719%_)))
                                      (_%tl136699136724%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136701136719%_))))
                                  ((lambda (_%L136727%_ _%L136728%_)
                                     (let ((_%key136741%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L136728%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key136741%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx136690%_
                                              _%L136728%_
                                              _%key136741%_)))
                                       (let* ((_%ctx136743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L136728%_)))
                                              (_%code136746%_
                                               (let ((__tmp145984
                                                      (lambda ()
                                                        (let ((__tmp145985
                                                               (##structure-ref
                                                                _%ctx136743%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self136689%_
                                                           __tmp145985)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp145984
                                                  gx#current-expander-context
                                                  _%ctx136743%_)))
                                              (_%rt136748%_
                                               (let ((__tmp145986
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp145986
                                                  _%ctx136743%_)))
                                              (_%loader136750%_
                                               (if _%rt136748%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt136748%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid136752%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L136728%_))))
                                         (let ((__tmp145987
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self136689%_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp145987))
                                         (cons '%#module
                                               (cons _%modid136752%_
                                                     (cons _%code136746%_
                                                           _%loader136750%_))))))
                                   _%tl136699136724%_
                                   _%hd136700136722%_)))
                              (let ()
                                (declare (not safe))
                                (_%g136692136706%_ _%g136693136709%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136692136706%_ _%g136693136709%_))))))
          (declare (not safe))
          (_%g136691136755%_ _%stx136690%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx136676%_ _%context-chain136677%_)
        (let _%lp136679%_ ((_%ctx136681%_ _%ctx136676%_) (_%path136682%_ '()))
          (let ((_%super136684%_
                 (##structure-ref _%ctx136681%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super136684%_ _%context-chain136677%_)
                (let ((__tmp145988
                       (let ((__tmp145989
                              (car (##structure-ref
                                    _%ctx136681%_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp145989 _%path136682%_))))
                  (declare (not safe))
                  (cons '#f __tmp145988))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super136684%_
                       'gx#module-context::t))
                    (let ((__tmp145990
                           (cons (car (##structure-ref
                                       _%ctx136681%_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _%path136682%_)))
                      (declare (not safe))
                      (_%lp136679%_ _%super136684%_ __tmp145990))
                    (let ()
                      (cons (let ((__tmp145991
                                   (##structure-ref
                                    _%ctx136681%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (make-symbol__1 '":" __tmp145991))
                            _%path136682%_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp136669%_ ((_%ctx136671%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r136672%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx136671%_ 'gx#module-context::t))
              (let ((__tmp145993
                     (##structure-ref _%ctx136671%_ '3 gx#phi-context::t '#f))
                    (__tmp145992 (cons _%ctx136671%_ _%r136672%_)))
                (declare (not safe))
                (_%lp136669%_ __tmp145993 __tmp145992))
              (let () _%r136672%_)))))
    (define gxc#generate-meta-import%
      (lambda (_%self136432%_ _%stx136433%_)
        (letrec* ((_%context-chain136435%_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_%make-import-spec136436%_
                   (lambda (_%in136605%_)
                     (let* ((_%in136606136618%_ _%in136605%_)
                            (_%E136608136622%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in136606136618%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K136609136632%_
                             (lambda (_%phi136625%_
                                      _%name136626%_
                                      _%src-name136627%_
                                      _%src-phi136628%_
                                      _%src-key136629%_
                                      _%src-ctx136630%_)
                               (cons _%phi136625%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name136626%_))
                                           (cons _%src-phi136628%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name136627%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in136606136618%_
                              'gx#module-import::t))
                           (let ((_%e136610136635%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in136606136618%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e136610136635%_
                                    'gx#module-export::t))
                                 (let* ((_%e136613136638%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136610136635%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx136641%_ _%e136613136638%_)
                                        (_%e136614136643%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136610136635%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key136646%_ _%e136614136643%_)
                                        (_%e136615136648%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136610136635%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi136651%_ _%e136615136648%_)
                                        (_%e136616136653%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136610136635%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name136656%_ _%e136616136653%_)
                                        (_%e136611136658%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in136606136618%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name136661%_ _%e136611136658%_)
                                        (_%e136612136663%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in136606136618%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi136666%_ _%e136612136663%_))
                                   (declare (not safe))
                                   (_%K136609136632%_
                                    _%phi136666%_
                                    _%name136661%_
                                    _%src-name136656%_
                                    _%src-phi136651%_
                                    _%src-key136646%_
                                    _%src-ctx136641%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%E136608136622%_))))
                           (let ()
                             (declare (not safe))
                             (_%E136608136622%_))))))
                  (_%make-import-path136437%_
                   (lambda (_%ctx136603%_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _%ctx136603%_
                        _%context-chain136435%_))))
                  (_%make-import-spec-in136438%_
                   (lambda (_%ctx136600%_ _%in136601%_)
                     (cons 'spec:
                           (cons (let ()
                                   (declare (not safe))
                                   (_%make-import-path136437%_ _%ctx136600%_))
                                 (reverse _%in136601%_))))))
          (let ((__tmp145994
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self136432%_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp145994))
          (let* ((_%g136440136450%_
                  (lambda (_%g136441136447%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136441136447%_))))
                 (_%g136439136597%_
                  (lambda (_%g136441136453%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136441136453%_))
                        (let ((_%e136445136455%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136441136453%_))))
                          (let ((_%hd136444136458%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136445136455%_)))
                                (_%tl136443136460%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136445136455%_))))
                            ((lambda (_%L136463%_)
                               (let _%lp136474%_ ((_%rest136476%_ _%L136463%_)
                                                  (_%current-src136477%_ '#f)
                                                  (_%current-in136478%_ '())
                                                  (_%r136479%_ '()))
                                 (let* ((_%rest136480136488%_ _%rest136476%_)
                                        (_%else136482136498%_
                                         (lambda ()
                                           (let ((_%r136496%_
                                                  (if _%current-src136477%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%make-import-spec-in136438%_
                                                               _%current-src136477%_
                                                               _%current-in136478%_))
                                                            _%r136479%_)
                                                      _%r136479%_)))
                                             (cons '%#import
                                                   (reverse _%r136496%_)))))
                                        (_%K136484136585%_
                                         (lambda (_%rest136501%_ _%in136502%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in136502%_
                                                  'gx#module-import::t))
                                               (let ()
                                                 (let* ((_%in136504136511%_
                                                         _%in136502%_)
                                                        (_%E136506136515%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%in136504136511%_
                            '((module-import (module-export src-ctx)))))
                   '#!void))
                (_%K136507136523%_
                 (lambda (_%src-ctx136518%_)
                   (if (eq? _%current-src136477%_ _%src-ctx136518%_)
                       (let ((__tmp145995
                              (cons (let ()
                                      (declare (not safe))
                                      (_%make-import-spec136436%_
                                       _%in136502%_))
                                    _%current-in136478%_)))
                         (declare (not safe))
                         (_%lp136474%_
                          _%rest136501%_
                          _%current-src136477%_
                          __tmp145995
                          _%r136479%_))
                       (if _%current-src136477%_
                           (let ((__tmp145997
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%make-import-spec136436%_
                                           _%in136502%_))
                                        '()))
                                 (__tmp145996
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%make-import-spec-in136438%_
                                           _%current-src136477%_
                                           _%current-in136478%_))
                                        _%r136479%_)))
                             (declare (not safe))
                             (_%lp136474%_
                              _%rest136501%_
                              _%src-ctx136518%_
                              __tmp145997
                              __tmp145996))
                           (let ((__tmp145998
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%make-import-spec136436%_
                                           _%in136502%_))
                                        '())))
                             (declare (not safe))
                             (_%lp136474%_
                              _%rest136501%_
                              _%src-ctx136518%_
                              __tmp145998
                              _%r136479%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in136504136511%_
                                                          'gx#module-import::t))
                                                       (let ((_%e136508136526%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%in136504136511%_
                         '1
                         '#f
                         '#f))))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        _%e136508136526%_
                        'gx#module-export::t))
                     (let* ((_%e136509136529%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%e136508136526%_
                                '1
                                '#f
                                '#f)))
                            (_%src-ctx136532%_ _%e136509136529%_))
                       (declare (not safe))
                       (_%K136507136523%_ _%src-ctx136532%_))
                     (let () (declare (not safe)) (_%E136506136515%_))))
               (let () (declare (not safe)) (_%E136506136515%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in136502%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (let* ((_%phi136535%_
                                                             (##direct-structure-ref
                                                              _%in136502%_
                                                              '2
                                                              gx#import-set::t
                                                              '#f))
                                                            (_%src136537%_
                                                             (##direct-structure-ref
                                                              _%in136502%_
                                                              '1
                                                              gx#import-set::t
                                                              '#f))
                                                            (_%src-in136577%_
                                                             (let* ((_%g136538136547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_%make-import-path136437%_ _%src136537%_)))
                            (_%E136541136551%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g136538136547%_
                                        '([path])
                                        '(path)))
                               '#!void)))
                       (let ((_%K136543136567%_
                              (lambda (_%path136565%_) _%path136565%_))
                             (_%K136542136557%_
                              (lambda (_%path136555%_)
                                (cons 'in: _%path136555%_))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%g136538136547%_))
                             (let ((_%tl136545136572%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g136538136547%_)))
                                   (_%hd136544136570%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g136538136547%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl136545136572%_))
                                   (let ((_%path136575%_ _%hd136544136570%_))
                                     (declare (not safe))
                                     (_%K136543136567%_ _%path136575%_))
                                   (let ((_%path136560%_ _%g136538136547%_))
                                     (declare (not safe))
                                     (_%K136542136557%_ _%path136560%_))))
                             (let ((_%path136560%_ _%g136538136547%_))
                               (declare (not safe))
                               (_%K136542136557%_ _%path136560%_))))))
                    (_%r136579%_
                     (if _%current-src136477%_
                         (cons (let ()
                                 (declare (not safe))
                                 (_%make-import-spec-in136438%_
                                  _%current-src136477%_
                                  _%current-in136478%_))
                               _%r136479%_)
                         _%r136479%_))
                    (__tmp145999
                     (cons (if (fxzero? _%phi136535%_)
                               _%src-in136577%_
                               (cons 'phi:
                                     (cons _%phi136535%_
                                           (cons _%src-in136577%_ '()))))
                           _%r136579%_)))
               (declare (not safe))
               (_%lp136474%_ _%rest136501%_ '#f '() __tmp145999)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in136502%_
                                                          'gx#module-context::t))
                                                       (let ()
                                                         (let* ((_%r136583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if _%current-src136477%_
                             (cons (let ()
                                     (declare (not safe))
                                     (_%make-import-spec-in136438%_
                                      _%current-src136477%_
                                      _%current-in136478%_))
                                   _%r136479%_)
                             _%r136479%_))
                        (__tmp146000
                         (cons (cons 'runtime:
                                     (let ()
                                       (declare (not safe))
                                       (_%make-import-path136437%_
                                        _%in136502%_)))
                               _%r136583%_)))
                   (declare (not safe))
                   (_%lp136474%_ _%rest136501%_ '#f '() __tmp146000)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest136480136488%_))
                                       (let ((_%hd136485136588%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest136480136488%_)))
                                             (_%tl136486136590%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest136480136488%_))))
                                         (let* ((_%in136593%_
                                                 _%hd136485136588%_)
                                                (_%rest136595%_
                                                 _%tl136486136590%_))
                                           (declare (not safe))
                                           (_%K136484136585%_
                                            _%rest136595%_
                                            _%in136593%_)))
                                       (let ()
                                         (declare (not safe))
                                         (_%else136482136498%_))))))
                             _%tl136443136460%_)))
                        (let ()
                          (declare (not safe))
                          (_%g136440136450%_ _%g136441136453%_))))))
            (declare (not safe))
            (_%g136439136597%_ _%stx136433%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self136242%_ _%stx136243%_)
        (letrec* ((_%context-chain136245%_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_%make-import-path136246%_
                   (lambda (_%ctx136430%_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _%ctx136430%_
                        _%context-chain136245%_)))))
          (let* ((_%g136248136258%_
                  (lambda (_%g136249136255%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136249136255%_))))
                 (_%g136247136427%_
                  (lambda (_%g136249136261%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136249136261%_))
                        (let ((_%e136253136263%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136249136261%_))))
                          (let ((_%hd136252136266%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136253136263%_)))
                                (_%tl136251136268%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136253136263%_))))
                            ((lambda (_%L136271%_)
                               (let _%lp136282%_ ((_%rest136284%_ _%L136271%_)
                                                  (_%r136285%_ '()))
                                 (let* ((_%rest136286136294%_ _%rest136284%_)
                                        (_%else136288136302%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r136285%_))))
                                        (_%K136290136415%_
                                         (lambda (_%rest136305%_ _%out136306%_)
                                           (let* ((_%out136307136320%_
                                                   _%out136306%_)
                                                  (_%E136310136324%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out136307136320%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K136314136394%_
                                                    (lambda (_%name136390%_
                                                             _%phi136391%_
                                                             _%key136392%_)
                                                      (let ((__tmp146001
                                                             (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%phi136391%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%key136392%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-identifier-key
                                                      _%name136390%_))
                                                   '()))))
                           _%r136285%_)))
                (declare (not safe))
                (_%lp136282%_ _%rest136305%_ __tmp146001))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K136311136374%_
                                                    (lambda (_%phi136328%_
                                                             _%src136329%_)
                                                      (let* ((_%out136369%_
                                                              (if _%src136329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g136330136339%_
                                              (let ()
                                                (declare (not safe))
                                                (_%make-import-path136246%_
                                                 _%src136329%_)))
                                             (_%E136333136343%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g136330136339%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K136335136359%_
                                               (lambda (_%path136357%_)
                                                 _%path136357%_))
                                              (_%K136334136349%_
                                               (lambda (_%path136347%_)
                                                 (cons 'in: _%path136347%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g136330136339%_))
                                              (let ((_%tl136337136364%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g136330136339%_)))
                                                    (_%hd136336136362%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g136330136339%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl136337136364%_))
                                                    (let ((_%path136367%_
                                                           _%hd136336136362%_))
                                                      (declare (not safe))
                                                      (_%K136335136359%_
                                                       _%path136367%_))
                                                    (let ((_%path136352%_
                                                           _%g136330136339%_))
                                                      (declare (not safe))
                                                      (_%K136334136349%_
                                                       _%path136352%_))))
                                              (let ((_%path136352%_
                                                     _%g136330136339%_))
                                                (declare (not safe))
                                                (_%K136334136349%_
                                                 _%path136352%_)))))
                                      '()))
                          '#t))
                     (_%out136371%_
                      (if (fxzero? _%phi136328%_)
                          _%out136369%_
                          (cons 'phi:
                                (cons _%phi136328%_
                                      (cons _%out136369%_ '())))))
                     (__tmp146002 (cons _%out136371%_ _%r136285%_)))
                (declare (not safe))
                (_%lp136282%_ _%rest136305%_ __tmp146002)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match136309136387%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out136307136320%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e136312136377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out136307136320%_
                               '1
                               '#f
                               '#f)))
                           (_%e136313136382%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out136307136320%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src136380%_ _%e136312136377%_)
                            (_%phi136385%_ _%e136313136382%_))
                        (let ()
                          (declare (not safe))
                          (_%K136311136374%_ _%phi136385%_ _%src136380%_))))
                    (let () (declare (not safe)) (_%E136310136324%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out136307136320%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e136315136397%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out136307136320%_
                        '1
                        '#f
                        '#f)))
                    (_%e136316136400%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136307136320%_
                        '2
                        '#f
                        '#f)))
                    (_%e136317136405%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136307136320%_
                        '3
                        '#f
                        '#f)))
                    (_%e136318136410%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136307136320%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key136403%_ _%e136316136400%_)
                     (_%phi136408%_ _%e136317136405%_)
                     (_%name136413%_ _%e136318136410%_))
                 (let ()
                   (declare (not safe))
                   (_%K136314136394%_
                    _%name136413%_
                    _%phi136408%_
                    _%key136403%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%try-match136309136387%_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest136286136294%_))
                                       (let ((_%hd136291136418%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest136286136294%_)))
                                             (_%tl136292136420%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest136286136294%_))))
                                         (let* ((_%out136423%_
                                                 _%hd136291136418%_)
                                                (_%rest136425%_
                                                 _%tl136292136420%_))
                                           (declare (not safe))
                                           (_%K136290136415%_
                                            _%rest136425%_
                                            _%out136423%_)))
                                       (let ()
                                         (declare (not safe))
                                         (_%else136288136302%_))))))
                             _%tl136251136268%_)))
                        (let ()
                          (declare (not safe))
                          (_%g136248136258%_ _%g136249136261%_))))))
            (declare (not safe))
            (_%g136247136427%_ _%stx136243%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self136203%_ _%stx136204%_)
        (let ((__tmp146003
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self136203%_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp146003))
        (let* ((_%g136206136216%_
                (lambda (_%g136207136213%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136207136213%_))))
               (_%g136205136239%_
                (lambda (_%g136207136219%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136207136219%_))
                      (let ((_%e136211136221%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136207136219%_))))
                        (let ((_%hd136210136224%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136211136221%_)))
                              (_%tl136209136226%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136211136221%_))))
                          ((lambda (_%L136229%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L136229%_)))
                           _%tl136209136226%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136206136216%_ _%g136207136219%_))))))
          (declare (not safe))
          (_%g136205136239%_ _%stx136204%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self136074%_ _%stx136075%_)
        (letrec ((_%generate1136077%_
                  (lambda (_%id136198%_ _%eid136199%_)
                    (let ((_%eid136201%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid136199%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid136201%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx136075%_
                             _%eid136201%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id136198%_))
                            (cons _%eid136201%_ '()))))))
          (let* ((_%g136079136107%_
                  (lambda (_%g136080136104%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136080136104%_))))
                 (_%g136078136195%_
                  (lambda (_%g136080136110%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136080136110%_))
                        (let ((_%e136085136112%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136080136110%_))))
                          (let ((_%hd136084136115%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136085136112%_)))
                                (_%tl136083136117%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136085136112%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl136083136117%_))
                                (let ((_g146004_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl136083136117%_
                                          '0))))
                                  (begin
                                    (let ((_g146005_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g146004_)
                                                 (##vector-length _g146004_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g146005_ 2)))
                                          (error "Context expects 2 values"
                                                 _g146005_)))
                                    (let ((_%target136086136120%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g146004_ 0)))
                                          (_%tl136088136122%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g146004_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl136088136122%_))
                                          (letrec ((_%loop136089136125%_
                                                    (lambda (_%hd136087136128%_
                                                             _%eid136093136130%_
                                                             _%id136094136132%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd136087136128%_))
                                                          (let ((_%e136090136135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd136087136128%_))))
                    (let ((_%lp-hd136091136138%_
                           (let ()
                             (declare (not safe))
                             (##car _%e136090136135%_)))
                          (_%lp-tl136092136140%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e136090136135%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd136091136138%_))
                          (let ((_%e136099136143%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd136091136138%_))))
                            (let ((_%hd136098136146%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e136099136143%_)))
                                  (_%tl136097136148%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e136099136143%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl136097136148%_))
                                  (let ((_%e136102136151%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl136097136148%_))))
                                    (let ((_%hd136101136154%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e136102136151%_)))
                                          (_%tl136100136156%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e136102136151%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl136100136156%_))
                                          (let ((__tmp146007
                                                 (cons _%hd136101136154%_
                                                       _%eid136093136130%_))
                                                (__tmp146006
                                                 (cons _%hd136098136146%_
                                                       _%id136094136132%_)))
                                            (declare (not safe))
                                            (_%loop136089136125%_
                                             _%lp-tl136092136140%_
                                             __tmp146007
                                             __tmp146006))
                                          (let ()
                                            (declare (not safe))
                                            (_%g136079136107%_
                                             _%g136080136110%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g136079136107%_ _%g136080136110%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g136079136107%_ _%g136080136110%_)))))
                  (let ((_%eid136095136159%_ (reverse _%eid136093136130%_))
                        (_%id136096136161%_ (reverse _%id136094136132%_)))
                    ((lambda (_%L136164%_ _%L136165%_)
                       (cons '%#extern
                             (map _%generate1136077%_
                                  (let ((__tmp146008
                                         (lambda (_%g136180136183%_
                                                  _%g136181136185%_)
                                           (cons _%g136180136183%_
                                                 _%g136181136185%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp146008 '() _%L136165%_))
                                  (let ((__tmp146009
                                         (lambda (_%g136187136190%_
                                                  _%g136188136192%_)
                                           (cons _%g136187136190%_
                                                 _%g136188136192%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp146009 '() _%L136164%_)))))
                     _%eid136095136159%_
                     _%id136096136161%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop136089136125%_
                                               _%target136086136120%_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g136079136107%_
                                             _%g136080136110%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g136079136107%_ _%g136080136110%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g136079136107%_ _%g136080136110%_))))))
            (declare (not safe))
            (_%g136078136195%_ _%stx136075%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self135864%_ _%stx135865%_)
        (letrec ((_%generate1135867%_
                  (lambda (_%id136069%_)
                    (let ((_%eid136071%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id136069%_)))
                          (_%ident136072%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id136069%_))))
                      (cons '%#define-runtime
                            (cons _%ident136072%_ (cons _%eid136071%_ '()))))))
                 (_%generate*135868%_
                  (lambda (_%all136037%_)
                    (let* ((_%all136038136046%_ _%all136037%_)
                           (_%else136040136054%_
                            (lambda () (cons '%#begin _%all136037%_)))
                           (_%K136042136059%_
                            (lambda (_%one136057%_) _%one136057%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all136038136046%_))
                          (let ((_%hd136043136062%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all136038136046%_)))
                                (_%tl136044136064%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all136038136046%_))))
                            (let ((_%one136067%_ _%hd136043136062%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl136044136064%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K136042136059%_ _%one136067%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%else136040136054%_)))))
                          (let ()
                            (declare (not safe))
                            (_%else136040136054%_)))))))
          (let* ((_%g135870135887%_
                  (lambda (_%g135871135884%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135871135884%_))))
                 (_%g135869136034%_
                  (lambda (_%g135871135890%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135871135890%_))
                        (let ((_%e135876135892%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135871135890%_))))
                          (let ((_%hd135875135895%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135876135892%_)))
                                (_%tl135874135897%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135876135892%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl135874135897%_))
                                (let ((_%e135879135900%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl135874135897%_))))
                                  (let ((_%hd135878135903%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135879135900%_)))
                                        (_%tl135877135905%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135879135900%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135877135905%_))
                                        (let ((_%e135882135908%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135877135905%_))))
                                          (let ((_%hd135881135911%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135882135908%_)))
                                                (_%tl135880135913%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135882135908%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135880135913%_))
                                                ((lambda (_%L135916%_
                                                          _%L135917%_)
                                                   (let _%lp135933%_ ((_%rest135935%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L135917%_)
                              (_%r135936%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx145625145626%_
                                                             _%rest135935%_)
                                                            (_%g135941135958%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx145625145626%_)))))
               (let ((_%__kont145627145628%_
                      (lambda (_%L136021%_)
                        (let ()
                          (declare (not safe))
                          (_%lp135933%_ _%L136021%_ _%r135936%_))))
                     (_%__kont145629145630%_
                      (lambda (_%L135994%_ _%L135995%_)
                        (let ((__tmp146010
                               (cons (let ()
                                       (declare (not safe))
                                       (_%generate1135867%_ _%L135995%_))
                                     _%r135936%_)))
                          (declare (not safe))
                          (_%lp135933%_ _%L135994%_ __tmp146010))))
                     (_%__kont145631145632%_
                      (lambda (_%L135970%_)
                        (let ((__tmp146011
                               (let ((__tmp146012
                                      (cons (let ()
                                              (declare (not safe))
                                              (_%generate1135867%_
                                               _%L135970%_))
                                            '())))
                                 (declare (not safe))
                                 (__foldl1 cons __tmp146012 _%r135936%_))))
                          (declare (not safe))
                          (_%generate*135868%_ __tmp146011))))
                     (_%__kont145633145634%_
                      (lambda ()
                        (let ((__tmp146013 (reverse _%r135936%_)))
                          (declare (not safe))
                          (_%generate*135868%_ __tmp146013)))))
                 (let ((_%g135939135981%_
                        (lambda ()
                          (let ((_%L135970%_ _%__stx145625145626%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L135970%_))
                                (_%__kont145631145632%_ _%L135970%_)
                                (_%__kont145633145634%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx145625145626%_))
                       (let ((_%e135946136010%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx145625145626%_))))
                         (let ((_%tl135944136015%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e135946136010%_)))
                               (_%hd135945136013%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e135946136010%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd135945136013%_))
                               (let ((_%e135947136018%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd135945136013%_))))
                                 (if (equal? _%e135947136018%_ '#f)
                                     (_%__kont145627145628%_
                                      _%tl135944136015%_)
                                     (_%__kont145629145630%_
                                      _%tl135944136015%_
                                      _%hd135945136013%_)))
                               (_%__kont145629145630%_
                                _%tl135944136015%_
                                _%hd135945136013%_))))
                       (let () (declare (not safe)) (_%g135939135981%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd135881135911%_
                                                 _%hd135878135903%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g135870135887%_
                                                   _%g135871135890%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g135870135887%_
                                           _%g135871135890%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g135870135887%_ _%g135871135890%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g135870135887%_ _%g135871135890%_))))))
            (declare (not safe))
            (_%g135869136034%_ _%stx135865%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self135761%_ _%stx135762%_)
        (let* ((_%g135764135781%_
                (lambda (_%g135765135778%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135765135778%_))))
               (_%g135763135861%_
                (lambda (_%g135765135784%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135765135784%_))
                      (let ((_%e135770135786%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135765135784%_))))
                        (let ((_%hd135769135789%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135770135786%_)))
                              (_%tl135768135791%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135770135786%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135768135791%_))
                              (let ((_%e135773135794%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135768135791%_))))
                                (let ((_%hd135772135797%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135773135794%_)))
                                      (_%tl135771135799%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135773135794%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135771135799%_))
                                      (let ((_%e135776135802%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135771135799%_))))
                                        (let ((_%hd135775135805%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135776135802%_)))
                                              (_%tl135774135807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135776135802%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135774135807%_))
                                              ((lambda (_%L135810%_
                                                        _%L135811%_)
                                                 (let* ((_%eid135826%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L135811%_)))
                                                        (_%phi135828%_
                                                         (let ((__tmp146014
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp146014 '1)))
                (_%block135830%_
                 (let ((__tmp146015
                        (let ()
                          (declare (not safe))
                          (slot-ref__0 _%self135761%_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp146015 _%phi135828%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g135833135840%_
                                                           (lambda (_%g135834135837%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g135834135837%_))))
                  (_%g135832135858%_
                   (lambda (_%g135834135843%_)
                     ((lambda (_%L135845%_)
                        (let ((__tmp146017
                               (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self135761%_ 'state)))
                              (__tmp146016
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        '%#define-runtime))
                                     (cons _%L135845%_
                                           (cons _%L135810%_ '())))))
                          (declare (not safe))
                          (gxc#meta-state-add-phi!
                           __tmp146017
                           _%phi135828%_
                           __tmp146016)))
                      _%g135834135843%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_%g135832135858%_
                                                      _%eid135826%_))
                                                   (if _%block135830%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block135830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%L135811%_))
                                             (cons _%eid135826%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%L135811%_))
                           (cons _%eid135826%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135775135805%_
                                               _%hd135772135797%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135764135781%_
                                                 _%g135765135784%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135764135781%_
                                         _%g135765135784%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135764135781%_ _%g135765135784%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135764135781%_ _%g135765135784%_))))))
          (declare (not safe))
          (_%g135763135861%_ _%stx135762%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self135693%_ _%stx135694%_)
        (let* ((_%g135696135713%_
                (lambda (_%g135697135710%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135697135710%_))))
               (_%g135695135758%_
                (lambda (_%g135697135716%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135697135716%_))
                      (let ((_%e135702135718%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135697135716%_))))
                        (let ((_%hd135701135721%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135702135718%_)))
                              (_%tl135700135723%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135702135718%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135700135723%_))
                              (let ((_%e135705135726%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135700135723%_))))
                                (let ((_%hd135704135729%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135705135726%_)))
                                      (_%tl135703135731%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135705135726%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135703135731%_))
                                      (let ((_%e135708135734%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135703135731%_))))
                                        (let ((_%hd135707135737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135708135734%_)))
                                              (_%tl135706135739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135708135734%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135706135739%_))
                                              ((lambda (_%L135742%_
                                                        _%L135743%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%L135743%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%L135742%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135707135737%_
                                               _%hd135704135729%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135696135713%_
                                                 _%g135697135716%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135696135713%_
                                         _%g135697135716%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135696135713%_ _%g135697135716%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135696135713%_ _%g135697135716%_))))))
          (declare (not safe))
          (_%g135695135758%_ _%stx135694%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self135690%_ _%stx135691%_)
        (let ((__tmp146019
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135690%_ 'state)))
              (__tmp146018
               (let () (declare (not safe)) (gx#current-expander-phi))))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp146019 __tmp146018 _%stx135691%_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _%self135690%_ _%stx135691%_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self135687%_ _%stx135688%_)
        (let ((__tmp146021
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135687%_ 'state)))
              (__tmp146020
               (let () (declare (not safe)) (gx#current-expander-phi))))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp146021 __tmp146020 _%stx135688%_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp146023 (list)) (__tmp146022 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp146023
         '(src n open blocks)
         __tmp146022
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args135684%_
        (apply make-instance gxc#meta-state::t _%$args135684%_)))
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
      (lambda (_%self135670%_ _%ctx135671%_)
        (let ((_%self135674%_ _%self135670%_))
          (if (let ((__tmp146024
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self135674%_))))
                (declare (not safe))
                (##fx< '4 __tmp146024))
              (begin
                (let ((__tmp146025
                       (let ((__tmp146026
                              (##structure-ref
                               _%ctx135671%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp146026))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self135674%_
                   __tmp146025
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self135674%_ '1 '2 '#f '#f))
                (let ((__tmp146027
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self135674%_
                   __tmp146027
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self135674%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp146028
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self135674%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self135674%_
                       '4
                       __tmp146028))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp146030 (list)) (__tmp146029 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp146030
         '(ctx phi n code)
         __tmp146029
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args135545%_
        (apply make-instance gxc#meta-state-block::t _%$args135545%_)))
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
      (lambda (_%state135504%_ _%phi135505%_)
        (let* ((_%state135506135514%_ _%state135504%_)
               (_%E135508135518%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state135506135514%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K135509135527%_
                (lambda (_%open135521%_ _%n135522%_ _%src135523%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open135521%_ _%phi135505%_))
                      '#f
                      (let ((_%block-ref135525%_
                             (let ((__tmp146031 (number->string _%n135522%_)))
                               (declare (not safe))
                               (##string-append
                                _%src135523%_
                                '"~"
                                __tmp146031))))
                        (##structure-set!
                         _%state135504%_
                         (let () (declare (not safe)) (##fx+ _%n135522%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp146032
                               (let ((__tmp146033
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp146033
                                  _%phi135505%_
                                  _%n135522%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open135521%_ _%phi135505%_ __tmp146032))
                        _%block-ref135525%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state135506135514%_
                 'gxc#meta-state::t))
              (let* ((_%e135510135530%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state135506135514%_
                         '1
                         '#f
                         '#f)))
                     (_%src135533%_ _%e135510135530%_)
                     (_%e135511135535%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state135506135514%_
                         '2
                         '#f
                         '#f)))
                     (_%n135538%_ _%e135511135535%_)
                     (_%e135512135540%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state135506135514%_
                         '3
                         '#f
                         '#f)))
                     (_%open135543%_ _%e135512135540%_))
                (declare (not safe))
                (_%K135509135527%_ _%open135543%_ _%n135538%_ _%src135533%_))
              (let () (declare (not safe)) (_%E135508135518%_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state135498%_ _%phi135499%_ _%stx135500%_)
        (let ((_%block135502%_
               (let ((__tmp146034
                      (##structure-ref
                       _%state135498%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp146034 _%phi135499%_))))
          (##structure-set!
           _%block135502%_
           (cons _%stx135500%_
                 (##structure-ref
                  _%block135502%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state135492%_)
        (##structure-set!
         _%state135492%_
         (let ((__tmp146037
                (lambda (_%_135494%_ _%block135495%_ _%r135496%_)
                  (cons _%block135495%_ _%r135496%_)))
               (__tmp146036
                (##structure-ref _%state135492%_ '4 gxc#meta-state::t '#f))
               (__tmp146035
                (##structure-ref _%state135492%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp146037 __tmp146036 __tmp146035))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state135492%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state135444%_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _%state135444%_))
        (let ((__tmp146039
               (lambda (_%block135446%_ _%r135447%_)
                 (let* ((_%block135448135457%_ _%block135446%_)
                        (_%E135450135461%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block135448135457%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K135451135469%_
                         (lambda (_%code135464%_
                                  _%n135465%_
                                  _%phi135466%_
                                  _%ctx135467%_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _%code135464%_))
                               _%r135447%_
                               (cons (cons _%ctx135467%_
                                           (cons _%phi135466%_
                                                 (cons _%n135465%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code135464%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r135447%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block135448135457%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e135452135472%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135448135457%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx135475%_ _%e135452135472%_)
                              (_%e135453135477%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135448135457%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi135480%_ _%e135453135477%_)
                              (_%e135454135482%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135448135457%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n135485%_ _%e135454135482%_)
                              (_%e135455135487%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135448135457%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code135490%_ _%e135455135487%_))
                         (declare (not safe))
                         (_%K135451135469%_
                          _%code135490%_
                          _%n135485%_
                          _%phi135480%_
                          _%ctx135475%_))
                       (let () (declare (not safe)) (_%E135450135461%_))))))
              (__tmp146038
               (##structure-ref _%state135444%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp146039 '() __tmp146038))))
    (define gxc#collect-expression-refs
      (lambda (_%stx135440%_)
        (let ((_%ht135442%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs__%
             '#f
             _%ht135442%_
             _%stx135440%_))
          _%ht135442%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self135383%_ _%stx135384%_)
        (let* ((_%g135386135399%_
                (lambda (_%g135387135396%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135387135396%_))))
               (_%g135385135437%_
                (lambda (_%g135387135402%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135387135402%_))
                      (let ((_%e135391135404%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135387135402%_))))
                        (let ((_%hd135390135407%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135391135404%_)))
                              (_%tl135389135409%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135391135404%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135389135409%_))
                              (let ((_%e135394135412%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135389135409%_))))
                                (let ((_%hd135393135415%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135394135412%_)))
                                      (_%tl135392135417%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135394135412%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl135392135417%_))
                                      ((lambda (_%L135420%_)
                                         (let* ((_%bind135432%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L135420%_)))
                                                (_%eid135434%_
                                                 (if _%bind135432%_
                                                     (##structure-ref
                                                      _%bind135432%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L135420%_))))
                                                (__tmp146040
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self135383%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp146040
                                            _%eid135434%_
                                            _%eid135434%_)))
                                       _%hd135393135415%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g135386135399%_
                                         _%g135387135402%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135386135399%_ _%g135387135402%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135386135399%_ _%g135387135402%_))))))
          (declare (not safe))
          (_%g135385135437%_ _%stx135384%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self135310%_ _%stx135311%_)
        (let* ((_%g135313135330%_
                (lambda (_%g135314135327%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135314135327%_))))
               (_%g135312135380%_
                (lambda (_%g135314135333%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135314135333%_))
                      (let ((_%e135319135335%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135314135333%_))))
                        (let ((_%hd135318135338%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135319135335%_)))
                              (_%tl135317135340%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135319135335%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135317135340%_))
                              (let ((_%e135322135343%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135317135340%_))))
                                (let ((_%hd135321135346%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135322135343%_)))
                                      (_%tl135320135348%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135322135343%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135320135348%_))
                                      (let ((_%e135325135351%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135320135348%_))))
                                        (let ((_%hd135324135354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135325135351%_)))
                                              (_%tl135323135356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135325135351%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135323135356%_))
                                              ((lambda (_%L135359%_
                                                        _%L135360%_)
                                                 (let* ((_%bind135375%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L135360%_)))
                                                        (_%eid135377%_
                                                         (if _%bind135375%_
                                                             (##structure-ref
                                                              _%bind135375%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L135360%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp146041
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self135310%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp146041
                                                      _%eid135377%_
                                                      _%eid135377%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self135310%_
                                                      _%L135359%_))))
                                               _%hd135324135354%_
                                               _%hd135321135346%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135313135330%_
                                                 _%g135314135333%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135313135330%_
                                         _%g135314135333%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135313135330%_ _%g135314135333%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135313135330%_ _%g135314135333%_))))))
          (declare (not safe))
          (_%g135312135380%_ _%stx135311%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self135267%_ _%stx135268%_)
        (let* ((_%g135270135280%_
                (lambda (_%g135271135277%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135271135277%_))))
               (_%g135269135307%_
                (lambda (_%g135271135283%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135271135283%_))
                      (let ((_%e135275135285%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135271135283%_))))
                        (let ((_%hd135274135288%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135275135285%_)))
                              (_%tl135273135290%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135275135285%_))))
                          ((lambda (_%L135293%_)
                             (let ((__tmp146042
                                    (lambda (_%g135302135304%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self135267%_
                                         _%g135302135304%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp146042 _%L135293%_)))
                           _%tl135273135290%_)))
                      (let ()
                        (declare (not safe))
                        (_%g135270135280%_ _%g135271135283%_))))))
          (declare (not safe))
          (_%g135269135307%_ _%stx135268%_))))
    (define gxc#count-values-single%
      (lambda (_%self135264%_ _%stx135265%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self135130%_ _%stx135131%_)
        (let* ((_%__stx145655145656%_ _%stx135131%_)
               (_%g135134135163%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx145655145656%_)))))
          (let ((_%__kont145657145658%_
                 (lambda (_%L135231%_ _%L135232%_)
                   (length (let ((__tmp146043
                                  (lambda (_%g135253135256%_ _%g135254135258%_)
                                    (cons _%g135253135256%_
                                          _%g135254135258%_))))
                             (declare (not safe))
                             (__foldr1 __tmp146043 '() _%L135231%_)))))
                (_%__kont145661145662%_ (lambda () '#f)))
            (let ((_%__match145700145701%_
                   (lambda (_%e135140135175%_
                            _%hd135139135178%_
                            _%tl135138135180%_
                            _%e135143135183%_
                            _%hd135142135186%_
                            _%tl135141135188%_
                            _%e135146135191%_
                            _%hd135145135194%_
                            _%tl135144135196%_
                            _%e135149135199%_
                            _%hd135148135202%_
                            _%tl135147135204%_
                            _%__splice145659145660%_
                            _%target135150135207%_
                            _%tl135152135209%_)
                     (letrec ((_%loop135153135212%_
                               (lambda (_%hd135151135215%_
                                        _%rand135157135217%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd135151135215%_))
                                     (let ((_%e135154135220%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd135151135215%_))))
                                       (let ((_%lp-tl135156135225%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e135154135220%_)))
                                             (_%lp-hd135155135223%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e135154135220%_))))
                                         (let ((__tmp146044
                                                (cons _%lp-hd135155135223%_
                                                      _%rand135157135217%_)))
                                           (declare (not safe))
                                           (_%loop135153135212%_
                                            _%lp-tl135156135225%_
                                            __tmp146044))))
                                     (let ((_%rand135158135228%_
                                            (reverse _%rand135157135217%_)))
                                       (let ((_%L135231%_ _%rand135158135228%_)
                                             (_%L135232%_ _%hd135148135202%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L135232%_
                                                'values))
                                             (_%__kont145657145658%_
                                              _%L135231%_
                                              _%L135232%_)
                                             (_%__kont145661145662%_))))))))
                       (let ()
                         (declare (not safe))
                         (_%loop135153135212%_ _%target135150135207%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx145655145656%_))
                  (let ((_%e135140135175%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx145655145656%_))))
                    (let ((_%tl135138135180%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e135140135175%_)))
                          (_%hd135139135178%_
                           (let ()
                             (declare (not safe))
                             (##car _%e135140135175%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl135138135180%_))
                          (let ((_%e135143135183%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl135138135180%_))))
                            (let ((_%tl135141135188%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e135143135183%_)))
                                  (_%hd135142135186%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e135143135183%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd135142135186%_))
                                  (let ((_%e135146135191%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd135142135186%_))))
                                    (let ((_%tl135144135196%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e135146135191%_)))
                                          (_%hd135145135194%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e135146135191%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd135145135194%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd135145135194%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl135144135196%_))
                                                  (let ((_%e135149135199%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl135144135196%_))))
                                                    (let ((_%tl135147135204%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e135149135199%_)))
                                                          (_%hd135148135202%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e135149135199%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl135147135204%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl135141135188%_))
                      (let ((_%__splice145659145660%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl135141135188%_
                                '0))))
                        (let ((_%tl135152135209%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145659145660%_ '1)))
                              (_%target135150135207%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145659145660%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl135152135209%_))
                              (_%__match145700145701%_
                               _%e135140135175%_
                               _%hd135139135178%_
                               _%tl135138135180%_
                               _%e135143135183%_
                               _%hd135142135186%_
                               _%tl135141135188%_
                               _%e135146135191%_
                               _%hd135145135194%_
                               _%tl135144135196%_
                               _%e135149135199%_
                               _%hd135148135202%_
                               _%tl135147135204%_
                               _%__splice145659145660%_
                               _%target135150135207%_
                               _%tl135152135209%_)
                              (_%__kont145661145662%_))))
                      (_%__kont145661145662%_))
                  (_%__kont145661145662%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145661145662%_))
                                              (_%__kont145661145662%_))
                                          (_%__kont145661145662%_))))
                                  (_%__kont145661145662%_))))
                          (_%__kont145661145662%_))))
                  (_%__kont145661145662%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self135033%_ _%stx135034%_)
        (let* ((_%g135036135057%_
                (lambda (_%g135037135054%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135037135054%_))))
               (_%g135035135127%_
                (lambda (_%g135037135060%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135037135060%_))
                      (let ((_%e135043135062%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135037135060%_))))
                        (let ((_%hd135042135065%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135043135062%_)))
                              (_%tl135041135067%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135043135062%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135041135067%_))
                              (let ((_%e135046135070%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135041135067%_))))
                                (let ((_%hd135045135073%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135046135070%_)))
                                      (_%tl135044135075%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135046135070%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135044135075%_))
                                      (let ((_%e135049135078%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135044135075%_))))
                                        (let ((_%hd135048135081%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135049135078%_)))
                                              (_%tl135047135083%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135049135078%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl135047135083%_))
                                              (let ((_%e135052135086%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl135047135083%_))))
                                                (let ((_%hd135051135089%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e135052135086%_)))
                                                      (_%tl135050135091%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e135052135086%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl135050135091%_))
                                                      ((lambda (_%L135094%_
                                                                _%L135095%_
                                                                _%L135096%_)
                                                         (let ((_%c1135113135115%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self135033%_ _%L135095%_))))
                   (if _%c1135113135115%_
                       (let* ((_%c1135118%_ _%c1135113135115%_)
                              (_%c2135119135121%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self135033%_
                                  _%L135094%_))))
                         (if _%c2135119135121%_
                             (let ((_%c2135124%_ _%c2135119135121%_))
                               (if (fx= _%c1135118%_ _%c2135124%_)
                                   _%c1135118%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd135051135089%_
               _%hd135048135081%_
               _%hd135045135073%_)
              (let ()
                (declare (not safe))
                (_%g135036135057%_ _%g135037135060%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g135036135057%_
                                                 _%g135037135060%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135036135057%_
                                         _%g135037135060%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135036135057%_ _%g135037135060%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135036135057%_ _%g135037135060%_))))))
          (declare (not safe))
          (_%g135035135127%_ _%stx135034%_))))))
